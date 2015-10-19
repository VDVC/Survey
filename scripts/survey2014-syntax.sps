GET DATA
 /TYPE=TXT
 /FILE='./daten/rohdaten2014.dat'
 /DELCASE=LINE
 /DELIMITERS=";"
 /QUALIFIER='"'
 /ARRANGEMENT=DELIMITED
 /FIRSTCASE=1
 /IMPORTCASE=ALL
 /VARIABLES=
 id F7
 V2 A16
 V3 DATETIME23.2
 V5 A19
 V6 DATETIME23.2
 V7 DATETIME23.2
 V8 A39
 V9 A255
 V10 F4
 V11 F1
 V12 A2
 V13 A5
 V14 F1
 V15 F1
 V16 F1
 V17 F1
 V18 F1
 V19 F3.2
 V20 F1
 V21 F1
 V22 F1
 V23 F1
 V24 F1
 V25 F1
 V26 F1
 V27 F1
 V28 F1
 V29 F1
 V30 A50
 V31 A2
 V32 F15.14
 V33 A2
 V34 A2
 V35 A2
 V36 A2
 V37 A2
 V38 A2
 V39 A2
 V40 A2
 V41 A2
 V42 A2
 Spiel_1 A44
 Release_1 F4
 Freigabe_1 F2
 Spiel_2 A79
 Release_2 F4
 Freigabe_2 F2
 Spiel_3 A46
 Release3 F4
 Freigabe3 F2
 Spiel_4 A39
 Release4 F4
 Freigabe4 F2
 Spiel_5 A46
 Release_5 F4
 Freigabe_5 F2
 V48 A2
 V49 A2
 V50 A2
 V51 A2
 V52 A2
 V53 F14.13
 V54 F1
 V55 F1
 V56 F1
 V57 F1
 V58 F1
 V59 A5
 V60 A5
 V61 A5
 V62 A5
 V63 A5
 V64 F15.14
 V65 F15.14
 V66 F15.14
 V67 F15.14
 V68 F14.13
 V69 A2
 V70 A2
 V71 A2
 V72 A2
 V73 A2
 V74 A2
 V75 A2
 V76 A2
 V77 A2
 V78 F1
 V79 F1
 V80 F1
 V81 F1
 V82 F1
 V83 F1
 V84 F1
 V85 F1
 V86 F1
 V87 F1
 V88 F1
 V89 F1
 V90 A2
 V91 F1
 V92 A2
 V93 F1
 V94 A2
 V95 F1
 V96 A2
 V97 F1
 V98 A2
 V99 F1
 V100 A2
 V101 F1
 V102 A2
 V103 F1
 V104 A2
 V105 F1
 V106 F1
 V107 F1
 V108 F1
 V109 F1
 V110 F1
 V111 F1
 V112 F1
 V113 F1
 V114 F1
 V115 F1
 V116 F1
 V117 F1
 V118 F1
 V119 F1
 V120 F1
 V121 F1
 V122 F1
 V123 F1
 V124 F1
 V125 F1
 V126 F1
 V127 F1
 V128 A66
 V129 F1
 V130 A2
 V131 A2
 V132 A2
 V133 A2
 V134 A2
 V135 A2
 V136 A2
 V137 A2
 V138 A2
 V139 A2
 V140 A2
 V141 A1
 V142 A2
 V143 A1
 V144 A2
 V145 A1
 V146 A2
 V147 A1
 V148 A2
 V149 A1
 V150 A2
 V151 A1
 V152 A2
 V153 A1
 V154 A2
 V155 A1
 V156 A2
 V157 A1
 V158 A2
 V159 A1
 V160 A2
 V161 F1
 V162 F1
 V163 F1
 V164 F1
 V165 F1
 V166 F1
 V167 F1
 V168 F1
 V169 A2
 V170 F1
 V171 A2
 V172 F1
 V173 A2
 V174 F1
 V175 A2
 V176 F1
 V177 A2
 V178 F1
 V179 F1
 V180 F1
 V181 F1
 V182 F1
 V183 F1
 V184 F1
 V185 F1
 V186 F1
 V187 F1
 V188 F1
 V189 F1
 V190 F1
 V191 F1
 V192 F1
 V193 F1
 V194 F1
 V195 F1
 V196 F1
 V197 F1
 V198 F1
 V199 F1
 V200 F1
 V201 F1
 V202 F1
 V203 F1
 V204 F1
 V205 F1
 V206 F1
 V207 F1
 V208 F1
 V209 F1
 V210 F1
 V211 F1
 V212 F1
 V213 F1
 V214 F1
 V215 F1
 V216 F1
 V217 F1
 V218 A2
 V219 F1
 V220 F1
 V221 F1
 V222 F1
 V223 F1
 V224 F1
 V225 A2033.
