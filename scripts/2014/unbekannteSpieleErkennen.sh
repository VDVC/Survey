#! /bin/bash

titelliste="daten/2014/unbekannte-titel.tsv"
schreibweisen="daten/schreibweisen.tsv"

titelzahl=`wc -l $titelliste`
titelzahl=${titelzahl%\ *}
titelzahl=`expr $titelzahl - 1`

tail -n $titelzahl $titelliste |while read line
do
  text=${line%	*}
  titel=${line#*	}
  titel=${titel#\"}
  titel=${titel#OGDB: }
  titel=${titel#Rey: }
  titel=${titel#VDVC: }
  echo \"${titel}	${text} >> $schreibweisen
done

tmpfile=`date +%s`

mv $schreibweisen $tmpfile
sort -u $tmpfile > $schreibweisen

rm $tmpfile

