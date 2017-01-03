#!/usr/bin/env python
# -*- coding: utf-8 -*-

import io
import unicodecsv


from parsers import community
from parsers import freigabe
from parsers import long2ip


duplikatsliste='./daten/schreibweisen.tsv'
zuordnungsliste='./daten/zuordnung.tsv'
ogdbgames='./rohdaten/ogdbexport20161024_211122.csv'
moregames='./daten/no-ogdb.tsv'

freigabeordnung = {u'BPjM' : -1, u'StGB' : -1, u'USK0' : 0, u'USK6' : 1, u'USK12' : 2, u'USK16' : 3, u'USK18' : 4, u'' : 100, u'.' : 100}


# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Friegabe zu
# Zuordnung von Genres wäre möglich.
strikeout=[" (Steam)"," (GOG)"," (Early Access)"]
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

# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Freigabe zu
with io.open(moregames, encoding='utf8') as extra_file:
    extra_reader = unicodecsv.reader(extra_file,delimiter="\t")
    vdvclookup={extra_entry[0].lower():(extra_entry[1],extra_entry[2],extra_entry[0]) for extra_entry in extra_reader}

namelookup={}
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


# Führt die Look-Up-Tables zusammen und liefert Info zum Spiel
def find_gameinfo(title): # search data of the game
    lowtitle = title.lower()
    year = u""
    freigabe = u""
    if lowtitle in ogdbtitles:
       ogdbtitle = ogdbtitles[lowtitle]
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

