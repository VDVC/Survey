#! /bin/bash

csvfile="./daten/2014/freigaben.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2014/freigaben.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $tsvfile

rm $csvfile

