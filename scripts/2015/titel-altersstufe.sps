get file='./rohdaten/daten2014.sav'.
SORT CASES BY Geburtsjahr.
COMPUTE Altersstufe=  MAX(10,MIN(60,5*TRUNC((2014-Geburtsjahr)/5))).
SPLIT FILE BY Altersstufe.
FREQUENCIES
  /VARIABLES=Spiel1 Spiel2 Spiel3 Spiel4 Spiel5
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.

