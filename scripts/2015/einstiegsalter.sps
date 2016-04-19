get file='./rohdaten/daten2015.sav'.
SET DECIMAL=DOT.
COMPUTE Einstiegsalter= MAX(-1,(Erfahrung-Geburtsjahr))
FREQUENCIES
  /VARIABLES=Einstiegsalter
  /FORMAT=TABLE
  /STATISTICS=NONE.
EXIT.

