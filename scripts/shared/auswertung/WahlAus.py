#! /usr/bin/env python3

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

def eval_WahlAus(dataset,dataname,antworten):
	hist = dataset[dataname].value_counts()
	hist = hist.to_frame()
	hist = hist.rename(columns={0: "Anzahl"})
	hist = hist.rename(index=antworten)
	return hist


