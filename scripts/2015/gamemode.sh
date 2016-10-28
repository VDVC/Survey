#! /bin/bash

var1="gamemode"

csvfile="./daten/2015/${var1}.csv"
tsvfile=${csvfile%.csv}.tsv

pspp ./scripts/2015/${var1}.sps -o $csvfile
./scripts/tables-singlecolumn.py $csvfile ${tsvfile}

sed -i 's/A1/"Einzelspieler"/g' ${tsvfile}
sed -i 's/A3/"Beides"/g' ${tsvfile}
sed -i 's/A5/"Mehrspieler"/g' ${tsvfile}

rm $csvfile

