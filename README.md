# VDVC-Survey

Die ausgewerteten Daten befinden sich (nach Jahren geordnet) in "./daten/".
Für die Jahre, bei denen wir um eine entsprechende Erlaubnis gebeten haben,
sind direkt dort auch die nicht ausgezählten, Datensätze
(z.B. "./daten/daten2015.dat").
Unbearbeitete Daten lassen Rückschlüsse auf die Teilnhemer zu.
Diese sind daher (wie die pseudonymisierten Datensätze aus 2013, 2014)
unter "./rohdaten/" gespeichert und werden nicht veröffentlicht.
Ebenfalls als Rohdaten eingeordnet ist der Export der OGDB.
Auch hier haben wir keine Zustimmung für eine Veröffentlichung.
Die Scripts im Verzeichnis "./scripts/" dienen zum einen der Erzeugung der
Daten aus den Rohdaten und zur Auszählung,
zum anderen aber auch der Erzeugung von grafischen
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

Achtung: Es handelt sich hier um ein Konzept, also um eine Beschreibung des
Soll-Zustands.


#### Datenaufbereitung

Die "datenaufbereitung${JAHR}.py" führt den SPSS-Export des jeweiligen Jahres
("./rohdaten/rohdaten${JAHR}.dat") mit den Referer-Daten
("./rohdaten/participants${JAHR}.csv") und den Namen der Fragen
(eigentlich in "./scripts/survey${JAHR}-syntax.sps", aktuell aber ins
Skript zur Datenaufbereitung kopiert) in eine Tabelle zusammen.
Diese wird als "./daten/daten${JAHR}.dat" gespeichert.

Außerdem greift die Datenaufbereitung auf "./scripts/shared/luts.py" zu.
Dieses Skript vereinheitlicht mittels Wörterbüchern (Python Dictionary,
auch "Look Up Tables", LUTs) verschiedene Schreibweisen von Titeln
und ergänzt Informationen zur Altersfreigabe.

Titel, zu denen keine Information gefunden werden kann,
werden mit der Zahl ihrer Nennungen in "./daten/${JAHR}/unbekannte-titel.tsv"
aufgeführt.


##### Schreibweisen-Tabelle

Verschiedene Schreibweisen werden aus der "./daten/schreibweisen.tsv"
in die LUT geladen. Das Format ist:

    "Unsere Schreibweise"   "Andere Schreibweise"

Wichtig ist hierbei, dass keine der Schreibweisen doppelte Anführungszeichen
(auf Tastaturen üblicherweise auf der Taste "2")
enthalten darf und zwischen beiden Schreibweisen ein Tabulator ist.
Wenn von der Datenaufbereitung eine Schreibweise erkannt wird,
wird der Titel (in dieser Schreibweise) nicht mehr
als unbekannter Titel gezählt.

##### Altersfreigabe und Release

Altersfreigabe und Release (und potenziell auch weiteres) kann oft aus
dem OGDB-Export übernommen werden (siehe auch OGDB-Zuordnung).
Wenn kein OGDB-Eintrag gefunden werden kann, wird auf den Inhalt der
"./daten/no-ogdb.tsv" zurückgegriffen. Das Format ist:

    "Titel"	Release    "Freigabe"    "Kommentar/Quelle"

Bei uneindeutligen Titeln, soll die Form "Titel (Jahr)" gewählt werden.
Das Jahr wird dort (wie bei Release) mit vier Ziffern angegeben.
Dabei ist darauf zu achten, dass das Release-Feld (als einziges) nicht
von Anführungszeichen umgeben ist.
Als Freigabe (wieder in Anführungszeichen) muss eine der folgenden
angegeben werden:

* .
* USK0
* USK6
* USK12
* USK16
* BPjM
* StGB

Das Feld für Kommentare oder Quellen darf bei offensichtlichen Angaben
freigelassen werden (nur Anführungszeichen).
Es steht zur verfügung, wenn man einfach noch einmal
nachschauen können oder aus anderen Gründen eine Notiz machen möchte.
Natürlich sind auch in diesem Feld doppelte Anführunsgzeichen
und Tabulatoren verboten.
Einfache Anführungszeichen ("'", auf einer Taste mit dem "#")
können aber genutzt werden.


##### OGDB-Zuordnung

Manchmal haben OGDB-Einträge Titel, die Kommentare enthalten,
für diesen Fall gibt es die "./daten/zuordnung.tsv".
Der Aufbau entspricht der Schreibweisen-Tabelle (siehe oben):

    "Titel"	"OGDB-Eintrag"

Hier ein Beispiel:

    "H1Z1"	"H1Z1 (Steam, Early Access)"


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

