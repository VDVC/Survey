#! /bin/bash

dir="./daten/2015/"

filelist=""
for ausgabe in hardware spielekauf abos addons server; do
  csvfile=${dir}ausgaben_${ausgabe}-geschlecht.csv
  tsvfile=${dir}ausgaben_${ausgabe}-geschlecht.tsv
  pspp ./scripts/2015/ausgaben_${ausgabe}-geschlecht.sps -o $csvfile
  ./scripts/tables-multicolumn.py $csvfile $tsvfile kA m f anders
  rm $csvfile
done

