#! /bin/bash

csvfile="./daten/2015/titel-altersstufe.csv"
tsvdir="./daten/2015/"

filelist=""

for altersgruppe in nA 55 50 45 40 35 30 25 20 15 10; do
  filelist="$filelist ${tsvdir}titel-alter_${altersgruppe}.tsv"
done

pspp ./scripts/2015/titel-altersstufe.sps -o $csvfile
./scripts/tables-singlecolumn.py $csvfile $filelist

rm $csvfile

