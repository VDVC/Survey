#!/usr/bin/env python2
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
rohdaten='./rohdaten/rohdaten2016.dat'


# Referer-Info
teilnehmer='./rohdaten/participants2016.csv'


# Dateien für Ergebnisse
results = io.open("./daten/daten2016.dat", "w", encoding="utf8")
nennungen = io.open("./daten/2016/nennungen.tsv", "w", encoding="utf8")
f_unbekannt = io.open("./daten/2016/unbekannte-titel.tsv", "w", encoding="utf8")

kunst = io.open("./daten/2016/kunst-beispiele.tsv", "w", encoding="utf8")



# Dieses Dictionary ordnet einer IP-Adresse einen Referer zu
with io.open(teilnehmer, encoding='utf8') as ref_file:
    ref_reader = unicodecsv.reader(ref_file,delimiter=",")
    reflookup={long2ip(ref_entry[1]):community(ref_entry[2]) for ref_entry in ref_reader}


items=[]
items.append("") # RENAME VARIABLE ( V1 = id )
items.append("") #RENAME VARIABLE ( V2 = token ).
items.append("") #RENAME VARIABLE ( V3 = submitdate ).
items.append("") #RENAME VARIABLE ( V5 = startlanguage ).
items.append("") #RENAME VARIABLE ( V6 = startdate ).
items.append("") #RENAME VARIABLE ( V7 = datestamp ).
items.append("Gruppe") #RENAME VARIABLE ( V8 = ipaddr ).
items.append("") #RENAME VARIABLE ( V9 = refurl ).
items.append("Geburtsjahr") #RENAME VARIABLE ( V10 = Geburtsjahr ).
items.append("Geschlecht") #RENAME VARIABLE ( V11 = Geschlecht ).
items.append("WohnortDeutschland") #RENAME VARIABLE ( V12 = WohnortDeutschland ).
items.append("Breitbandzugang") #RENAME VARIABLE ( V13 = Breitbandzugang ).
items.append("BreitbandSpeed") #RENAME VARIABLE ( V14 = BreitbandSpeed ).
items.append("RandX") #RENAME VARIABLE ( V15 = Rand10 ).
items.append("Multiplayer") #RENAME VARIABLE ( V16 = Multiplayer ).
items.append("Erfahrung") #RENAME VARIABLE ( V17 = Erfahrung ).
items.append("Plattform_PCMac") #RENAME VARIABLE ( V18 = AllgemPlatt_Mac ).
items.append("Plattform_PCWin") #RENAME VARIABLE ( V19 = AllgemPlatt_Win ).
items.append("Plattform_PCLnx") #RENAME VARIABLE ( V20 = AllgemPlatt_Lnx ).
items.append("Plattform_Plystn") #RENAME VARIABLE ( V21 = AllgemPlatt_SPS ).
items.append("Plattform_Wii") #RENAME VARIABLE ( V22 = AllgemPlatt_Wii ).
items.append("Plattform_XBox") #RENAME VARIABLE ( V23 = AllgemPlatt_XBx ).
items.append("Plattform_DS") #RENAME VARIABLE ( V24 = AllgemPlatt_xDS ).
items.append("Plattform_Android") #RENAME VARIABLE ( V25 = AllgemPlatt_And ).
items.append("Plattform_iPhone") #RENAME VARIABLE ( V26 = AllgemPlatt_iOS ).
items.append("Plattform_WinPhone") #RENAME VARIABLE ( V27 = AllgemPlatt_WPh ).
items.append("Nutzungsumfang") #RENAME VARIABLE ( V28 = Nutzungsumfang ).
items.append("Spiel_1") #RENAME VARIABLE ( V29 = Products_SQ1 ).
items.append("Spiel_2") #RENAME VARIABLE ( V30 = Products_SQ2 ).
items.append("Spiel_3") #RENAME VARIABLE ( V31 = Products_SQ3 ).
items.append("Spiel_4") #RENAME VARIABLE ( V32 = Products_SQ4 ).
items.append("Spiel_5") #RENAME VARIABLE ( V33 = Products_SQ5 ).
items.append("Plattformen_1") #RENAME VARIABLE ( V34 = Plattformen_SQ1 ).
items.append("Plattformen_2") #RENAME VARIABLE ( V35 = Plattformen_SQ2 ).
items.append("Plattformen_3") #RENAME VARIABLE ( V36 = Plattformen_SQ3 ).
items.append("Plattformen_4") #RENAME VARIABLE ( V37 = Plattformen_SQ4 ).
items.append("Plattformen_5") #RENAME VARIABLE ( V38 = Plattformen_SQ5 ).
items.append("LetzteNutzung_1") #RENAME VARIABLE ( V39 = LetzteNutzung_SQ1 ).
items.append("LetzteNutzung_2") #RENAME VARIABLE ( V40 = LetzteNutzung_SQ2 ).
items.append("LetzteNutzung_3") #RENAME VARIABLE ( V41 = LetzteNutzung_SQ3 ).
items.append("LetzteNutzung_4") #RENAME VARIABLE ( V42 = LetzteNutzung_SQ4 ).
items.append("LetzteNutzung_5") #RENAME VARIABLE ( V43 = LetzteNutzung_SQ5 ).
items.append("Nutzungsdauer_1") #RENAME VARIABLE ( V44 = Nutzungsdauer_SQ1 ).
items.append("Nutzungsdauer_2") #RENAME VARIABLE ( V45 = Nutzungsdauer_SQ2 ).
items.append("Nutzungsdauer_3") #RENAME VARIABLE ( V46 = Nutzungsdauer_SQ3 ).
items.append("Nutzungsdauer_4") #RENAME VARIABLE ( V47 = Nutzungsdauer_SQ4 ).
items.append("Nutzungsdauer_5") #RENAME VARIABLE ( V48 = Nutzungsdauer_SQ5 ).
items.append("Bezugsweg_1") #RENAME VARIABLE ( V49 = Bezugsweg_SQ1 ).
items.append("Bezugsweg_2") #RENAME VARIABLE ( V50 = Bezugsweg_SQ2 ).
items.append("Bezugsweg_3") #RENAME VARIABLE ( V51 = Bezugsweg_SQ3 ).
items.append("Bezugsweg_4") #RENAME VARIABLE ( V52 = Bezugsweg_SQ4 ).
items.append("Bezugsweg_5") #RENAME VARIABLE ( V53 = Bezugsweg_SQ5 ).
items.append("AusgabenHardware") #RENAME VARIABLE ( V54 = Ausgaben_GHW ).
items.append("AusgabenSpieleKauf") #RENAME VARIABLE ( V55 = Ausgaben_ESK ).
items.append("AusgabenSpieleAbos") #RENAME VARIABLE ( V56 = Ausgaben_Abo ).
items.append("AusgabenAddonsDLCs") #RENAME VARIABLE ( V57 = Ausgaben_DLC ).
items.append("AusgabenContent") #RENAME VARIABLE ( V58 = Ausgaben_IGK ).
items.append("AusgabenGameserver") #RENAME VARIABLE ( V59 = Ausgaben_SRV ).
items.append("Endmotiv_Grafik") #RENAME VARIABLE ( V60 = Endmotivation_1 ).
items.append("Endmotiv_Nachfolger") #RENAME VARIABLE ( V61 = Endmotivation_2 ).
items.append("Endmotiv_Spielspass") #RENAME VARIABLE ( V62 = Endmotivation_3 ).
items.append("Endmotiv_Interessen") #RENAME VARIABLE ( V63 = Endmotivation_4 ).
items.append("Endmotiv_Freunde") #RENAME VARIABLE ( V64 = Endmotivation_5 ).
items.append("Endmotiv_Durch") #RENAME VARIABLE ( V65 = Endmotivation_7 ).
items.append("Endmotiv_Gameplay") #RENAME VARIABLE ( V66 = Endmotivation_9 ).
items.append("Endzwang_NeuesSystem") #RENAME VARIABLE ( V67 = Endzwang_SQ001 ).
items.append("Endzwang_Supportende") #RENAME VARIABLE ( V68 = Endzwang_SQ002 ).
items.append("Startmotiv_Vorgaenger") #RENAME VARIABLE ( V69 = Startmotivation_1 ).
items.append("Startmotiv_Gameplay") #RENAME VARIABLE ( V70 = Startmotivation_2 ).
items.append("Startmotiv_Story") #RENAME VARIABLE ( V71 = Startmotivation_3 ).
items.append("Startmotiv_Grafik") #RENAME VARIABLE ( V72 = Startmotivation_4 ).
items.append("Startmotiv_Freunde") #RENAME VARIABLE ( V73 = Startmotivation_5 ).
items.append("Illegal_Test_Du") #RENAME VARIABLE ( V74 = Illegalmotivation_1#0 ).
items.append("Illegal_Test_Ok") #RENAME VARIABLE ( V75 = Illegalmotivation_1#1 ).
items.append("Illegal_Geld_Du") #RENAME VARIABLE ( V76 = Illegalmotivation_2#0 ).
items.append("Illegal_Geld_Ok") #RENAME VARIABLE ( V77 = Illegalmotivation_2#1 ).
items.append("Illegal_Hass_Du") #RENAME VARIABLE ( V78 = Illegalmotivation_3#0 ).
items.append("Illegal_Hass_Ok") #RENAME VARIABLE ( V79 = Illegalmotivation_3#1 ).
items.append("Illegal_Quali_Du") #RENAME VARIABLE ( V80 = Illegalmotivation_4#0 ).
items.append("Illegal_Quali_Ok") #RENAME VARIABLE ( V81 = Illegalmotivation_4#1 ).
items.append("Illegal_Zensur_Du") #RENAME VARIABLE ( V82 = Illegalmotivation_5#0 ).
items.append("Illegal_Zensur_Ok") #RENAME VARIABLE ( V83 = Illegalmotivation_5#1 ).
items.append("Illegal_Einfach_Du") #RENAME VARIABLE ( V84 = Illegalmotivation_6#0 ).
items.append("Illegal_Einfach_Ok") #RENAME VARIABLE ( V85 = Illegalmotivation_6#1 ).
items.append("Illegal_Zusatz_Du") #RENAME VARIABLE ( V86 = Illegalmotivation_7#0 ).
items.append("Illegal_Zusatz_Ok") #RENAME VARIABLE ( V87 = Illegalmotivation_7#1 ).
items.append("Illegal_Freunde_Du") #RENAME VARIABLE ( V88 = Illegalmotivation_8#0 ).
items.append("Illegal_Freunde_Ok") #RENAME VARIABLE ( V89 = Illegalmotivation_8#1 ).
items.append("Illegal_NoDRM_Du") #RENAME VARIABLE ( V90 = Illegalmotivation_9#0 ).
items.append("Illegal_NoDRM_Ok") #RENAME VARIABLE ( V91 = Illegalmotivation_9#1 ).
items.append("Kennzeichenkenntnis_USK") #RENAME VARIABLE ( V92 = Kennzeichenkenntnis_USK ).
items.append("Kennzeichenkenntnis_PEGI") #RENAME VARIABLE ( V93 = Kennzeichenkenntnis_PEGI ).
items.append("Kennzeichenkenntnis_BPjM") #RENAME VARIABLE ( V94 = Kennzeichenkenntnis_BPjM ).
items.append("Kennzeichenkenntnis_StGB") #RENAME VARIABLE ( V95 = Kennzeichenkenntnis_StGB ).
items.append("Kennzeichenkenntnis_GUrt") #RENAME VARIABLE ( V96 = Kennzeichenkenntnis_GUrt ).
items.append("Schnittkenntnis") #RENAME VARIABLE ( V97 = Schnittkenntnis ).
items.append("Zensurmeinung") #RENAME VARIABLE ( V98 = Zensurmeinung ).
items.append("Zensurinformation") #RENAME VARIABLE ( V99 = Zensurinformation ).
items.append("Zensurinfowege_DeMag") #RENAME VARIABLE ( V100 = Zensurinfowege_1 ).
items.append("Zensurinfowege_NDMag") #RENAME VARIABLE ( V101 = Zensurinfowege_2 ).
items.append("Zensurinfowege_Forum") #RENAME VARIABLE ( V102 = Zensurinfowege_3 ).
items.append("Zensurinfowege_Website") #RENAME VARIABLE ( V103 = Zensurinfowege_4 ).
items.append("Zensurinfowege_BPjM") #RENAME VARIABLE ( V104 = Zensurinfowege_5 ).
items.append("Zensurinfowege_Andere") #RENAME VARIABLE ( V105 = Zensurinfowege_6 ).
items.append("") #RENAME VARIABLE ( V106 = Zensurinfowege_other ).
items.append("UncutBezug") #RENAME VARIABLE ( V107 = UncutBezug ).
items.append("UncutBezugErfolg") #RENAME VARIABLE ( V108 = UncutBezugErfolg ).
items.append("UncutBezugWegKErf_LadenInland") #RENAME VARIABLE ( V109 = UncutBezugWegKErf_SQ001 ).
items.append("UncutBezugWegKErf_LadenAusland") #RENAME VARIABLE ( V110 = UncutBezugWegKErf_SQ002 ).
items.append("UncutBezugWegKErf_OnlineInland") #RENAME VARIABLE ( V111 = UncutBezugWegKErf_SQ003 ).
items.append("UncutBezugWegKErf_OnlineAusland") #RENAME VARIABLE ( V112 = UncutBezugWegKErf_SQ004 ).
items.append("UncutBezugWegKErf_OnlineIllegal") #RENAME VARIABLE ( V113 = UncutBezugWegKErf_SQ005 ).
items.append("UncutBezugWegKErf_Bloodpatch") #RENAME VARIABLE ( V114 = UncutBezugWegKErf_SQ006 ).
items.append("UncutBezugWegKErf_Leihen") #RENAME VARIABLE ( V115 = UncutBezugWegKErf_SQ007 ).
items.append("UncutBezugWegKErf_BekannteAusland") #RENAME VARIABLE ( V116 = UncutBezugWegKErf_SQ008 ).
items.append("UncutBezugWegKErf_Gifter") #RENAME VARIABLE ( V117 = UncutBezugWegKErf_SQ009 ).
items.append("UncutBezugWegKErf_BekannteIllegal") #RENAME VARIABLE ( V118 = UncutBezugWegKErf_SQ010 ).
items.append("UncutBezugWegErf_LI_JN") #RENAME VARIABLE ( V119 = UncutBezugWegErf_LI#0 ).
items.append("UncutBezugWegErf_LI_Erfolg") #RENAME VARIABLE ( V120 = UncutBezugWegErf_LI#1 ).
items.append("UncutBezugWegErf_LA_JN") #RENAME VARIABLE ( V121 = UncutBezugWegErf_LA#0 ).
items.append("UncutBezugWegErf_LA_Erfolg") #RENAME VARIABLE ( V122 = UncutBezugWegErf_LA#1 ).
items.append("UncutBezugWegErf_VI_JN") #RENAME VARIABLE ( V123 = UncutBezugWegErf_VI#0 ).
items.append("UncutBezugWegErf_VI_Erfolg") #RENAME VARIABLE ( V124 = UncutBezugWegErf_VI#1 ).
items.append("UncutBezugWegErf_VA_JN") #RENAME VARIABLE ( V125 = UncutBezugWegErf_VA#0 ).
items.append("UncutBezugWegErf_VA_Erfolg") #RENAME VARIABLE ( V126 = UncutBezugWegErf_VA#1 ).
items.append("UncutBezugWegErf_II_JN") #RENAME VARIABLE ( V127 = UncutBezugWegErf_II#0 ).
items.append("UncutBezugWegErf_II_Erfolg") #RENAME VARIABLE ( V128 = UncutBezugWegErf_II#1 ).
items.append("UncutBezugWegErf_IL_JN") #RENAME VARIABLE ( V129 = UncutBezugWegErf_IL#0 ).
items.append("UncutBezugWegErf_IL_Erfolg") #RENAME VARIABLE ( V130 = UncutBezugWegErf_IL#1 ).
items.append("UncutBezugWegErf_MD_JN") #RENAME VARIABLE ( V131 = UncutBezugWegErf_MD#0 ).
items.append("UncutBezugWegErf_MD_Erfolg") #RENAME VARIABLE ( V132 = UncutBezugWegErf_MD#1 ).
items.append("UncutBezugWegErf_BI_JN") #RENAME VARIABLE ( V133 = UncutBezugWegErf_BI#0 ).
items.append("UncutBezugWegErf_BI_Erfolg") #RENAME VARIABLE ( V134 = UncutBezugWegErf_BI#1 ).
items.append("UncutBezugWegErf_BA_JN") #RENAME VARIABLE ( V135 = UncutBezugWegErf_BA#0 ).
items.append("UncutBezugWegErf_BA_Erfolg") #RENAME VARIABLE ( V136 = UncutBezugWegErf_BA#1 ).
items.append("UncutBezugWegErf_UA_JN") #RENAME VARIABLE ( V137 = UncutBezugWegErf_UA#0 ).
items.append("UncutBezugWegErf_UA_Erfolg") #RENAME VARIABLE ( V138 = UncutBezugWegErf_UA#1 ).
items.append("UncutBezugWegErf_IB_JN") #RENAME VARIABLE ( V139 = UncutBezugWegErf_IB#0 ).
items.append("UncutBezugWegErf_IB_Erfolg") #RENAME VARIABLE ( V140 = UncutBezugWegErf_IB#1 ).
items.append("Gewaltregler_Andere") #RENAME VARIABLE ( V141 = Gewaltregler_Andere ).
items.append("Gewaltregler_Ich") #RENAME VARIABLE ( V142 = Gewaltregler_Ich ).
items.append("Gewaltregler_Eltern") #RENAME VARIABLE ( V143 = Gewaltregler_Eltern ).
items.append("Onlineaktivierung") #RENAME VARIABLE ( V144 = Onlineaktivierung ).
items.append("Onlinezwang") #RENAME VARIABLE ( V145 = Onlinezwang ).
items.append("Kontingent") #RENAME VARIABLE ( V146 = Kontingent ).
items.append("Kopierschutz") #RENAME VARIABLE ( V147 = Kopierschutz ).
items.append("Sicherheitskopie") #RENAME VARIABLE ( V148 = Sicherheitskopie ).
items.append("Datenschutz") #RENAME VARIABLE ( V149 = Datenschutz ).
items.append("Geolock") #RENAME VARIABLE ( V150 = Geolock ).
items.append("Infointeress_Art_Info") #RENAME VARIABLE ( V151 = Infointeress1Jahr_1#0 ).
items.append("Infointeress_Art_JN") #RENAME VARIABLE ( V152 = Infointeress1Jahr_1#1 ).
items.append("Infointeress_Daten_Info") #RENAME VARIABLE ( V153 = Infointeress1Jahr_2#0 ).
items.append("Infointeress_Daten_JN") #RENAME VARIABLE ( V154 = Infointeress1Jahr_2#1 ).
items.append("Infointeress_Zensur_Info") #RENAME VARIABLE ( V155 = Infointeress1Jahr_3#0 ).
items.append("Infointeress_Zensur_JN") #RENAME VARIABLE ( V156 = Infointeress1Jahr_3#1 ).
items.append("Infointeress_Multi_Info") #RENAME VARIABLE ( V157 = Infointeress1Jahr_4#0 ).
items.append("Infointeress_Multi_JN") #RENAME VARIABLE ( V158 = Infointeress1Jahr_4#1 ).
items.append("Infointeress_DLC_Info") #RENAME VARIABLE ( V159 = Infointeress1Jahr_5#0 ).
items.append("Infointeress_DLC_JN") #RENAME VARIABLE ( V160 = Infointeress1Jahr_5#1 ).

