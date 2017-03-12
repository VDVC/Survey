#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt
import matplotlib


rawdata = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016


def data2hist(data):
    hist=(data['Erfahrung']-data['Geburtsjahr']).value_counts()
    hist.sort_index(inplace=True)
    answers=hist.sum()
    hist=hist.reindex(np.arange(0,21,1),fill_value=0)
    hist=hist.to_frame()
    hist=hist.rename(columns={"Geburtsjahr": "Anzahl"})
    return answers,hist

data=rawdata

answers,hist=data2hist(data)
hist.rename(columns={0: 'gesamt'}, inplace=True)

# plot relativ zur Gesamtheit
hist_rel=hist/answers*100

fig = plt.figure()
ax1 = plt.gca()
hist_rel.plot(subplots=True,kind='bar',ax=ax1)
ax1.legend().set_visible(False)

ax1.set_title("Einstiegsalter (n = "+str(answers)+")")
ax1.set_xlabel("Einstiegsalter (Jahre)")
ax1.set_ylabel("Anteil (%)")
plt.savefig("plots/2016/einstiegsalter.eps")
plt.savefig("plots/2016/einstiegsalter.svg")

answers,hist['1970-1974']=data2hist(data[(data.Geburtsjahr>=1970)&(data.Geburtsjahr<1975)])
answers,hist['1975-1979']=data2hist(data[(data.Geburtsjahr>=1975)&(data.Geburtsjahr<1980)])
answers,hist['1980-1984']=data2hist(data[(data.Geburtsjahr>=1980)&(data.Geburtsjahr<1985)])
answers,hist['1985-1989']=data2hist(data[(data.Geburtsjahr>=1985)&(data.Geburtsjahr<1990)])
answers,hist['1990-1994']=data2hist(data[(data.Geburtsjahr>=1990)&(data.Geburtsjahr<1995)])
answers,hist['1995-1999']=data2hist(data[(data.Geburtsjahr>=1995)&(data.Geburtsjahr<2000)])
answers,hist['2000-2004']=data2hist(data[(data.Geburtsjahr>=2000)&(data.Geburtsjahr<2005)])

hist.to_csv("./daten/"+str(umfragejahrgang)+"/einstiegsalter.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Einstiegsalter"])

