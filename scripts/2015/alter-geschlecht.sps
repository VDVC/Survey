get file='./rohdaten/daten2015.sav'.
SET DECIMAL=DOT.
COMPUTE Alter= MAX(-1,(2015-MAX(Geburtsjahr)))
SORT CASES BY Geschlecht.
SPLIT FILE BY Geschlecht.
FREQUENCIES
  /VARIABLES=Alter
  /FORMAT=TABLE
  /STATISTICS=NONE.
EXIT.

