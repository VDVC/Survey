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

# Dieses Dictionary ordnet Spieltitel eine Releasejahr und eine USK-Friegabe zu
# Zuordnung von Genres wäre möglich.
with io.open(ogdbgames, encoding='utf8') as ogdb_file:
	ogdb_reader = unicodecsv.reader(ogdb_file,delimiter=";")
	ogdblookup={ogdb_entry[0].lower():(ogdb_entry[9],ogdb_entry[3]) for ogdb_entry in ogdb_reader}

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
		usk = ogdblookup[title][1]
		if ',' in usk:
			usk = usk.split(',')[0];
		if len(usk) >= 6:
			if usk[4] == '_': # Format: YYYY_NN or YYYY_N
				freigabe = usk[5:]
			elif usk[2] == '_': # Format: NN_YYYY
				freigabe = usk[0:2]
			elif usk[1] == '_': # Format: N_YYYY
				freigabe = usk[0]
			else:
				freigabe = usk
		else:
			if len(usk) == '1':
				freigabe = usk
			elif usk[0:2] == 'OA':
				freigabe = '00'
			elif usk[0:2] == "KJ":
				freigabe = '18'
	elif title in vdvclookup:
		year = vdvclookup[title][0].encode('utf-8')
		freigabe = vdvclookup[title][1][3:].encode('utf-8')
	else:
		if len(title) > 0 and title[0:5] != "(???)":
			print("Not found: " + title)

	# make a return value out of the result
	return [year,freigabe]


#for pspp_entry in pspp_data:
with io.open(rohdaten, encoding='utf8') as f:
	reader = unicodecsv.reader(f,delimiter=';')
	for spss_entry in reader:
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
			gameinfo = find_gameinfo(game[g])
			results.write(u'"'+spss_entry[41+g]+u'";')
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