#! /usr/bin/env python3

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

def eval_AnzahlSumme(dataset,frage):
	data = dataset[frage].value_counts()
	data = data.to_frame()
	data = data.rename(columns={0: "Anzahl"})
	data.sort_index(inplace=True)
	data["Summe"] = data["Anzahl"].cumsum()
	return data


