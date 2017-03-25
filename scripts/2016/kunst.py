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

antworten_KunstWichtig = {
1: "Auf jeden Fall",
2: "Eher ja",
3: "Vielleicht",
4: "Eher nicht",
5: "Auf keinen Fall"
}
hist_KunstWichtig = eval_WahlAus(dataset,'KunstWichtig',antworten_KunstWichtig)
hist_KunstWichtig.to_csv("./daten/"+str(umfragejahrgang)+"/KunstWichtig.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["KunstWichtig"])
frage_KunstWichtig = 'Ist es dir persönlich wichtig, dass Videospiele deutlicher\nals bisher "offiziell" als Kunst anerkannt werden?'
plot_PieChart(hist_KunstWichtig,frage_KunstWichtig,"plots/2016/KunstWichtig")



hist_KunstGrundExist = eval_JaNein(dataset,'KunstGrundExist')
hist_KunstGrundExist.to_csv("./daten/"+str(umfragejahrgang)+"/KunstGrundExist.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["KunstGrundExist"])
frage_KunstGrundExist = "Gibt es Gründe, weshalb du eine Anerkennung\nvon Videospielen als Kunst befürwortest?"
plot_PieChart(hist_KunstGrundExist,frage_KunstGrundExist,"plots/2016/KunstGrundExist")


frage_KunstGrund = "Aus welchen der folgenden Gründe befürwortest du eine\nformelle Anerkennung von Videospielen als Kunst?"
antworten_KunstGrund = {
"KunstGrund_Anerkennung": "Weil Videospiele dadurch gesellschaftlich anerkannt werden.",
"KunstGrund_Restriktion": "Weil Videospiele dann besser vor Restriktionen geschützt sind.",
"KunstGrund_Foerderung": "Weil die (wirtschaftliche) Förderung von Videospielen dadurch erleichtert wird."
}
counts_KunstGrund = eval_Anzahl(dataset,antworten_KunstGrund)
counts_KunstGrund.to_csv("./daten/"+str(umfragejahrgang)+"/KunstGrund.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["KunstGrund"])


KunstRealistisch = eval_AnzahlSumme(dataset,"KunstRealistisch")
KunstRealistisch.to_csv("./daten/"+str(umfragejahrgang)+"/KunstRealistisch.tsv",
						sep='\t',quoting=csv.QUOTE_NONNUMERIC,
						index_label=["KunstRealistisch"])

