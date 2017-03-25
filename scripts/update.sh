#! /bin/bash

echo "Tue nichts für 2013. (Auswertung erfolgte manuell.)"

./scripts/datenaufbereitung2014.py
pspp ./scripts/survey2014-syntax.sps

./scripts/datenaufbereitung2015.py
./scripts/2015/auswertung.py

echo "Tue nichts für 2016. (Implementierung folgt.)"
