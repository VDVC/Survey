#! /bin/bash

csvfile="./daten/2014/ausgaben-alter.csv"
tsvdir="./daten/2014/"

h=hardware
k=spielekauf
a=abos
d=addons
s=server

filelist=""

for altersgruppe in 60 55 50 45 40 35 30 25 20 15 nA; do
  for ausgabe in $h $k $a $d $s; do
    filelist="$filelist ${tsvdir}ausgaben_${ausgabe}-alter_${altersgruppe}.tsv"
  done
done

pspp ./scripts/2014/ausgaben-altersstufe.sps -o $csvfile
./scripts/tabellenformatierung.py split $csvfile $filelist

rm $csvfile
