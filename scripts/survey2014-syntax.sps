SET DECIMAL=DOT

GET DATA
 /TYPE=TXT
 /FILE='./rohdaten/daten2014.dat'
 /DELCASE=LINE
 /DELIMITERS=";"
 /QUALIFIER='"'
 /ARRANGEMENT=DELIMITED
 /FIRSTCASE=1
 /IMPORTCASE=ALL
 /VARIABLES=
 id F7
 token A16
 submitdate DATETIME23.2
 startlanguage A19
 startdate DATETIME23.2
 datestamp DATETIME23.2
 ipaddr A39
 refurl A255
 Geburtsjahr F4
 Geschlecht F1
 WohnortDeutschland A2
 Breitbandzugang A5
 COAXSpeed F1
 DSLSpeed F1
 FunkSpeed F1
 Videospieler F1
 ExSpieler F1
 ExWann F3.2
 Ablehnung_1 F1
 Ablehnung_2 F1
 Ablehnung_3 F1
 Ablehnung_4 F1
 Ablehnung_5 F1
 VersteckJN F1
 VersteckArt_1 F1
 VersteckArt_2 F1
 VersteckArt_3 F1
 VersteckArt_4 F1
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
 Spiel1 A44
 Release1 F4
 Freigabe1 F2
 Spiel2 A79
 Release2 F4
 Freigabe2 F2
 Spiel3 A46
 Release3 F4
 Freigabe3 F2
 Spiel4 A39
 Release4 F4
 Freigabe4 F2
 Spiel5 A46
 Release5 F4
 Freigabe5 F2
 Nutzungsdauer_SQ1 A2
 Nutzungsdauer_SQ2 A2
 Nutzungsdauer_SQ3 A2
 Nutzungsdauer_SQ4 A2
 Nutzungsdauer_SQ5 A2
 Nutzungsumfang F14
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
 SexSelbstbew_SQ001#0 F1
 SexSelbstbew_SQ001#1 F1
 SexSelbstbew_SQ002#0 F1
 SexSelbstbew_SQ002#1 F1
 SexSelbstbew_SQ003#0 F1
 SexSelbstbew_SQ003#1 F1
 SexSelbstbew_SQ004#0 F1
 SexSelbstbew_SQ004#1 F1
 SexSelbstbew_SQ005#0 F1
 SexSelbstbew_SQ005#1 F1
 SexSelbstbew_SQ006#0 F1
 SexSelbstbew_SQ006#1 F1
 SexWehrlos_SQ001#0 F1
 SexWehrlos_SQ001#1 F1
 SexWehrlos_SQ002#0 F1
 SexWehrlos_SQ002#1 F1
 SexWehrlos_SQ003#0 F1
 SexWehrlos_SQ003#1 F1
 SexWehrlos_SQ004#0 F1
 SexWehrlos_SQ004#1 F1
 SexWehrlos_SQ005#0 F1
 SexWehrlos_SQ005#1 F1
 SexWehrlos_SQ006#0 F1
 SexWehrlos_SQ006#1 F1
 SexKoerper_SQ001#0 F1
 SexKoerper_SQ001#1 F1
 SexKoerper_SQ002#0 F1
 SexKoerper_SQ002#1 F1
 SexKoerper_SQ003#0 F1
 SexKoerper_SQ003#1 F1
 SexKoerper_SQ004#0 F1
 SexKoerper_SQ004#1 F1
 SexKoerper_SQ005#0 F1
 SexKoerper_SQ005#1 F1
 SexKoerper_SQ006#0 F1
 SexKoerper_SQ006#1 F1
 SexKoerper_SQ007#0 F1
 SexKoerper_SQ007#1 F1
 SexKoerper_SQ008#0 F1
 SexKoerper_SQ008#1 F1
 SexProblem A2
 SexMehr_Korper#0 F1
 SexMehr_Korper#1 F1
 SexMehr_Selbstbew#0 F1
 SexMehr_Selbstbew#1 F1
 SexMehr_Stereotype#0 F1
 SexMehr_Stereotype#1 F1.
