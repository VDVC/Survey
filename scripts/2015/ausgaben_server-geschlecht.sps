get file='./rohdaten/daten2015.sav'.
SET DECIMAL=DOT.
SORT CASES BY Geschlecht.
SPLIT FILE BY Geschlecht.
FREQUENCIES
  /VARIABLES=AusgabenGameserver
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.

