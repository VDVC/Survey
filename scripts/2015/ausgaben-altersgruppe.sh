#! /bin/bash

dir="./daten/2015/"
groups="nA <60 <55 <50 <45 <40 <35 <30 <25 <20 <15"

filelist=""
for ausgabe in hardware spielekauf abos addons server; do
  csvfile=${dir}ausgaben_${ausgabe}-altersgruppe.csv
  tsvfile=${dir}ausgaben_${ausgabe}-altersgruppe.tsv
  pspp ./scripts/2015/ausgaben_${ausgabe}-altersgruppe.sps -o $csvfile
  ./scripts/tables-multicolumn.py $csvfile $tsvfile $groups
  rm $csvfile
done

