#!/usr/bin/env python
# -*- coding: utf-8 -*-

import datetime
import dateutil.parser as dparser
import io
import re
import string
import sys
import unicodecsv
from socket import inet_ntoa
from struct import pack

reload(sys)  
sys.setdefaultencoding('utf8')

# SPSS-Export
rohdaten='./rohdaten/rohdaten2015.dat'

# Referer-Info
teilnehmer='./rohdaten/participants2015.csv'


duplikatsliste='./daten/zuordnung.tsv'
ogdbgames='./rohdaten/ogdb-games.csv'
moregames='./daten/no-ogdb.tsv'

# Dateien für Ergebnisse
feedback = io.open("./rohdaten/feedback2015.dat", "w", encoding="utf8")
results = io.open("./daten/daten2015.dat", "w", encoding="utf8")
zensurinfo = io.open("./rohdaten/zensurinfo2015.dat", "w", encoding="utf8")
nennungen = io.open("./daten/2015/nennungen.tsv", "w", encoding="utf8")

def long2ip(ip):
    ip=int(ip)
    if ip < 0:
        ip = ip & 0xffffffff
    return inet_ntoa(pack("!L", ip))

def community(url):
    if "http://vdvc.de" in url:
        return "VDVC"
    elif "http://spielkultur.ea.de" in url:
        return "EA"
    elif "worldofplayers" in url:
        return "WoP"
    else:
        return "?"

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

# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Friegabe zu
with io.open(moregames, encoding='utf8') as extra_file:
    extra_reader = unicodecsv.reader(extra_file,delimiter="\t")
    vdvclookup={extra_entry[0].lower():(extra_entry[1],extra_entry[2]) for extra_entry in extra_reader}

# Dieses Dictionary ordnet genannten Spieltiteln die bekannte Schreibweise zu
with io.open(duplikatsliste, encoding='utf8') as nl_file:
    nl_reader = unicodecsv.reader(nl_file,delimiter="\t")
    namelookup={nl_entry[1].lower():nl_entry[0] for nl_entry in nl_reader}

# Dieses Dictionary ordnet einer IP-Adresse einen Referer zu
with io.open(teilnehmer, encoding='utf8') as ref_file:
    ref_reader = unicodecsv.reader(ref_file,delimiter=",")
    reflookup={long2ip(ref_entry[1]):community(ref_entry[2]) for ref_entry in ref_reader}


def find_gameinfo(title): # search data of the game
    title = title.lower()
    year = u""
    freigabe = u""
    if title in ogdblookup:
        year = ogdblookup[title][0].encode('utf-8')
        freigabe = ogdblookup[title][1]
    elif title in vdvclookup:
        year = vdvclookup[title][0].encode('utf-8')
        freigabe = vdvclookup[title][1].encode('utf-8')
    else:
        if len(title) > 0 and title[0:5] != "(???)":
            print("Not found: '" + title + "'")

    # make a return value out of the result
    return [year,freigabe]


gameshist=[0,0,0,0,0,0]
#for pspp_entry in pspp_data:
with io.open(rohdaten, encoding='utf8') as f:
    reader = unicodecsv.reader(f,delimiter=';')
    for spss_entry in reader:
        ngames=0
        if len(spss_entry) == 214:
            if len(spss_entry[33]) > len(spss_entry[53]):
                gamequest='1'
                game = spss_entry[33:38]
            else:
                gamequest='2'
                game = spss_entry[53:58]
            for i in range(0,5):
                if game[i].lower() in namelookup:
                    game[i] = namelookup[game[i].lower()]
        else:
            print("Error in Entry:")
            print(spss_entry)
        
        # write community information
        if spss_entry[6] in reflookup:
            results.write(u'"'+reflookup[spss_entry[6]]+u'";')
        else:
            results.write(u'"";')
        # write questions before first game
        for item in spss_entry[8:33]:
            results.write(u'"'+item+u'";')
        results.write(u'"'+gamequest+u'";')
        for g in range(0,5): # 5 games (hardcoded)
            if (len(game[g]) > 1):
                ngames=ngames+1
            gameinfo = find_gameinfo(game[g])
            # Titel (Releasejahr)
            results.write(u'"'+game[g]+u' ('+gameinfo[0]+u')";')
            for i in range(0,2):
                results.write(u'\"'+gameinfo[i]+u'\";')
        if int(gamequest) == 1:
            for item in spss_entry[38:43]: # Seit wann?
                results.write(u'"'+item+u'";')
            for item in spss_entry[43:48]: # Woher?
                results.write(u'"'+item+u'";')
            for item in spss_entry[48:53]: # Plattform?
                results.write(u'"'+item+u'";')
            for i in range(0,5): # Letzte Nutzung?
                results.write(u'"";')
        else :
            for item in spss_entry[63:68]: # Seit wann?
                results.write(u'"'+item+u'";')
            for item in spss_entry[68:73]: # Woher?
                results.write(u'"'+item+u'";')
            for i in range(0,5): # Plattform?
                results.write(u'"";')
            for item in spss_entry[58:63]: # Letzte Nutzung?
                results.write(u'"'+item+u'";')
        # ab "Ausgaben"
        for item in spss_entry[73:99]:
            results.write(u'"'+item+u'";')
        # ab Illegalmotivation
        for item in spss_entry[99:126]:
            results.write(u'"'+item+u'";')
        #ab Kennzeichenkenntnis
        for item in spss_entry[126:131]:
            results.write(u'"'+item+u'";')
        for item in spss_entry[131:140]:
            results.write(u'"'+item+u'";')
        if(len(spss_entry[140]) > 0):
            zensurinfo.write(spss_entry[140]+u'\n\n')
        #ab UncutBezug
        for item in spss_entry[141:193]:
            results.write(u'"'+item+u'";')
        #Informationsinteresse
        if len(spss_entry[193]) > len(spss_entry[203]):
            # Alternative A
            results.write(u'"0"')
            for item in spss_entry[193:203]:
                results.write(u';"'+item+u'"')
        else:
            # Alternative B
            results.write(u'"1"')
            for item in spss_entry[203:213]:
                results.write(u';"'+item+u'"')
        results.write(u'\n')
        if (len(spss_entry[213]) > 0):
            feedback.write(spss_entry[213]+u'\n\n')
        gameshist[ngames] = gameshist[ngames]+1

nennungen.write(u'"Genannte Titel"\t"Häufigkeit"\n')
for nr in range(0,6):
    nennungen.write(unicode(nr)+u'\t'+unicode(gameshist[nr])+u'\n')
