#! /bin/bash

csvfile="./daten/2015/titel.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2015/titel.sps -o $csvfile
./scripts/tables-singlecolumn.py $csvfile $tsvfile

sort -r -t$'\t' -n -k2 $tsvfile > $csvfile

echo '"Titel"	"Nennungen"' > $tsvfile
head -n-1 $csvfile >> $tsvfile

rm $csvfile

