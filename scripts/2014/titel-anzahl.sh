#! /bin/bash

csvfile="./daten/2014/titel-anzahl.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2014/titel-anzahl.sps -o $csvfile
./scripts/tabellen-kombinieren.py $csvfile $tsvfile

rm $csvfile

