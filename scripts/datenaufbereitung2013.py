#!/usr/bin/env python
# -*- coding: utf-8 -*-

import datetime
import dateutil.parser as dparser
import io
import re
import string
import sys
import unicodecsv

reload(sys)  
sys.setdefaultencoding('utf8')

# SPSS-Export
rohdaten='./rohdaten/rohdaten2013.dat'

duplikatsliste='./daten/schreibweisen.tsv'
zuordnungsliste='./daten/zuordnung.tsv'
ogdbgames='./rohdaten/ogdbexport20161024_211122.csv'
moregames='./daten/no-ogdb.tsv'

# Dateien für Ergebnisse
feedback = io.open("./rohdaten/feedback2014.dat", "w", encoding="utf8")
results = io.open("./rohdaten/daten2013.dat", "w", encoding="utf8")
zensurinfo = io.open("./rohdaten/zensurinfo2013.dat", "w", encoding="utf8")
nennungen = io.open("./daten/2013/nennungen.tsv", "w", encoding="utf8")
f_unbekannt = io.open("./daten/2013/unbekannte-titel.tsv", "w", encoding="utf8") 

def freigabe(string):
    parts = string.replace(',','_').split('_')
    kandidat=21
    for part in parts:
        if part.isnumeric():
            kandidat = min(kandidat,int(part))
        elif u"OA" in part:
            return u"USK0"
        elif u"KJ" in part:
            kandidat = min(kandidat,18)
    if kandidat == 21:
        return u""
    else:
        return u'USK'+unicode(kandidat)

freigabeordnung = {u'BPjM' : -1, u'StGB' : -1, u'USK0' : 0, u'USK6' : 1, u'USK12' : 2, u'USK16' : 3, u'USK18' : 4, u'' : 100, u'.' : 100}

d_unbekannt = {}

# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Friegabe zu
# Zuordnung von Genres wäre möglich.
with io.open(ogdbgames, encoding='utf8') as ogdb_file:
    ogdb_reader = unicodecsv.reader(ogdb_file,delimiter=";")
    ogdb_list=[]
    lastentry=""
    for ogdb_entry in ogdb_reader:
        if ogdb_entry[0].lower() == lastentry:
            if freigabe(ogdb_entry[3]) != u'':
                if ogdb_list[-1][2] == u'':
                    ogdb_list[-1][2]=freigabe(ogdb_entry[3])
                elif freigabeordnung[freigabe(ogdb_entry[3])] < freigabeordnung[ogdb_list[-1][2]]:
                    ogdb_list[-1][2]=freigabe(ogdb_entry[3])
        else:
            ogdb_list.append([ogdb_entry[0].lower(),ogdb_entry[9],freigabe(ogdb_entry[3])])
            lastentry=ogdb_entry[0].lower()

    ogdblookup={ogdb_entry[0]:(ogdb_entry[1],ogdb_entry[2]) for ogdb_entry in ogdb_list}

def freigabe(string):
    parts = string.replace(',','_').split('_')
    kandidat=21
    for part in parts:
        if part.isnumeric():
            kandidat = min(kandidat,int(part))
        elif u"OA" in part:
            return u"USK0"
        elif u"KJ" in part:
            kandidat = min(kandidat,18)
    if kandidat == 21:
        return u""
    else:
        return u'USK'+unicode(kandidat)

freigabeordnung = {u'BPjM' : -1, u'StGB' : -1, u'USK0' : 0, u'USK6' : 1, u'USK12' : 2, u'USK16' : 3, u'USK18' : 4, u'' : 100, u'.' : 100}

d_unbekannt = {}

strikeout=[" (Steam)"," (GOG)"," (Early Access)"]
# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Friegabe zu
# Zuordnung von Genres wäre möglich.
with io.open(ogdbgames, encoding='utf8') as ogdb_file:
    ogdb_reader = unicodecsv.reader(ogdb_file,delimiter=";")
    ogdb_list=[]
    lastentry=""
    for ogdb_entry in ogdb_reader:
        for so in strikeout:
            ogdb_entry[0] = ogdb_entry[0].replace(so, "" )
        if ogdb_entry[0].lower() == lastentry:
            if ogdb_entry[9] != u'' and ogdb_list[-1][1] == u'':
                ogdb_list[-1][1] = ogdb_entry[9]
            if freigabe(ogdb_entry[3]) != u'':
                if ogdb_list[-1][2] == u'':
                    ogdb_list[-1][2]=freigabe(ogdb_entry[3])
                elif freigabeordnung[freigabe(ogdb_entry[3])] < freigabeordnung[ogdb_list[-1][2]]:
                    ogdb_list[-1][2]=freigabe(ogdb_entry[3])
            if ogdb_entry[9] != "" and ogdb_list[-1][1] == "":
                ogdb_list[-1][1] = ogdb_entry[9]
        else:
            ogdb_list.append([ogdb_entry[0].lower(),ogdb_entry[9],freigabe(ogdb_entry[3]),ogdb_entry[0]])
            lastentry=ogdb_entry[0].lower()
    ogdblookup={ogdb_entry[0]:(ogdb_entry[1] if ogdb_entry[1] != "" else "0",ogdb_entry[2],ogdb_entry[3]) for ogdb_entry in ogdb_list}

# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Friegabe zu
with io.open(moregames, encoding='utf8') as extra_file:
    extra_reader = unicodecsv.reader(extra_file,delimiter="\t")
    vdvclookup={extra_entry[0].lower():(extra_entry[1],extra_entry[2],extra_entry[0]) for extra_entry in extra_reader}

# Dieses Dictionary ordnet genannten Spieltiteln die bekannte Schreibweise zu
with io.open(duplikatsliste, encoding='utf8') as nl_file:
    nl_reader = unicodecsv.reader(nl_file,delimiter="\t")
    namelookup={nl_entry[1].lower():nl_entry[0] for nl_entry in nl_reader}

# Dieses Set enthält alle erfassten Schreibweisen
with io.open(duplikatsliste, encoding='utf8') as nl_file:
    nl_reader = unicodecsv.reader(nl_file,delimiter="\t")
    knowngames ={nl_entry[0].lower() for nl_entry in nl_reader}

# Dieses Dictionary ordnet Spielen einen speziellen ODGB-Eintrag zu
with io.open(zuordnungsliste, encoding='utf8') as ol_file:
    ol_reader = unicodecsv.reader(ol_file,delimiter="\t")
    ogdbtitles={ol_entry[0].lower():ol_entry[1].lower() for ol_entry in ol_reader}

def find_gameinfo(title): # search data of the game
    lowtitle = title.lower()
    year = u""
    freigabe = u""
    
    if lowtitle in namelookup:
        lowtitle = namelookup[lowtitle].lower()
    if lowtitle in ogdbtitles:
       ogdbtitle = ogdbtitles[lowtitle].lower()
    else:
       ogdbtitle = lowtitle

    if ogdbtitle in ogdblookup:
        year = ogdblookup[ogdbtitle][0].encode('utf-8')
        freigabe = ogdblookup[ogdbtitle][1]
        if lowtitle not in knowngames:
            if lowtitle == ogdbtitle:
                title = ogdblookup[ogdbtitle][2]
            else:
                title = lowtitle
    elif lowtitle in vdvclookup:
        year = vdvclookup[lowtitle][0].encode('utf-8')
        freigabe = vdvclookup[lowtitle][1].encode('utf-8')
        if lowtitle not in knowngames:
            title = vdvclookup[lowtitle][2]
    else:
        if len(lowtitle) > 0 and lowtitle not in knowngames:
            if title in d_unbekannt:
                d_unbekannt[title] = d_unbekannt[title] + 1
            else:
                d_unbekannt[title] = 1

    # make a return value out of the result
    return [title,year,freigabe]

