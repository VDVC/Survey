#! /bin/bash

csvfile="./daten/2014/bezugsweg.csv"
tsvfile=${csvfile%csv}tsv

pspp ./scripts/2014/bezugsweg.sps -o $csvfile
./scripts/tabellenformatierung.py $csvfile $tsvfile

sed -i 's/^1/"Selbst gekauft"/g' $tsvfile
sed -i 's/^2/"Geschenkt bekommen"/g' $tsvfile
sed -i 's/^3/"Geliehen"/g' $tsvfile
sed -i 's/^4/"Bei Bekannten"/g' $tsvfile
sed -i 's/^5/"Illegal bezogen"/g' $tsvfile

rm $csvfile

