#! /bin/bash

csvfile="./daten/2014/titel-altersstufe.csv"
tsvdir="./daten/2014/"

filelist=""

for altersgruppe in 60 55 50 45 40 35 30 25 20 15 nA; do
  filelist="$filelist ${tsvdir}titel-alter_${altersgruppe}.tsv"
done

pspp ./scripts/2014/titel-altersstufe.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

rm $csvfile

