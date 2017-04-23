#!/usr/bin/env python
# -*- coding: utf-8 -*-

import io
import pandas as pd
import csv
import operator

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
    zuordnung={ol_entry[0].lower():ol_entry[1].lower() for ol_entry in ol_reader}

# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Freigabe zu
with io.open(fname_moregames, encoding='utf8') as extra_file:
    extra_reader = csv.reader(extra_file,delimiter="\t")
    vdvclookup={extra_entry[0].lower():(extra_entry[1],extra_entry[2],extra_entry[0]) for extra_entry in extra_reader}

neue_schreibweisen = pd.DataFrame(neue_titel, columns=["Unbekannter Titel","Schreibweise"])
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

