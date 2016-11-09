#! /bin/bash

csvfile="./daten/2015/einstiegsalter-alter.csv"
tsvfile=${csvfile%.csv}.tsv
groups="nA `seq 13 50`"

pspp ./scripts/2015/einstiegsalter-alter.sps -o $csvfile
./scripts/tables-multicolumn.py $csvfile ${tsvfile} $groups

rm $csvfile