results.write(
u'"id";"submitdate";"lastpage";"startlanguage";"startdate";"ipaddr";"refurl";"Geburtsjahr";"Geschlecht";"WohnortDeutschland";"Breitbandzugang";"COAX_Speed";"DSL_Speed";"Funk_Speed";"Videospieler";"ExSpieler";"Ex_Wann";"Multiplayer";"Random10";"Erfahrung";"Spiel1";"Release1";"Freigabe1";"Spiel2";"Release2";"Freigabe2";"Spiel3";"Release3";"Freigabe3";"Spiel4";"Release4";"Freigabe4";"Spiel5";"Release5";"Freigabe5";"Nutzungsdauer1"\n')#;"Nutzungsdauer2";"Nutzungsdauer3";"Nutzungsdauer4";"Nutzungsdauer5";"Nutzungsumfang";"Bezugsweg1";"Bezugsweg2";"Bezugsweg3";"Bezugsweg4";"Bezugsweg5";"Plattformen1";"Plattformen2";"Plattformen3";"Plattformen4";"Plattformen5";"Zusatzangebote_SQ000";"Zusatzangebote_SQ001";"Zusatzangebote_SQ002";"Zusatzangebote_SQ003";"Zusatzangebote_SQ004";"Alle_Ausgaben_SQ1_SQ001";"Alle_Ausgaben_SQ1_SQ002";"Alle_Ausgaben_SQ1_SQ003";"Alle_Ausgaben_SQ1_SQ004";"Alle_Ausgaben_SQ2_SQ001";"Alle_Ausgaben_SQ2_SQ002";"Alle_Ausgaben_SQ2_SQ003";"Alle_Ausgaben_SQ2_SQ004";"Alle_Ausgaben_SQ3_SQ001";"Alle_Ausgaben_SQ3_SQ002";"Alle_Ausgaben_SQ3_SQ003";"Alle_Ausgaben_SQ3_SQ004";"Alle_Ausgaben_SQ4_SQ001";"Alle_Ausgaben_SQ4_SQ002";"Alle_Ausgaben_SQ4_SQ003";"Alle_Ausgaben_SQ4_SQ004";"Alle_Ausgaben_SQ5_SQ001";"Alle_Ausgaben_SQ5_SQ002";"Alle_Ausgaben_SQ5_SQ003";"Alle_Ausgaben_SQ5_SQ004";"Endmotivation_1";"Endmotivation_2";"Endmotivation_3";"Endmotivation_4";"Endmotivation_5";"Endmotivation_7";"Endmotivation_9";"Endzwang_SQ001";"Endzwang_SQ002";"Endverständnis_1";"Endverständnis_2";"Endverständnis_3";"Endverständnis_4";"Endverständnis_5";"Endverständnis_7";"Endverständnis_9";"Startmotivation_1";"Startmotivation_2";"Startmotivation_3";"Startmotivation_4";"Startmotivation_5";"Illegalmotivation_1_1";"Illegalmotivation_1_2";"Illegalmotivation_2_1";"Illegalmotivation_2_2";"Illegalmotivation_3_1";"Illegalmotivation_3_2";"Illegalmotivation_4_1";"Illegalmotivation_4_2";"Illegalmotivation_5_1";"Illegalmotivation_5_2";"Illegalmotivation_6_1";"Illegalmotivation_6_2";"Illegalmotivation_7_1";"Illegalmotivation_7_2";"Illegalmotivation_8_1";"Illegalmotivation_8_2";"IllegalVerstaendnis_1";"IllegalVerstaendnis_2";"IllegalVerstaendnis_3";"IllegalVerstaendnis_4";"IllegalVerstaendnis_5";"IllegalVerstaendnis_6";"IllegalVerstaendnis_7";"IllegalVerstaendnis_8";"Free2PlaySpiel_0";"Free2PlaySpiel_1";"Free2PlaySpiel_2";"Free2PlaySpiel_3";"Free2PlaySpiel_4";"Free2PlaySpiel_5";"Free2PlaySpiel_6";"Free2PlaySpiel_7";"Free2PlayKauf_1";"Free2PlayKauf_2";"Free2PlayKauf_3";"Free2PlayKauf_4";"Free2PlayKauf_5";"Free2PlayKauf_6";"Kennzeichenkenntnis_SQ001";"Kennzeichenkenntnis_SQ002";"Kennzeichenkenntnis_SQ003";"Kennzeichenkenntnis_SQ004";"Kennzeichenkenntnis_SQ005";"Schnittkenntnis";"Zensurmeinung";"Zensurinformation";"Zensurinfowege_1";"Zensurinfowege_2";"Zensurinfowege_3";"Zensurinfowege_4";"Zensurinfowege_5";"Zensurinfowege_6";"Zensurinfowege_other";"UncutBezug";"UncutBezugswege_1";"UncutBezugswege_2";"UncutBezugswege_3";"UncutBezugswege_4";"UncutBezugswege_5";"UncutBezugswege_6";"UncutBezugswege_7";"UncutBezugswege_8";"UncutBezugswege_9";"UncutBezugswege_10";"Onlineaktivierung";"Onlinezwang";"Kontingent";"Kopierschutz";"Sicherheitskopie";"Datenschutz";"Informationsinteress_1_1";"Informationsinteress_1_2";"Informationsinteress_2_1";"Informationsinteress_2_2";"Informationsinteress_3_1";"Informationsinteress_3_2";"Informationsinteress_4_1";"Informationsinteress_4_2";"Informationsinteress_5_1";"Informationsinteress_5_2"\n')


gameshist=[0,0,0,0,0,0]
#for pspp_entry in pspp_data:
with io.open(rohdaten, encoding='utf8') as f:
    reader = unicodecsv.reader(f,delimiter=';')
    for spss_entry in reader:
        ngames=0
        if len(spss_entry) == 168:
            game = spss_entry[20:25]
        else:
            print("Error in Entry:")
            print(spss_entry)

        # write data before items to insert
        for item in spss_entry[:20]:
            results.write(u'"'+item+u'";')
        for g in range(0,5): # 5 games (hardcoded)
            if (len(game[g]) > 1):
                ngames=ngames+1
            gameinfo = find_gameinfo(game[g])
            results.write(u'"'+gameinfo[0]+u' ('+gameinfo[1]+u')";')
            for i in range(1,3):
                results.write(u'\"'+gameinfo[i]+u'\";')
        results.write(u'\n')

#        for item in spss_entry[25:152]:
#            results.write(u'"'+item+u'";')
#        if(len(spss_entry[152]) > 0):
#            zensurinfo.write(spss_entry[152]+u'\n\n')
#        for item in spss_entry[153:167]:
#            results.write(u'"'+item+u'";')
#        results.write(u'"'+spss_entry[167]+u'"\n')
        gameshist[ngames] = gameshist[ngames]+1

nennungen.write(u'"Genannte Titel"\t"Häufigkeit"\n')
for nr in range(0,6):
    nennungen.write(unicode(nr)+u'\t'+unicode(gameshist[nr])+u'\n')
    
f_unbekannt.write(u'"Unbekannter Titel"\t"Nennungen"\n')
for item in sorted(d_unbekannt.items(),key=lambda x: x[1], reverse=True):
    f_unbekannt.write(u'"'+unicode(item[0])+u'"\t'+unicode(item[1])+u'\n')

