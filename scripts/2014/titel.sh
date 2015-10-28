#! /bin/bash

csvfile="./daten/2014/titel.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2014/titel.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $tsvfile

rm $csvfile

