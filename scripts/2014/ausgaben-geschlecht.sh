#! /bin/bash

csvfile="./daten/2014/ausgaben-geschlecht.csv"
tsvdir="./daten/2014/"

filelist=""
for ausgabe in hardware spielekauf abos addons server; do
  for geschlecht in kA m f anders; do
    filelist="$filelist ${tsvdir}ausgaben_${ausgabe}-geschlecht_${geschlecht}.tsv"
  done
done

pspp ./scripts/2014/ausgaben-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

rm $csvfile

