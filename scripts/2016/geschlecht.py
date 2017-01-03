#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

hist_geschlecht=data['Geschlecht'].value_counts()
hist_geschlecht = hist_geschlecht.to_frame()
hist_geschlecht=hist_geschlecht.rename(columns={"Geschlecht": "Anzahl"})
hist_geschlecht = hist_geschlecht.rename(index={1.0: "m",2.0: "f",3.0: "s"})

hist_geschlecht.to_csv("./daten/"+str(umfragejahrgang)+"/geschlecht.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Geschlecht"])

plt.figure(figsize=(6,6),tight_layout=True)
ax = plt.subplot(111)
hist_geschlecht.plot(kind='pie',ax=ax,subplots=True)
plt.gca().legend().set_visible(False)
plt.title("Geschlecht")
plt.ylabel("")
plt.savefig("plots/2016/geschlecht.eps")
