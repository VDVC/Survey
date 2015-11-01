get file='./rohdaten/daten2014.sav'.
SORT CASES BY Geburtsjahr.
COMPUTE Altersstufe=  MAX(10,MIN(60,5*TRUNC((2014-Geburtsjahr)/5))).
SPLIT FILE BY Altersstufe.
FREQUENCIES
  /VARIABLES=Freigabe1 Freigabe2 Freigabe3 Freigabe4 Freigabe5
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.
