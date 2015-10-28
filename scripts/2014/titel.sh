#! /bin/bash

csvfile="./daten/2014/titel.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2014/titel.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $tsvfile.tmp

head -n1 $tsvfile.tmp > $tsvfile
tail -n +2 $tsvfile.tmp |sort -t$'\t' -k2 -n -r >> $tsvfile

rm $csvfile $tsvfile.tmp

