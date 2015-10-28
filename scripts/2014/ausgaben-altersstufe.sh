#! /bin/bash

csvfile="./daten/2014/ausgaben-alter.csv"
tsvdir="./daten/2014/"

filelist=""

for altersgruppe in 60 55 50 45 40 35 30 25 20 15 nA; do
  for ausgabe in hardware spielekauf abos addons server; do
    filelist="$filelist ${tsvdir}ausgaben_${ausgabe}-alter_${altersgruppe}.tsv"
  done
done

pspp ./scripts/2014/ausgaben-altersstufe.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

rm $csvfile
