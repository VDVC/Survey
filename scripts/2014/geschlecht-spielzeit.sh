#! /bin/bash

csvfile="./daten/2014/geschlecht-spielzeit.csv"
tsvfile=${csvfile%.csv}

pspp ./scripts/2014/geschlecht-spielzeit.sps -o $csvfile
./scripts/tabellenformatierung.py split $csvfile ${tsvfile}-kA.tsv ${tsvfile}-m.tsv ${tsvfile}-f.tsv ${tsvfile}-anders.tsv

rm $csvfile

