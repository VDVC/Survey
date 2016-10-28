#! /bin/bash

var="gamemode-altersgruppe"
groups="nA <60 <55 <50 <45 <40 <35 <30 <25 <20 <15"

csvfile="./daten/2015/${var}.csv"
tsvfile=${csvfile%.csv}.tsv

pspp ./scripts/2015/${var}.sps -o $csvfile
./scripts/tables-multicolumn.py $csvfile ${tsvfile} $groups

sed -i 's/A1/"Einzelspieler"/g' ${tsvfile}
sed -i 's/A3/"Beides"/g' ${tsvfile}
sed -i 's/A5/"Mehrspieler"/g' ${tsvfile}

rm $csvfile

