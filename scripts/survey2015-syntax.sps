SET DECIMAL=DOT

GET DATA
 /TYPE=TXT
 /FILE='./daten/daten2015.dat'
 /DELCASE=LINE
 /DELIMITERS=";"
 /QUALIFIER='"'
 /ARRANGEMENT=DELIMITED
 /FIRSTCASE=1
 /IMPORTCASE=ALL
 /VARIABLES=
 gruppe A4
 Geburtsjahr F4
 Geschlecht F1
 WohnortDeutschland A2
 Breitbandzugang A5
 COAXSpeed F1
 DSLSpeed F1
 FunkSpeed F1
 Videospieler F1
 ExSpieler F1
 ExWann F4
 RandC F3
 RandX F2
 Multiplayer A2
 Erfahrung F4
 Plattform_PCMac A2
 Plattform_PCWin A2
 Plattform_PCLnx A2
 Plattform_Plystn A2
 Plattform_Wii A2
 Plattform_XBox A2
 Plattform_DS A2
 Plattform_Android A2
 Plattform_iPhone A2
 Plattform_WinPhone A2
 Nutzungsumfang F14
 SpielFrage F1
 Spiel1 A85
 Release1 F4
 Freigabe1 A5
 Spiel2 A85
 Release2 F4
 Freigabe2 A5
 Spiel3 A85
 Release3 F4
 Freigabe3 A5
 Spiel4 A85
 Release4 F4
 Freigabe4 A5
 Spiel5 A85
 Release5 F4
 Freigabe5 A5
 Nutzungsdauer_SQ1 A2
 Nutzungsdauer_SQ2 A2
 Nutzungsdauer_SQ3 A2
 Nutzungsdauer_SQ4 A2
 Nutzungsdauer_SQ5 A2
 Bezugsweg_SQ1 F1
 Bezugsweg_SQ2 F1
 Bezugsweg_SQ3 F1
 Bezugsweg_SQ4 F1
 Bezugsweg_SQ5 F1
 Plattformen_SQ1 A5
 Plattformen_SQ2 A5
 Plattformen_SQ3 A5
 Plattformen_SQ4 A5
 Plattformen_SQ5 A5
 LetzteNutzung_SQ1 A2
 LetzteNutzung_SQ2 A2
 LetzteNutzung_SQ3 A2
 LetzteNutzung_SQ4 A2
 LetzteNutzung_SQ5 A2
 AusgabenHardware F15.2
 AusgabenSpieleKauf F15.2
 AusgabenSpieleAbos F15.2
 AusgabenAddonsDLCs F15.2
 AusgabenGameserver F14.2
 Endmotivation_1 A2
 Endmotivation_2 A2
 Endmotivation_3 A2
 Endmotivation_4 A2
 Endmotivation_5 A2
 Endmotivation_7 A2
 Endmotivation_9 A2
 Endzwang_SQ001 A2
 Endzwang_SQ002 A2
 Endverstndnis_1 F1
 Endverstndnis_2 F1
 Endverstndnis_3 F1
 Endverstndnis_4 F1
 Endverstndnis_5 F1
 Endverstndnis_7 F1
 Endverstndnis_9 F1
 Startmotivation_1 F1
 Startmotivation_2 F1
 Startmotivation_3 F1
 Startmotivation_4 F1
 Startmotivation_5 F1
 Illegalmotivation_1#0 A2
 Illegalmotivation_1#1 F1
 Illegalmotivation_2#0 A2
 Illegalmotivation_2#1 F1
 Illegalmotivation_3#0 A2
 Illegalmotivation_3#1 F1
 Illegalmotivation_4#0 A2
 Illegalmotivation_4#1 F1
 Illegalmotivation_5#0 A2
 Illegalmotivation_5#1 F1
 Illegalmotivation_6#0 A2
 Illegalmotivation_6#1 F1
 Illegalmotivation_7#0 A2
 Illegalmotivation_7#1 F1
 Illegalmotivation_8#0 A2
 Illegalmotivation_8#1 F1
 IllegalVerstaendnis_1 F1
 IllegalVerstaendnis_2 F1
 IllegalVerstaendnis_3 F1
 IllegalVerstaendnis_4 F1
 IllegalVerstaendnis_5 F1
 IllegalVerstaendnis_6 F1
 IllegalVerstaendnis_7 F1
 IllegalVerstaendnis_8 F1
 Kennzeichenkenntnis_SQ001 F1
 Kennzeichenkenntnis_SQ002 F1
 Kennzeichenkenntnis_SQ003 F1
 Kennzeichenkenntnis_SQ004 F1
 Kennzeichenkenntnis_SQ005 F1
 Schnittkenntnis F1
 Zensurmeinung F1
 Zensurinformation F1
 Zensurinfowege_1 F1
 Zensurinfowege_2 F1
 Zensurinfowege_3 F1
 Zensurinfowege_4 F1
 Zensurinfowege_5 F1
 Zensurinfowege_6 F1
 UncutBezug F1
 UncutBezugErfolg A2
 UncutBezugWegKErf_SQ001 A2
 UncutBezugWegKErf_SQ002 A2
 UncutBezugWegKErf_SQ003 A2
 UncutBezugWegKErf_SQ004 A2
 UncutBezugWegKErf_SQ005 A2
 UncutBezugWegKErf_SQ006 A2
 UncutBezugWegKErf_SQ007 A2
 UncutBezugWegKErf_SQ008 A2
 UncutBezugWegKErf_SQ009 A2
 UncutBezugWegKErf_SQ010 A2
 UncutBezugWegErf_SQ001#0 A1
 UncutBezugWegErf_SQ001#1 A2
 UncutBezugWegErf_SQ002#0 A1
 UncutBezugWegErf_SQ002#1 A2
 UncutBezugWegErf_SQ003#0 A1
 UncutBezugWegErf_SQ003#1 A2
 UncutBezugWegErf_SQ004#0 A1
 UncutBezugWegErf_SQ004#1 A2
 UncutBezugWegErf_SQ005#0 A1
 UncutBezugWegErf_SQ005#1 A2
 UncutBezugWegErf_SQ006#0 A1
 UncutBezugWegErf_SQ006#1 A2
 UncutBezugWegErf_SQ007#0 A1
 UncutBezugWegErf_SQ007#1 A2
 UncutBezugWegErf_SQ008#0 A1
 UncutBezugWegErf_SQ008#1 A2
 UncutBezugWegErf_SQ009#0 A1
 UncutBezugWegErf_SQ009#1 A2
 UncutBezugWegErf_SQ010#0 A1
 UncutBezugWegErf_SQ010#1 A2
 Screenshots_NC A1
 Screenshots_CU A1
 Modifikationen_NC A1
 Modifikationen_CU A1
 eSport_NC A1
 eSport_CU A1
 Casten_NC A1
 Casten_CU A1
 LetsPlay_NC A1
 LetsPlay_CU A1
 Cheatbann F1
 Onlineaktivierung F1
 Onlinezwang F1
 Kontingent F1
 Kopierschutz F1
 Sicherheitskopie F1
 Datenschutz F1
 Geolock F1
 Informationsinteress_1#0 F1
 Informationsinteress_1#1 A2
 Informationsinteress_2#0 F1
 Informationsinteress_2#1 A2
 Informationsinteress_3#0 F1
 Informationsinteress_3#1 A2
 Informationsinteress_4#0 F1
 Informationsinteress_4#1 A2
 Informationsinteress_5#0 F1
 Informationsinteress_5#1 A2
