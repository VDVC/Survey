#! /usr/bin/env python3

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

def plot_PieChart(data,title,fname):
	plt.figure(figsize=(6,6),tight_layout=True)
	ax = plt.subplot(111)
	data.plot(kind='pie',ax=ax,subplots=True)
	plt.gca().legend().set_visible(False)
	plt.title(title)
	plt.ylabel("")
	plt.savefig(fname+".eps")
	plt.savefig(fname+".svg")

