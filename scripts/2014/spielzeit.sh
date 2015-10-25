#! /bin/bash

csvfile="./daten/2014/spielzeit.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2014/spielzeit.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $tsvfile

rm $csvfile
