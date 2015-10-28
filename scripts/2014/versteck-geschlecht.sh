#! /bin/bash

csvfile="./daten/2014/versteck-geschlecht.csv"
tsvdir="./daten/2014/"

filelist=""

for geschlecht in kA m f anders; do
  for versteck in Verbergen Nachfrage Verteidigen Offensive; do
    filelist="$filelist ${tsvdir}versteck_${versteck}-geschlecht_${geschlecht}.tsv"
  done
done

pspp ./scripts/2014/versteck-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

rm $csvfile
