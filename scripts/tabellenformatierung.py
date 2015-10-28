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
resulttable=sys.argv[2:]

tables=[]
with io.open(csvfile, encoding='utf8') as csv:
    csvreader = unicodecsv.reader(csv,delimiter=",")
    intable = []
    for entry in csvreader:
        if (len(entry) > 0 and entry[0][:6] == "Table:"):
            if len(intable) > 0:
                tables.append(intable)
                intable=[]
        if (len(entry) > 3):
            value=entry[1].rstrip()
            if value not in [u"",u"."]:
                count=entry[2]
                if (count.isnumeric()):
                    intable.append([value,int(count)])
    tables.append(intable)

print("Fasse "+str(len(tables))+
	  " Tabellen zu "+str(len(resulttable))+
	  " zusammen.")

tableno=0
for mergetables in chunks(tables,len(tables)/len(resulttable)):
    results=io.open(resulttable[tableno], "w", encoding="utf8")
    results.write(u'"Wert"\t"n"\t"sum"\n')
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

    mergedtable.sort()

    summe=0
    for item in mergedtable:
        summe +=item[1]
        if is_number(item[0]):
            results.write(str(item[0])+u'\t'+str(item[1])+'\t'+str(summe)+u'\n')
        else:
            results.write(u'"'+item[0]+u'"\t'+str(item[1])+'\t'+str(summe)+u'\n')
    tableno=tableno+1
