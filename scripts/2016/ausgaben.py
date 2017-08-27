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


dataname='AusgabenSpieleKauf'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['Kauf(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['Kauf(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['Kauf(f)'] = df_ausgaben['N'].cumsum()

dataname='AusgabenSpieleAbos'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['Abo(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['Abo(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['Abo(f)'] = df_ausgaben['N'].cumsum()

dataname='AusgabenAddonsDLCs'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['DLC(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['DLC(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['DLC(f)'] = df_ausgaben['N'].cumsum()

dataname='AusgabenContent'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['Cont(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['Cont(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['Cont(f)'] = df_ausgaben['N'].cumsum()

dataname='AusgabenGameserver'
df_ausgaben['N'] = (data[dataname]).value_counts()
df_ausgaben['Server(alle)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==1.0)][dataname]).value_counts()
df_ausgaben['Server(m)'] = df_ausgaben['N'].cumsum()
df_ausgaben['N'] = (data[(data.Geschlecht==2.0)][dataname]).value_counts()
df_ausgaben['Server(f)'] = df_ausgaben['N'].cumsum()


del df_ausgaben['N']

df_ausgaben.to_csv("./daten/"+str(umfragejahrgang)+"/ausgaben.tsv",sep='\t',
                  quoting=csv.QUOTE_NONNUMERIC,index_label=["Ausgaben"])


