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

from shared.luts import *

# SPSS-Export
rohdaten='./rohdaten/rohdaten2015.dat'


# Referer-Info
teilnehmer='./rohdaten/participants2015.csv'


# Dateien für Ergebnisse
feedback = io.open("./rohdaten/feedback2015.dat", "w", encoding="utf8")
results = io.open("./daten/daten2015.dat", "w", encoding="utf8")
zensurinfo = io.open("./rohdaten/zensurinfo2015.dat", "w", encoding="utf8")
nennungen = io.open("./daten/2015/nennungen.tsv", "w", encoding="utf8")
f_unbekannt = io.open("./daten/2015/unbekannte-titel.tsv", "w", encoding="utf8")


# Datenstruktur für unbekannte Titel
d_unbekannt = {}


# Dieses Dictionary ordnet einer IP-Adresse einen Referer zu
with io.open(teilnehmer, encoding='utf8') as ref_file:
    ref_reader = unicodecsv.reader(ref_file,delimiter=",")
    reflookup={long2ip(ref_entry[1]):community(ref_entry[2]) for ref_entry in ref_reader}


#write table headers
results.write(u'"gruppe";"Geburtsjahr";"Geschlecht";"WohnortDeutschland";"Breitbandzugang";"COAXSpeed";"DSLSpeed";"FunkSpeed";"Videospieler";"ExSpieler";"ExWann";"RandC";"RandX";"Multiplayer";"Erfahrung";"Plattform_PCMac";"Plattform_PCWin";"Plattform_PCLnx";"Plattform_Plystn";"Plattform_Wii";"Plattform_XBox";"Plattform_DS";"Plattform_Android";"Plattform_iPhone";"Plattform_WinPhone";"Nutzungsumfang";"SpielFrage";"Spiel1";"Release1";"Freigabe1";"Spiel2";"Release2 F4";"Freigabe2";"Spiel3";"Release3 F4";"Freigabe3";"Spiel4";"Release4 F4";"Freigabe4";"Spiel5";"Release5 F4";"Freigabe5";"Nutzungsdauer_SQ1";"Nutzungsdauer_SQ2";"Nutzungsdauer_SQ3";"Nutzungsdauer_SQ4";"Nutzungsdauer_SQ5";"Bezugsweg_SQ1";"Bezugsweg_SQ2";"Bezugsweg_SQ3";"Bezugsweg_SQ4";"Bezugsweg_SQ5";"Plattformen_SQ1";"Plattformen_SQ2";"Plattformen_SQ3";"Plattformen_SQ4";"Plattformen_SQ5";"LetzteNutzung_SQ1";"LetzteNutzung_SQ2";"LetzteNutzung_SQ3";"LetzteNutzung_SQ4";"LetzteNutzung_SQ5";"AusgabenHardware";"AusgabenSpieleKauf";"AusgabenSpieleAbos";"AusgabenAddonsDLCs";"AusgabenGameserver ";"Endmotivation_1";"Endmotivation_2";"Endmotivation_3";"Endmotivation_4";"Endmotivation_5";"Endmotivation_7";"Endmotivation_9";"Endzwang_SQ001";"Endzwang_SQ002";"Endverstndnis_1";"Endverstndnis_2";"Endverstndnis_3";"Endverstndnis_4";"Endverstndnis_5";"Endverstndnis_7";"Endverstndnis_9";"Startmotivation_1";"Startmotivation_2";"Startmotivation_3";"Startmotivation_4";"Startmotivation_5";"Illegalmotivation_1#0";"Illegalmotivation_1#1";"Illegalmotivation_2#0";"Illegalmotivation_2#1";"Illegalmotivation_3#0";"Illegalmotivation_3#1";"Illegalmotivation_4#0";"Illegalmotivation_4#1";"Illegalmotivation_5#0";"Illegalmotivation_5#1";"Illegalmotivation_6#0";"Illegalmotivation_6#1";"Illegalmotivation_7#0";"Illegalmotivation_7#1";"Illegalmotivation_8#0";"Illegalmotivation_8#1";"Illegalmotivation_9#0";"Illegalmotivation_9#1";"IllegalVerstaendnis_1";"IllegalVerstaendnis_2";"IllegalVerstaendnis_3";"IllegalVerstaendnis_4";"IllegalVerstaendnis_5";"IllegalVerstaendnis_6";"IllegalVerstaendnis_7";"IllegalVerstaendnis_8";"IllegalVerstaendnis_9";"Kennzeichenkenntnis_USK";"Kennzeichenkenntnis_PEGI";"Kennzeichenkenntnis_BPjM";"Kennzeichenkenntnis_StGB";"Kennzeichenkenntnis_GUrt";"Schnittkenntnis";"Zensurmeinung";"Zensurinformation";"Zensurinfowege_1";"Zensurinfowege_2";"Zensurinfowege_3";"Zensurinfowege_4";"Zensurinfowege_5";"Zensurinfowege_6";"UncutBezug";"UncutBezugErfolg";"UncutBezugWegKErf_SQ001";"UncutBezugWegKErf_SQ002";"UncutBezugWegKErf_SQ003";"UncutBezugWegKErf_SQ004";"UncutBezugWegKErf_SQ005";"UncutBezugWegKErf_SQ006";"UncutBezugWegKErf_SQ007";"UncutBezugWegKErf_SQ008";"UncutBezugWegKErf_SQ009";"UncutBezugWegKErf_SQ010";"UncutBezugWegErf_LI#0";"UncutBezugWegErf_LI#1";"UncutBezugWegErf_LA#0";"UncutBezugWegErf_LA#1";"UncutBezugWegErf_VI#0";"UncutBezugWegErf_VI#1";"UncutBezugWegErf_VA#0";"UncutBezugWegErf_VA#1";"UncutBezugWegErf_II#0";"UncutBezugWegErf_II#1";"UncutBezugWegErf_IL#0";"UncutBezugWegErf_IL#1";"UncutBezugWegErf_MD#0";"UncutBezugWegErf_MD#1";"UncutBezugWegErf_BI#0";"UncutBezugWegErf_BI#1";"UncutBezugWegErf_BA#0";"UncutBezugWegErf_BA#1";"UncutBezugWegErf_UA#0";"UncutBezugWegErf_UA#1";"UncutBezugWegErf_IB#0";"UncutBezugWegErf_IB#1";"Screenshots_NC";"Screenshots_CU";"Modifikationen_NC";"Modifikationen_CU";"eSport_NC";"eSport_CU";"Casten_NC";"Casten_CU";"LetsPlay_NC";"LetsPlay_CU";"Cheatbann";"Onlineaktivierung";"Onlinezwang";"Kontingent";"Kopierschutz";"Sicherheitskopie";"Datenschutz";"Geolock";"InfoFrage";"Informationsinteress_1#0";"Informationsinteress_1#1";"Informationsinteress_2#0";"Informationsinteress_2#1";"Informationsinteress_3#0";"Informationsinteress_3#1";"Informationsinteress_4#0";"Informationsinteress_4#1";"Informationsinteress_5#0";"Informationsinteress_5#1"\n')

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
            results.write(u'"'+gameinfo[0]+u' ('+gameinfo[1]+u')";')
            for i in range(1,3):
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

f_unbekannt.write(u'"Unbekannter Titel"\t"Nennungen"\n')
for item in sorted(d_unbekannt.items(),key=lambda x: x[1], reverse=True):
	f_unbekannt.write(u'"'+unicode(item[0])+u'"\t'+unicode(item[1])+u'\n')

