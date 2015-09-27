#!/bin/bash
duplikatsliste='daten/schreibweisen.tsv'
datenfilein='rohdaten/survey-data.orig.dat'
datenfileout='rohdaten/survey-data.dat'

if [[ `uname` == "Darwin" ]]; then
	sedbin=gsed
else
	sedbin=sed
fi

cp $datenfilein $datenfileout

firstletter="A"

while read p; do
    if [[ "${p:1:1}" != "$firstletter" ]]; then
        firstletter=${p:1:1}
        echo $firstletter
    fi
    replaceme=$(echo "${p#*'	'}" | sed 's/&/\\&/')
    replaceby=$(echo "${p%'	'*}" | sed 's/&/\\&/')
    $(sedbin) -i "s#$replaceme#$replaceby#gI" $datenfileout
done < $duplikatsliste
$(sedbin) -i "s#  # #gI" $datenfileout
$(sedbin) -i "s#  # #gI" $datenfileout
