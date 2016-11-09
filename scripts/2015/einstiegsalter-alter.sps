get file='./rohdaten/daten2015.sav'.
SET DECIMAL=DOT.
COMPUTE Einstiegsalter= MAX(-1,(Erfahrung-Geburtsjahr))
COMPUTE Alter=  MIN(51,((2015-Geburtsjahr))).
IF Alter ge 51 Alter = -1.
SORT CASES BY Alter.
SPLIT FILE BY Alter.
FREQUENCIES
  /VARIABLES=Einstiegsalter
  /FORMAT=TABLE
  /STATISTICS=NONE.
EXIT.

