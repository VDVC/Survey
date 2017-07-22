#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt

import sys
sys.path.append('./scripts/shared/')


from auswertung.Anzahl import eval_Anzahl
from auswertung.AnzahlSumme import eval_AnzahlSumme
from auswertung.JaNein import eval_JaNein
from auswertung.WahlAus import eval_WahlAus
from plot.PieChart import plot_PieChart

dataset = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

antworten_Illegal_Du = {
"A3": "Ja, die meisten",
"A2": "Ja, einige",
"A1": "Fast keines",
"A0": "Kein einziges"
}

Illegal_Test_Du = eval_WahlAus(dataset,'Illegal_Test_Du',antworten_Illegal_Du)
Illegal_Geld_Du = eval_WahlAus(dataset,'Illegal_Geld_Du',antworten_Illegal_Du)
Illegal_Hass_Du = eval_WahlAus(dataset,'Illegal_Hass_Du',antworten_Illegal_Du)
Illegal_Quali_Du = eval_WahlAus(dataset,'Illegal_Quali_Du',antworten_Illegal_Du)
Illegal_Zensur_Du = eval_WahlAus(dataset,'Illegal_Zensur_Du',antworten_Illegal_Du)
Illegal_Einfach_Du = eval_WahlAus(dataset,'Illegal_Einfach_Du',antworten_Illegal_Du)
Illegal_Zusatz_Du = eval_WahlAus(dataset,'Illegal_Zusatz_Du',antworten_Illegal_Du)
Illegal_Freunde_Du = eval_WahlAus(dataset,'Illegal_Freunde_Du',antworten_Illegal_Du)
Illegal_NoDRM_Du = eval_WahlAus(dataset,'Illegal_NoDRM_Du',antworten_Illegal_Du)
Illegal_Du = pd.concat([Illegal_Test_Du,Illegal_Geld_Du,Illegal_Hass_Du,Illegal_Quali_Du,Illegal_Zensur_Du,Illegal_Einfach_Du,Illegal_Zusatz_Du,Illegal_Freunde_Du,Illegal_NoDRM_Du],axis=1)
Illegal_Du.to_csv("./daten/"+str(umfragejahrgang)+"/Illegal_Du.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Anteil Spiele"])