CACHE.
EXECUTE.
*Define Variable Properties.
VARIABLE LABELS id "id".
VARIABLE LABELS V2 "token".
VARIABLE LABELS V3 "submitdate".
VARIABLE LABELS V5 "startlanguage".
VARIABLE LABELS V6 "startdate".
VARIABLE LABELS V7 "datestamp".
VARIABLE LABELS V8 "ipaddr".
VARIABLE LABELS V9 "refurl".
VARIABLE LABELS V10 "In welchem Jahr bist du geboren?".
VARIABLE LABELS V11 "Was ist dein Geschlecht?".
VARIABLE LABELS V12 "Lebst du in Deutschland?".
VARIABLE LABELS V13 "Was für einen Internetzugang hast du an deinem Wohnort?".
VARIABLE LABELS V14 "Wie schnell ist der Internetzugang an deinem Wohnort?".
VARIABLE LABELS V15 "Wie schnell ist der Internetzugang an deinem Wohnort?".
VARIABLE LABELS V16 "Wie schnell ist der Internetzugang an deinem Wohnort?".
VARIABLE LABELS V17 "Nutzt du Videospiele?".
VARIABLE LABELS V18 "Hast du einmal Videospiele genutzt?".
VARIABLE LABELS V19 "In welchem Jahr hast du zuletzt ein Videospiel genutzt?".
VARIABLE LABELS V20 "[… Erwachsene sich mit so etwas nicht mehr beschäftigen sollten.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VARIABLE LABELS V21 "[… dadurch die Aggressivität beeinflusst werde.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VARIABLE LABELS V22 "[… es eine Freizeitbeschäftigung “ungebildeter Kreise” sei.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VARIABLE LABELS V23 "[… man offenbar Spaß daran habe Menschen zu töten.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VARIABLE LABELS V24 "[… es keinen kulturellen/sonstigen Wert habe.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert, weil sie meinen, dass …".
VARIABLE LABELS V25 "Wegen dieser Erfahrungen ist es so, dass ich mein Verhalten in der Öffentlichkeit/am Arbeitsplatz angepasst habe.".
VARIABLE LABELS V26 "[… verberge/verleugne ich meine Videospielnutzung.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert. Als Reaktion hierauf …".
VARIABLE LABELS V27 "[… ""oute"" ich mich nur auf Nachfrage als Videospieler.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert. Als Reaktion hierauf …".
VARIABLE LABELS V28 "[… versuche ich Videospiele(r) zu verteidigen, wenn ich darauf angesprochen werde.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert. Als Reaktion hierauf …".
VARIABLE LABELS V29 "[… gehe ich offensiv mit dem Thema um - in dem ich z.B. Kleidung mit Games-Motiven trage.] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert. Als Reaktion hierauf …".
VARIABLE LABELS V30 "[Sonstiges] Auf meine Videospielnutzung haben Außenstehende schon abschätzig reagiert. Als Reaktion hierauf …".
VARIABLE LABELS V31 "Spielst du eher Single- oder Multiplayer?".
VARIABLE LABELS V32 "Seit wann nutzt du Videospiele?".
VARIABLE LABELS V33 "[Mac/MacBook] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V34 "[Windows] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V35 "[Linux] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V36 "[Playstation 3/4] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V37 "[Wii/WiiU] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V38 "[XBox360/ XBox One] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V39 "[DS/2DS/3DS/DSi/…] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V40 "[Smartphone (Android)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V41 "[Smartphone (iPhone)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V42 "[Smartphone (Windows)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS Spiel_1 "[Spiel 1] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".
VARIABLE LABELS Spiel_2 "[Spiel 2] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".
VARIABLE LABELS Spiel_3 "[Spiel 3] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".
VARIABLE LABELS Spiel_4 "[Spiel 4] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".
VARIABLE LABELS Spiel_5 "[Spiel 5] Welche Spiele hast du in den letzten 21 Tagen genutzt? (Gib bei Addons/Mods bitte das Hauptspiel an.)".
VARIABLE LABELS V48 "[{Products_SQ1}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V49 "[{Products_SQ2}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V50 "[{Products_SQ3}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V51 "[{Products_SQ4}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V52 "[{Products_SQ5}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V53 "Wie viele Stunden verbringst du in der Woche mit Videospielen?".
VARIABLE LABELS V54 "[{Products_SQ1}] Woher hast du diese Spiele?".
VARIABLE LABELS V55 "[{Products_SQ2}] Woher hast du diese Spiele?".
VARIABLE LABELS V56 "[{Products_SQ3}] Woher hast du diese Spiele?".
VARIABLE LABELS V57 "[{Products_SQ4}] Woher hast du diese Spiele?".
VARIABLE LABELS V58 "[{Products_SQ5}] Woher hast du diese Spiele?".
VARIABLE LABELS V59 "[{Products_SQ1}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V60 "[{Products_SQ2}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V61 "[{Products_SQ3}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V62 "[{Products_SQ4}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V63 "[{Products_SQ5}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V64 "[Spielbezogene Hardware] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V65 "[Spiele-Kauf (einmalige Ausgabe)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V66 "[Spielbezogene Abos (regelmäßige Ausgabe)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V67 "[Addons, DLC, Bezahlinhalte] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V68 "[Eigene Gameserver (bei Clans: dein Anteil)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V69 "[Durchgespielt] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V70 "[Grafik nicht mehr zeitgemäß] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V71 "[Gameplay nicht mehr zeitgemäß] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V72 "[Kein Spaß mehr] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V73 "[(Besserer) Nachfolger] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V74 "[Geänderte Interessen/Vorlieben] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V75 "[Freundeskreis hat Spiel gewechselt] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V76 "[Spiel läuft nicht mehr (neues Betriebssystem oder neue Konsole)] Hast du schon aus einem der folgenden Gründe aufgehört, ein Spiel zu nutzen?".
VARIABLE LABELS V77 "[Kein Support mehr oder Betrieb vom Anbieter eingestellt] Hast du schon aus einem der folgenden Gründe aufgehört, ein Spiel zu nutzen?".
VARIABLE LABELS V78 "[Durchgespielt] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VARIABLE LABELS V79 "[Grafik nicht mehr zeitgemäß] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VARIABLE LABELS V80 "[Gameplay nicht mehr zeitgemäß] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VARIABLE LABELS V81 "[Kein Spaß mehr] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VARIABLE LABELS V82 "[(Besserer) Nachfolger] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VARIABLE LABELS V83 "[Geänderte Interessen/Vorlieben] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VARIABLE LABELS V84 "[Freundeskreis hat Spiel gewechselt] Wenn man nach Gründen fragt, ein Spiel nicht mehr zu nutzen, bekommt man unter anderem folgende genannt. Hältst du diese Gründe jeweils für nachvollziehbar?".
VARIABLE LABELS V85 "[Erfahrung mit Vorgänger] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V86 "[Zusagendes Gameplay/Zusagende Spielidee] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V87 "[Neugierde auf die Story] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V88 "[Bessere Grafik] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V89 "[Freundeskreis hat Spiel gewechselt] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V90 "[„Antesten“, um es ggf. zu erwerben] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V91 "[„Antesten“, um es ggf. zu erwerben] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V92 "[Geldmangel] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V93 "[Geldmangel] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V94 "[Abneigung gegen den Anbieter] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V95 "[Abneigung gegen den Anbieter] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V96 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V97 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V98 "[Spiel ist nicht legal erhältlich.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V99 "[Spiel ist nicht legal erhältlich.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V100 "[Einfacher/ schneller als kaufen.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V101 "[Einfacher/ schneller als kaufen.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V102 "[Zusätzlich zum Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V103 "[Zusätzlich zum Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V104 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V105 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V106 "[„Antesten“, um es ggf. zu erwerben] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VARIABLE LABELS V107 "[Geldmangel] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VARIABLE LABELS V108 "[Abneigung gegen den Anbieter] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VARIABLE LABELS V109 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VARIABLE LABELS V110 "[Spiel ist nicht legal erhältlich.] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VARIABLE LABELS V111 "[Einfacher/ schneller als kaufen.] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VARIABLE LABELS V112 "[Neben dem Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in "+
"Ordnung?".
VARIABLE LABELS V113 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] Wenn man nach Gründen für illegale Nutzung fragt, werden unter anderem folgende genannt. Findest du illegale Nutzung aus diesen Gründen in Ordnung?".
VARIABLE LABELS V114 "[USK-Kennzeichnung] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS V115 "[PEGI-Kennzeichnung] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS V116 "[Indizierungen (durch die BPjM)] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS V117 "[Verbot (durch Strafgesetzbuch)] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS V118 "[Beschlagnahme (durch Gerichtsurteil)] Welche der folgenden Bewertungen von Videospielen kennst du?".
VARIABLE LABELS V119 "Weißt du, ob die Videospiele, die du besitzt, ungeschnittene oder entschärfte Versionen sind?".
VARIABLE LABELS V120 "Was denkst du über Videospiele, bei denen die Gewaltdarstellung gegenüber dem Original reduziert ist?".
VARIABLE LABELS V121 "Versuchst du dich über die Veröffentlichung indizierter oder verbotener Videospiele zu informieren?".
VARIABLE LABELS V122 "[Deutsche Spielemagazine] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V123 "[Ausländische Spielemagazine] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V124 "[Foren] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V125 "[Spezialisierte Webseiten] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V126 "[BPjM-Aktuell (z.B. in Bibliotheken)] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V127 "[Freunde oder Bekannte] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V128 "[Sonstiges] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V129 "Versuchst du ungeschnittene Version von Spielen zu bekommen?".
VARIABLE LABELS V130 "Wenn du versuchst, die ungeschnittene Version eines Spiels zu bekommen, schaffst du das üblicherweise?".
VARIABLE LABELS V131 "[Ladengeschäfte (Inland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V132 "[Ladengeschäfte (Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V133 "[Onlineshops (Inland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V134 "[Onlineshops (Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V135 "[Illegal über das Internet (z.B. Tauschbörsen)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V136 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V137 "[Legal von Bekannten (z.B. geliehen)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V138 "[Legal über Bekannte (im Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V139 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V140 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V141 "[Ladengeschäfte (Inland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein,"+
" auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V142 "[Ladengeschäfte (Inland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein,"+
" auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V143 "[Ladengeschäfte (Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein"+
", auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V144 "[Ladengeschäfte (Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein"+
", auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V145 "[Versandhandel (Inland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, "+
"auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V146 "[Versandhandel (Inland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, "+
"auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V147 "[Versandhandel (Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein,"+
" auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V148 "[Versandhandel (Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein,"+
" auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V149 "[Illegal über das Internet (z.B. Tauschbörsen)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen "+
"Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V150 "[Illegal über das Internet (z.B. Tauschbörsen)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen "+
"Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V151 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine "+
"persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V152 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine "+
"persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V153 "[Legal von Bekannten (z.B. geliehen)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaus"+
"sichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V154 "[Legal von Bekannten (z.B. geliehen)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaus"+
"sichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V155 "[Legal über Bekannte (im Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussic"+
"hten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V156 "[Legal über Bekannte (im Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussic"+
"hten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V157 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen E"+
"rfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V158 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen E"+
"rfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V159 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen "+
"Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V160 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du bereits versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen "+
"Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V161 "Hat bei deiner Kaufentscheidung die Erforderlichkeit einer (nach jeder Installation einmaligen) Onlineaktivierung eine Bedeutung?".
VARIABLE LABELS V162 "Hat bei deiner Kaufentscheidung das Vorhandensein eines Always-On-System (auch zur Nutzung im Einzelspieler muss eine Internetverbindung bestehen), eine Bedeutung?".
VARIABLE LABELS V163 "Hat bei deiner Kaufentscheidung ein beschränktes Installationskontingent (es ist - mit dem Key - nur eine beschränkte Anzahl von Installationen möglich) eine Bedeutung?".
VARIABLE LABELS V164 "Hat bei deiner Kaufentscheidung ein „aggressiver“ Kopierschutz, der z.B. die Festplatte nach bestimmten Programmen durchsucht, nach der Deinstallation des Spieles verbleibt oder eigene Gerätetreiber installiert, eine Bedeutung?".
VARIABLE LABELS V165 "Hat bei deiner Kaufentscheidung das Fehlen der Möglichkeit, (legal) eine Sicherheitskopie anfertigen zu können, eine Bedeutung?".
VARIABLE LABELS V166 "Haben bei deiner Kaufentscheidung Datenschutzbedenken, weil unklar ist welche Daten vom PC/dem Spielverhalten übermittelt werden, eine Bedeutung?".
VARIABLE LABELS V167 "Hat bei deiner Kaufentscheidung die Festlegung auf eine bestimmte Region der Erde (Geolock) eine Bedeutung?".
VARIABLE LABELS V168 "[Art und Wirkungsweise des Kopierschutzes] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dieser Punkte schon einmal auf"+
" ein Spiels verzichtet?".
VARIABLE LABELS V169 "[Art und Wirkungsweise des Kopierschutzes] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dieser Punkte schon einmal auf"+
" ein Spiels verzichtet?".
VARIABLE LABELS V170 "[Ob und welche Daten durch die Nutzung des Spieles übermittelt werden] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen di"+
"eser Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS V171 "[Ob und welche Daten durch die Nutzung des Spieles übermittelt werden] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen di"+
"eser Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS V172 "[Inwieweit bei dem Spiel Gewaltdarstellungen entschärft worden sind] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dies"+
"er Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS V173 "[Inwieweit bei dem Spiel Gewaltdarstellungen entschärft worden sind] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dies"+
"er Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS V174 "[Ob der Multiplayer mit der internationalen Version kompatibel ist] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen diese"+
"r Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS V175 "[Ob der Multiplayer mit der internationalen Version kompatibel ist] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen diese"+
"r Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS V176 "[Ob eventuelle DLCs auch von Deutschland aus bezogen werden können] [Skala 1] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen diese"+
"r Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS V177 "[Ob eventuelle DLCs auch von Deutschland aus bezogen werden können] [Skala 2] 			Fühlst du dich über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen diese"+
"r Punkte schon einmal auf ein Spiels verzichtet?".
VARIABLE LABELS V178 "[… sind der Normalfall.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS V179 "[… sind der Normalfall.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS V180 "[… finde ich positiv.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS V181 "[… finde ich positiv.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS V182 "[… färben auf das Selbstbild von SpielerInnen des Geschlechts der betreffenden Spielfiguren ab.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten"+
" dargestellt. Diese Darstellungen …".
VARIABLE LABELS V183 "[… färben auf das Selbstbild von SpielerInnen des Geschlechts der betreffenden Spielfiguren ab.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten"+
" dargestellt. Diese Darstellungen …".
VARIABLE LABELS V184 "[… erzeugen bei SpielerInnen des anderen Geschlechts dahingehende Erwartungshaltungen.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargeste"+
"llt. Diese Darstellungen …".
VARIABLE LABELS V185 "[… erzeugen bei SpielerInnen des anderen Geschlechts dahingehende Erwartungshaltungen.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargeste"+
"llt. Diese Darstellungen …".
VARIABLE LABELS V186 "[… sind realistisch und daher für eine glaubwürdige Spielwelt nötig.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstel"+
"lungen …".
VARIABLE LABELS V187 "[… sind realistisch und daher für eine glaubwürdige Spielwelt nötig.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstel"+
"lungen …".
VARIABLE LABELS V188 "[… sind Teil einer etablierten Erzähltradition.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS V189 "[… sind Teil einer etablierten Erzähltradition.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als selbstbewusste, unabhängige und starke Persönlichkeiten dargestellt. Diese Darstellungen …".
VARIABLE LABELS V190 "[… sind der Normalfall.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS V191 "[… sind der Normalfall.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS V192 "[… finde ich positiv.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS V193 "[… finde ich positiv.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS V194 "[… färben auf das Selbstbild von SpielerInnen des Geschlechts der betreffenden Spielfiguren ab.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Di"+
"ese Darstellungen …".
VARIABLE LABELS V195 "[… färben auf das Selbstbild von SpielerInnen des Geschlechts der betreffenden Spielfiguren ab.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Di"+
"ese Darstellungen …".
VARIABLE LABELS V196 "[… erzeugen bei SpielerInnen des anderen Geschlechts dahingehende Erwartungshaltungen.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darst"+
"ellungen …".
VARIABLE LABELS V197 "[… erzeugen bei SpielerInnen des anderen Geschlechts dahingehende Erwartungshaltungen.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darst"+
"ellungen …".
VARIABLE LABELS V198 "[… sind realistisch und daher für eine glaubwürdige Spielwelt nötig.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS V199 "[… sind realistisch und daher für eine glaubwürdige Spielwelt nötig.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS V200 "[… sind Teil einer etablierten Erzähltradition.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS V201 "[… sind Teil einer etablierten Erzähltradition.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen als unterwürfig, wehrlos und hilfsbedürftig dargestellt. Diese Darstellungen …".
VARIABLE LABELS V202 "[… sind der Normalfall.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V203 "[… sind der Normalfall.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V204 "[… finde ich positiv.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V205 "[… finde ich positiv.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V206 "[… gefallen mir optisch.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V207 "[… gefallen mir optisch.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V208 "[… verstärken bei SpielerInnen des Geschlechts der Spielfigur unrealistische Einstellungen zum eigenen Körper.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellunge"+
"n …".
VARIABLE LABELS V209 "[… verstärken bei SpielerInnen des Geschlechts der Spielfigur unrealistische Einstellungen zum eigenen Körper.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellunge"+
"n …".
VARIABLE LABELS V210 "[… sind entwürdigend.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V211 "[… sind entwürdigend.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V212 "[… führen zu vermehrter Reduzierung echter Menschen auf ihren Körper.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V213 "[… führen zu vermehrter Reduzierung echter Menschen auf ihren Körper.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V214 "[… dienen der Atmosphäre des Spiels.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V215 "[… dienen der Atmosphäre des Spiels.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V216 "[… helfen mir, mich mit der (attraktiven) Spielfigur zu identifizieren.] [Skala 1] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V217 "[… helfen mir, mich mit der (attraktiven) Spielfigur zu identifizieren.] [Skala 2] Weibliche/Männliche Charaktere werden in vielen Videospielen körperbetont dargestellt. Diese Darstellungen …".
VARIABLE LABELS V218 "In Videospielen ist die körperbetonte Darstellung …".
VARIABLE LABELS V219 "[… körperbetonte Darstellungen.] [Skala 1] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS V220 "[… körperbetonte Darstellungen.] [Skala 2] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS V221 "[… selbstbewusste Charaktere.] [Skala 1] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS V222 "[… selbstbewusste Charaktere.] [Skala 2] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS V223 "[… schwache Charaktere.] [Skala 1] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS V224 "[… schwache Charaktere.] [Skala 2] Ich wünsche mir in Computerspielen …".
VARIABLE LABELS V225 "Wenn du möchtest, kannst du uns hier Feedback zur Umfrage hinterlassen. Um die Umfrage abzuschließen, klicke einfach “Absenden”.".
*Define Value labels.
VALUE LABELS  V11
 1 "Männlich"
 2 "Weiblich"
 3 "Anderes".
VALUE LABELS  V12
 "A1" "Ja."
 "A2" "Nein, aber in einem (auch) deutschsprachigen Land."
 "A3" "Nein.".
VALUE LABELS  V13
 "ISDN" "Analog/ISDN"
 "DSL" "DSL/VDSL"
 "COAX" "Kabel"
 "Funk" "UMTS/LTE"
 "Sonst" "Sonstige"
 "Nope" "Keinen".
VALUE LABELS  V14
 1 "Bis 10 MBit/s"
 2 "Bis 25 MBit/s"
 3 "Bis 50 Mbit/s"
 4 "Bis 100 MBit/s"
 5 "Schneller".
VALUE LABELS  V15
 1 "Bis 6 MBit/s"
 2 "Bis 16 MBit/s"
 3 "Bis 50 MBit/s"
 4 "Bis 100 MBit/s"
 5 "Schneller".
VALUE LABELS  V16
 1 "Bis 7,2 MBit/s"
 2 "Bis 14,4 MBit/s"
 3 "Bis 25 MBit/s"
 4 "Bis 50 MBit/s"
 5 "Bis 100 MBit/s"
 6 "Schneller".
VALUE LABELS  V17
 1 "Yes"
 2 "No".
VALUE LABELS  V18
 1 "Yes"
 2 "No".
VALUE LABELS  V20
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V21
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V22
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V23
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V24
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V25
 1 "Yes"
 2 "No".
VALUE LABELS  V26
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V27
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V28
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V29
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V31
 "A1" "Vorrangig Einzelspieler."
 "A3" "Beides gleichermaßen."
 "A5" "Vorrangig Mehrspieler.".
VALUE LABELS  V33
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V34
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V35
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V36
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V37
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V38
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V39
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V40
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V41
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V42
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V48
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V49
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V50
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V51
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V52
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V54
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V55
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V56
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V57
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V58
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V59
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V60
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V61
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V62
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V63
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V69
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V70
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V71
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V72
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V73
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V74
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V75
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V76
 "A1" "Ja, mehrfach"
 "A2" "Ja, ein Mal"
 "A3" "Nein, noch nie".
VALUE LABELS  V77
 "A1" "Ja, mehrfach"
 "A2" "Ja, ein Mal"
 "A3" "Nein, noch nie".
VALUE LABELS  V78
 1 "Ja"
 2 "Manchmal"
 3 "Nein".
VALUE LABELS  V79
 1 "Ja"
 2 "Manchmal"
 3 "Nein".
VALUE LABELS  V80
 1 "Ja"
 2 "Manchmal"
 3 "Nein".
VALUE LABELS  V81
 1 "Ja"
 2 "Manchmal"
 3 "Nein".
VALUE LABELS  V82
 1 "Ja"
 2 "Manchmal"
 3 "Nein".
VALUE LABELS  V83
 1 "Ja"
 2 "Manchmal"
 3 "Nein".
VALUE LABELS  V84
 1 "Ja"
 2 "Manchmal"
 3 "Nein".
VALUE LABELS  V85
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V86
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V87
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V88
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V89
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V90
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V91
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V92
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V93
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V94
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V95
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V96
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V97
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V98
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V99
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V100
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V101
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V102
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V103
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V104
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V105
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V106
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V107
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V108
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V109
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V110
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V111
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V112
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V113
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V114
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V115
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V116
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V117
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V118
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V119
 1 "Ja, ich weiß es bei allen."
 2 "Ich weiß es bei den meisten."
 3 "Ich weiß es bei einigen."
 4 "Nein, ich weiß es bei keinem.".
VALUE LABELS  V120
 1 "Entschärfte Versionen sind für mich kein Problem."
 2 "Schnitte stören mich, halten mich aber nicht von der Nutzung ab."
 3 "Ich versuche entschärfte Spiele nur in Ausnahmefällen zu nutzen."
 4 "Ich habe kein Interesse an geschnittenen Spielen.".
VALUE LABELS  V121
 1 "Yes"
 2 "No".
VALUE LABELS  V122
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V123
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V124
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V125
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V126
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V127
 1 "Yes"
 0 "Not selected".
VALUE LABELS  V129
 4 "Immer"
 3 "Meistens"
 2 "Manchmal"
 1 "Selten"
 0 "Nie".
VALUE LABELS  V130
 "A1" "Immer."
 "A2" "Meistens"
 "A3" "Manchmal"
 "A4" "Selten"
 "A5" "Nie".
VALUE LABELS  V131
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V132
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V133
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V134
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V135
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V136
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V137
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V138
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V139
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V140
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V141
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V142
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V143
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V144
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V145
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V146
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V147
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V148
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V149
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V150
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V151
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V152
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V153
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V154
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V155
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V156
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V157
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V158
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V159
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V160
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V161
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V162
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V163
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V164
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V165
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V166
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V167
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V168
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V169
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V170
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V171
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V172
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V173
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V174
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V175
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V176
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V177
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V178
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V179
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V180
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V181
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V182
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V183
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V184
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V185
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V186
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V187
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V188
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V189
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V190
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V191
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V192
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V193
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V194
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V195
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V196
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V197
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V198
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V199
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V200
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V201
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V202
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V203
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V204
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V205
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V206
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V207
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V208
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V209
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V210
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V211
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V212
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V213
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V214
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V215
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V216
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V217
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V218
 "A1" "… von Frauen problematischer als die von Männer."
 "A2" "… von Männern problematischer als von Frauen."
 "A3" "… gleich problematisch."
 "A4" "… nicht problematisch.".
VALUE LABELS  V219
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  V220
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  V221
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  V222
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  V223
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VALUE LABELS  V224
 0 "mehr"
 1 "unverändert"
 2 "weniger".
VARIABLE LEVEL V10(SCALE).
VARIABLE LEVEL V14(ORDINAL).
VARIABLE LEVEL V15(ORDINAL).
VARIABLE LEVEL V16(ORDINAL).
VARIABLE LEVEL V19(SCALE).
VARIABLE LEVEL V32(SCALE).
VARIABLE LEVEL V48(ORDINAL).
VARIABLE LEVEL V49(ORDINAL).
VARIABLE LEVEL V50(ORDINAL).
VARIABLE LEVEL V51(ORDINAL).
VARIABLE LEVEL V52(ORDINAL).
VARIABLE LEVEL V53(SCALE).
VARIABLE LEVEL V54(ORDINAL).
VARIABLE LEVEL V55(ORDINAL).
VARIABLE LEVEL V56(ORDINAL).
VARIABLE LEVEL V57(ORDINAL).
VARIABLE LEVEL V58(ORDINAL).
VARIABLE LEVEL V59(ORDINAL).
VARIABLE LEVEL V60(ORDINAL).
VARIABLE LEVEL V61(ORDINAL).
VARIABLE LEVEL V62(ORDINAL).
VARIABLE LEVEL V63(ORDINAL).
RENAME VARIABLE ( V2 = token ).
RENAME VARIABLE ( V3 = submitdate ).
RENAME VARIABLE ( V5 = startlanguage ).
RENAME VARIABLE ( V6 = startdate ).
RENAME VARIABLE ( V7 = datestamp ).
RENAME VARIABLE ( V8 = ipaddr ).
RENAME VARIABLE ( V9 = refurl ).
RENAME VARIABLE ( V10 = Geburtsjahr ).
RENAME VARIABLE ( V11 = Geschlecht ).
RENAME VARIABLE ( V12 = WohnortDeutschland ).
RENAME VARIABLE ( V13 = Breitbandzugang ).
RENAME VARIABLE ( V14 = COAXSpeed ).
RENAME VARIABLE ( V15 = DSLSpeed ).
RENAME VARIABLE ( V16 = FunkSpeed ).
RENAME VARIABLE ( V17 = Videospieler ).
RENAME VARIABLE ( V18 = ExSpieler ).
RENAME VARIABLE ( V19 = ExWann ).
RENAME VARIABLE ( V20 = Ablehnung_1 ).
RENAME VARIABLE ( V21 = Ablehnung_2 ).
RENAME VARIABLE ( V22 = Ablehnung_3 ).
RENAME VARIABLE ( V23 = Ablehnung_4 ).
RENAME VARIABLE ( V24 = Ablehnung_5 ).
RENAME VARIABLE ( V25 = VersteckJN ).
RENAME VARIABLE ( V26 = VersteckArt_1 ).
RENAME VARIABLE ( V27 = VersteckArt_2 ).
RENAME VARIABLE ( V28 = VersteckArt_3 ).
RENAME VARIABLE ( V29 = VersteckArt_4 ).
RENAME VARIABLE ( V30 = VersteckArt_other ).
RENAME VARIABLE ( V31 = Multiplayer ).
RENAME VARIABLE ( V32 = Erfahrung ).
RENAME VARIABLE ( V33 = AllgemPlatt_SQ001 ).
RENAME VARIABLE ( V34 = AllgemPlatt_SQ002 ).
RENAME VARIABLE ( V35 = AllgemPlatt_SQ003 ).
RENAME VARIABLE ( V36 = AllgemPlatt_SQ004 ).
RENAME VARIABLE ( V37 = AllgemPlatt_SQ005 ).
RENAME VARIABLE ( V38 = AllgemPlatt_SQ006 ).
RENAME VARIABLE ( V39 = AllgemPlatt_SQ007 ).
RENAME VARIABLE ( V40 = AllgemPlatt_SQ008 ).
RENAME VARIABLE ( V41 = AllgemPlatt_SQ009 ).
RENAME VARIABLE ( V42 = AllgemPlatt_SQ010 ).
RENAME VARIABLE ( V48 = Nutzungsdauer_SQ1 ).
RENAME VARIABLE ( V49 = Nutzungsdauer_SQ2 ).
RENAME VARIABLE ( V50 = Nutzungsdauer_SQ3 ).
RENAME VARIABLE ( V51 = Nutzungsdauer_SQ4 ).
RENAME VARIABLE ( V52 = Nutzungsdauer_SQ5 ).
RENAME VARIABLE ( V53 = Nutzungsumfang ).
RENAME VARIABLE ( V54 = Bezugsweg_SQ1 ).
RENAME VARIABLE ( V55 = Bezugsweg_SQ2 ).
RENAME VARIABLE ( V56 = Bezugsweg_SQ3 ).
RENAME VARIABLE ( V57 = Bezugsweg_SQ4 ).
RENAME VARIABLE ( V58 = Bezugsweg_SQ5 ).
RENAME VARIABLE ( V59 = Plattformen_SQ1 ).
RENAME VARIABLE ( V60 = Plattformen_SQ2 ).
RENAME VARIABLE ( V61 = Plattformen_SQ3 ).
RENAME VARIABLE ( V62 = Plattformen_SQ4 ).
RENAME VARIABLE ( V63 = Plattformen_SQ5 ).
RENAME VARIABLE ( V64 = Zusatzangebote_SQ000 ).
RENAME VARIABLE ( V65 = Zusatzangebote_SQ001 ).
RENAME VARIABLE ( V66 = Zusatzangebote_SQ002 ).
RENAME VARIABLE ( V67 = Zusatzangebote_SQ003 ).
RENAME VARIABLE ( V68 = Zusatzangebote_SQ004 ).
RENAME VARIABLE ( V69 = Endmotivation_1 ).
RENAME VARIABLE ( V70 = Endmotivation_2 ).
RENAME VARIABLE ( V71 = Endmotivation_3 ).
RENAME VARIABLE ( V72 = Endmotivation_4 ).
RENAME VARIABLE ( V73 = Endmotivation_5 ).
RENAME VARIABLE ( V74 = Endmotivation_7 ).
RENAME VARIABLE ( V75 = Endmotivation_9 ).
RENAME VARIABLE ( V76 = Endzwang_SQ001 ).
RENAME VARIABLE ( V77 = Endzwang_SQ002 ).
RENAME VARIABLE ( V78 = Endverstndnis_1 ).
RENAME VARIABLE ( V79 = Endverstndnis_2 ).
RENAME VARIABLE ( V80 = Endverstndnis_3 ).
RENAME VARIABLE ( V81 = Endverstndnis_4 ).
RENAME VARIABLE ( V82 = Endverstndnis_5 ).
RENAME VARIABLE ( V83 = Endverstndnis_7 ).
RENAME VARIABLE ( V84 = Endverstndnis_9 ).
RENAME VARIABLE ( V85 = Startmotivation_1 ).
RENAME VARIABLE ( V86 = Startmotivation_2 ).
RENAME VARIABLE ( V87 = Startmotivation_3 ).
RENAME VARIABLE ( V88 = Startmotivation_4 ).
RENAME VARIABLE ( V89 = Startmotivation_5 ).
RENAME VARIABLE ( V90 = Illegalmotivation_1#0 ).
RENAME VARIABLE ( V91 = Illegalmotivation_1#1 ).
RENAME VARIABLE ( V92 = Illegalmotivation_2#0 ).
RENAME VARIABLE ( V93 = Illegalmotivation_2#1 ).
RENAME VARIABLE ( V94 = Illegalmotivation_3#0 ).
RENAME VARIABLE ( V95 = Illegalmotivation_3#1 ).
RENAME VARIABLE ( V96 = Illegalmotivation_4#0 ).
RENAME VARIABLE ( V97 = Illegalmotivation_4#1 ).
RENAME VARIABLE ( V98 = Illegalmotivation_5#0 ).
RENAME VARIABLE ( V99 = Illegalmotivation_5#1 ).
RENAME VARIABLE ( V100 = Illegalmotivation_6#0 ).
RENAME VARIABLE ( V101 = Illegalmotivation_6#1 ).
RENAME VARIABLE ( V102 = Illegalmotivation_7#0 ).
RENAME VARIABLE ( V103 = Illegalmotivation_7#1 ).
RENAME VARIABLE ( V104 = Illegalmotivation_8#0 ).
RENAME VARIABLE ( V105 = Illegalmotivation_8#1 ).
RENAME VARIABLE ( V106 = IllegalVerstaendnis_1 ).
RENAME VARIABLE ( V107 = IllegalVerstaendnis_2 ).
RENAME VARIABLE ( V108 = IllegalVerstaendnis_3 ).
RENAME VARIABLE ( V109 = IllegalVerstaendnis_4 ).
RENAME VARIABLE ( V110 = IllegalVerstaendnis_5 ).
RENAME VARIABLE ( V111 = IllegalVerstaendnis_6 ).
RENAME VARIABLE ( V112 = IllegalVerstaendnis_7 ).
RENAME VARIABLE ( V113 = IllegalVerstaendnis_8 ).
RENAME VARIABLE ( V114 = Kennzeichenkenntnis_SQ001 ).
RENAME VARIABLE ( V115 = Kennzeichenkenntnis_SQ002 ).
RENAME VARIABLE ( V116 = Kennzeichenkenntnis_SQ003 ).
RENAME VARIABLE ( V117 = Kennzeichenkenntnis_SQ004 ).
RENAME VARIABLE ( V118 = Kennzeichenkenntnis_SQ005 ).
RENAME VARIABLE ( V119 = Schnittkenntnis ).
RENAME VARIABLE ( V120 = Zensurmeinung ).
RENAME VARIABLE ( V121 = Zensurinformation ).
RENAME VARIABLE ( V122 = Zensurinfowege_1 ).
RENAME VARIABLE ( V123 = Zensurinfowege_2 ).
RENAME VARIABLE ( V124 = Zensurinfowege_3 ).
RENAME VARIABLE ( V125 = Zensurinfowege_4 ).
RENAME VARIABLE ( V126 = Zensurinfowege_5 ).
RENAME VARIABLE ( V127 = Zensurinfowege_6 ).
RENAME VARIABLE ( V128 = Zensurinfowege_other ).
RENAME VARIABLE ( V129 = UncutBezug ).
RENAME VARIABLE ( V130 = UncutBezugErfolg ).
RENAME VARIABLE ( V131 = UncutBezugWegKErf_SQ001 ).
RENAME VARIABLE ( V132 = UncutBezugWegKErf_SQ002 ).
RENAME VARIABLE ( V133 = UncutBezugWegKErf_SQ003 ).
RENAME VARIABLE ( V134 = UncutBezugWegKErf_SQ004 ).
RENAME VARIABLE ( V135 = UncutBezugWegKErf_SQ005 ).
RENAME VARIABLE ( V136 = UncutBezugWegKErf_SQ006 ).
RENAME VARIABLE ( V137 = UncutBezugWegKErf_SQ007 ).
RENAME VARIABLE ( V138 = UncutBezugWegKErf_SQ008 ).
RENAME VARIABLE ( V139 = UncutBezugWegKErf_SQ009 ).
RENAME VARIABLE ( V140 = UncutBezugWegKErf_SQ010 ).
RENAME VARIABLE ( V141 = UncutBezugWegErf_SQ001#0 ).
RENAME VARIABLE ( V142 = UncutBezugWegErf_SQ001#1 ).
RENAME VARIABLE ( V143 = UncutBezugWegErf_SQ002#0 ).
RENAME VARIABLE ( V144 = UncutBezugWegErf_SQ002#1 ).
RENAME VARIABLE ( V145 = UncutBezugWegErf_SQ003#0 ).
RENAME VARIABLE ( V146 = UncutBezugWegErf_SQ003#1 ).
RENAME VARIABLE ( V147 = UncutBezugWegErf_SQ004#0 ).
RENAME VARIABLE ( V148 = UncutBezugWegErf_SQ004#1 ).
RENAME VARIABLE ( V149 = UncutBezugWegErf_SQ005#0 ).
RENAME VARIABLE ( V150 = UncutBezugWegErf_SQ005#1 ).
RENAME VARIABLE ( V151 = UncutBezugWegErf_SQ006#0 ).
RENAME VARIABLE ( V152 = UncutBezugWegErf_SQ006#1 ).
RENAME VARIABLE ( V153 = UncutBezugWegErf_SQ007#0 ).
RENAME VARIABLE ( V154 = UncutBezugWegErf_SQ007#1 ).
RENAME VARIABLE ( V155 = UncutBezugWegErf_SQ008#0 ).
RENAME VARIABLE ( V156 = UncutBezugWegErf_SQ008#1 ).
RENAME VARIABLE ( V157 = UncutBezugWegErf_SQ009#0 ).
RENAME VARIABLE ( V158 = UncutBezugWegErf_SQ009#1 ).
RENAME VARIABLE ( V159 = UncutBezugWegErf_SQ010#0 ).
RENAME VARIABLE ( V160 = UncutBezugWegErf_SQ010#1 ).
RENAME VARIABLE ( V161 = Onlineaktivierung ).
RENAME VARIABLE ( V162 = Onlinezwang ).
RENAME VARIABLE ( V163 = Kontingent ).
RENAME VARIABLE ( V164 = Kopierschutz ).
RENAME VARIABLE ( V165 = Sicherheitskopie ).
RENAME VARIABLE ( V166 = Datenschutz ).
RENAME VARIABLE ( V167 = Geolock ).
RENAME VARIABLE ( V168 = Informationsinteress_1#0 ).
RENAME VARIABLE ( V169 = Informationsinteress_1#1 ).
RENAME VARIABLE ( V170 = Informationsinteress_2#0 ).
RENAME VARIABLE ( V171 = Informationsinteress_2#1 ).
RENAME VARIABLE ( V172 = Informationsinteress_3#0 ).
RENAME VARIABLE ( V173 = Informationsinteress_3#1 ).
RENAME VARIABLE ( V174 = Informationsinteress_4#0 ).
RENAME VARIABLE ( V175 = Informationsinteress_4#1 ).
RENAME VARIABLE ( V176 = Informationsinteress_5#0 ).
RENAME VARIABLE ( V177 = Informationsinteress_5#1 ).
RENAME VARIABLE ( V178 = SexSelbstbew_SQ001#0 ).
RENAME VARIABLE ( V179 = SexSelbstbew_SQ001#1 ).
RENAME VARIABLE ( V180 = SexSelbstbew_SQ002#0 ).
RENAME VARIABLE ( V181 = SexSelbstbew_SQ002#1 ).
RENAME VARIABLE ( V182 = SexSelbstbew_SQ003#0 ).
RENAME VARIABLE ( V183 = SexSelbstbew_SQ003#1 ).
RENAME VARIABLE ( V184 = SexSelbstbew_SQ004#0 ).
RENAME VARIABLE ( V185 = SexSelbstbew_SQ004#1 ).
RENAME VARIABLE ( V186 = SexSelbstbew_SQ005#0 ).
RENAME VARIABLE ( V187 = SexSelbstbew_SQ005#1 ).
RENAME VARIABLE ( V188 = SexSelbstbew_SQ006#0 ).
RENAME VARIABLE ( V189 = SexSelbstbew_SQ006#1 ).
RENAME VARIABLE ( V190 = SexWehrlos_SQ001#0 ).
RENAME VARIABLE ( V191 = SexWehrlos_SQ001#1 ).
RENAME VARIABLE ( V192 = SexWehrlos_SQ002#0 ).
RENAME VARIABLE ( V193 = SexWehrlos_SQ002#1 ).
RENAME VARIABLE ( V194 = SexWehrlos_SQ003#0 ).
RENAME VARIABLE ( V195 = SexWehrlos_SQ003#1 ).
RENAME VARIABLE ( V196 = SexWehrlos_SQ004#0 ).
RENAME VARIABLE ( V197 = SexWehrlos_SQ004#1 ).
RENAME VARIABLE ( V198 = SexWehrlos_SQ005#0 ).
RENAME VARIABLE ( V199 = SexWehrlos_SQ005#1 ).
RENAME VARIABLE ( V200 = SexWehrlos_SQ006#0 ).
RENAME VARIABLE ( V201 = SexWehrlos_SQ006#1 ).
RENAME VARIABLE ( V202 = SexKoerper_SQ001#0 ).
RENAME VARIABLE ( V203 = SexKoerper_SQ001#1 ).
RENAME VARIABLE ( V204 = SexKoerper_SQ002#0 ).
RENAME VARIABLE ( V205 = SexKoerper_SQ002#1 ).
RENAME VARIABLE ( V206 = SexKoerper_SQ003#0 ).
RENAME VARIABLE ( V207 = SexKoerper_SQ003#1 ).
RENAME VARIABLE ( V208 = SexKoerper_SQ004#0 ).
RENAME VARIABLE ( V209 = SexKoerper_SQ004#1 ).
RENAME VARIABLE ( V210 = SexKoerper_SQ005#0 ).
RENAME VARIABLE ( V211 = SexKoerper_SQ005#1 ).
RENAME VARIABLE ( V212 = SexKoerper_SQ006#0 ).
RENAME VARIABLE ( V213 = SexKoerper_SQ006#1 ).
RENAME VARIABLE ( V214 = SexKoerper_SQ007#0 ).
RENAME VARIABLE ( V215 = SexKoerper_SQ007#1 ).
RENAME VARIABLE ( V216 = SexKoerper_SQ008#0 ).
RENAME VARIABLE ( V217 = SexKoerper_SQ008#1 ).
RENAME VARIABLE ( V218 = SexProblem ).
RENAME VARIABLE ( V219 = SexMehr_Korper#0 ).
RENAME VARIABLE ( V220 = SexMehr_Korper#1 ).
RENAME VARIABLE ( V221 = SexMehr_Selbstbew#0 ).
RENAME VARIABLE ( V222 = SexMehr_Selbstbew#1 ).
RENAME VARIABLE ( V223 = SexMehr_Stereotype#0 ).
RENAME VARIABLE ( V224 = SexMehr_Stereotype#1 ).
RENAME VARIABLE ( V225 = feddbacktext ).
RESTORE LOCALE.
