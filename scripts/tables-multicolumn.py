#! /usr/bin/env python

import io
import sys
import unicodecsv

reload(sys)  
sys.setdefaultencoding('utf8')

def chunks(l, n):
    n = max(1, n)
    return [l[i:i + n] for i in range(0, len(l), n)]

def best_format(s):
    try:
        rv=int(s)
        return rv
    except:
        try:
            rv=float(s)
            return rv
        except:
            return s

csvfile=sys.argv[1]
resultfile=sys.argv[2]
resultcolumn=sys.argv[3:]

numeric=True

intabname=""
incollabel="" # current column label
inrowlabels=[] # list of row labels
intabcontent={} # table contents: [[collabel,rowlabel], value]
tables=[] # will hold titles, column labels, row labels and content
offset=0

tableno=0
with io.open(csvfile, encoding='utf8') as csv:
    csvreader = unicodecsv.reader(csv,delimiter=",")
    for entry in csvreader:
        if (len(entry) > 0 and entry[0][:6] == "Table:"):
            if len(intabcontent) > 0:
                if "Zusammenfassung" not in intabname:
                    tables.append([intabname,resultcolumn[tableno],set(inrowlabels),intabcontent])
                    intabcontent={}
                    tableno+=1
            intabname=entry[0][7:]
            if "Zusammenfassung" not in intabname:
                if " * " not in intabname:
                    mode="collabels"
                else:
                    mode="skipone"
            else:
                mode="skip"
        if len(entry) > 3:
            if mode is not "collabels" and "skip" not in mode:
                rowlabel=entry[offset-1].rstrip()
                if len(rowlabel) > 0:
                    rowlabel=best_format(rowlabel)
                    if rowlabel not in inrowlabels:
                        inrowlabels.append(rowlabel)
                        intabcontent.update({(incollabel,rowlabel):float(entry[offset])})
            elif mode is "collabels":
                if "Wert" in entry[1]:
                    incollabel=resultcolumn[tableno]
                    inrowlabels=[]
                    offset=2
                else:
                    incollabel=resultcolumn[tableno]
                    inrowlabels=[]
                    offset=1
                mode="content"
            elif mode is "skipone":
                mode="collabels"
    if "Zusammenfassung" not in intabname:
        tables.append([intabname,incollabel,set(inrowlabels),intabcontent])

print("Fasse "+str(len(tables))+" Tabellen zusammen.")

if len(resultcolumn) != len(tables):
	print("Number of tables read in ("+str(len(tables))+
		  ") does not match number of desired columns ("+
		  str(len(resultcolumn))+").")

mergedcollabels=[]
mergedrowlabels=[]
for table in tables:
    mergedcollabels.append(table[1])
    mergedrowlabels += list(table[2])
# keep only unique entries
mergedrowlabels=list(set(mergedrowlabels))
mergedtabcontent={}
for collabel in mergedcollabels:
    for rowlabel in mergedrowlabels:
        mergedtabcontent.update({(collabel,rowlabel):0.0})
for table in tables:
        for collabel in mergedcollabels:
            for rowlabel in mergedrowlabels:
                try:
                    add = table[3][(collabel,rowlabel)]
                except:
                    add = 0
                val = add + mergedtabcontent[(collabel,rowlabel)]
                mergedtabcontent.update({(collabel,rowlabel):val})

mergedrowlabels.sort()

results=io.open(resultfile, "w", encoding="utf8")
results.write(u'"'+tables[0][0]+u'"')
for collabel in mergedcollabels:
    results.write(u'\t"'+unicode(best_format(collabel))+u'"')
results.write(u'\n')
for rowlabel in mergedrowlabels:
    results.write(unicode(best_format(rowlabel)))
    for collabel in mergedcollabels:
        results.write(u'\t')
        results.write(unicode(best_format(mergedtabcontent[(collabel,rowlabel)])))
    results.write(u'\n')
tableno=tableno+1

