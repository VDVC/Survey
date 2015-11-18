#! /usr/bin/env python

import io
import sys
import unicodecsv

reload(sys)  
sys.setdefaultencoding('utf8')

def chunks(l, n):
    n = max(1, n)
    return [l[i:i + n] for i in range(0, len(l), n)]

def is_int(s):
    try:
        int(s)
        return True
    except ValueError:
        return False

def is_number(s):
    try:
        float(s)
        return True
    except ValueError:
        return False

csvfile=sys.argv[1]
if sys.argv[-1] == "countsort":
    countsort=True
    resulttable=sys.argv[2:-1]
else:
    countsort=False
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

for table in tables:
    print(table[0])
    print(table[1])
    for rowlabel in table[2]:
        toprint=[rowlabel]
        for collabel in table[1]:
            try:
                toprint=toprint+[table[3][(collabel,rowlabel)]]
            except:
                toprint=toprint+[0]
        print(toprint)
    print('\n')

print("Fasse "+str(len(tables))+
	  " Tabellen zu "+str(len(resulttable))+
	  " zusammen.")
sys.exit()

tableno=0
chunklen=len(tables)/len(resulttable)
for mergetables in chunks(tables,chunklen):
    results=io.open(resulttable[tableno], "w", encoding="utf8")
    results.write(u'"'+tabname[tableno*chunklen]+u'"\t"n"\t"sum"\n')
    mergedtable=[]
    for table in mergetables:
        for entry in table:
            value=entry[0]
            if is_int(value):
                value=int(value)
            elif is_number(value.replace(",",".")):
                value=float(value.replace(",","."))
            count=entry[1]
            known=False
            for oldentry in mergedtable:
                if oldentry[0] == value:
                    known=True
                    oldentry[1]+=count
            if not known:
                mergedtable.append([value,count])
    if countsort:
         mergedtable.sort(key=lambda x: x[1], reverse=True)
    else:
         mergedtable.sort()

    summe=0
    for item in mergedtable:
        summe +=item[1]
        if is_number(item[0]):
            results.write(str(item[0])+u'\t'+str(item[1])+'\t'+str(summe)+u'\n')
        else:
            results.write(u'"'+item[0]+u'"\t'+str(item[1])+'\t'+str(summe)+u'\n')
    tableno=tableno+1