items.append("KunstWichtig") #RENAME VARIABLE ( V161 = KunstWichtig ).
items.append("KunstGrundExist") #RENAME VARIABLE ( V162 = KunstGrundExist ).
items.append("KunstGrund_Anerkennung") #RENAME VARIABLE ( V163 = KunstGrund_1 ).
items.append("KunstGrund_Restriktion") #RENAME VARIABLE ( V164 = KunstGrund_2 ).
items.append("KunstGrund_Foerderung") #RENAME VARIABLE ( V165 = KunstGrund_3 ).
items.append("") #RENAME VARIABLE ( V166 = KunstGrund_other ).
items.append("KunstRealistisch") #RENAME VARIABLE ( V167 = KunstRealistisch ).
items.append("KunstBeispiel") #RENAME VARIABLE ( V168 = KunstBeispiel ).
items.append("KunstBeispielName") #RENAME VARIABLE ( V169 = KunstBeispielName ).
items.append("VRErfahrung") #RENAME VARIABLE ( V170 = VRErfahrung ).
items.append("VRPlan") #RENAME VARIABLE ( V171 = VRPlan ).
items.append("VRNein_Preis") #RENAME VARIABLE ( V172 = VRNein_1 ).
items.append("VRNein_KaumSpiele") #RENAME VARIABLE ( V173 = VRNein_2 ).
items.append("VRNein_Vorliebe") #RENAME VARIABLE ( V174 = VRNein_3 ).
items.append("") #RENAME VARIABLE ( V175 = VRNein_other ).
items.append("VRErfolg") #RENAME VARIABLE ( V176 = VRErfolg ).
items.append("ESportWichtig") #RENAME VARIABLE ( V177 = ESportWichtig ).
items.append("ESportGrundExist") #RENAME VARIABLE ( V178 = ESportGrundExist ).
items.append("ESportGrund_Anerkennung") #RENAME VARIABLE ( V179 = ESportGrund_1 ).
items.append("ESportGrund_Restriktion") #RENAME VARIABLE ( V180 = ESportGrund_2 ).
items.append("ESportGrund_Foerderung") #RENAME VARIABLE ( V181 = ESportGrund_3 ).
items.append("") #RENAME VARIABLE ( V182 = ESportGrund_other ).
items.append("ESportRealistisch") #RENAME VARIABLE ( V183 = ESportRealistisch ).

