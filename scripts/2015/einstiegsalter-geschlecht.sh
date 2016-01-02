#! /bin/bash

csvfile="./daten/2015/einstiegsalter-geschlecht.csv"
tsvfile=${csvfile%.csv}

pspp ./scripts/2015/einstiegsalter-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile ${tsvfile}_kA.tsv ${tsvfile}_m.tsv ${tsvfile}_f.tsv ${tsvfile}_anders.tsv

rm $csvfile

