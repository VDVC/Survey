#! /bin/bash

csvfile="./daten/2014/multiplayer-geschlecht.csv"
tsvfile=${csvfile%.csv}

f1=${tsvfile}_kA.tsv
f2=${tsvfile}_m.tsv
f3=${tsvfile}_f.tsv
f4=${tsvfile}_anders.tsv

pspp ./scripts/2014/multiplayer-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py split $csvfile ${f1} ${f2} ${f3} ${f4}

for f in $f1 $f2 $f3 $f4; do
  sed -i "s/A1/SP/g" $f
  sed -i "s/A3/HH/g" $f
  sed -i "s/A5/MP/g" $f
done

rm $csvfile

