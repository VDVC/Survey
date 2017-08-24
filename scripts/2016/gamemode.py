# -*- coding: utf-8 -*-

#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


rawdata = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

def data2hist(data):
    hist=data['Multiplayer'].value_counts()
    hist = hist.to_frame()
    hist=hist.rename(columns={"Geschlecht": "Anzahl"})
    hist = hist.rename(index={"A1":"Einzelspieler","A3":"Beides","A5":"Mehrspieler"})
    return hist

data=rawdata

hist=data2hist(data)

plt.figure(figsize=(6,6),tight_layout=True)
ax = plt.subplot(111)
hist.plot(kind='pie',ax=ax,subplots=True)
plt.gca().legend().set_visible(False)
plt.title("Spielmodus")
plt.ylabel("")
plt.savefig("plots/2016/gamemode.eps")
plt.savefig("plots/2016/gamemode.svg")

hist.rename(columns={"Multiplayer":"Gesamt"}, inplace=True)
hist['1970-1974']=data2hist(data[(data.Geburtsjahr>=1970)&(data.Geburtsjahr<1975)])
hist['1975-1979']=data2hist(data[(data.Geburtsjahr>=1975)&(data.Geburtsjahr<1980)])
hist['1980-1984']=data2hist(data[(data.Geburtsjahr>=1980)&(data.Geburtsjahr<1985)])
hist['1985-1989']=data2hist(data[(data.Geburtsjahr>=1985)&(data.Geburtsjahr<1990)])
hist['1990-1994']=data2hist(data[(data.Geburtsjahr>=1990)&(data.Geburtsjahr<1995)])
hist['1995-1999']=data2hist(data[(data.Geburtsjahr>=1995)&(data.Geburtsjahr<2000)])
hist['2000-2004']=data2hist(data[(data.Geburtsjahr>=2000)&(data.Geburtsjahr<2005)])


hist['m']=data2hist(data[(data.Geschlecht==1.0)])
hist['f']=data2hist(data[(data.Geschlecht==2.0)])

hist.to_csv("./daten/"+str(umfragejahrgang)+"/gamemode.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Gamemode"])

