#! /bin/bash

csvfile="./daten/2014/ausgaben.csv"
tsvfile=${csvfile%.csv}

pspp ./scripts/2014/ausgaben.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile ${tsvfile}_hardware.tsv ${tsvfile}_spielekauf.tsv ${tsvfile}_abos.tsv ${tsvfile}_addons.tsv ${tsvfile}_server.tsv

rm $csvfile
