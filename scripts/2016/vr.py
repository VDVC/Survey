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

VRErfahrung_antworten = {
1: "Besitz",
2: "Zugang",
3: "Einmalig",
4: "Nein"
}
VRErfahrung = eval_WahlAus(dataset,'VRErfahrung',VRErfahrung_antworten)
VRErfahrung.to_csv("./daten/"+str(umfragejahrgang)+"/VRErfahrung.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["VRErfahrung"])
VRErfahrung_frage = 'Hattest du schon Kontakt mit einer VR-Brille?'
plot_PieChart(VRErfahrung,VRErfahrung_frage,"plots/2016/VRErfahrung",115)


VRPlan_antworten = {
2: "Ja.",
3: "Ich zögere noch.",
4: "Nein."
}
VRPlan = eval_WahlAus(dataset,'VRPlan',VRPlan_antworten)
VRPlan.to_csv("./daten/"+str(umfragejahrgang)+"/VRPlan.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["VRPlan"])
VRPlan_frage = 'Planst du dir eine VR-Brille zuzulegen?'
plot_PieChart(VRPlan,VRPlan_frage,"plots/2016/VRPlan",0)

VRGegenGrund_frage = "Aus welchen der folgenden Gründe befürwortest du eine\nformelle Anerkennung von Videospielen als Kunst?"
VRGegenGrund_antworten = {
"VRNein_Preis": "Sie sind (noch) zu teuer.",
"VRNein_KaumSpiele": "Es gibt (noch) zu wenige Spiele.",
"VRNein_Vorliebe": "Sie bringt für meine Spiele nichts."
}
counts_VRGegenGrund = eval_Anzahl(dataset,VRGegenGrund_antworten)
counts_VRGegenGrund.to_csv("./daten/"+str(umfragejahrgang)+"/VRGegenGrund.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["VRGegenGrund"])


VRErfolg_antworten = {
1: "Ja, VR-Brillen werden das Gaming komplett verändern.",
2: "Weniger, es wird bei manchen Genres seine Nische finden.",
3: "Nicht in der jetzt bekannten Form. Es wird noch einige Jahre dauern.",
4: "VR wird sich in anderen Bereichen, nicht aber für Gaming durchsetzen.",
5: "Nein, VR ist eine Moderscheinung, die nichts für den Massenmarkt werden wird.",
6: "Keine Meinung/Unentschlossen."
}
VRErfolg = eval_WahlAus(dataset,'VRErfolg',VRErfolg_antworten)
VRErfolg.to_csv("./daten/"+str(umfragejahrgang)+"/VRErfolg.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Antwort"])
VRErfolg_frage = 'Glaubst du, dass sich VR bei Videospielen durchsetzen wird?'
plot_PieChart(VRErfolg,VRErfolg_frage,"plots/2016/VRErfolg",0)
