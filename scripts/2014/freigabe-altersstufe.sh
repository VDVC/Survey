#! /bin/bash

csvfile="./daten/2014/freigabe-altersstufe.csv"
tsvfile="./daten/2014/freigabe-altersstufe.tsv"

pspp ./scripts/2014/freigabe-altersstufe.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $tsvfile

rm $csvfile

