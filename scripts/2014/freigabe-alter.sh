#! /bin/bash

csvfile="./daten/2014/freigabe-altersstufe.csv"
tsvfile="./daten/2014/freigabe-alter.tsv"

pspp ./scripts/2014/freigabe-alter.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $tsvfile

rm $csvfile

gnuplot ./scripts/2014/freigabe-alter.gp