CACHE.
EXECUTE.

*Define Variable Properties.

VARIABLE LABELS Geburtsjahr "In welchem Jahr bist du geboren?".
VARIABLE LEVEL Geburtsjahr(SCALE).

VARIABLE LABELS Geschlecht "Was ist dein Geschlecht?".
VALUE LABELS  Geschlecht
 1 "Männlich"
 2 "Weiblich"
 3 "Anderes".

VARIABLE LABELS WohnortDeutschland "Lebst du in Deutschland?".
VALUE LABELS WohnortDeutschland
 "A1" "Ja."
 "A2" "Nein, aber in einem (auch) deutschsprachigen Land."
 "A3" "Nein.".

VARIABLE LABELS Breitbandzugang "Was für einen Internetzugang hast du an deinem Wohnort?".
VALUE LABELS  Breitbandzugang
 "ISDN" "Analog/ISDN"
 "DSL" "DSL/VDSL"
 "COAX" "Kabel"
 "Funk" "UMTS/LTE"
 "Sonst" "Sonstige"
 "Nope" "Keinen".

VARIABLE LABELS COAXSpeed "Wie schnell ist der Internetzugang an deinem Wohnort?".
VARIABLE LEVEL COAXSpeed(ORDINAL).
VALUE LABELS COAXSpeed
 1 "Bis 10 MBit/s"
 2 "Bis 25 MBit/s"
 3 "Bis 50 Mbit/s"
 4 "Bis 100 MBit/s"
 5 "Schneller".

