get file='./rohdaten/daten2014.sav'.
CROSSTABS
  /TABLES=Plattform_PCWin BY Plattform_Plystn
  /FORMAT=TABLE
  /STATISTICS=NONE.
CROSSTABS
  /TABLES=Plattform_XBox BY Plattform_Plystn
  /FORMAT=TABLE
  /STATISTICS=NONE.
CROSSTABS
  /TABLES=Plattform_PCWin BY Plattform_XBox
  /FORMAT=TABLE
  /STATISTICS=NONE.
EXIT.

