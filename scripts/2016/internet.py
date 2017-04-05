#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

variables = ["Breitbandzugang","BreitbandSpeed"]

data = data[variables]
data = data.rename(columns={
    "Breitbandzugang": "Internetzugang"
})
data = data.replace({"Nope": "Keiner", "Sonst": "Anderer"})

data["BreitbandSpeed"] = data["BreitbandSpeed"].astype(float)

zugang = data["Internetzugang"].value_counts().to_frame()
zugang = zugang.rename(columns={"Internetzugang": "Anzahl"})

zugang.to_csv("./daten/"+str(umfragejahrgang)+"/internetzugang.tsv",sep='\t',
                   quoting=csv.QUOTE_NONNUMERIC,index_label=["Internetzugang"])

speed = data["BreitbandSpeed"].value_counts().to_frame()
speed = speed.rename(columns={"BreitbandSpeed": "Anzahl"})
speed.sort_index(inplace=True)
speed["Summe"] = speed["Anzahl"].cumsum()

speed.to_csv("./daten/"+str(umfragejahrgang)+"/internetspeed.tsv",sep='\t',
                   index_label=["Internetgeschwindigkeit"])

frage_BreitbandSpeed="Wie schnell ist der Internetzugang an deinem Wohnort?"

plt.figure(figsize=(6,3),tight_layout=True)
ax = plt.subplot(111)
plt.plot(speed["Summe"])
plt.gca().legend().set_visible(False)
plt.title(frage_BreitbandSpeed)
plt.xlabel("Geschwindigkeit (MBit/s)")
plt.ylabel("Anzahl")
plt.xlim(1,500)
plt.ylim(0,1000)
plt.xscale("log")

fname = "./plots/"+str(umfragejahrgang)+"/internetspeed-summe"
plt.savefig(fname+".eps")
plt.savefig(fname+".svg")

plt.figure(figsize=(6,3),tight_layout=True)
ax = plt.subplot(111)
plt.plot(speed["Anzahl"])
plt.gca().legend().set_visible(False)
plt.title(frage_BreitbandSpeed)
plt.xlabel("Geschwindigkeit (MBit/s)")
plt.ylabel("Anzahl")
plt.xlim(0,110)

fname = "./plots/"+str(umfragejahrgang)+"/internetspeed"
plt.savefig(fname+".eps")
plt.savefig(fname+".svg")

exit()