VARIABLE LABELS DSLSpeed "Wie schnell ist der Internetzugang an deinem Wohnort?".
VARIABLE LEVEL DSLSpeed(ORDINAL).
VALUE LABELS DSLSpeed
 1 "Bis 6 MBit/s"
 2 "Bis 16 MBit/s"
 3 "Bis 50 MBit/s"
 4 "Bis 100 MBit/s"
 5 "Schneller".

VARIABLE LABELS FunkSpeed "Wie schnell ist der Internetzugang an deinem Wohnort?".
VARIABLE LEVEL FunkSpeed(ORDINAL).
VALUE LABELS FunkSpeed
 1 "Bis 7,2 MBit/s"
 2 "Bis 14,4 MBit/s"
 3 "Bis 25 MBit/s"
 4 "Bis 50 MBit/s"
 5 "Bis 100 MBit/s"
 6 "Schneller".

VARIABLE LABELS Videospieler "Nutzt du Videospiele?".
VALUE LABELS Videospieler
 1 "Yes"
 2 "No".

VARIABLE LABELS ExSpieler "Hast du einmal Videospiele genutzt?".
VALUE LABELS ExSpieler
 1 "Yes"
 2 "No".

VARIABLE LABELS ExWann "In welchem Jahr hast du zuletzt ein Videospiel genutzt?".
VARIABLE LEVEL ExWann(SCALE).

VARIABLE LABELS Ablehnung_1 "[… Erwachsene sich mit so etwas nicht mehr beschäftigen sollten.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VALUE LABELS Ablehnung_1
 1 "Yes"
 0 "Not selected".

VARIABLE LABELS Ablehnung_2 "[… dadurch die Aggressivität beeinflusst werde.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VALUE LABELS Ablehnung_2
 1 "Yes"
 0 "Not selected".

VARIABLE LABELS Ablehnung_3 "[… es eine Freizeitbeschäftigung “ungebildeter Kreise” sei.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VALUE LABELS Ablehnung_3
 1 "Yes"
 0 "Not selected".

VARIABLE LABELS Ablehnung_4 "[… man offenbar Spaß daran habe Menschen zu töten.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VALUE LABELS Ablehnung_4
 1 "Yes"
 0 "Not selected".

VARIABLE LABELS Ablehnung_5 "[… es keinen kulturellen/sonstigen Wert habe.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VALUE LABELS Ablehnung_5
 1 "Yes"
 0 "Not selected".

VARIABLE LABELS VersteckJN "Wegen dieser Erfahrungen ist es so, dass ich mein Verhalten in der Öffentlichkeit/am Arbeitsplatz angepasst habe.".
VALUE LABELS  VersteckJN
 1 "Yes"
 2 "No".

VARIABLE LABELS VersteckArt_1 "[… verberge/verleugne ich meine Videospielnutzung.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert. Als Reaktion hierauf …".
VALUE LABELS  VersteckArt_1
 1 "Yes"
 0 "Not selected".

VARIABLE LABELS VersteckArt_2 "[… ""oute"" ich mich nur auf Nachfrage als Videospieler.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert. Als Reaktion hierauf …".
VALUE LABELS  VersteckArt_2
 1 "Yes"
 0 "Not selected".

VARIABLE LABELS VersteckArt_3 "[… versuche ich Videospiele(r) zu verteidigen, wenn ich darauf angesprochen werde.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert. Als Reaktion hierauf …".
VALUE LABELS  VersteckArt_3
 1 "Yes"
 0 "Not selected".

VARIABLE LABELS VersteckArt_4 "[… gehe ich offensiv mit dem Thema um - in dem ich z.B. Kleidung mit Games-Motiven trage.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert. Als Reaktion hierauf …".
VALUE LABELS  VersteckArt_1
 1 "Yes"
 0 "Not selected".

VARIABLE LABELS Multiplayer "Spielst du eher Single- oder Multiplayer?".
VALUE LABELS  Multiplayer
 "A1" "Vorrangig Einzelspieler."
 "A3" "Beides gleichermaßen."
 "A5" "Vorrangig Mehrspieler.".