CACHE.
EXECUTE.
*Define Variable Properties.
VARIABLE LABELS submitdate "submitdate".

VARIABLE LABELS startlanguage "startlanguage".

VARIABLE LABELS startdate "startdate".

VARIABLE LABELS datestamp "datestamp".

VARIABLE LABELS ipaddr "ipaddr".

VARIABLE LABELS refurl "refurl".

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


VARIABLE LABELS Kennzeichenkenntnis_SQ001 "[USK-Kennzeichnung] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS Kennzeichenkenntnis_SQ002 "[PEGI-Kennzeichnung] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS Kennzeichenkenntnis_SQ003 "[Indizierungen (durch die BPjM)] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS Kennzeichenkenntnis_SQ004 "[Verbot (durch Strafgesetzbuch)] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS Kennzeichenkenntnis_SQ005 "[Beschlagnahme (durch Gerichtsurteil)] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS Schnittkenntnis "Weißt du, ob die Videospiele, die du besitzt, ungeschnittene oder entschärfte Versionen sind?".
VARIABLE LABELS Zensurmeinung "Was denkst du über Videospiele, bei denen die Gewaltdarstellung gegenüber dem Original reduziert ist?".
VARIABLE LABELS Zensurinformation "Versuchst du dich über die Veröffentlichung indizierter oder verbotener Videospiele zu informieren?".
VARIABLE LABELS Zensurinfowege_1 "[Deutsche Spielemagazine] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS Zensurinfowege_2 "[Ausländische Spielemagazine] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS Zensurinfowege_3 "[Foren] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS Zensurinfowege_4 "[Spezialisierte Webseiten] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS Zensurinfowege_5 "[BPjM-Aktuell (z.B. in Bibliotheken)] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS Zensurinfowege_6 "[Freunde oder Bekannte] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS UncutBezug "Versuchst du ungeschnittene Version von Spielen zu bekommen?".
VARIABLE LABELS UncutBezugErfolg "Wenn du versuchst, die ungeschnittene Version eines Spiels zu bekommen, schaffst du das üblicherweise?".
VARIABLE LABELS UncutBezugWegKErf_SQ001 "[Ladengeschäfte (Inland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegKErf_SQ002 "[Ladengeschäfte (Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegKErf_SQ003 "[Onlineshops (Inland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegKErf_SQ004 "[Onlineshops (Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegKErf_SQ005 "[Illegal über das Internet (z.B. Tauschbörsen)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegKErf_SQ006 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegKErf_SQ007 "[Legal von Bekannten (z.B. geliehen)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegKErf_SQ008 "[Legal über Bekannte (im Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegKErf_SQ009 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegKErf_SQ010 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ001#0 "[Ladengeschäfte (Inland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein,"+
" auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ001#1 "[Ladengeschäfte (Inland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein,"+
" auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ002#0 "[Ladengeschäfte (Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein"+
", auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ002#1 "[Ladengeschäfte (Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein"+
", auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ003#0 "[Versandhandel (Inland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, "+
"auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ003#1 "[Versandhandel (Inland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, "+
"auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ004#0 "[Versandhandel (Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein,"+
" auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ004#1 "[Versandhandel (Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein,"+
" auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ005#0 "[Illegal über das Internet (z.B. Tauschbörsen)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen "+
"Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ005#1 "[Illegal über das Internet (z.B. Tauschbörsen)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen "+
"Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ006#0 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine "+
"persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ006#1 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine "+
"persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ007#0 "[Legal von Bekannten (z.B. geliehen)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaus"+
"sichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ007#1 "[Legal von Bekannten (z.B. geliehen)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaus"+
"sichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ008#0 "[Legal über Bekannte (im Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussic"+
"hten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ008#1 "[Legal über Bekannte (im Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussic"+
"hten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ009#0 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen E"+
"rfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ009#1 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen E"+
"rfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ010#0 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen "+
"Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS UncutBezugWegErf_SQ010#1 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen "+
"Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS Onlineaktivierung "Hat bei deiner Kaufentscheidung die Erforderlichkeit einer (nach jeder Installation einmaligen) Onlineaktivierung eine Bedeutung?".
VARIABLE LABELS Onlinezwang "Hat bei deiner Kaufentscheidung das Vorhandensein eines Always-On-System (auch zur Nutzung im Einzelspieler muss eine Internetverbindung bestehen), eine Bedeutung?".
VARIABLE LABELS Kontingent "Hat bei deiner Kaufentscheidung ein beschränktes Installationskontingent (es ist - mit dem Key - nur eine beschränkte Anzahl von Installationen möglich) eine Bedeutung?".
VARIABLE LABELS Kopierschutz "Hat bei deiner Kaufentscheidung ein „aggressiver“ Kopierschutz, der z.B. die Festplatte nach bestimmten Programmen durchsucht, nach der Deinstallation des Spieles verbleibt oder eigene Gerätetreiber installiert, eine Bedeutung?".
VARIABLE LABELS Sicherheitskopie "Hat bei deiner Kaufentscheidung das Fehlen der Möglichkeit, (legal) eine Sicherheitskopie anfertigen zu können, eine Bedeutung?".
VARIABLE LABELS Datenschutz "Haben bei deiner Kaufentscheidung Datenschutzbedenken, weil unklar ist welche Daten vom PC/dem Spielverhalten übermittelt werden, eine Bedeutung?".
VARIABLE LABELS Geolock "Hat bei deiner Kaufentscheidung die Festlegung auf eine bestimmte Region der Erde (Geolock) eine Bedeutung?".
VARIABLE LABELS Informationsinteress_1#0 "[Art und Wirkungsweise des Kopierschutzes] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dieser Punkte schon einmal auf"+
" ein Spiels verzichtet?".
VARIABLE LABELS Informationsinteress_1#1 "[Art und Wirkungsweise des Kopierschutzes] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dieser Punkte schon einmal auf"+
" ein Spiels verzichtet?".
VARIABLE LABELS Informationsinteress_2#0 "[Ob und welche Daten durch die Nutzung des Spieles übermittelt werden] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen di"+
"eser Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS Informationsinteress_2#1 "[Ob und welche Daten durch die Nutzung des Spieles übermittelt werden] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen di"+
"eser Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS Informationsinteress_3#0 "[Inwieweit bei dem Spiel Gewaltdarstellungen entschärft worden sind] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dies"+
"er Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS Informationsinteress_3#1 "[Inwieweit bei dem Spiel Gewaltdarstellungen entschärft worden sind] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dies"+
"er Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS Informationsinteress_4#0 "[Ob der Multiplayer mit der internationalen Version kompatibel ist] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen diese"+
"r Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS Informationsinteress_4#1 "[Ob der Multiplayer mit der internationalen Version kompatibel ist] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen diese"+
"r Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS Informationsinteress_5#0 "[Ob eventuelle DLCs auch von Deutschland aus bezogen werden können] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen diese"+
"r Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS Informationsinteress_5#1 "[Ob eventuelle DLCs auch von Deutschland aus bezogen werden können] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen diese"+
"r Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS SexSelbstbew_SQ001#0 "[… sind der Normalfall.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexSelbstbew_SQ001#1 "[… sind der Normalfall.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexSelbstbew_SQ002#0 "[… finde ich positiv.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexSelbstbew_SQ002#1 "[… finde ich positiv.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexSelbstbew_SQ003#0 "[… färben auf das Selbstbild von SpielerInnen des Geschlechts der betreffenden Spielfiguren ab.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten"+
" dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexSelbstbew_SQ003#1 "[… färben auf das Selbstbild von SpielerInnen des Geschlechts der betreffenden Spielfiguren ab.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten"+
" dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexSelbstbew_SQ004#0 "[… erzeugen bei SpielerInnen des anderen Geschlechts dahingehende Erwartungshaltungen.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargeste"+
"llt. Diese Darstellungen …".
VARIABLE LABELS SexSelbstbew_SQ004#1 "[… erzeugen bei SpielerInnen des anderen Geschlechts dahingehende Erwartungshaltungen.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargeste"+
"llt. Diese Darstellungen …".
VARIABLE LABELS SexSelbstbew_SQ005#0 "[… sind realistisch und daher für eine glaubwürdige Spielwelt nötig.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstel"+
"lungen …".
VARIABLE LABELS SexSelbstbew_SQ005#1 "[… sind realistisch und daher für eine glaubwürdige Spielwelt nötig.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstel"+
"lungen …".
VARIABLE LABELS SexSelbstbew_SQ006#0 "[… sind Teil einer etablierten Erzähltradition.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexSelbstbew_SQ006#1 "[… sind Teil einer etablierten Erzähltradition.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ001#0 "[… sind der Normalfall.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ001#1 "[… sind der Normalfall.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ002#0 "[… finde ich positiv.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ002#1 "[… finde ich positiv.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ003#0 "[… färben auf das Selbstbild von SpielerInnen des Geschlechts der betreffenden Spielfiguren ab.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Di"+
"ese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ003#1 "[… färben auf das Selbstbild von SpielerInnen des Geschlechts der betreffenden Spielfiguren ab.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Di"+
"ese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ004#0 "[… erzeugen bei SpielerInnen des anderen Geschlechts dahingehende Erwartungshaltungen.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darst"+
"ellungen …".
VARIABLE LABELS SexWehrlos_SQ004#1 "[… erzeugen bei SpielerInnen des anderen Geschlechts dahingehende Erwartungshaltungen.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darst"+
"ellungen …".
VARIABLE LABELS SexWehrlos_SQ005#0 "[… sind realistisch und daher für eine glaubwürdige Spielwelt nötig.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ005#1 "[… sind realistisch und daher für eine glaubwürdige Spielwelt nötig.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ006#0 "[… sind Teil einer etablierten Erzähltradition.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexWehrlos_SQ006#1 "[… sind Teil einer etablierten Erzähltradition.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ001#0 "[… sind der Normalfall.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ001#1 "[… sind der Normalfall.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ002#0 "[… finde ich positiv.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ002#1 "[… finde ich positiv.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ003#0 "[… gefallen mir optisch.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ003#1 "[… gefallen mir optisch.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ004#0 "[… verstärken bei SpielerInnen des Geschlechts der Spielfigur unrealistische Einstellungen zum eigenen Körper.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellunge"+
"n …".
VARIABLE LABELS SexKoerper_SQ004#1 "[… verstärken bei SpielerInnen des Geschlechts der Spielfigur unrealistische Einstellungen zum eigenen Körper.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellunge"+
"n …".
VARIABLE LABELS SexKoerper_SQ005#0 "[… sind entwürdigend.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ005#1 "[… sind entwürdigend.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ006#0 "[… führen zu vermehrter Reduzierung echter Menschen auf ihren Körper.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ006#1 "[… führen zu vermehrter Reduzierung echter Menschen auf ihren Körper.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ007#0 "[… dienen der Atmosphäre des Spiels.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ007#1 "[… dienen der Atmosphäre des Spiels.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ008#0 "[… helfen mir, mich mit der (attraktiven) Spielfigur zu identifizieren.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexKoerper_SQ008#1 "[… helfen mir, mich mit der (attraktiven) Spielfigur zu identifizieren.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS SexProblem "In Videospielen ist die körperbetonte Darstellung …".
VARIABLE LABELS SexMehr_Korper#0 "[… körperbetonte Darstellungen.] [Skala 1] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS SexMehr_Korper#1 "[… körperbetonte Darstellungen.] [Skala 2] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS SexMehr_Selbstbew#0 "[… selbstbewusste Charaktere.] [Skala 1] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS SexMehr_Selbstbew#1 "[… selbstbewusste Charaktere.] [Skala 2] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS SexMehr_Stereotype#0 "[… schwache Charaktere.] [Skala 1] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS SexMehr_Stereotype#1 "[… schwache Charaktere.] [Skala 2] Ich wünsche mir in Computerspielen …".



VALUE LABELS  Kennzeichenkenntnis_SQ001
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Kennzeichenkenntnis_SQ002
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Kennzeichenkenntnis_SQ003
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Kennzeichenkenntnis_SQ004
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Kennzeichenkenntnis_SQ005
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Schnittkenntnis
 1 "Ja, ich weiß es bei allen."
 2 "Ich weiß es bei den meisten."
 3 "Ich weiß es bei einigen."
 4 "Nein, ich weiß es bei keinem.".
VALUE LABELS  Zensurmeinung
 1 "Entschärfte Versionen sind für mich kein Problem."
 2 "Schnitte stören mich, halten mich aber nicht von der Nutzung ab."
 3 "Ich versuche entschärfte Spiele nur in Ausnahmefällen zu nutzen."
 4 "Ich habe kein Interesse an geschnittenen Spielen.".
VALUE LABELS  Zensurinformation
 1 "Yes"
 2 "No".
VALUE LABELS  Zensurinfowege_1
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Zensurinfowege_2
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Zensurinfowege_3
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Zensurinfowege_4
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Zensurinfowege_5
 1 "Yes"
 0 "Not selected".
VALUE LABELS  Zensurinfowege_6
 1 "Yes"
 0 "Not selected".
VALUE LABELS  UncutBezug
 4 "Immer"
 3 "Meistens"
 2 "Manchmal"
 1 "Selten"
 0 "Nie".
VALUE LABELS  UncutBezugErfolg
 "A1" "Immer."
 "A2" "Meistens"
 "A3" "Manchmal"
 "A4" "Selten"
 "A5" "Nie".
VALUE LABELS  UncutBezugWegKErf_SQ001
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegKErf_SQ002
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegKErf_SQ003
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegKErf_SQ004
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegKErf_SQ005
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegKErf_SQ006
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegKErf_SQ007
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegKErf_SQ008
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegKErf_SQ009
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegKErf_SQ010
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ001#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ001#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ002#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ002#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ003#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ003#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ004#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ004#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ005#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ005#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ006#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ006#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ007#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ007#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ008#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ008#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ009#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ009#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  UncutBezugWegErf_SQ010#0
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  UncutBezugWegErf_SQ010#1
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  Onlineaktivierung
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  Onlinezwang
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  Kontingent
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  Kopierschutz
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  Sicherheitskopie
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  Datenschutz
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  Geolock
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  Informationsinteress_1#0
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  Informationsinteress_1#1
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  Informationsinteress_2#0
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  Informationsinteress_2#1
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  Informationsinteress_3#0
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  Informationsinteress_3#1
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  Informationsinteress_4#0
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  Informationsinteress_4#1
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  Informationsinteress_5#0
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  Informationsinteress_5#1
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  SexSelbstbew_SQ001#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ001#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ002#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ002#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ003#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ003#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ004#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ004#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ005#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ005#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ006#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexSelbstbew_SQ006#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ001#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ001#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ002#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ002#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ003#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ003#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ004#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ004#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ005#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ005#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ006#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexWehrlos_SQ006#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ001#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ001#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ002#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ002#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ003#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ003#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ004#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ004#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ005#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ005#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ006#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ006#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ007#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ007#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ008#0
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexKoerper_SQ008#1
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  SexProblem
 "A1" "… von Frauen problematischer als die von Männer."
 "A2" "… von Männern problematischer als von Frauen."
 "A3" "… gleich problematisch."
 "A4" "… nicht problematisch.".
VALUE LABELS  SexMehr_Korper#0
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  SexMehr_Korper#1
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  SexMehr_Selbstbew#0
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  SexMehr_Selbstbew#1
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  SexMehr_Stereotype#0
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  SexMehr_Stereotype#1
 0 "mehr"
 1 "unverändert"
 2 "weniger".

save outfile='./rohdaten/daten2014.sav'.
