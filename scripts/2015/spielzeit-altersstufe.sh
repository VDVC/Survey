#! /bin/bash

csvfile="./daten/2015/spielzeit-altersstufe.csv"
tsvfile=${csvfile%.csv}.tsv

pspp ./scripts/2015/spielzeit-altersstufe.sps -o $csvfile
./scripts/tables-multicolumn.py $csvfile ${tsvfile} 60 55 50 45 40 35 30 25 20 15 nA

rm $csvfile

