#! /bin/bash

csvfile="./daten/2014/titel-altersstufe.csv"
tsvdir="./daten/2014/"

filelist=""

for altersgruppe in 60 55 50 45 40 35 30 25 20 15 nA; do
  filelist="$filelist ${tsvdir}titel-alter_${altersgruppe}.tsv.tmp"
done

pspp ./scripts/2014/titel-altersstufe.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

for tsvfile in $filelist; do
  head -n1 $tsvfile > ${tsvfile%.tmp}
  tail -n +2 $tsvfile |sort -t$'\t' -k2 -n -r >> ${tsvfile%.tmp}
  rm $tsvfile
done

rm $csvfile

