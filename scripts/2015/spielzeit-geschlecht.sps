get file='./rohdaten/daten2015.sav'.
SORT CASES BY Geschlecht.
SPLIT FILE BY Geschlecht.
FREQUENCIES
  /VARIABLES=Nutzungsumfang
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.

