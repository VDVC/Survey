#! /bin/bash

var1="endmotivation"

for i in {1..5} 7 9
do
  csvfile="./daten/2015/${var1}_${i}.csv"
  tsvfile=${csvfile%.csv}.tsv
  pspp ./scripts/2015/${var1}_${i}.sps -o $csvfile
  ./scripts/tables-singlecolumn.py $csvfile ${tsvfile}

  sed -i 's/A1/"Auf jeden Fall"/g' ${tsvfile}
  sed -i 's/A2/"Eher ja"/g' ${tsvfile}
  sed -i 's/A3/"Vielleicht"/g' ${tsvfile}
  sed -i 's/A4/"Eher nicht"/g' ${tsvfile}
  sed -i 's/A5/"Auf keinen Fall"/g' ${tsvfile}

  rm $csvfile
done

