#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

hist_group=data['Gruppe'].value_counts()
hist_group = hist_group.to_frame()
hist_group=hist_group.rename(columns={"Gruppe": "Anzahl"})
hist_group.to_csv("./daten/"+str(umfragejahrgang)+"/gruppe.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Gruppe"])

hist_group.plot(kind='pie',subplots=True)
plt.gca().legend().set_visible(False)
plt.show()
