get file='./rohdaten/daten2014.sav'.
SORT CASES BY Geschlecht.
SPLIT FILE BY Geschlecht.
FREQUENCIES
  /VARIABLES=VersteckJN
  /FORMAT=TABLE
  /STATISTICS=NONE.
FREQUENCIES
  /VARIABLES=VersteckArt_1
  /FORMAT=TABLE
  /STATISTICS=NONE.
FREQUENCIES
  /VARIABLES=VersteckArt_2
  /FORMAT=TABLE
  /STATISTICS=NONE.
FREQUENCIES
  /VARIABLES=VersteckArt_3
  /FORMAT=TABLE
  /STATISTICS=NONE.
FREQUENCIES
  /VARIABLES=VersteckArt_4
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.
