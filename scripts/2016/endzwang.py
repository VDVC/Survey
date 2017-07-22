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

antworten_Endzwang = {
"A1": "Ja, mehrfach",
"A2": "Ja, ein Mal",
"A3": "Nein, noch nie"
}

Endzwang_NeuesSystem = eval_WahlAus(dataset,'Endzwang_NeuesSystem',antworten_Endzwang)
Endzwang_NeuesSystem.to_csv("./daten/"+str(umfragejahrgang)+"/Endzwang_NeuesSystem.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Endzwang_NeuesSystem"])
                  
Endzwang_Supportende = eval_WahlAus(dataset,'Endzwang_Supportende',antworten_Endzwang)
Endzwang_Supportende.to_csv("./daten/"+str(umfragejahrgang)+"/Endzwang_Endzwang_Supportende.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Endzwang_Supportende"])

