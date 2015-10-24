#! /bin/bash

csvfile="./daten/2014/spiele.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2014/spiele.sps -o $csvfile
./scripts/tabellen-kombinieren.py $csvfile $tsvfile

rm $csvfile

