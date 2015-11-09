=VDVC-Survey=

Die ausgewerteten Daten befinden sich (nach Jahren geordnet) in "./daten/".
Die Scripts im Verzeichnis "./scripts/" dienen zum einen der Erzeugung der
Daten aus den Rohdaten, zum anderen aber auch der Erzeugung von grafischen
Darstellungen ("./plots/") aus den Daten.


==Scripts==

Alle Scripts werden aus dem Wurzelverzeichnis aufgerufen.
Am wichtigsten soll die ./scripts/update.sh werden,
die gemachte Änderungen bis in die Plots durch propagiert.
Aktuell dient die Daten jedoch nur zur Aufbereitung der Rohdaten.


===Shell-Scripts===

Grundsätzlich gilt, dass die Shell-Scripts alle notwendigen Aufgaben übernehmen
sollen, indem zum Beispiel auch an "pspp" delegiert wird.


===PSPP/SPSS-Scripts===

Auf diese wird von den Shell-Scripts verwiesen, sie müssen nicht manuell
aufgerufen werden.


===Gnuplot-Scripts===

Werden aktuell nicht aus den Shell-Scripts aufgerufen.