VARIABLE LABELS Erfahrung "Seit wann nutzt du Videospiele?".
VARIABLE LEVEL Erfahrung(SCALE).

VARIABLE LABELS Plattform_PCMac "[Mac/MacBook] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_PCMac
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Plattform_PCWin "[Windows] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_PCWin
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Plattform_PCLnx "[Linux] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_PCLnx
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Plattform_Plystn "[Playstation 3/4] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_Plystn
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Plattform_Wii "[Wii/WiiU] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_Wii
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Plattform_XBox "[XBox360/ XBox One] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_XBox
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Plattform_DS "[DS/2DS/3DS/DSi/…] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_DS
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Plattform_Android "[Smartphone (Android)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_Android
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Plattform_iPhone "[Smartphone (iPhone)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_iPhone
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Plattform_WinPhone "[Smartphone (Windows)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VALUE LABELS  Plattform_WinPhone
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".

VARIABLE LABELS Spiel1 "[Spiel 1] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".

VARIABLE LABELS Spiel2 "[Spiel 2] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".

VARIABLE LABELS Spiel3 "[Spiel 3] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".

VARIABLE LABELS Spiel4 "[Spiel 4] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".

VARIABLE LABELS Spiel5 "[Spiel 5] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".

VARIABLE LABELS Nutzungsdauer_SQ1 "[{Products_SQ1}] Seit wann nutzt du diese Spiele?".
VARIABLE LEVEL Nutzungsdauer_SQ1(ORDINAL).
VALUE LABELS  Nutzungsdauer_SQ1
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".

VARIABLE LABELS Nutzungsdauer_SQ2 "[{Products_SQ2}] Seit wann nutzt du diese Spiele?".
VARIABLE LEVEL Nutzungsdauer_SQ2(ORDINAL).
VALUE LABELS  Nutzungsdauer_SQ2
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".

VARIABLE LABELS Nutzungsdauer_SQ3 "[{Products_SQ3}] Seit wann nutzt du diese Spiele?".
VARIABLE LEVEL Nutzungsdauer_SQ3(ORDINAL).
VALUE LABELS  Nutzungsdauer_SQ3
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".

VARIABLE LABELS Nutzungsdauer_SQ4 "[{Products_SQ4}] Seit wann nutzt du diese Spiele?".
VARIABLE LEVEL Nutzungsdauer_SQ4(ORDINAL).
VALUE LABELS  Nutzungsdauer_SQ4
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".

VARIABLE LABELS Nutzungsdauer_SQ5 "[{Products_SQ5}] Seit wann nutzt du diese Spiele?".
VARIABLE LEVEL Nutzungsdauer_SQ5(ORDINAL).
VALUE LABELS  Nutzungsdauer_SQ5
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".

VARIABLE LABELS Nutzungsumfang "Wie viele Stunden verbringst du in der Woche mit Videospielen?".
VARIABLE LEVEL Nutzungsumfang(SCALE).

VARIABLE LABELS Bezugsweg_SQ1 "[{Products_SQ1}] Woher hast du diese Spiele?".
VARIABLE LEVEL Bezugsweg_SQ1(NOMINAL).
VALUE LABELS  Bezugsweg_SQ1
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".

VARIABLE LABELS Bezugsweg_SQ2 "[{Products_SQ2}] Woher hast du diese Spiele?".
VARIABLE LEVEL Bezugsweg_SQ2(NOMINAL).
VALUE LABELS  Bezugsweg_SQ2
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".

VARIABLE LABELS Bezugsweg_SQ3 "[{Products_SQ3}] Woher hast du diese Spiele?".
VARIABLE LEVEL Bezugsweg_SQ3(NOMINAL).
VALUE LABELS  Bezugsweg_SQ3
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".

VARIABLE LABELS Bezugsweg_SQ4 "[{Products_SQ4}] Woher hast du diese Spiele?".
VARIABLE LEVEL Bezugsweg_SQ4(NOMINAL).
VALUE LABELS  Bezugsweg_SQ4
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".

VARIABLE LABELS Bezugsweg_SQ5 "[{Products_SQ5}] Woher hast du diese Spiele?".
VARIABLE LEVEL Bezugsweg_SQ5(NOMINAL).
VALUE LABELS  Bezugsweg_SQ5
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".

