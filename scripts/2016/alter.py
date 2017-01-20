#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt
import matplotlib


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

hist_alter=(umfragejahrgang-data['Geburtsjahr']).value_counts()
hist_alter.sort_index(inplace=True)
hist_alter=hist_alter.to_frame()
hist_alter=hist_alter.rename(columns={"Geburtsjahr": "Gesamt"})

hist_alter_m=(umfragejahrgang-(data[data.Geschlecht==1.0])['Geburtsjahr']).value_counts()
hist_alter["Männlich"] = hist_alter_m.to_frame()

hist_alter_f=(umfragejahrgang-(data[data.Geschlecht==2.0])['Geburtsjahr']).value_counts()
hist_alter["Weiblich"] = hist_alter_f.to_frame()

# remove NaN and replace floats by integers
hist_alter = hist_alter.fillna(0).astype(int)

hist_alter=hist_alter.reindex(np.arange(10,51,1),fill_value=0)

hist_alter.to_csv("./daten/"+str(umfragejahrgang)+"/alter.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Alter"])

fig, axes = plt.subplots(ncols=2, sharey=True,tight_layout=True)
ax1 = axes[0]
ax2 = axes[1]

hist_alter["Männlich"].plot(subplots=True,kind='barh',ax=ax1)
ax1.legend().set_visible(False)
ax1.invert_xaxis()

hist_alter["Weiblich"].plot(subplots=True,kind='barh',ax=ax2)
ax2.legend().set_visible(False)

ax1.set_title("Männlich (n = "+str(hist_alter_m.sum())+")")
ax2.set_title("Weiblich (n = "+str(hist_alter_f.sum())+")")
ax1.set_xlabel("Anzahl")
ax1.set_ylabel("Alter (Jahre)")
ax2.set_xlabel("Anzahl")

plt.savefig("plots/2016/alter.eps")

