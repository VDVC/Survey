#!/usr/bin/python
# -*- coding: utf-8 -*-

import re
import codecs
import sys

reload(sys)
sys.setdefaultencoding("UTF-8")

fobj = codecs.open("daten/titel-duplikate.txt", "r", "utf-8")

anfangsbuchstabe = ' '
for line in fobj:
	schreibweisen = re.split(';', line[:-1])
	for name in schreibweisen:
		print(schreibweisen[0]+'\t'+name)
fobj.close()

