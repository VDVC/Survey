#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt
import matplotlib


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

#alle

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

# nur m

data_m = data[data.Geschlecht == 1.0]

spiel1 = pd.DataFrame(data_m, columns=['Spiel_1','Release_1']).rename(columns={'Spiel_1': 'Titel', 'Release_1': 'Release' })
spiel2 = pd.DataFrame(data_m, columns=['Spiel_2','Release_2']).rename(columns={'Spiel_2': 'Titel', 'Release_2': 'Release' })
spiel3 = pd.DataFrame(data_m, columns=['Spiel_3','Release_3']).rename(columns={'Spiel_3': 'Titel', 'Release_3': 'Release' })
spiel4 = pd.DataFrame(data_m, columns=['Spiel_4','Release_4']).rename(columns={'Spiel_4': 'Titel', 'Release_4': 'Release' })
spiel5 = pd.DataFrame(data_m, columns=['Spiel_5','Release_5']).rename(columns={'Spiel_5': 'Titel', 'Release_5': 'Release' })

spiele = pd.concat([spiel1, spiel2, spiel3, spiel4, spiel5])

spiele['Nennungen'] = spiele.groupby(['Titel'])['Titel'].transform('count')

spiele.drop_duplicates(inplace=True)
spiele.sort_values(["Nennungen","Titel"],inplace=True,ascending=[False,True])


spiele.to_csv("./daten/"+str(umfragejahrgang)+"/titel_m.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           float_format='%.f',
                                           index=False)

# nur f

data_f = data[data.Geschlecht == 2.0]

spiel1 = pd.DataFrame(data_f, columns=['Spiel_1','Release_1']).rename(columns={'Spiel_1': 'Titel', 'Release_1': 'Release' })
spiel2 = pd.DataFrame(data_f, columns=['Spiel_2','Release_2']).rename(columns={'Spiel_2': 'Titel', 'Release_2': 'Release' })
spiel3 = pd.DataFrame(data_f, columns=['Spiel_3','Release_3']).rename(columns={'Spiel_3': 'Titel', 'Release_3': 'Release' })
spiel4 = pd.DataFrame(data_f, columns=['Spiel_4','Release_4']).rename(columns={'Spiel_4': 'Titel', 'Release_4': 'Release' })
spiel5 = pd.DataFrame(data_f, columns=['Spiel_5','Release_5']).rename(columns={'Spiel_5': 'Titel', 'Release_5': 'Release' })

spiele = pd.concat([spiel1, spiel2, spiel3, spiel4, spiel5])

spiele['Nennungen'] = spiele.groupby(['Titel'])['Titel'].transform('count')

spiele.drop_duplicates(inplace=True)
spiele.sort_values(["Nennungen","Titel"],inplace=True,ascending=[False,True])


spiele.to_csv("./daten/"+str(umfragejahrgang)+"/titel_f.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           float_format='%.f',
                                           index=False)

