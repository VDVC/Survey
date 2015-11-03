#! /bin/bash

csvfile="./daten/2014/versteck-alter.csv"
tsvdir="./daten/2014/"

filelist=""

for versteck in JN Verbergen Nachfrage Verteidigen Offensive; do
  for altersgruppe in 60 55 50 45 40 35 30 25 20 15 nA; do
    filelist="$filelist ${tsvdir}versteck_${versteck}-alter_${altersgruppe}.tsv"
  done
done

pspp ./scripts/2014/versteck-altersstufe.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $filelist

rm $csvfile
