#! /bin/bash

csvfile="./daten/2014/freigabe-altersstufe.csv"
tsvdir="./daten/2014/"

filelist=""

for altersgruppe in inf 55 50 45 40 35 30 25 20 15 nA; do
  filelist="$filelist ${tsvdir}freigabe-alter_${altersgruppe}.tsv"
done

pspp ./scripts/2014/freigabe-altersstufe.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

rm $csvfile

