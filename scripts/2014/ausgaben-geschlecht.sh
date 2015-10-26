#! /bin/bash

csvfile="./daten/2014/ausgaben-geschlecht.csv"
tsvdir="./daten/2014/"

f11=${tsvdir}ausgaben_hardware-geschlecht_kA.tsv
f12=${tsvdir}ausgaben_spielekauf-geschlecht_kA.tsv
f13=${tsvdir}ausgaben_abos-geschlecht_kA.tsv
f14=${tsvdir}ausgaben_addons-geschlecht_kA.tsv
f15=${tsvdir}ausgaben_server-geschlecht_kA.tsv
f21=${tsvdir}ausgaben_hardware-geschlecht_m.tsv
f22=${tsvdir}ausgaben_spielekauf-geschlecht_m.tsv
f23=${tsvdir}ausgaben_abos-geschlecht_m.tsv
f24=${tsvdir}ausgaben_addons-geschlecht_m.tsv
f25=${tsvdir}ausgaben_server-geschlecht_m.tsv
f31=${tsvdir}ausgaben_hardware-geschlecht_f.tsv
f32=${tsvdir}ausgaben_spielekauf-geschlecht_f.tsv
f33=${tsvdir}ausgaben_abos-geschlecht_f.tsv
f34=${tsvdir}ausgaben_addons-geschlecht_f.tsv
f35=${tsvdir}ausgaben_server-geschlecht_f.tsv
f41=${tsvdir}ausgaben_hardware-geschlecht_anders.tsv
f42=${tsvdir}ausgaben_spielekauf-geschlecht_anders.tsv
f43=${tsvdir}ausgaben_abos-geschlecht_anders.tsv
f44=${tsvdir}ausgaben_addons-geschlecht_anders.tsv
f45=${tsvdir}ausgaben_server-geschlecht_anders.tsv

pspp ./scripts/2014/ausgaben-geschlecht.sps -o $csvfile
./scripts/tabellenformatierung.py split $csvfile $f11 $f12 $f13 $f14 $f15 $f21 $f22 $f23 $f24 $f25 $f31 $f32 $f33 $f34 $f35 $f41 $f42 $f43 $f44 $f45

rm $csvfile

