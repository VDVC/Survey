#! /bin/bash

csvfile="./daten/2014/release-geschlecht.csv"
tsvdir="./daten/2014/"

filelist=""

for geschlecht in kA m f anders; do
  filelist="$filelist ${tsvdir}release-geschlecht_${geschlecht}.tsv"
done

pspp ./scripts/2014/release-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

rm $csvfile
