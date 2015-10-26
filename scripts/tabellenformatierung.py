#! /usr/bin/env python

import io
import sys
import unicodecsv

reload(sys)  
sys.setdefaultencoding('utf8')

def is_number(s):
    try:
        float(s)
        return True
    except ValueError:
        return False

runmode=sys.argv[1].lower()
csvfile=sys.argv[2]

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

if runmode == "split":
    i=0
    for table in tables:
        results=io.open(sys.argv[3+i], "w", encoding="utf8")
        results.write(u'"Wert"\t"n"\t"sum"\n')
        summe = 0
        for item in table:
            summe +=item[1]
            if is_number(item[0].replace(",",".")):
                results.write(str(item[0].replace(",","."))+u'\t'+str(item[1])+'\t'+str(summe)+u'\n')
            else:
                results.write(u'"'+item[0]+u'"\t'+str(item[1])+'\t'+str(summe)+u'\n')
        i+=1

if runmode == "merge":
    mergedtable=[]
    for table in tables:
        for entry in table:
            value=entry[0]
            count=entry[1]
            known=False
            for oldentry in mergedtable:
                if oldentry[0] == value:
                    known=True
                    oldentry[1]+=count
            if not known:
                mergedtable.append([value,count])

    mergedtable.sort()

    results=io.open(sys.argv[3], "w", encoding="utf8")
    results.write(u'"Wert"\t"n"\t"sum"\n')
    summe=0
    for item in mergedtable:
        summe +=item[1]
        if is_number(item[0].replace(",",".")):
            results.write(str(item[0].replace(",","."))+u'\t'+str(item[1])+'\t'+str(summe)+u'\n')
        else:
            results.write(u'"'+item[0]+u'\t'+str(item[1])+'\t'+str(summe)+u'\n')
