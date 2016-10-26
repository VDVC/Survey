get file='./rohdaten/daten2015.sav'.
SET DECIMAL=DOT.
COMPUTE Einstiegsalter= MAX(-1,(Erfahrung-Geburtsjahr))
SORT CASES BY Geschlecht.
SPLIT FILE BY Geschlecht.
FREQUENCIES
  /VARIABLES=Einstiegsalter
  /FORMAT=TABLE
  /STATISTICS=NONE.
EXIT.

