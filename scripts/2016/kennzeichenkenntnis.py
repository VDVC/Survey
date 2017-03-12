#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

variables = ["Kennzeichenkenntnis_USK","Kennzeichenkenntnis_PEGI","Kennzeichenkenntnis_BPjM","Kennzeichenkenntnis_StGB","Kennzeichenkenntnis_GUrt"]

data = data[variables]
data = data.rename(columns={
    "Kennzeichenkenntnis_USK": "USK",
    "Kennzeichenkenntnis_PEGI": "PEGI",
    "Kennzeichenkenntnis_BPjM": "BPjM",
    "Kennzeichenkenntnis_StGB": "StGB",
    "Kennzeichenkenntnis_GUrt": "Beschlagnahme"
})
data = data.replace({1.0: "Ja",2.0: "Unsicher", 3.0: "Nein"})

data = data.apply(pd.Series.value_counts)

data.to_csv("./daten/"+str(umfragejahrgang)+"/kennzeichenkenntnis.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Kennzeichenkenntnis"])

exit()

