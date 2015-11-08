#! /bin/bash

csvfile="./daten/2014/titel-release.csv"
tsvdir="./daten/2014/"

filelist=""

for jahrgang in 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015; do
  filelist="$filelist ${tsvdir}titel-release_${jahrgang}.tsv"
done

pspp ./scripts/2014/titel-release.sps -o $csvfile
#./scripts/tabellenformatierung.py $csvfile $filelist countsort

rm $csvfile
