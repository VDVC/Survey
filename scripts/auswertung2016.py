#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

hist_alter=(umfragejahrgang-(data[data.Geburtsjahr>1950])['Geburtsjahr']).value_counts()
hist_alter.sort_index(inplace=True)
hist_alter=hist_alter.reindex(np.arange(10,65,1),fill_value=0)
hist_alter = hist_alter.to_frame()
hist_alter=hist_alter.rename(columns={"Geburtsjahr": "Anzahl"})
hist_alter.to_csv("./daten/"+str(umfragejahrgang)+"/alter.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Alter"])

hist_game=pd.concat([data['Spiel_1'],\
                     data['Spiel_2'],\
                     data['Spiel_3'],\
                     data['Spiel_4'],\
                     data['Spiel_5']]).value_counts()
hist_game.sort_values(inplace=True,ascending=False)
pd.DataFrame(data=hist_game,\
             columns=["Anzahl"]).to_csv("./daten/"+str(umfragejahrgang)+"/titel.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           index_label=["Titel"])

freigabe=pd.concat([data['Freigabe_1'],\
                    data['Freigabe_2'],\
                    data['Freigabe_3'],\
                    data['Freigabe_4'],\
                    data['Freigabe_5']])
hist_freigabe = freigabe.value_counts()
hist_freigabe.sort_values(inplace=True,ascending=False)
pd.DataFrame(data=hist_freigabe,\
             columns=["Anzahl"]).to_csv("./daten/"+str(umfragejahrgang)+"/freigabe.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           index_label=["Freigabe"])

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
freigabe_alter["Gesamt"]=freigabe_alter["."]\
                        +freigabe_alter["USK0"]\
                        +freigabe_alter["USK12"]\
                        +freigabe_alter["USK16"]\
                        +freigabe_alter["USK18"]\
                        +freigabe_alter["USK6"]
pd.DataFrame(data=freigabe_alter).to_csv("./daten/"+str(umfragejahrgang)+"/freigabe-alter.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           index_label=["Alter"])


