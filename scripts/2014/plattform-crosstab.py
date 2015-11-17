#!/usr/bin/env python
# -*- coding: utf-8 -*-



import io
import sys
import unicodecsv

reload(sys)  
sys.setdefaultencoding('utf8')

rohdaten='./rohdaten/rohdaten2014.dat'
plattformen = io.open("./daten/2014/plattformen_simple_crosstab.tsv", "w", encoding="utf8")


plattform_label=[u'keine',u'PC',u'Konsole',u'PC+Konsole',u'Smartphone',u'PC+Smartphone',u'Konsole+Smartphone',u'alles']
plattform_count=[0,0,0,0,0,0,0,0,0]
with io.open(rohdaten, encoding='utf8') as f:
	reader = unicodecsv.reader(f,delimiter=';')
	for spss_entry in reader:
		if len(spss_entry) != 223 and len(spss_entry) != 224:
			print("Error in Entry:")
			print(spss_entry)
		if (u'A3' in spss_entry[31:33]
		or  u'A4' in spss_entry[31:33]
		or  u'A5' in spss_entry[31:33]):
			pc=1
		else:
			pc=0
		if (u'A3' in spss_entry[34:38]
		or  u'A4' in spss_entry[34:38]
		or  u'A5' in spss_entry[34:38]):
			konsole=1
		else:
			konsole=0
		if (u'A3' in spss_entry[39:41]
		or  u'A4' in spss_entry[39:41]
		or  u'A5' in spss_entry[39:41]):
			smartphone=1
		else:
			smartphone=0
		plattform_count[pc*1+konsole*2+smartphone*4] = plattform_count[pc*1+konsole*2+smartphone*4]+1

plattformen.write(u'"Mindestens manchmal genutze Plattform"\t"Nennungen"\n')
for nr in range(0,8):
	plattformen.write(u'"'+plattform_label[nr]+u'"\t'+unicode(plattform_count[nr])+u'\n')
