#! /bin/bash

csvfile="./daten/2015/freigaben.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2015/freigaben.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $tsvfile

rm $csvfile

gnuplot ./scripts/2015/freigaben.gp
