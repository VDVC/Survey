get file='./rohdaten/daten2014.sav'.
SORT CASES BY Geschlecht.
SPLIT FILE BY Geschlecht.
FREQUENCIES
  /VARIABLES=Spiel1 Spiel2 Spiel3 Spiel4 Spiel5
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.

