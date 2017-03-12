#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt
import matplotlib


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

df_spielzeit=((data[data.Nutzungsumfang<168])['Nutzungsumfang']).value_counts()
df_spielzeit.sort_index(inplace=True)
df_spielzeit = df_spielzeit.to_frame()
df_spielzeit=df_spielzeit.rename(columns={"Nutzungsumfang": "Anzahl"})


df_spielzeit['Summe'] = df_spielzeit['Anzahl'].cumsum()
spielzeit_answers = df_spielzeit['Anzahl'].sum()

df_spielzeit.to_csv("./daten/"+str(umfragejahrgang)+"/spielzeit.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Alter"])


fig = plt.figure()
ax1 = plt.gca()
(df_spielzeit['Summe']/spielzeit_answers*100).plot(subplots=True,ax=ax1)
ax1.legend().set_visible(False)

ax1.set_title("Spielzeit (n = "+str(spielzeit_answers)+")")
ax1.set_xlabel("Durchschnittliche wöchentliche Spielzeit von maximal … Stunden")
ax1.set_ylabel("Anteil (%)")
ax1.set_xlim(1,80)
plt.savefig("plots/2016/spielzeit.eps")
plt.savefig("plots/2016/spielzeit.svg")
#plt.show()

