#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt
import matplotlib


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

hist_alter_m=(umfragejahrgang-(data[data.Geschlecht==1.0])['Geburtsjahr']).value_counts()
hist_alter_m.sort_index(inplace=True)
alter_m_answers=hist_alter_m.sum()
hist_alter_m=hist_alter_m.reindex(np.arange(10,51,1),fill_value=0)
hist_alter_m = hist_alter_m.to_frame()
hist_alter_m=hist_alter_m.rename(columns={"Geburtsjahr": "Anzahl"})
hist_alter_m.to_csv("./daten/"+str(umfragejahrgang)+"/alter_m.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Alter"])

hist_alter_f=(umfragejahrgang-(data[data.Geschlecht==2.0])['Geburtsjahr']).value_counts()
hist_alter_f.sort_index(inplace=True)
alter_f_answers=hist_alter_f.sum()
hist_alter_f=hist_alter_f.reindex(np.arange(10,51,1),fill_value=0)
hist_alter_f = hist_alter_f.to_frame()
hist_alter_f=hist_alter_f.rename(columns={"Geburtsjahr": "Anzahl"})
hist_alter_f.to_csv("./daten/"+str(umfragejahrgang)+"/alter_f.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Alter"])

alter_answers=alter_m_answers+alter_f_answers

hist_alter_m=hist_alter_m/alter_m_answers*100
hist_alter_f=hist_alter_f/alter_f_answers*100

fig, axes = plt.subplots(ncols=2, sharey=True,tight_layout=True)
ax1 = axes[0]
ax2 = axes[1]

hist_alter_m.plot(subplots=True,kind='barh',ax=ax1)
ax1.legend().set_visible(False)
ax1.invert_xaxis()

hist_alter_f.plot(subplots=True,kind='barh',ax=ax2)
ax2.legend().set_visible(False)

ax1.set_title("Männlich (n = "+str(alter_m_answers)+")")
ax2.set_title("Weiblich (n = "+str(alter_f_answers)+")")
ax1.set_xlabel("Anteil (%)")
ax1.set_ylabel("Alter (Jahre)")
ax2.set_xlabel("Anteil (%)")
plt.savefig("plots/2016/alter.eps")

