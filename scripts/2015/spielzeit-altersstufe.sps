get file='./rohdaten/daten2015.sav'.
SORT CASES BY Geburtsjahr.
COMPUTE Altersstufe=  MAX(10,MIN(60,5*TRUNC((2015-Geburtsjahr)/5))).
SPLIT FILE BY Altersstufe.
FREQUENCIES
  /VARIABLES=Nutzungsumfang
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.

