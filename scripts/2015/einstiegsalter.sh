#! /bin/bash

csvfile="./daten/2015/einstiegsalter.csv"
tsvfile=${csvfile%.csv}.tsv

pspp ./scripts/2015/einstiegsalter.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile ${tsvfile}

mv $tsvfile $csvfile

grep '"' $csvfile > $tsvfile
grep -v '"' $csvfile |sort -n >> $tsvfile

rm $csvfile

