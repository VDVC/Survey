#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt
import matplotlib


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

#alle

spiel1 = pd.DataFrame(data, columns=['Plattformen_1']).rename(columns={'Plattformen_1': 'Plattform' })
spiel2 = pd.DataFrame(data, columns=['Plattformen_2']).rename(columns={'Plattformen_2': 'Plattform' })
spiel3 = pd.DataFrame(data, columns=['Plattformen_3']).rename(columns={'Plattformen_3': 'Plattform' })
spiel4 = pd.DataFrame(data, columns=['Plattformen_4']).rename(columns={'Plattformen_4': 'Plattform' })
spiel5 = pd.DataFrame(data, columns=['Plattformen_5']).rename(columns={'Plattformen_5': 'Plattform' })

plattformen = pd.concat([spiel1, spiel2, spiel3, spiel4, spiel5])

hist_plattform=plattformen['Plattform'].value_counts()

hist_plattform = hist_plattform.to_frame().rename(columns={"Plattform": "Nenungen"})


hist_plattform.to_csv("./daten/"+str(umfragejahrgang)+"/spiele-platformen.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           float_format='%.f',
                                           index=True,
                                           index_label=["Plattform"],
                                           encoding='utf-8')


