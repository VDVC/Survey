#! /bin/bash

csvfile="./daten/2014/ausgaben-geschlecht.csv"
tsvdir="./daten/2014/"

filelist=""

for geschlecht in kA m f anders; do
  filelist="$filelist ${tsvdir}titel-geschlecht_${geschlecht}.tsv"
done

pspp ./scripts/2014/titel-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

rm $csvfile

