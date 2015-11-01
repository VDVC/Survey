get file='./rohdaten/daten2014.sav'.
SORT CASES BY Geschlecht.
SPLIT FILE BY Geschlecht.
COMPUTE Einstiegsalter= MAX(-1,(Erfahrung-Geburtsjahr))
FREQUENCIES
  /VARIABLES=Einstiegsalter
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.

