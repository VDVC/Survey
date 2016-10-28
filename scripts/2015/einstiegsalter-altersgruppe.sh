#! /bin/bash

csvfile="./daten/2015/einstiegsalter-altersgruppe.csv"
tsvfile=${csvfile%.csv}.tsv

pspp ./scripts/2015/einstiegsalter-altersgruppe.sps -o $csvfile
./scripts/tables-multicolumn.py $csvfile ${tsvfile} "nA" "<60" "<55" "<50" "<45" "<40" "<35" "<30" "<25" "<20" "<15"

rm $csvfile

