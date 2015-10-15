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

duplikatsliste='./daten/schreibweisen.tsv'
ogdbgames='./rohdaten/ogdb-games.csv'
moregames='./daten/no-ogdb.tsv'
matchfname ='./daten/titel-matches.tsv'
matchfile =io.open(matchfname, "w", encoding="utf8")


with io.open(ogdbgames, encoding='utf8') as ogdb_file:
	ogdb_reader = unicodecsv.reader(ogdb_file,delimiter=";")
	ogdblookup={ogdb_entry[0].lower():ogdb_entry[0] for ogdb_entry in ogdb_reader}
with io.open(moregames, encoding='utf8') as extra_file:
	extra_reader = unicodecsv.reader(extra_file,delimiter="\t")
	vdvclookup={extra_entry[0].lower():extra_entry[0] for extra_entry in extra_reader}

with io.open(duplikatsliste, encoding='utf8') as nl_file:
	nl_reader = unicodecsv.reader(nl_file,delimiter="\t")
	namelookup={nl_entry[1].lower():nl_entry[0] for nl_entry in nl_reader}

for game in namelookup:
	name=namelookup[game]
	if name[0:5] == "(???)":
		matchfile.write(u'"' + name + u'"\t"' + u'"\n')
	else:
		if name.lower() in ogdblookup:
			matchfile.write(u'"' + name + u'"\t"' + ogdblookup[name.lower()] + u'"\t"(OGDB)"\n')
		elif name.lower() in vdvclookup:
			matchfile.write(u'"' + name + u'"\t"' + vdvclookup[name.lower()] + u'"\t"(VDVC)"\n')
		else:
			print(u'"'+name+u'"')

sys.exit()


ogdcompare = io.open("./rohdaten/ogdb-compare.dat", "w", encoding="utf8")

ogdb_data = []
ogdb_file = io.open("./rohdaten/ogdbexport20150110_180021.csv", encoding="utf8")
for ogdb_entry in ogdb_file:
	ogdb_data.append(ogdb_entry)

def roman(data):
	data = data.replace('1', 'I')
	data = data.replace('2', 'II')
	data = data.replace('3', 'III')
	data = data.replace('4', 'IV')
	data = data.replace('5', 'V')
	data = data.replace('6', 'VI')
	data = data.replace('7', 'VII')
	data = data.replace('8', 'VIII')
	data = data.replace('9', 'IX')
	data = data.replace(':', '')
	data = data.replace("'", '')
	data = data.replace("&", '')
	return data

def genre(data):
	genlist = ""
	genres = {"Action","Strategie","Jump'n'Run","Abenteuer","Puzzle","Shooter","Sport","Simulation","Rennen","Rollenspiel"}
	for genre in genres:
		if genre in data:
			genlist += (genre+',')
	if genlist:
		return genlist[:-1]
	else:
		return "(Genres)"


def remove_html_tags(data):
	p = re.compile(r'<.*?>')
	return p.sub(' ', data)

def same_plattform(ogdb,VDVC):
#VDVC: Win, Lnx, Mac, Sony, XBox, Touch, Wii, Hand, X
	if VDVC == 'Win':
		if ogdb[0:2] == 'PC':
			return True
		return False
	if VDVC == 'Lnx':
		if ogdb[0:2] == 'PC':
			return True
		return False
	if VDVC == 'Mac':
		if ogdb[0:2] == 'PC':
			return True
		if ogdb[0:5] == 'Apple':
			return True
		return False
	if VDVC == 'Sony':
		if ogdb[0:4] == 'SONY':
			return True
		return False
	if VDVC == 'XBox':
		if len(ogdb)>8 and ogdb[0:9] == 'Microsoft':
			return True
		return False
	if VDVC == 'Touch':
		if ogdb == 'Google Android' or ogdb == 'Apple iOS':
			return True
		return False
	if VDVC == 'Wii':
		if ogdb == 'Nintendo Wii' or ogdb == 'Nintendo Wii U':
			return True
		return False
	if VDVC == 'Hand':
		if ogdb == 'Nintendo DS' or ogdb == 'Nintendo 3DS' or ogdb == 'SONY PlayStation Portable' or ogdb == 'SONY PlayStation Vita':
			return True
		return False
	if VDVC == 'X':
		return True
	return False

