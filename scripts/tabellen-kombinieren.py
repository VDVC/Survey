#! /usr/bin/env python

import io
import sys
import unicodecsv

reload(sys)  
sys.setdefaultencoding('utf8')

csvfile=sys.argv[1]
tsvfile=sys.argv[2]

with io.open(csvfile, encoding='utf8') as csv:
    csvreader = unicodecsv.reader(csv,delimiter=",")
    mergetable = []
    for entry in csvreader:
        if (len(entry) > 3):
            value=entry[1]
            count=entry[2]
            known=False
            for oldentry in mergetable:
                if oldentry[0] == value:
                    known=True
                    if count.isnumeric():
                        oldentry[1]+=int(count)
            if not known:
                if count.isnumeric():
                    mergetable.append([value,int(count)])
                else:
                    mergetable.append([value,count])

mergedtable=[]
for entry in mergetable[1:]:
    if entry[0] not in [u"",u"."]:
        mergedtable.append(entry)
    elif entry[0] == u"":
        total=entry[1]
    elif entry[0] == u".":
        skipped=entry[1]

mergedtable.sort()

results=io.open(tsvfile, "w", encoding="utf8")
results.write(u'"'+mergetable[0][0]+u'"\t"Anzahl"\n')
for item in mergedtable:
	results.write(u'"'+item[0]+u'"\t'+str(item[1])+u'\n')
results.write(u'"."\t'+str(skipped)+'\n')
results.write(u'#"Gesamt"\t'+str(total)+u'\n')