VARIABLE LABELS Plattformen_SQ1 "[{Products_SQ1}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LEVEL Plattformen_SQ1(NOMINAL).
VALUE LABELS  Plattformen_SQ1
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".

VARIABLE LABELS Plattformen_SQ2 "[{Products_SQ2}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LEVEL Plattformen_SQ2(NOMINAL).
VALUE LABELS  Plattformen_SQ2
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".

VARIABLE LABELS Plattformen_SQ3 "[{Products_SQ3}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LEVEL Plattformen_SQ3(NOMINAL).
VALUE LABELS  Plattformen_SQ3
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".

VARIABLE LABELS Plattformen_SQ4 "[{Products_SQ4}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LEVEL Plattformen_SQ4(NOMINAL).
VALUE LABELS  Plattformen_SQ4
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".

VARIABLE LABELS Plattformen_SQ5 "[{Products_SQ5}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LEVEL Plattformen_SQ5(NOMINAL).
VALUE LABELS  Plattformen_SQ5
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".

VARIABLE LABELS AusgabenHardware "[Spielbezogene Hardware] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".

VARIABLE LABELS AusgabenSpieleKauf "[Spiele-Kauf (einmalige Ausgabe)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".

VARIABLE LABELS AusgabenSpieleAbos "[Spielbezogene Abos (regelmäßige Ausgabe)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".

VARIABLE LABELS AusgabenAddonsDLCs "[Addons, DLC, Bezahlinhalte] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".

VARIABLE LABELS AusgabenGameserver "[Eigene Gameserver (bei Clans: dein Anteil)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".

VARIABLE LABELS Endmotivation_1 "[Durchgespielt] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VALUE LABELS  Endmotivation_1
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".

VARIABLE LABELS Endmotivation_2 "[Grafik nicht mehr zeitgemäß] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VALUE LABELS  Endmotivation_2
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".

VARIABLE LABELS Endmotivation_3 "[Gameplay nicht mehr zeitgemäß] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VALUE LABELS  Endmotivation_3
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".

VARIABLE LABELS Endmotivation_4 "[Kein Spaß mehr] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VALUE LABELS  Endmotivation_4
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".

VARIABLE LABELS Endmotivation_5 "[(Besserer) Nachfolger] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VALUE LABELS  Endmotivation_5
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".

VARIABLE LABELS Endmotivation_7 "[Geänderte Interessen/Vorlieben] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VALUE LABELS  Endmotivation_7
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".

VARIABLE LABELS Endmotivation_9 "[Freundeskreis hat Spiel gewechselt] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VALUE LABELS  Endmotivation_9
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".

VARIABLE LABELS Endzwang_SQ001 "[Spiel läuft nicht mehr (neues Betriebssystem oder neue Konsole)] Hast du schon aus einem der folgenden Gründe aufgehört, ein Spiel zu nutzen?".
VALUE LABELS  Endzwang_SQ001
 "A1" "Ja, mehrfach"
 "A2" "Ja, ein Mal"
 "A3" "Nein, noch nie".

VARIABLE LABELS Endzwang_SQ002 "[Kein Support mehr oder Betrieb vom Anbieter eingestellt] Hast du schon aus einem der folgenden Gründe aufgehört, ein Spiel zu nutzen?".
VALUE LABELS  Endzwang_SQ002
 "A1" "Ja, mehrfach"
 "A2" "Ja, ein Mal"
 "A3" "Nein, noch nie".

VARIABLE LABELS Endverstndnis_1 "[Durchgespielt] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VALUE LABELS  Endverstndnis_1
 1 "Ja"
 2 "Manchmal"
 3 "Nein".

VARIABLE LABELS Endverstndnis_2 "[Grafik nicht mehr zeitgemäß] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VALUE LABELS  Endverstndnis_2
 1 "Ja"
 2 "Manchmal"
 3 "Nein".

VARIABLE LABELS Endverstndnis_3 "[Gameplay nicht mehr zeitgemäß] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VALUE LABELS  Endverstndnis_3
 1 "Ja"
 2 "Manchmal"
 3 "Nein".

VARIABLE LABELS Endverstndnis_4 "[Kein Spaß mehr] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VALUE LABELS  Endverstndnis_4
 1 "Ja"
 2 "Manchmal"
 3 "Nein".

VARIABLE LABELS Endverstndnis_5 "[(Besserer) Nachfolger] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VALUE LABELS  Endverstndnis_5
 1 "Ja"
 2 "Manchmal"
 3 "Nein".

