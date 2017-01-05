#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

hist_esport_wichtig=data['ESportWichtig'].value_counts()
hist_esport_wichtig = hist_esport_wichtig.to_frame()
hist_esport_wichtig=hist_esport_wichtig.rename(columns={"E-Sport wichtig": "Anzahl"})
hist_esport_wichtig = hist_esport_wichtig.rename(index={1: "Ja",2: "Nein"})

hist_esport_wichtig.to_csv("./daten/"+str(umfragejahrgang)+"/esport_wichtig.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["ESportWichtig"])

plt.figure(figsize=(6,6),tight_layout=True)
ax = plt.subplot(111)
hist_esport_wichtig.plot(kind='pie',ax=ax,subplots=True)
plt.gca().legend().set_visible(False)
plt.title("Ist es dir persönlich wichtig,\ndass E-Sport offiziell als Sport anerkannt wird?")
plt.ylabel("")
plt.savefig("plots/2016/esport_wichtig.eps")
