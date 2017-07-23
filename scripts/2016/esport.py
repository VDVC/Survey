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
from plot.PieChart import plot_PieChart

dataset = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

crosstab_ESportWichtig = pd.crosstab(dataset['Multiplayer'], dataset['ESportWichtig'])
crosstab_ESportWichtig.rename(	{	"A1": "Vorrangig Einzelspieler.",
										"A3": "Beides gleichermaßen.",
										"A5": "Vorrangig Mehrspieler."},
								columns={1: "Ja",2: "Nein"},
								inplace=True)

crosstab_ESportWichtig.to_csv("./daten/"+str(umfragejahrgang)+"/ESportWichtig_Multiplayer.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC)


hist_EsportWichtig = eval_JaNein(dataset,'ESportWichtig')
hist_EsportWichtig.to_csv("./daten/"+str(umfragejahrgang)+"/ESportWichtig.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["ESportWichtig"])
frage_EsportWichtig = "Ist es dir persönlich wichtig,\ndass E-Sport offiziell als Sport anerkannt wird?"
plot_PieChart(hist_EsportWichtig,frage_EsportWichtig,"plots/2016/ESportWichtig")



hist_ESportGrundExist = eval_JaNein(dataset,'ESportGrundExist')
hist_ESportGrundExist.to_csv("./daten/"+str(umfragejahrgang)+"/ESportGrundExist.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["ESportGrundExist"])
frage_ESportGrundExist = "Gibt es Gründe, weshalb du eine Anerkennung\nvon E-Sport als Sport befürwortest?"
plot_PieChart(hist_ESportGrundExist,frage_ESportGrundExist,"plots/2016/ESportGrundExist")

frage_ESportGrund = "Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von E-Sport als Sport?"
antworten_ESportGrund = {
"ESportGrund_Anerkennung": "Weil Videospiele dadurch gesellschaftlich anerkannt werden.",
"ESportGrund_Restriktion": "Weil Videospiele dann besser vor Restriktionen geschützt sind.",
"ESportGrund_Foerderung": "Weil die (wirtschaftliche) Förderung von Videospielen dadurch erleichtert wird."
}
counts_ESportGrund = eval_Anzahl(dataset,antworten_ESportGrund)
counts_ESportGrund.to_csv("./daten/"+str(umfragejahrgang)+"/ESportGrund.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["ESportGrund"])


ESportRealistisch = eval_AnzahlSumme(dataset,"ESportRealistisch")
ESportRealistisch.to_csv("./daten/"+str(umfragejahrgang)+"/ESportRealistisch.tsv",
						sep='\t',quoting=csv.QUOTE_NONNUMERIC,
						index_label=["ESportRealistisch"])

