#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

freigabe_alter=pd.crosstab(umfragejahrgang-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe_1)\
              +pd.crosstab(umfragejahrgang-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe_2)\
              +pd.crosstab(umfragejahrgang-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe_3)\
              +pd.crosstab(umfragejahrgang-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe_4)\
              +pd.crosstab(umfragejahrgang-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe_5)
freigabe_alter=freigabe_alter.reindex(np.arange(10,65,1),fill_value=0)
freigabe_alter["Gesamt"]=freigabe_alter["????"]\
                        +freigabe_alter["USK0"]\
                        +freigabe_alter["USK12"]\
                        +freigabe_alter["USK16"]\
                        +freigabe_alter["USK18"]\
                        +freigabe_alter["USK6"]
pd.DataFrame(data=freigabe_alter).to_csv("./daten/"+str(umfragejahrgang)+"/freigabe-alter.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           index_label=["Alter"])

spielzeit_alter=pd.crosstab(data.Nutzungsumfang,\
               np.floor((umfragejahrgang-(data[data.Geburtsjahr>1950])['Geburtsjahr'])/5)*5)

spielzeit_alter=spielzeit_alter.cumsum()
pd.DataFrame(data=spielzeit_alter).to_csv("./daten/"+str(umfragejahrgang)+"/spielzeit-alter.tsv",\
                                           sep='\t',
                                           index_label=["Spielzeit"])


