#! /bin/bash

csvfile="./daten/2015/alter-geschlecht.csv"
tsvfile=${csvfile%.csv}.tsv

pspp ./scripts/2015/alter-geschlecht.sps -o $csvfile
./scripts/tables-multicolumn.py $csvfile ${tsvfile} kA m f anders

rm $csvfile

