#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt
import matplotlib


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

hist_einstiegsalter=(data['Erfahrung']-data['Geburtsjahr']).value_counts()
hist_einstiegsalter.sort_index(inplace=True)
einstiegsalter_answers=hist_einstiegsalter.sum()
hist_einstiegsalter=hist_einstiegsalter.reindex(np.arange(0,21,1),fill_value=0)
hist_einstiegsalter = hist_einstiegsalter.to_frame()
hist_einstiegsalter=hist_einstiegsalter.rename(columns={"Geburtsjahr": "Anzahl"})
hist_einstiegsalter.to_csv("./daten/"+str(umfragejahrgang)+"/einstiegsalter.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Alter"])


hist_einstiegsalter=hist_einstiegsalter/einstiegsalter_answers*100

fig = plt.figure()
ax1 = plt.gca()
hist_einstiegsalter.plot(subplots=True,kind='bar',ax=ax1)
ax1.legend().set_visible(False)

ax1.set_title("Einstiegsalter (n = "+str(einstiegsalter_answers)+")")
ax1.set_xlabel("Einstiegsalter (Jahre)")
ax1.set_ylabel("Anteil (%)")
plt.savefig("plots/2016/einstiegsalter.eps")

