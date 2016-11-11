#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2015.dat',sep=";")

hist_alter=(2015-(data[data.Geburtsjahr>1950])['Geburtsjahr']).value_counts()
hist_alter.sort_index(inplace=True)
hist_alter=hist_alter.reindex(np.arange(10,65,1),fill_value=0)
hist_alter = hist_alter.to_frame()
hist_alter=hist_alter.rename(columns={"Geburtsjahr": "Anzahl"})
hist_alter.to_csv("./daten/2015/alter.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Alter"])

hist_game=pd.concat([data['Spiel1'],\
                     data['Spiel2'],\
                     data['Spiel3'],\
                     data['Spiel4'],\
                     data['Spiel5']]).value_counts()
hist_game.sort_values(inplace=True,ascending=False)
pd.DataFrame(data=hist_game,\
             columns=["Anzahl"]).to_csv("./daten/2015/titel.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           index_label=["Titel"])

freigabe=pd.concat([data['Freigabe1'],\
                    data['Freigabe2'],\
                    data['Freigabe3'],\
                    data['Freigabe4'],\
                    data['Freigabe5']])
hist_freigabe = freigabe.value_counts()
hist_freigabe.sort_values(inplace=True,ascending=False)
pd.DataFrame(data=hist_freigabe,\
             columns=["Anzahl"]).to_csv("./daten/2015/freigabe.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           index_label=["Freigabe"])

freigabe_alter=pd.crosstab(2015-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe1)\
              +pd.crosstab(2015-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe2)\
              +pd.crosstab(2015-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe3)\
              +pd.crosstab(2015-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe4)\
              +pd.crosstab(2015-(data[data.Geburtsjahr>1950])['Geburtsjahr'],\
               data.Freigabe5)
freigabe_alter=freigabe_alter.reindex(np.arange(10,65,1),fill_value=0)
freigabe_alter["Gesamt"]=freigabe_alter["."]\
                        +freigabe_alter["USK0"]\
                        +freigabe_alter["USK12"]\
                        +freigabe_alter["USK16"]\
                        +freigabe_alter["USK18"]\
                        +freigabe_alter["USK6"]
pd.DataFrame(data=freigabe_alter).to_csv("./daten/2015/freigabe-alter.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           index_label=["Alter"])