items.append("") #RENAME VARIABLE ( V184 = feddbacktext ).
items.append("Release_1")
items.append("Release_2")
items.append("Release_3")
items.append("Release_4")
items.append("Release_5")
items.append("Freigabe_1")
items.append("Freigabe_2")
items.append("Freigabe_3")
items.append("Freigabe_4")
items.append("Freigabe_5")

#write table headers
for item in items:
    if item != "" and item != "KunstBeispielName":
        results.write(u'"'+item+u'";')

results.write(u'\n')

# Anzahl der Nennungen
gameshist=[0,0,0,0,0,0]

# Lese Rohdaten ein
with io.open(rohdaten, encoding='utf8') as f:
    reader = unicodecsv.reader(f,delimiter=';',quotechar='"')
    for spss_entry in reader:
        ngames=0
        gameinfo = []
        if len(spss_entry) != 183:
            print("Error in Entry:")
            print(spss_entry)
        
        for item in zip(items,spss_entry):
            if item[0] == "":
                continue
            elif item[0] == "KunstBeispielName":
                if item[1] != "":
                    kunst.write(item[1]+u"\n")
            elif item[0][:5] == "Spiel":
                game = item[1]
                if (len(game) > 1):
                    ngames=ngames+1
                if game.lower() in namelookup:
                    game = namelookup[game.lower()]
                gameinfo.append(find_gameinfo(game))
                results.write(u'"'+gameinfo[-1][0]+u'";')
            elif item[0] == "Gruppe":
                if item[1] in reflookup:
                    results.write(u'"'+reflookup[item[1]]+u'";')
                else:
                    results.write(u'"";')
            else:
                results.write(u'"'+item[1]+u'";')
                
        # zusätzliche Info (Release und Freigabe)
        for i in range(1,3):
            for gi in gameinfo:
                    results.write(u'\"'+gi[i]+u'\";')

        # Datensatz fertig verarbeitet, neue Zeile!
        results.write(u'\n')
        gameshist[ngames] = gameshist[ngames]+1

nennungen.write(u'"Genannte Titel"\t"Häufigkeit"\n')
for nr in range(0,6):
    nennungen.write(unicode(nr)+u'\t'+unicode(gameshist[nr])+u'\n')

f_unbekannt.write(u'"Unbekannter Titel"\t"Nennungen"\n')
for item in sorted(d_unbekannt.items(),key=lambda x: x[1], reverse=True):
    f_unbekannt.write(u'"'+unicode(item[0])+u'"\t'+unicode(item[1])+u'\n')

