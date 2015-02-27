#!/bin/bash
filename='daten/2014/titel-anzahl.tsv'
IFS='	'
while read p; do
	game=(${p// \"/\"})
	if [ `grep -i $game daten/schreibweisen.tsv | wc -l` -eq 0 ]
	then
		echo "$p"
	fi
done < $filename