def find_gameinfo(title): # search data of the game
	if len(title) == 0:
		return ['-1','-1','-1','(genres)','(region)']
	title = namelookup[title.lower()]
	return ['-1','-1','-1','(genres)','(region)']
	candidates = []
	vdvc_title = title.lower()
	vdvc_roman = (roman(title)).lower()
	for ogdb_entry in ogdb_data:
		gameinfo = re.split(';', ogdb_entry[:-1])
		ogdb_title = (gameinfo[0]).lower()
		if ogdb_title.startswith('"') and ogdb_title.endswith('"'):
			ogdb_title = ogdb_title[1:-1]
		bracketpos = ogdb_title.find(' (')
		if  bracketpos > 0 and bracketpos != vdvc_title.find(' ('):
			ogdb_title = ogdb_title[:bracketpos]
		if (ogdb_title[0] == vdvc_title[0] or ogdb_title[-1] == vdvc_title[-1]) :
			ogdb_roman = (roman(gameinfo[0])).lower()
			len_title = len(vdvc_title)
			if len(ogdb_title) < len(vdvc_title):
				len_title = len(ogdb_title)
			len_roman = len(vdvc_roman)
			if len(ogdb_roman) < len(vdvc_roman):
				len_roman = len(ogdb_roman)

			if (ogdb_title[0:len_title] == vdvc_title[0:len_title]
			or ogdb_roman[0:len_roman] == vdvc_roman[0:len_roman]
			or ogdb_title[-len_title:] == vdvc_title[-len_title:]
			or ogdb_roman[-len_roman:] == vdvc_roman[-len_roman:]) :
				if ogdb_title == vdvc_title or ogdb_roman == vdvc_roman:
					candidates.append(gameinfo)
	
	# pick the one from best region as result
	candidates = sorted(candidates, key=lambda cand: cand[9])
	regions = {"Deutschland","Europa","Weltweit"}
	result = ""
	for region in regions:
		for candidate in candidates:
			if candidate[-1][0:len(region)] == region:
				result = candidate
			if result:
				break;
		if result:
			break;
	if not result and candidates:
		result = candidates[0]

	# make a return value out of the result
	year = "-1"
	censor = "-1"
	freigabe = "-1"
	genres = "(genres)"
	region = "(region)"
	
	if result:
		# add release year
		year = result[9]
		# add classification of german censors
		if result[11] == "1":
			censor = "3" # StGB = 3
			freigabe = "18"
		elif result[10] == "1":
			censor = "2" # BPjM = 2
			freigabe = "18"
		elif result[3]:
			censor = "1" # USK = 1
			usk = re.split(',', result[3])
			if usk[0]:
				usk = usk[0]
			else: # string stared with ","
				usk = usk[1]
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
					
		# add genre
		genres = genre(result[13])
		# add release region
		region = result[-1]
	if result:
		ogdcompare.write(u'"'+title+ u'"\t' +result[0]+u'\n')
	else:
		ogdcompare.write(u'"'+title+ u'"\t(titel)\n')
	return [(year).encode('utf-8'),(censor).encode('utf-8'),(freigabe).encode('utf-8'),genres,region]

use_wikipedia = False
use_ogdb = True

results = io.open("./rohdaten/enriched-data.dat", "w", encoding="utf8")

loop = 1
#for pspp_entry in pspp_data:
with io.open('./rohdaten/survey-data.dat', encoding='utf8') as f:
	reader = unicodecsv.reader(f,delimiter=';')
	for spss_entry in reader:
		# entry = re.split(',', spss_entry[:-1])
		#entry = cvs.reader(spss_entry[:-1], skipinitialspace=True)
		game = ''
		if len(spss_entry) > 46:
			game = spss_entry[41:46]
		else:
			sys.exit()

		# write data before items to insert
		for item in spss_entry[:46]:
			results.write(u'"'+item+u'";')
		for g in range(0,5): # 5 games (hardcoded)
			gameinfo = find_gameinfo(game[g])
			for i in range(0,5):
				results.write(u'\"'+gameinfo[i]+u'\";')
		for item in spss_entry[46:-1]:
			results.write(u'"'+item+u'";')
		results.write(u'"'+spss_entry[-1]+u'"\n')
		loop += 1