VARIABLE LABELS Endverstndnis_7 "[Geänderte Interessen/Vorlieben] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VALUE LABELS  Endverstndnis_7
 1 "Ja"
 2 "Manchmal"
 3 "Nein".

VARIABLE LABELS Endverstndnis_9 "[Freundeskreis hat Spiel gewechselt] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VALUE LABELS  Endverstndnis_9
 1 "Ja"
 2 "Manchmal"
 3 "Nein".

VARIABLE LABELS Startmotivation_1 "[Erfahrung mit Vorgänger] Aus welchem Grund nutzt du ein neues Spiel?".
VALUE LABELS  Startmotivation_1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".

VARIABLE LABELS Startmotivation_2 "[Zusagendes Gameplay/Zusagende Spielidee] Aus welchem Grund nutzt du ein neues Spiel?".
VALUE LABELS  Startmotivation_2
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".

VARIABLE LABELS Startmotivation_3 "[Neugierde auf die Story] Aus welchem Grund nutzt du ein neues Spiel?".
VALUE LABELS  Startmotivation_3
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".

VARIABLE LABELS Startmotivation_4 "[Bessere Grafik] Aus welchem Grund nutzt du ein neues Spiel?".
VALUE LABELS  Startmotivation_4
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".

VARIABLE LABELS Startmotivation_5 "[Freundeskreis hat Spiel gewechselt] Aus welchem Grund nutzt du ein neues Spiel?".
VALUE LABELS  Startmotivation_5
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".

VARIABLE LABELS Illegalmotivation_1#0 "[„Antesten“, um es ggf. zu erwerben] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_1#0
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".


VARIABLE LABELS Illegalmotivation_1#1 "[„Antesten“, um es ggf. zu erwerben] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_1#1
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS Illegalmotivation_2#0 "[Geldmangel] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_2#0
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".

VARIABLE LABELS Illegalmotivation_2#1 "[Geldmangel] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_2#1
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS Illegalmotivation_3#0 "[Abneigung gegen den Anbieter] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_3#0
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".

VARIABLE LABELS Illegalmotivation_3#1 "[Abneigung gegen den Anbieter] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_3#1
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS Illegalmotivation_4#0 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_4#0
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".

VARIABLE LABELS Illegalmotivation_4#1 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_4#1
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS Illegalmotivation_5#0 "[Spiel ist nicht legal erhältlich.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_5#0
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".

VARIABLE LABELS Illegalmotivation_5#1 "[Spiel ist nicht legal erhältlich.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_5#1
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS Illegalmotivation_6#0 "[Einfacher/ schneller als kaufen.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_6#0
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".

VARIABLE LABELS Illegalmotivation_6#1 "[Einfacher/ schneller als kaufen.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_6#1
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS Illegalmotivation_7#0 "[Zusätzlich zum Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_7#0
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".

VARIABLE LABELS Illegalmotivation_7#1 "[Zusätzlich zum Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_7#1
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS Illegalmotivation_8#0 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_8#0
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".

VARIABLE LABELS Illegalmotivation_8#1 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VALUE LABELS  Illegalmotivation_8#1
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS IllegalVerstaendnis_1 "[„Antesten“, um es ggf. zu erwerben] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VALUE LABELS  IllegalVerstaendnis_1
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS IllegalVerstaendnis_2 "[Geldmangel] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VALUE LABELS  IllegalVerstaendnis_2
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS IllegalVerstaendnis_3 "[Abneigung gegen den Anbieter] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VALUE LABELS  IllegalVerstaendnis_3
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS IllegalVerstaendnis_4 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VALUE LABELS  IllegalVerstaendnis_4
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS IllegalVerstaendnis_5 "[Spiel ist nicht legal erhältlich.] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VALUE LABELS  IllegalVerstaendnis_5
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS IllegalVerstaendnis_6 "[Einfacher/ schneller als kaufen.] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VALUE LABELS  IllegalVerstaendnis_6
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS IllegalVerstaendnis_7 "[Neben dem Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in "+
"Ordnung?".
VALUE LABELS  IllegalVerstaendnis_7
 2 "Ja"
 1 "Manchmal"
 0 "Nein".

VARIABLE LABELS IllegalVerstaendnis_8 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VALUE LABELS  IllegalVerstaendnis_8
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
