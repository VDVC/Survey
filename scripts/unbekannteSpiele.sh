#!/bin/bash
filename='daten/2014/titel-anzahl.tsv'
IFS='	'
while read p; do
	game=($p)
	if [ `grep $game daten/titel-duplikate.txt | wc -l` -eq 0 ]
	then
		echo "$game"
	fi
done < $filename
