#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

spiel1 = pd.DataFrame(data, columns=['Spiel_1','Release_1']).rename(columns={'Spiel_1': 'Titel', 'Release_1': 'Release' })
spiel2 = pd.DataFrame(data, columns=['Spiel_2','Release_2']).rename(columns={'Spiel_2': 'Titel', 'Release_2': 'Release' })
spiel3 = pd.DataFrame(data, columns=['Spiel_3','Release_3']).rename(columns={'Spiel_3': 'Titel', 'Release_3': 'Release' })
spiel4 = pd.DataFrame(data, columns=['Spiel_4','Release_4']).rename(columns={'Spiel_4': 'Titel', 'Release_4': 'Release' })
spiel5 = pd.DataFrame(data, columns=['Spiel_5','Release_5']).rename(columns={'Spiel_5': 'Titel', 'Release_5': 'Release' })

spiele = pd.concat([spiel1, spiel2, spiel3, spiel4, spiel5])

spiele['Nennungen'] = spiele.groupby(['Titel'])['Titel'].transform('count')

spiele.drop_duplicates(inplace=True)
spiele.sort_values(["Nennungen","Titel"],inplace=True,ascending=[False,True])


spiele.to_csv("./daten/"+str(umfragejahrgang)+"/titel.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           float_format='%.f',
                                           index=False)

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


