# VDVC-Survey

Die ausgewerteten Daten befinden sich (nach Jahren geordnet) in "./daten/".
Die Scripts im Verzeichnis "./scripts/" dienen zum einen der Erzeugung der
Daten aus den Rohdaten, zum anderen aber auch der Erzeugung von grafischen
Darstellungen ("./plots/") aus den Daten.


## Grafiken

Die Grafiken sind nach Jahren der Umfrage geordnet (z.B. "./plots/2016/")
und liegen immer mindestens auch als eps-Datei vor. Da die Verwendung von
eps-Dateien unter Windows berichten zufolge eher unangenehm zu sein scheint,
werden seit 2016 auch svg-Dateien erzeugt, die (z.B. auch direkt über Github)
im Browser angezeigt werden können.


## Scripts

Alle Scripts werden aus dem Wurzelverzeichnis aufgerufen.


### Konzept ab 2015

Statt wie bisher auf eine Mischung verschiedener Programe und Skriptsprachen
wird mittlerweile vor allem auf Python-Skripts gesetzt.
Bereits ab den Daten 2015 verweist die "./scripts/update.sh" (s.u.) auf
Python-Skripts.


### Konzept bis 2015

Direkt aufgerufen werden sollte die "./scripts/update.sh",
die alle gemachte Änderungen bis in die Plots anwenden sollte.
Faktisch diente sie vor allem zur Aufbereitung der Rohdaten.

#### Shell-Scripts

Grundsätzlich galt, dass die Shell-Scripts alle notwendigen Aufgaben übernehmen
sollten, indem zum Beispiel auch an "pspp" delegiert wird.
Wo PSPP- und Gnuplot-Skripts verwendet werden, ist das weiterhin sinnvoll,
so muss jeweil nur ein Kommando verwendet werden, um Daten auszuwerten und
gleich eine Grafik zu erstellen.


#### PSPP/SPSS-Scripts

Diese erledigen Datenauswertung. Auf sie wird von den Shell-Scripts verwiesen,
sie müssen nicht manuell aufgerufen werden.


#### Gnuplot-Scripts

Diese erledigen die Darstellung der ausgewerteten Daten.
Sie werden nicht immer aus den Shell-Scripts aufgerufen,
sollten es aber.

