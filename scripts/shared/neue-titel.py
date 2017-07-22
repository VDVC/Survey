#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import io
import pandas as pd
import csv
import operator
import numpy as np

fname_schreibweisen='./daten/schreibweisen.tsv'
fname_zuordnung='./daten/zuordnung.tsv'
fname_ogdbgames='./rohdaten/ogdbexport20161024_211122.csv'
fname_moregames='./daten/no-ogdb.tsv'

neue_titel = pd.read_csv('./daten/neue-titel.tsv',sep="\t")

# Dieses Dictionary ordnet genannten Spieltiteln die bekannte Schreibweise zu
with io.open(fname_schreibweisen, encoding='utf8') as nl_file:
    nl_reader = csv.reader(nl_file,delimiter="\t")
    schreibweisen={nl_entry[1]:nl_entry[0] for nl_entry in nl_reader}

# Dieses Dictionary ordnet Spielen einen speziellen ODGB-Eintrag zu
with io.open(fname_zuordnung, encoding='utf8') as ol_file:
    ol_reader = csv.reader(ol_file,delimiter="\t")
    zuordnungen={ol_entry[0].lower():ol_entry[1].lower() for ol_entry in ol_reader}

# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Freigabe zu
# Einträge sind Titel, Release, Freigabe
with io.open(fname_moregames, encoding='utf8') as extra_file:
    extra_reader = csv.reader(extra_file,delimiter="\t")
    vdvclookup={extra_entry[0].lower():(extra_entry[1],extra_entry[2],extra_entry[0]) for extra_entry in extra_reader}

#################### neue Schreibweisen ########################################
## füge neue Schreibweisen in fname_schreibweisen ein

neue_schreibweisen = pd.DataFrame(neue_titel, columns=["Unbekannter Titel","Schreibweise","OGDB_Name"])
neue_schreibweisen[neue_schreibweisen["OGDB_Name"]==""] = np.NaN
neue_schreibweisen['Schreibweise'].fillna(neue_schreibweisen['OGDB_Name'], inplace=True)
neue_schreibweisen = neue_schreibweisen[pd.notnull(neue_schreibweisen["Schreibweise"])]

korrekt = neue_schreibweisen["Schreibweise"].tolist()
genannt = neue_schreibweisen["Unbekannter Titel"].tolist()
neue_schreibweisen = {genannt.lower():korrekt for korrekt,genannt in zip(korrekt,genannt)}

schreibweisen.update(neue_schreibweisen)

# sortiere alphanumerisch, erst Value dann Key, ignoriere Groß- und Kleinschreibung
schreibweisen = sorted(schreibweisen.items(), key=lambda x: x[1].lower()+"  "+x[0].lower())

file_schreibweisen = open(fname_schreibweisen, "w")

file_schreibweisen.write('"Unsere Schreibweise"\t"Andere Schreibweise"\n')
for schreibweise in schreibweisen:
    file_schreibweisen.write('"'+schreibweise[1]+'"\t"'+schreibweise[0]+'"\n')


#################### neue OGDB-Zuordnung #########################
## füge neue Zuordnung zu OGDB-Eintrag in fname_zuordnung ein

neue_zuordnungen = pd.DataFrame(neue_titel, columns=["Schreibweise","OGDB_Name"])
neue_zuordnungen = neue_zuordnungen[pd.notnull(neue_zuordnungen["OGDB_Name"])]
neue_zuordnungen = neue_zuordnungen[pd.notnull(neue_zuordnungen["Schreibweise"])]

vdvc_name = neue_zuordnungen["Schreibweise"].tolist()
ogdb_name = neue_zuordnungen["OGDB_Name"].tolist()
neue_zuordnungen = {vdvc_name:ogdb_name for ogdb_name,vdvc_name in zip(ogdb_name,vdvc_name)}

zuordnungen.update(neue_zuordnungen)

# sortiere alphanumerisch, erst Value dann Key, ignoriere Groß- und Kleinschreibung
zuordnungen = sorted(zuordnungen.items(), key=lambda x: x[1].lower()+"  "+x[0].lower())

file_zuordnung = open(fname_zuordnung, "w")

file_zuordnung.write('"Titel"\t"OGDB-Eintrag"\n')
for zuordnung in zuordnungen:
    file_zuordnung.write('"'+zuordnung[0]+'"\t"'+zuordnung[1]+'"\n')

#################### neue Infos (Freigabe und Release) #########################
## füge neue Infos (Freigabe und Release) in fname_moregames ein

neue_infos = pd.DataFrame(neue_titel, columns=["Unbekannter Titel","Release","Freigabe"])
# fehlende Werte können "" oder "." sein
neue_infos.replace({".":np.nan,"usk0":"USK0","usk6":"USK6","usk12":"USK12","usk16":"USK16","usk18":"USK18"},inplace=True)
neue_infos.dropna(how='all',subset=["Release","Freigabe"],inplace=True)
titel = neue_infos["Unbekannter Titel"].tolist()
release = neue_infos["Release"].tolist()
freigabe = neue_infos["Freigabe"].tolist()
neue_infos = {titel.lower():(release,freigabe,titel) for titel,release,freigabe in zip(titel,release,freigabe)}

vdvclookup.update(neue_infos)

# sortiere alphanumerisch nach Key (der ist eh schon klein geschrieben)
vdvclookup = sorted(vdvclookup.items(), key=lambda x: x[0])

file_vdvclookup = open(fname_moregames, "w")

for game in vdvclookup:
    entry = '"'+game[1][2]+'"\t'
    if str(game[1][0]) == "0":
        entry += 'NaN'
    elif str(game[1][0]).lower() == "nan":
        entry += 'NaN'
    else:
        entry += str(int(game[1][0]))
    entry += '\t"'
    if str(game[1][1]) == "nan":
        entry += '.'
    else:
        entry += str(game[1][1])
    file_vdvclookup.write(entry+'"\n')


