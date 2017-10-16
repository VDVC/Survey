#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt
import matplotlib


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016


dataname='AusgabenHardware'

df_ausgaben=(data['AusgabenHardware']).value_counts()
df_ausgaben.sort_index(inplace=True)
df_ausgaben = df_ausgaben.to_frame()
df_ausgaben=df_ausgaben.rename(columns={dataname: "N"})
df_ausgaben['HW(alle)'] = df_ausgaben["N"].cumsum()

df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['HW(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['HW(f)'] = df_ausgaben['N'].cumsum()

def make_crosstab():
    crosstab=pd.crosstab(data[dataname],\
               np.floor((umfragejahrgang-(data[data.Geburtsjahr>1950])['Geburtsjahr'])/5)*5)
    crosstab=crosstab.cumsum()
    pd.DataFrame(data=crosstab).to_csv("./daten/"+str(umfragejahrgang)+"/"+dataname+"-alter.tsv",\
                                           sep='\t',
                                           index_label=["Betrag"])

make_crosstab()

dataname='AusgabenSpieleKauf'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['Kauf(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['Kauf(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['Kauf(f)'] = df_ausgaben['N'].cumsum()

make_crosstab()

dataname='AusgabenSpieleAbos'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['Abo(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['Abo(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['Abo(f)'] = df_ausgaben['N'].cumsum()

make_crosstab()

dataname='AusgabenAddonsDLCs'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['DLC(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['DLC(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['DLC(f)'] = df_ausgaben['N'].cumsum()

make_crosstab()

dataname='AusgabenContent'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['Cont(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['Cont(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['Cont(f)'] = df_ausgaben['N'].cumsum()

make_crosstab()

dataname='AusgabenGameserver'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['Server(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['Server(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['Server(f)'] = df_ausgaben['N'].cumsum()

make_crosstab()

del df_ausgaben['N']

# temporäre erste Zeile mit Nullen
df_ausgaben.loc[df_ausgaben.index.min() - 1] = np.zeros(df_ausgaben.shape[1])
df_ausgaben.sort_index(inplace=True)

df_ausgaben = df_ausgaben.ffill()

df_ausgaben = df_ausgaben.applymap(np.int64)

df_ausgaben.drop(df_ausgaben.index[0],inplace=True)

df_ausgaben.insert(0,'Betrag',df_ausgaben.index)


df_ausgaben.to_csv("./daten/"+str(umfragejahrgang)+"/ausgaben.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index=False)


