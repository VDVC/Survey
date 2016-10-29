get file='./rohdaten/daten2015.sav'.
SORT CASES BY Geburtsjahr.
COMPUTE Altersstufe=  MAX(5,MIN(60,5*TRUNC((2015-Geburtsjahr)/5))).
IF Altersstufe = 5 Altersstufe = -1.
IF Altersstufe ge 60 Altersstufe = -1.
SPLIT FILE BY Altersstufe.
FREQUENCIES
  /VARIABLES=Nutzungsumfang
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.

