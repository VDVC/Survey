#! /usr/bin/env python3

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

def eval_Anzahl(dataset,antworten):
	hist = dataset[list(antworten)].sum()
	hist = hist.to_frame()
	hist = hist.rename(columns={0: "Anzahl"})
	hist = hist.rename(index=antworten)
	return hist


