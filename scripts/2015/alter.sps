get file='./rohdaten/daten2015.sav'.
SET DECIMAL=DOT.
FREQUENCIES
  /VARIABLES=Geburtsjahr
  /FORMAT=TABLE
  /STATISTICS=NONE.
EXIT.

