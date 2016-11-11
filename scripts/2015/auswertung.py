#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2015.dat',sep=";")

hist_alter = (2015-(data[data.Geburtsjahr>1950])['Geburtsjahr']).value_counts()
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

hist_freigabe=pd.concat([data['Freigabe1'],\
                         data['Freigabe2'],\
                         data['Freigabe3'],\
                         data['Freigabe4'],\
                         data['Freigabe5']]).value_counts()
hist_freigabe.sort_values(inplace=True,ascending=False)
pd.DataFrame(data=hist_freigabe,\
             columns=["Anzahl"]).to_csv("./daten/2015/freigabe.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           index_label=["Freigabe"])

