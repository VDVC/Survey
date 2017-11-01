#! /usr/bin/env python3

import pandas as pd
import csv
import numpy as np
import matplotlib.pyplot as plt
import matplotlib


data = pd.read_csv('daten/daten2016.dat',sep=";")

umfragejahrgang=2016

#alle

spiel1 = pd.DataFrame(data, columns=['Bezugsweg_1']).rename(columns={'Bezugsweg_1': 'Bezugsweg' })
spiel2 = pd.DataFrame(data, columns=['Bezugsweg_2']).rename(columns={'Bezugsweg_2': 'Bezugsweg' })
spiel3 = pd.DataFrame(data, columns=['Bezugsweg_3']).rename(columns={'Bezugsweg_3': 'Bezugsweg' })
spiel4 = pd.DataFrame(data, columns=['Bezugsweg_4']).rename(columns={'Bezugsweg_4': 'Bezugsweg' })
spiel5 = pd.DataFrame(data, columns=['Bezugsweg_5']).rename(columns={'Bezugsweg_5': 'Bezugsweg' })

bezugsweg = pd.concat([spiel1, spiel2, spiel3, spiel4, spiel5])

hist_bezugsweg=bezugsweg['Bezugsweg'].value_counts()

hist_bezugsweg = hist_bezugsweg.to_frame().rename(columns={"Bezugsweg": "Nenungen"})


hist_bezugsweg = hist_bezugsweg.rename(index={1.0: "Gekauf",2.0: "Beschenkt",3.0: "Geliehen", 4.0 : "Anderswo", 5.0: "Illegal"})


hist_bezugsweg.to_csv("./daten/"+str(umfragejahrgang)+"/spiele-bezugsweg.tsv",\
                                           sep='\t',
                                           quoting=csv.QUOTE_NONNUMERIC,
                                           float_format='%.f',
                                           index=True,
                                           index_label=["Bezugsweg"],
                                           encoding='utf-8')


