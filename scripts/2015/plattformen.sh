#! /bin/bash

csvfile="./daten/2015/plattformen.csv"
tsvfile=${csvfile%csv}tsv

plattforms="PCWin PCMac PCLnx Plystn Wii XBox DS Android
iPhone WinPhone"

pspp ./scripts/2015/plattformen.sps -o $csvfile
./scripts/tables-multicolumn.py $csvfile $tsvfile $plattforms

sed -i 's/A3/"Beides"/g' ${tsvfile}
sed -i 's/A1/"Gar nicht"/g' ${tsvfile}
sed -i 's/A2/"Selten"/g' ${tsvfile}
sed -i 's/A3/"Manchmal"/g' ${tsvfile}
sed -i 's/A4/"Oft"/g' ${tsvfile}
sed -i 's/A5/"Ständig"/g' ${tsvfile}

rm $csvfile

