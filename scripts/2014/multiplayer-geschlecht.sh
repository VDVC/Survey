#! /bin/bash

csvfile="./daten/2014/multiplayer-geschlecht.csv"
tsvfile=${csvfile%.csv}

f1=${tsvfile}_kA.tsv
f2=${tsvfile}_m.tsv
f3=${tsvfile}_f.tsv
f4=${tsvfile}_anders.tsv

pspp ./scripts/2014/multiplayer-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile ${f1} ${f2} ${f3} ${f4}

if [[ `uname` == "Darwin" ]]; then
  mysed="gsed"
else
  mysed="sed"
fi

for f in $f1 $f2 $f3 $f4; do
  $mysed -i "s/A1/SP/g" $f
  $mysed -i "s/A3/HH/g" $f
  $mysed -i "s/A5/MP/g" $f
done

rm $csvfile

