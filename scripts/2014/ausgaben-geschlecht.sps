get file='./rohdaten/daten2014.sav'.
SORT CASES BY Geschlecht.
SPLIT FILE BY Geschlecht.
FREQUENCIES
  /VARIABLES=AusgabenHardware
  /FORMAT=TABLE
  /STATISTICS=NONE.
FREQUENCIES
  /VARIABLES=AusgabenSpieleKauf
  /FORMAT=TABLE
  /STATISTICS=NONE.
FREQUENCIES
  /VARIABLES=AusgabenSpieleAbos
  /FORMAT=TABLE
  /STATISTICS=NONE.
FREQUENCIES
  /VARIABLES=AusgabenAddonsDLCs
  /FORMAT=TABLE
  /STATISTICS=NONE.
FREQUENCIES
  /VARIABLES=AusgabenGameserver
  /FORMAT=TABLE
  /STATISTICS=NONE.
SPLIT FILE OFF.
EXIT.

