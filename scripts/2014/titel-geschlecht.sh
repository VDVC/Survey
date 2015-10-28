#! /bin/bash

csvfile="./daten/2014/ausgaben-geschlecht.csv"
tsvdir="./daten/2014/"

filelist=""

for geschlecht in kA m f anders; do
  filelist="$filelist ${tsvdir}titel-geschlecht_${geschlecht}.tsv.tmp"
done

pspp ./scripts/2014/titel-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

for tsvfile in $filelist; do
  head -n1 $tsvfile > ${tsvfile%.tmp}
  tail -n +2 $tsvfile |sort -t$'\t' -k2 -n -r >> ${tsvfile%.tmp}
  rm $tsvfile
done

rm $csvfile
