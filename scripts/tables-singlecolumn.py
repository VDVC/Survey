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
        return unicode(rv)
    except:
        try:
            rv=float(s)
            return unicode(rv)
        except:
            return unicode(s)

csvfile=sys.argv[1]
resulttable=sys.argv[2:]

intabname=""
incollabels=[] # list of columnn labels
inrowlabels=[] # list of row labels
intabcontent={} # table contents: [[collabel,rowlabel], value]
tables=[] # will hold titles, column labels, row labels and content
offset=0
with io.open(csvfile, encoding='utf8') as csv:
    csvreader = unicodecsv.reader(csv,delimiter=",")
    for entry in csvreader:
        if (len(entry) > 0 and entry[0][:6] == "Table:"):
            if len(intabcontent) > 0:
                if "Zusammenfassung" not in intabname:
                    tables.append([intabname,set(incollabels),set(inrowlabels),intabcontent])
                    intabcontent={}
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
                if len(rowlabel) > 0 and rowlabel not in inrowlabels:
                    inrowlabels.append(rowlabel)
                    for i in range(len(incollabels)):
                        intabcontent.update({(incollabels[i],rowlabel):float(entry[offset+i])})
            elif mode is "collabels":
                if "Wert" in entry[1]:
                    incollabels=entry[2:3]
                    inrowlabels=[]
                    offset=2
                else:
                    incollabels=entry[1:]
                    inrowlabels=[]
                    offset=1
                mode="content"
            elif mode is "skipone":
                mode="collabels"
    
    if "Zusammenfassung" not in intabname:
        tables.append([intabname,set(incollabels),set(inrowlabels),intabcontent])

print("Fasse "+str(len(tables))+
	  " Tabellen zu "+str(len(resulttable))+
	  " zusammen.")

tableno=0
chunklen=len(tables)/len(resulttable)
for mergetables in chunks(tables,chunklen):
    mergedcollabels=[]
    mergedrowlabels=[]
    for table in mergetables:
        mergedcollabels += list(table[1])
        mergedrowlabels += list(table[2])
    # keep only unique entries
    mergedcollabels=list(set(mergedcollabels))
    mergedrowlabels=list(set(mergedrowlabels))
    mergedtabcontent={}
    for collabel in mergedcollabels:
        for rowlabel in mergedrowlabels:
            mergedtabcontent.update({(collabel,rowlabel):0.0})
    for table in mergetables:
            for collabel in mergedcollabels:
                for rowlabel in mergedrowlabels:
                    try:
                        add = table[3][(collabel,rowlabel)]
                    except:
                        add = 0
                    val = add + mergedtabcontent[(collabel,rowlabel)]
                    mergedtabcontent.update({(collabel,rowlabel):val})

    mergedcollabels.sort()
    mergedrowlabels.sort()

    results=io.open(resulttable[tableno], "w", encoding="utf8")
    results.write(u'"'+mergetables[0][0]+u'"')
    for collabel in mergedcollabels:
        results.write(u'\t"'+best_format(collabel)+u'"')
    results.write(u'\n')
    for rowlabel in mergedrowlabels:
        results.write(best_format(rowlabel))
        for collabel in mergedcollabels:
            results.write(u'\t')
            results.write(best_format(mergedtabcontent[(collabel,rowlabel)]))
        results.write(u'\n')
    tableno=tableno+1
