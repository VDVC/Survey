#!/usr/bin/env python
# -*- coding: utf-8 -*-



import io
import sys
import unicodecsv

reload(sys)  
sys.setdefaultencoding('utf8')

rohdaten='./rohdaten/rohdaten2015.dat'
plattformen = io.open("./daten/2015/plattformen_simple_crosstab.tsv", "w", encoding="utf8")

pc_begin=23
console_begin=26
smartphone_begin=30
platforms_end=33

# "A1" "Gar nicht"
# "A2" "Selten"
# "A3" "Manchmal"
# "A4" "Oft"
# "A5" "Ständig"

plattform_label=[u'keine',u'PC',u'Konsole',u'PC+Konsole',u'Smartphone',u'PC+Smartphone',u'Konsole+Smartphone',u'alles']
plattform_count=[0,0,0,0,0,0,0,0,0]
with io.open(rohdaten, encoding='utf8') as f:
	reader = unicodecsv.reader(f,delimiter=';')
	for spss_entry in reader:
		if len(spss_entry) != 214:
			print("Error in Entry:")
			print(spss_entry)
		if (u'A3' in spss_entry[pc_begin:console_begin]
		or  u'A4' in spss_entry[pc_begin:console_begin]
		or  u'A5' in spss_entry[pc_begin:console_begin]):
			pc=1
		else:
			pc=0
		if (u'A3' in spss_entry[console_begin:smartphone_begin]
		or  u'A4' in spss_entry[console_begin:smartphone_begin]
		or  u'A5' in spss_entry[console_begin:smartphone_begin]):
			konsole=1
		else:
			konsole=0
		if (u'A3' in spss_entry[smartphone_begin:platforms_end]
		or  u'A4' in spss_entry[smartphone_begin:platforms_end]
		or  u'A5' in spss_entry[smartphone_begin:platforms_end]):
			smartphone=1
		else:
			smartphone=0
		plattform_count[pc*1+konsole*2+smartphone*4] = plattform_count[pc*1+konsole*2+smartphone*4]+1

plattformen.write(u'"Mindestens manchmal genutze Plattform"\t"Nennungen"\n')
for nr in range(0,8):
	plattformen.write(u'"'+plattform_label[nr]+u'"\t'+unicode(plattform_count[nr])+u'\n')

