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
rohdaten='./rohdaten/rohdaten2014.dat'

duplikatsliste='./daten/zuordnung.tsv'
ogdbgames='./rohdaten/ogdb-games.csv'
moregames='./daten/no-ogdb.tsv'

# Dateien für Ergebnisse
feedback = io.open("./rohdaten/feedback2014.dat", "w", encoding="utf8")
results = io.open("./rohdaten/daten2014.dat", "w", encoding="utf8")
versteck = io.open("./rohdaten/versteck2014.dat", "w", encoding="utf8")
zensurinfo = io.open("./rohdaten/zensurinfo2014.dat", "w", encoding="utf8")
nennungen = io.open("./daten/2014/nennungen.tsv", "w", encoding="utf8")
f_unbekannt = io.open("./daten/2014/unbekannte-titel.tsv", "w", encoding="utf8") 

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

# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Friegabe zu
with io.open(moregames, encoding='utf8') as extra_file:
	extra_reader = unicodecsv.reader(extra_file,delimiter="\t")
	vdvclookup={extra_entry[0].lower():(extra_entry[1],extra_entry[2]) for extra_entry in extra_reader}

# Dieses Dictionary ordnet genannten Spieltiteln die bekannte Schreibweise zu
with io.open(duplikatsliste, encoding='utf8') as nl_file:
	nl_reader = unicodecsv.reader(nl_file,delimiter="\t")
	namelookup={nl_entry[1].lower():nl_entry[0] for nl_entry in nl_reader}

def find_gameinfo(title): # search data of the game
	if title.lower() in namelookup:
		title = namelookup[title.lower()].lower()
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
			d_unbekannt[title] = d_unbekannt[title] + 1
		else:
			d_unbekannt[title] = 1
			

	# make a return value out of the result
	return [year,freigabe]


gameshist=[0,0,0,0,0,0]
#for pspp_entry in pspp_data:
with io.open(rohdaten, encoding='utf8') as f:
	reader = unicodecsv.reader(f,delimiter=';')
	for spss_entry in reader:
		ngames=0
		if len(spss_entry) == 223 or len(spss_entry) == 224:
			game = spss_entry[41:46]
		else:
			print("Error in Entry:")
			print(spss_entry)

		# write data before items to insert
		for item in spss_entry[:28]:
			results.write(u'"'+item+u'";')
		if (len(spss_entry[28]) > 0):
			versteck.write(spss_entry[28]+u'\n\n')
		for item in spss_entry[29:41]:
			results.write(u'"'+item+u'";')
		for g in range(0,5): # 5 games (hardcoded)
			if (len(game[g]) > 1):
				ngames=ngames+1
			gameinfo = find_gameinfo(game[g])
			results.write(u'"'+game[g]+u' ('+gameinfo[0]+u')";')
			for i in range(0,2):
				results.write(u'\"'+gameinfo[i]+u'\";')
		for item in spss_entry[46:126]:
			results.write(u'"'+item+u'";')
		if(len(spss_entry[126]) > 0):
			zensurinfo.write(spss_entry[126]+u'\n\n')
		for item in spss_entry[127:222]:
			results.write(u'"'+item+u'";')
		results.write(u'"'+spss_entry[222]+u'"\n')
		if (len(spss_entry) > 223):
			if (len(spss_entry[223]) > 0):
				feedback.write(spss_entry[223]+u'\n\n')
		gameshist[ngames] = gameshist[ngames]+1
nennungen.write(u'"Genannte Titel"\t"Häufigkeit"\n')
for nr in range(0,6):
	nennungen.write(unicode(nr)+u'\t'+unicode(gameshist[nr])+u'\n')
	
f_unbekannt.write(u'"Unbeaknnter Titel"\t"Nennungen"\n')
for item in sorted(d_unbekannt.items(),key=lambda x: x[1], reverse=True):
	f_unbekannt.write(u'"'+unicode(item[0])+u'"\t'+unicode(item[1])+u'\n')

