#! /bin/bash

csvfile="./daten/2015/titel-geschlecht.csv"
tsvdir="./daten/2015/"

filelist=""

for geschlecht in kA m f anders; do
  filelist="$filelist ${tsvdir}titel-geschlecht_${geschlecht}.tsv"
done

pspp ./scripts/2015/titel-geschlecht.sps -o $csvfile
./scripts/tables-singlecolumn.py $csvfile $filelist

rm ${tsvdir}titel-geschlecht_kA.tsv
rm ${tsvdir}titel-geschlecht_anders.tsv

tsvfile=${tsvdir}titel-geschlecht_m.tsv
sort -r -t$'\t' -n -k2 $tsvfile > $csvfile
echo '"Titel"	"Nennungen"' > $tsvfile
head -n-1 $csvfile >> $tsvfile

tsvfile=${tsvdir}titel-geschlecht_f.tsv
sort -r -t$'\t' -n -k2 $tsvfile > $csvfile
echo '"Titel"	"Nennungen"' > $tsvfile
head -n-1 $csvfile >> $tsvfile

rm $csvfile

