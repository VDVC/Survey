#! /usr/bin/env python3

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

from auswertung.WahlAus import eval_WahlAus

def eval_JaNein(dataset,dataname):
	antworten = {1: "Ja",2: "Nein"}
	return eval_WahlAus(dataset,dataname,antworten)


