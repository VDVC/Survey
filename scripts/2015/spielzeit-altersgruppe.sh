#! /bin/bash

csvfile="./daten/2015/spielzeit-altersgruppe.csv"
tsvfile=${csvfile%.csv}.tsv

groups="nA <60 <55 <50 <45 <40 <35 <30 <25 <20 <15"

pspp ./scripts/2015/spielzeit-altersgruppe.sps -o $csvfile
./scripts/tables-multicolumn.py $csvfile ${tsvfile} $groups

rm $csvfile

