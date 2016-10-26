#! /bin/bash

csvfile="./daten/2015/spielzeit-geschlecht.csv"
tsvfile=${csvfile%.csv}.tsv

pspp ./scripts/2015/spielzeit-geschlecht.sps -o $csvfile
./scripts/tables-multicolumn.py $csvfile ${tsvfile} kA m f anders

rm $csvfile

