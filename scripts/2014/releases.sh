#! /bin/bash

csvfile="./daten/2014/releases.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2014/releases.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $tsvfile

rm $csvfile

