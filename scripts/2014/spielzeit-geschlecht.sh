#! /bin/bash

csvfile="./daten/2014/spielzeit-geschlecht.csv"
tsvfile=${csvfile%.csv}

pspp ./scripts/2014/spielzeit-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py split $csvfile ${tsvfile}_kA.tsv ${tsvfile}_m.tsv ${tsvfile}_f.tsv ${tsvfile}_anders.tsv

rm $csvfile

