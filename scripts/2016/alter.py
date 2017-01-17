#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

hist_alter=(umfragejahrgang-(data[data.Geburtsjahr>1950])['Geburtsjahr']).value_counts()
hist_alter.sort_index(inplace=True)
alter_answers=hist_alter.sum()
hist_alter=hist_alter.reindex(np.arange(10,65,1),fill_value=0)
hist_alter = hist_alter.to_frame()
hist_alter=hist_alter.rename(columns={"Geburtsjahr": "Anzahl"})
hist_alter.to_csv("./daten/"+str(umfragejahrgang)+"/alter.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Alter"])


hist_alter=hist_alter/alter_answers*100
hist_alter.plot(kind='bar',subplots=True)
plt.gca().legend().set_visible(False)
plt.gca().set_title("Alter (n = "+str(alter_answers)+")")
plt.show()

