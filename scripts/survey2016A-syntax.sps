*$Rev: 121017 $ all 2.
SET UNICODE=ON.
SHOW LOCALE.
PRESERVE LOCALE.
SET LOCALE='en_UK'.
GET DATA
 /TYPE=TXT
 /FILE='survey_147398_SPSS_data_file.dat'
 /DELCASE=LINE
 /DELIMITERS=","
 /QUALIFIER="'"
 /ARRANGEMENT=DELIMITED
 /FIRSTCASE=1
 /IMPORTCASE=ALL
 /VARIABLES=
 V1 F7
 V2 A16
 V3 DATETIME23.2
 V5 A19
 V6 DATETIME23.2
 V7 DATETIME23.2
 V8 A39
 V9 A255
 V10 F15.14
 V11 F1
 V12 A2
 V13 A5
 V14 F15.14
 V15 A2
 V16 A2
 V17 F15.14
 V18 A2
 V19 A2
 V20 A2
 V21 A2
 V22 A2
 V23 A2
 V24 A2
 V25 A2
 V26 A2
 V27 A2
 V28 A31
 V29 A44
 V30 A34
 V31 A34
 V32 A39
 V33 A77
 V34 A5
 V35 A5
 V36 A5
 V37 A5
 V38 A5
 V39 A2
 V40 A2
 V41 A2
 V42 A2
 V43 A2
 V44 A2
 V45 A2
 V46 A2
 V47 A2
 V48 A2
 V49 F1
 V50 F1
 V51 F1
 V52 F1
 V53 F1
 V54 A31
 V55 A31
 V56 A31
 V57 A30
 V58 A27
 V59 A29
 V60 A2
 V61 A2
 V62 A2
 V63 A2
 V64 A2
 V65 A2
 V66 A2
 V67 A2
 V68 A2
 V69 F1
 V70 F1
 V71 F1
 V72 F1
 V73 F1
 V74 A2
 V75 F1
 V76 A2
 V77 F1
 V78 A2
 V79 F1
 V80 A2
 V81 F1
 V82 A2
 V83 F1
 V84 A2
 V85 F1
 V86 A2
 V87 F1
 V88 A2
 V89 F1
 V90 A2
 V91 F1
 V92 F1
 V93 F1
 V94 F1
 V95 F1
 V96 F1
 V97 F1
 V98 F1
 V99 F1
 V100 F1
 V101 F1
 V102 F1
 V103 F1
 V104 F1
 V105 F1
 V106 A66
 V107 F1
 V108 A2
 V109 A2
 V110 A2
 V111 A2
 V112 A2
 V113 A2
 V114 A2
 V115 A2
 V116 A2
 V117 A2
 V118 A2
 V119 A1
 V120 A2
 V121 A1
 V122 A2
 V123 A1
 V124 A2
 V125 A1
 V126 A2
 V127 A1
 V128 A2
 V129 A1
 V130 A2
 V131 A1
 V132 A2
 V133 A1
 V134 A2
 V135 A1
 V136 A2
 V137 A1
 V138 A2
 V139 A1
 V140 A2
 V141 F1
 V142 F1
 V143 F1
 V144 F1
 V145 F1
 V146 F1
 V147 F1
 V148 F1
 V149 F1
 V150 F1
 V151 F1
 V152 A2
 V153 F1
 V154 A2
 V155 F1
 V156 A2
 V157 F1
 V158 A2
 V159 F1
 V160 A2
 V161 F1
 V162 F1
 V163 F1
 V164 F1
 V165 F1
 V166 A497
 V167 F15.14
 V168 F1
 V169 A1040
 V170 F1
 V171 F1
 V172 F1
 V173 F1
 V174 F1
 V175 A247
 V176 F1
 V177 F1
 V178 F1
 V179 F1
 V180 F1
 V181 F1
 V182 A407
 V183 F15.14
 V184 A16384.
CACHE.
EXECUTE.
*Define Variable Properties.
VARIABLE LABELS V1 "id".
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
VARIABLE LABELS V15 "{rand(1,10)}".
VARIABLE LABELS V16 "Spielst du eher Single- oder Multiplayer?".
VARIABLE LABELS V17 "Seit wann nutzt du Videospiele?".
VARIABLE LABELS V18 "[Mac/MacBook] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V19 "[Windows] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V20 "[Linux] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V21 "[Playstation 3/4] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V22 "[Wii/WiiU] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V23 "[XBox360/ XBox One] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V24 "[DS/2DS/3DS/DSi/…] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V25 "[Smartphone (Android)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V26 "[Smartphone (iPhone)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V27 "[Smartphone (Windows)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V28 "Wie viele Stunden verbringst du in der Woche mit Videospielen?".
VARIABLE LABELS V29 "[Spiel 1] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V30 "[Spiel 2] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V31 "[Spiel 3] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V32 "[Spiel 4] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V33 "[Spiel 5] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V34 "[{Products_SQ1}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V35 "[{Products_SQ2}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V36 "[{Products_SQ3}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V37 "[{Products_SQ4}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V38 "[{Products_SQ5}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V39 "[{Products_SQ1}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V40 "[{Products_SQ2}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V41 "[{Products_SQ3}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V42 "[{Products_SQ4}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V43 "[{Products_SQ5}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V44 "[{Products_SQ1}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V45 "[{Products_SQ2}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V46 "[{Products_SQ3}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V47 "[{Products_SQ4}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V48 "[{Products_SQ5}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V49 "[{Products_SQ1}] Woher hast du diese Spiele?".
VARIABLE LABELS V50 "[{Products_SQ2}] Woher hast du diese Spiele?".
VARIABLE LABELS V51 "[{Products_SQ3}] Woher hast du diese Spiele?".
VARIABLE LABELS V52 "[{Products_SQ4}] Woher hast du diese Spiele?".
VARIABLE LABELS V53 "[{Products_SQ5}] Woher hast du diese Spiele?".
VARIABLE LABELS V54 "[Spielbezogene Hardware] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V55 "[Spiele-Kauf (einmalige Ausgabe)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V56 "[Spielbezogene Abos (regelmäßige Ausgabe)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V57 "[Addons und DLCs] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V58 "[In-Game-Käufe] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V59 "[Eigene Gameserver (bei Clans: dein Anteil)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V60 "[Durchgespielt] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V61 "[Grafik nicht mehr zeitgemäß] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V62 "[Gameplay nicht mehr zeitgemäß] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V63 "[Kein Spaß mehr] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V64 "[(Besserer) Nachfolger] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V65 "[Geänderte Interessen/Vorlieben] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V66 "[Freundeskreis hat Spiel gewechselt] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V67 "[Spiel läuft nicht mehr (neues Betriebssystem oder neue Konsole)] Hast du schon aus einem der folgenden Gründe aufgehört, ein Spiel zu nutzen?".
VARIABLE LABELS V68 "[Kein Support mehr oder Betrieb vom Anbieter eingestellt] Hast du schon aus einem der folgenden Gründe aufgehört, ein Spiel zu nutzen?".
VARIABLE LABELS V69 "[Erfahrung mit Vorgänger] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V70 "[Zusagendes Gameplay/Zusagende Spielidee] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V71 "[Neugierde auf die Story] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V72 "[Bessere Grafik] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V73 "[Freundeskreis hat Spiel gewechselt] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V74 "[„Antesten“, um es ggf. zu erwerben] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V75 "[„Antesten“, um es ggf. zu erwerben] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V76 "[Geldmangel] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V77 "[Geldmangel] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V78 "[Abneigung gegen den Anbieter] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V79 "[Abneigung gegen den Anbieter] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V80 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V81 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V82 "[Spiel ist nicht legal erhältlich.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V83 "[Spiel ist nicht legal erhältlich.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V84 "[Einfacher/ schneller als kaufen.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V85 "[Einfacher/ schneller als kaufen.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V86 "[Zusätzlich zum Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V87 "[Zusätzlich zum Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V88 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V89 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V90 "[Um das Spiel ohne Kopierschutz nutzen zu können.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V91 "[Um das Spiel ohne Kopierschutz nutzen zu können.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V92 "[USK-Kennzeichnung] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V93 "[PEGI-Kennzeichnung] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V94 "[Indizierungen (z.B. durch BPjM)] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V95 "[Verbot (durch Strafgesetzbuch)] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V96 "[Beschlagnahme (per Gerichtsurteil)] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V97 "Weißt du, ob die Videospiele, die du besitzt, ungeschnittene oder entschärfte Versionen sind?".
VARIABLE LABELS V98 "Was denkst du über Videospiele, bei denen die Gewaltdarstellung gegenüber dem Original reduziert ist?".
VARIABLE LABELS V99 "Versuchst du dich über die Veröffentlichung indizierter oder verbotener Videospiele zu informieren?".
VARIABLE LABELS V100 "[Deutsche Spielemagazine] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V101 "[Ausländische Spielemagazine] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V102 "[Foren] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V103 "[Spezialisierte Webseiten] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V104 "[BPjM-Aktuell (z.B. in Bibliotheken)] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V105 "[Freunde oder Bekannte] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V106 "[Sonstiges] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V107 "Versuchst du ungeschnittene Version von Spielen zu bekommen?".
VARIABLE LABELS V108 "Wenn du versuchst, die ungeschnittene Version eines Spiels zu bekommen, schaffst du das üblicherweise?".
VARIABLE LABELS V109 "[Ladengeschäfte (Inland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V110 "[Ladengeschäfte (Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V111 "[Onlineshops (Inland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V112 "[Onlineshops (Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V113 "[Illegal über das Internet (z.B. Tauschbörsen)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V114 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V115 "[Legal von Bekannten (z.B. geliehen)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V116 "[Legal über Bekannte (im Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V117 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V118 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V119 "[Ladengeschäfte (Inland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussich"+
"ten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V120 "[Ladengeschäfte (Inland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussich"+
"ten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V121 "[Ladengeschäfte (Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussic"+
"hten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V122 "[Ladengeschäfte (Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussic"+
"hten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V123 "[Versandhandel (Inland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussicht"+
"en ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V124 "[Versandhandel (Inland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussicht"+
"en ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V125 "[Versandhandel (Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussich"+
"ten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V126 "[Versandhandel (Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussich"+
"ten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V127 "[Illegal über das Internet (z.B. Tauschbörsen)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persö"+
"nlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V128 "[Illegal über das Internet (z.B. Tauschbörsen)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persö"+
"nlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V129 "[Legal über das Internet (z.B. Downloadshops)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persön"+
"lichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V130 "[Legal über das Internet (z.B. Downloadshops)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persön"+
"lichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V131 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerde"+
"m deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V132 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerde"+
"m deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V133 "[Legal von Bekannten (z.B. geliehen)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Er"+
"folgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V134 "[Legal von Bekannten (z.B. geliehen)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Er"+
"folgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V135 "[Legal über Bekannte (im Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfol"+
"gsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V136 "[Legal über Bekannte (im Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfol"+
"gsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V137 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persön"+
"lichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V138 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persön"+
"lichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V139 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persö"+
"nlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V140 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persö"+
"nlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V141 "[Ich kann mir vorstellen, dass andere so etwas nutzen.] Fändest du es sinnvoll, den Gewaltgrad in Spielen einstellen zu können?".
VARIABLE LABELS V142 "[Ich würde eine solche Option nutzen.] Fändest du es sinnvoll, den Gewaltgrad in Spielen einstellen zu können?".
VARIABLE LABELS V143 "[So etwas ist eine gute Option für Eltern.] Fändest du es sinnvoll, den Gewaltgrad in Spielen einstellen zu können?".
VARIABLE LABELS V144 "Hat bei deiner Kaufentscheidung die Erforderlichkeit einer (nach jeder Installation einmaligen) Onlineaktivierung eine Bedeutung?".
VARIABLE LABELS V145 "Hat bei deiner Kaufentscheidung das Vorhandensein eines Always-On-System (auch zur Nutzung im Einzelspieler muss eine Internetverbindung bestehen), eine Bedeutung?".
VARIABLE LABELS V146 "Hat bei deiner Kaufentscheidung ein beschränktes Installationskontingent (es ist - mit dem Key - nur eine beschränkte Anzahl von Installationen möglich) eine Bedeutung?".
VARIABLE LABELS V147 "Hat bei deiner Kaufentscheidung ein „aggressiver“ Kopierschutz, der z.B. die Festplatte nach bestimmten Programmen durchsucht, nach der Deinstallation des Spieles verbleibt oder eigene Gerätetreiber installiert, eine Bedeutung?".
VARIABLE LABELS V148 "Hat bei deiner Kaufentscheidung das Fehlen der Möglichkeit, (legal) eine Sicherheitskopie anfertigen zu können, eine Bedeutung?".
VARIABLE LABELS V149 "Haben bei deiner Kaufentscheidung Datenschutzbedenken, weil unklar ist welche Daten vom PC/dem Spielverhalten übermittelt werden, eine Bedeutung?".
VARIABLE LABELS V150 "Hat bei deiner Kaufentscheidung die Festlegung auf eine bestimmte Region der Erde (Geolock) eine Bedeutung?".
VARIABLE LABELS V151 "[Art und Wirkungsweise des Kopierschutzes] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dieser Punk"+
"te im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V152 "[Art und Wirkungsweise des Kopierschutzes] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dieser Punk"+
"te im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V153 "[Ob und welche Daten durch die Nutzung des Spieles übermittelt werden] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewis"+
"sheit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V154 "[Ob und welche Daten durch die Nutzung des Spieles übermittelt werden] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewis"+
"sheit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V155 "[Inwieweit bei dem Spiel Gewaltdarstellungen entschärft worden sind] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissh"+
"eit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V156 "[Inwieweit bei dem Spiel Gewaltdarstellungen entschärft worden sind] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissh"+
"eit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V157 "[Ob der Multiplayer mit der internationalen Version kompatibel ist] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewisshe"+
"it über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V158 "[Ob der Multiplayer mit der internationalen Version kompatibel ist] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewisshe"+
"it über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V159 "[Ob eventuelle Addons/DLCs auch von Deutschland aus bezogen werden können] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ung"+
"ewissheit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V160 "[Ob eventuelle Addons/DLCs auch von Deutschland aus bezogen werden können] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ung"+
"ewissheit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V161 "Ist es dir persönlich wichtig, dass Videospiele deutlicher als bisher ""offiziell"" als Kunst anerkannt werden?".
VARIABLE LABELS V162 "Gibt es Gründe, weshalb du eine Anerkennung von Videospielen als Kunst befürwortest?".
VARIABLE LABELS V163 "[Weil Videospiele dadurch gesellschaftlich anerkannt werden.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von Videospielen als Kunst?".
VARIABLE LABELS V164 "[Weil Videospiele dann besser vor Restriktionen geschützt sind.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von Videospielen als Kunst?".
VARIABLE LABELS V165 "[Weil die (wirtschaftliche) Förderung von Videospielen dadurch erleichtert wird.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von Videospielen als Kunst?".
VARIABLE LABELS V166 "[Sonstiges] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von Videospielen als Kunst?".
VARIABLE LABELS V167 "Für wann hältst du eine formelle Anerkennung von Videospielen als Kunst in Deutschland für realistisch?".
VARIABLE LABELS V168 "Gibt es Videospiele, die du ""an sich"" (nicht ""nur"" wegen z. B. eines tollen Soundtracks) als Kunst betrachtest?".
VARIABLE LABELS V169 "An welche Spiele hast du dabei gedacht?".
VARIABLE LABELS V170 "Hattest du schon Kontakt mit einer VR-Brille?".
VARIABLE LABELS V171 "Planst du dir eine VR-Brille zuzulegen?".
VARIABLE LABELS V172 "[Sie sind (noch) zu teuer.] Was spricht deiner Meinung nach gegen eine VR-Brille?".
VARIABLE LABELS V173 "[Es gibt (noch) zu wenige Spiele.] Was spricht deiner Meinung nach gegen eine VR-Brille?".
VARIABLE LABELS V174 "[Sie bringt für meine Spiele nichts.] Was spricht deiner Meinung nach gegen eine VR-Brille?".
VARIABLE LABELS V175 "[Sonstiges] Was spricht deiner Meinung nach gegen eine VR-Brille?".
VARIABLE LABELS V176 "Glaubst du, dass sich VR bei Videospielen durchsetzen wird?".
VARIABLE LABELS V177 "Ist es dir persönlich wichtig, dass E-Sport offiziell als Sport anerkannt wird?".
VARIABLE LABELS V178 "Gibt es Gründe, weshalb du eine Anerkennung von E-Sport als Sport befürwortest?".
VARIABLE LABELS V179 "[Weil Videospiele dadurch gesellschaftlich anerkannt werden.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von E-Sport als Sport?".
VARIABLE LABELS V180 "[Weil Videospiele dann besser vor Restriktionen geschützt sind.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von E-Sport als Sport?".
VARIABLE LABELS V181 "[Weil die (wirtschaftliche) Förderung von Videospielen dadurch erleichtert wird.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von E-Sport als Sport?".
VARIABLE LABELS V182 "[Sonstiges] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von E-Sport als Sport?".
VARIABLE LABELS V183 "Für wann hältst du eine Anerkennung von E-Sport als Sport in Deutschland für realistisch?".
VARIABLE LABELS V184 "Wenn du möchtest, kannst du uns hier Feedback zur Umfrage hinterlassen. Um die Umfrage abzuschließen, klicke einfach “Absenden”.".
*Define Value labels.
VALUE LABELS  V11
 1 "Männlich"
 2 "Weiblich"
 3 "Anderes".
VALUE LABELS  V12
 "DE" "Ja."
 "AT" "Nein, aber in einem (auch) deutschsprachigen Land."
 "No" "Nein.".
VALUE LABELS  V13
 "ISDN" "Analog/ISDN"
 "DSL" "DSL/VDSL"
 "COAX" "Kabel"
 "Funk" "UMTS/LTE"
 "Sonst" "Sonstige"
 "Nope" "Keinen".
VALUE LABELS  V16
 "A1" "Vorrangig Einzelspieler."
 "A3" "Beides gleichermaßen."
 "A5" "Vorrangig Mehrspieler.".
VALUE LABELS  V18
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V19
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V20
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V21
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V22
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V23
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V24
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V25
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V26
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V27
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V34
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V35
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V36
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V37
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V38
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V39
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V40
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V41
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V42
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V43
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V44
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V45
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V46
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V47
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V48
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V49
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V50
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V51
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V52
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V53
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V60
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V61
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V62
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V63
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V64
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V65
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V66
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V67
 "A1" "Ja, mehrfach"
 "A2" "Ja, ein Mal"
 "A3" "Nein, noch nie".
VALUE LABELS  V68
 "A1" "Ja, mehrfach"
 "A2" "Ja, ein Mal"
 "A3" "Nein, noch nie".
VALUE LABELS  V69
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V70
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V71
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V72
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V73
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V74
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V75
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V76
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V77
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V78
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V79
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V80
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V81
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V82
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V83
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V84
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V85
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V86
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V87
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V88
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V89
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
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
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V93
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V94
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V95
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V96
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V97
 1 "Ja, ich weiß es bei allen."
 2 "Ich weiß es bei den meisten."
 3 "Ich weiß es bei einigen."
 4 "Nein, ich weiß es bei keinem.".
VALUE LABELS  V98
 1 "Entschärfte Versionen sind für mich kein Problem."
 2 "Schnitte stören mich, halten mich aber nicht von der Nutzung ab."
 3 "Ich versuche entschärfte Spiele nur in Ausnahmefällen zu nutzen."
 4 "Ich habe kein Interesse an geschnittenen Spielen.".
VALUE LABELS  V99
 1 "Ja"
 2 "Nein".
VALUE LABELS  V100
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V101
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V102
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V103
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V104
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V105
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V107
 4 "Immer"
 3 "Meistens"
 2 "Manchmal"
 1 "Selten"
 0 "Nie".
VALUE LABELS  V108
 "A1" "Immer."
 "A2" "Meistens"
 "A3" "Manchmal"
 "A4" "Selten"
 "A5" "Nie".
VALUE LABELS  V109
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V110
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V111
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V112
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V113
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V114
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V115
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V116
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V117
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V118
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V119
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V120
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V121
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V122
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V123
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V124
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V125
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V126
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V127
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V128
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V129
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V130
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V131
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V132
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V133
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V134
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V135
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V136
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V137
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V138
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V139
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V140
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V141
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V142
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V143
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V144
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V145
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V146
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V147
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V148
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V149
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V150
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V151
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V152
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V153
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V154
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V155
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V156
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V157
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V158
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V159
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V160
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V161
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V162
 1 "Ja"
 2 "Nein".
VALUE LABELS  V163
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V164
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V165
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V168
 1 "Ja"
 2 "Nein".
VALUE LABELS  V170
 1 "Ja, ich habe selbst eine."
 2 "Ja, ich habe aus (beruflichen Gründen) Zugang zu einer."
 3 "Ja, ich habe schon ein Mal die Gelgenheit eine zu Nutzen (Messe, etc.)."
 4 "Nein.".
VALUE LABELS  V171
 1 "Habe schon eine."
 2 "Ja, kaufe mir demnächst eine."
 3 "Ich zögere noch."
 4 "Nein.".
VALUE LABELS  V172
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V173
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V174
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V176
 1 "Ja, VR-Brillen werden das Gaming komplett verändern."
 2 "Weniger, es wird bei manchen Genres seine Nische finden."
 3 "Nicht in der jetzt bekannten Form. Es wird noch einige Jahre dauern."
 6 "VR wird sich in anderen Bereichen, nicht aber für Gaming durchsetzen."
 4 "Nein, VR ist eine Moderscheinung, die nichts für den Massenmarkt werden wird."
 5 "Keine Meinung/Unentschlossen.".
VALUE LABELS  V177
 1 "Ja"
 2 "Nein".
VALUE LABELS  V178
 1 "Ja"
 2 "Nein".
VALUE LABELS  V179
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V180
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V181
 1 "Ja"
 0 "Nicht gewählt".
VARIABLE LEVEL V10(SCALE).
VARIABLE LEVEL V14(SCALE).
VARIABLE LEVEL V17(SCALE).
VARIABLE LEVEL V28(SCALE).
VARIABLE LEVEL V34(ORDINAL).
VARIABLE LEVEL V35(ORDINAL).
VARIABLE LEVEL V36(ORDINAL).
VARIABLE LEVEL V37(ORDINAL).
VARIABLE LEVEL V38(ORDINAL).
VARIABLE LEVEL V39(ORDINAL).
VARIABLE LEVEL V40(ORDINAL).
VARIABLE LEVEL V41(ORDINAL).
VARIABLE LEVEL V42(ORDINAL).
VARIABLE LEVEL V43(ORDINAL).
VARIABLE LEVEL V44(ORDINAL).
VARIABLE LEVEL V45(ORDINAL).
VARIABLE LEVEL V46(ORDINAL).
VARIABLE LEVEL V47(ORDINAL).
VARIABLE LEVEL V48(ORDINAL).
VARIABLE LEVEL V49(ORDINAL).
VARIABLE LEVEL V50(ORDINAL).
VARIABLE LEVEL V51(ORDINAL).
VARIABLE LEVEL V52(ORDINAL).
VARIABLE LEVEL V53(ORDINAL).
VARIABLE LEVEL V161(ORDINAL).
VARIABLE LEVEL V167(SCALE).
VARIABLE LEVEL V170(ORDINAL).
VARIABLE LEVEL V183(SCALE).
RENAME VARIABLE ( V1 = id ).
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
RENAME VARIABLE ( V14 = BreitbandSpeed ).
RENAME VARIABLE ( V15 = Rand10 ).
RENAME VARIABLE ( V16 = Multiplayer ).
RENAME VARIABLE ( V17 = Erfahrung ).
RENAME VARIABLE ( V18 = AllgemPlatt_Mac ).
RENAME VARIABLE ( V19 = AllgemPlatt_Win ).
RENAME VARIABLE ( V20 = AllgemPlatt_Lnx ).
RENAME VARIABLE ( V21 = AllgemPlatt_SPS ).
RENAME VARIABLE ( V22 = AllgemPlatt_Wii ).
RENAME VARIABLE ( V23 = AllgemPlatt_XBx ).
RENAME VARIABLE ( V24 = AllgemPlatt_xDS ).
RENAME VARIABLE ( V25 = AllgemPlatt_And ).
RENAME VARIABLE ( V26 = AllgemPlatt_iOS ).
RENAME VARIABLE ( V27 = AllgemPlatt_WPh ).
RENAME VARIABLE ( V28 = Nutzungsumfang ).
RENAME VARIABLE ( V29 = Products_SQ1 ).
RENAME VARIABLE ( V30 = Products_SQ2 ).
RENAME VARIABLE ( V31 = Products_SQ3 ).
RENAME VARIABLE ( V32 = Products_SQ4 ).
RENAME VARIABLE ( V33 = Products_SQ5 ).
RENAME VARIABLE ( V34 = Plattformen_SQ1 ).
RENAME VARIABLE ( V35 = Plattformen_SQ2 ).
RENAME VARIABLE ( V36 = Plattformen_SQ3 ).
RENAME VARIABLE ( V37 = Plattformen_SQ4 ).
RENAME VARIABLE ( V38 = Plattformen_SQ5 ).
RENAME VARIABLE ( V39 = LetzteNutzung_SQ1 ).
RENAME VARIABLE ( V40 = LetzteNutzung_SQ2 ).
RENAME VARIABLE ( V41 = LetzteNutzung_SQ3 ).
RENAME VARIABLE ( V42 = LetzteNutzung_SQ4 ).
RENAME VARIABLE ( V43 = LetzteNutzung_SQ5 ).
RENAME VARIABLE ( V44 = Nutzungsdauer_SQ1 ).
RENAME VARIABLE ( V45 = Nutzungsdauer_SQ2 ).
RENAME VARIABLE ( V46 = Nutzungsdauer_SQ3 ).
RENAME VARIABLE ( V47 = Nutzungsdauer_SQ4 ).
RENAME VARIABLE ( V48 = Nutzungsdauer_SQ5 ).
RENAME VARIABLE ( V49 = Bezugsweg_SQ1 ).
RENAME VARIABLE ( V50 = Bezugsweg_SQ2 ).
RENAME VARIABLE ( V51 = Bezugsweg_SQ3 ).
RENAME VARIABLE ( V52 = Bezugsweg_SQ4 ).
RENAME VARIABLE ( V53 = Bezugsweg_SQ5 ).
RENAME VARIABLE ( V54 = Ausgaben_GHW ).
RENAME VARIABLE ( V55 = Ausgaben_ESK ).
RENAME VARIABLE ( V56 = Ausgaben_Abo ).
RENAME VARIABLE ( V57 = Ausgaben_DLC ).
RENAME VARIABLE ( V58 = Ausgaben_IGK ).
RENAME VARIABLE ( V59 = Ausgaben_SRV ).
RENAME VARIABLE ( V60 = Endmotivation_1 ).
RENAME VARIABLE ( V61 = Endmotivation_2 ).
RENAME VARIABLE ( V62 = Endmotivation_3 ).
RENAME VARIABLE ( V63 = Endmotivation_4 ).
RENAME VARIABLE ( V64 = Endmotivation_5 ).
RENAME VARIABLE ( V65 = Endmotivation_7 ).
RENAME VARIABLE ( V66 = Endmotivation_9 ).
RENAME VARIABLE ( V67 = Endzwang_SQ001 ).
RENAME VARIABLE ( V68 = Endzwang_SQ002 ).
RENAME VARIABLE ( V69 = Startmotivation_1 ).
RENAME VARIABLE ( V70 = Startmotivation_2 ).
RENAME VARIABLE ( V71 = Startmotivation_3 ).
RENAME VARIABLE ( V72 = Startmotivation_4 ).
RENAME VARIABLE ( V73 = Startmotivation_5 ).
RENAME VARIABLE ( V74 = Illegalmotivation_1#0 ).
RENAME VARIABLE ( V75 = Illegalmotivation_1#1 ).
RENAME VARIABLE ( V76 = Illegalmotivation_2#0 ).
RENAME VARIABLE ( V77 = Illegalmotivation_2#1 ).
RENAME VARIABLE ( V78 = Illegalmotivation_3#0 ).
RENAME VARIABLE ( V79 = Illegalmotivation_3#1 ).
RENAME VARIABLE ( V80 = Illegalmotivation_4#0 ).
RENAME VARIABLE ( V81 = Illegalmotivation_4#1 ).
RENAME VARIABLE ( V82 = Illegalmotivation_5#0 ).
RENAME VARIABLE ( V83 = Illegalmotivation_5#1 ).
RENAME VARIABLE ( V84 = Illegalmotivation_6#0 ).
RENAME VARIABLE ( V85 = Illegalmotivation_6#1 ).
RENAME VARIABLE ( V86 = Illegalmotivation_7#0 ).
RENAME VARIABLE ( V87 = Illegalmotivation_7#1 ).
RENAME VARIABLE ( V88 = Illegalmotivation_8#0 ).
RENAME VARIABLE ( V89 = Illegalmotivation_8#1 ).
RENAME VARIABLE ( V90 = Illegalmotivation_9#0 ).
RENAME VARIABLE ( V91 = Illegalmotivation_9#1 ).
RENAME VARIABLE ( V92 = Kennzeichenkenntnis_USK ).
RENAME VARIABLE ( V93 = Kennzeichenkenntnis_PEGI ).
RENAME VARIABLE ( V94 = Kennzeichenkenntnis_BPjM ).
RENAME VARIABLE ( V95 = Kennzeichenkenntnis_StGB ).
RENAME VARIABLE ( V96 = Kennzeichenkenntnis_GUrt ).
RENAME VARIABLE ( V97 = Schnittkenntnis ).
RENAME VARIABLE ( V98 = Zensurmeinung ).
RENAME VARIABLE ( V99 = Zensurinformation ).
RENAME VARIABLE ( V100 = Zensurinfowege_1 ).
RENAME VARIABLE ( V101 = Zensurinfowege_2 ).
RENAME VARIABLE ( V102 = Zensurinfowege_3 ).
RENAME VARIABLE ( V103 = Zensurinfowege_4 ).
RENAME VARIABLE ( V104 = Zensurinfowege_5 ).
RENAME VARIABLE ( V105 = Zensurinfowege_6 ).
RENAME VARIABLE ( V106 = Zensurinfowege_other ).
RENAME VARIABLE ( V107 = UncutBezug ).
RENAME VARIABLE ( V108 = UncutBezugErfolg ).
RENAME VARIABLE ( V109 = UncutBezugWegKErf_SQ001 ).
RENAME VARIABLE ( V110 = UncutBezugWegKErf_SQ002 ).
RENAME VARIABLE ( V111 = UncutBezugWegKErf_SQ003 ).
RENAME VARIABLE ( V112 = UncutBezugWegKErf_SQ004 ).
RENAME VARIABLE ( V113 = UncutBezugWegKErf_SQ005 ).
RENAME VARIABLE ( V114 = UncutBezugWegKErf_SQ006 ).
RENAME VARIABLE ( V115 = UncutBezugWegKErf_SQ007 ).
RENAME VARIABLE ( V116 = UncutBezugWegKErf_SQ008 ).
RENAME VARIABLE ( V117 = UncutBezugWegKErf_SQ009 ).
RENAME VARIABLE ( V118 = UncutBezugWegKErf_SQ010 ).
RENAME VARIABLE ( V119 = UncutBezugWegErf_LI#0 ).
RENAME VARIABLE ( V120 = UncutBezugWegErf_LI#1 ).
RENAME VARIABLE ( V121 = UncutBezugWegErf_LA#0 ).
RENAME VARIABLE ( V122 = UncutBezugWegErf_LA#1 ).
RENAME VARIABLE ( V123 = UncutBezugWegErf_VI#0 ).
RENAME VARIABLE ( V124 = UncutBezugWegErf_VI#1 ).
RENAME VARIABLE ( V125 = UncutBezugWegErf_VA#0 ).
RENAME VARIABLE ( V126 = UncutBezugWegErf_VA#1 ).
RENAME VARIABLE ( V127 = UncutBezugWegErf_II#0 ).
RENAME VARIABLE ( V128 = UncutBezugWegErf_II#1 ).
RENAME VARIABLE ( V129 = UncutBezugWegErf_IL#0 ).
RENAME VARIABLE ( V130 = UncutBezugWegErf_IL#1 ).
RENAME VARIABLE ( V131 = UncutBezugWegErf_MD#0 ).
RENAME VARIABLE ( V132 = UncutBezugWegErf_MD#1 ).
RENAME VARIABLE ( V133 = UncutBezugWegErf_BI#0 ).
RENAME VARIABLE ( V134 = UncutBezugWegErf_BI#1 ).
RENAME VARIABLE ( V135 = UncutBezugWegErf_BA#0 ).
RENAME VARIABLE ( V136 = UncutBezugWegErf_BA#1 ).
RENAME VARIABLE ( V137 = UncutBezugWegErf_UA#0 ).
RENAME VARIABLE ( V138 = UncutBezugWegErf_UA#1 ).
RENAME VARIABLE ( V139 = UncutBezugWegErf_IB#0 ).
RENAME VARIABLE ( V140 = UncutBezugWegErf_IB#1 ).
RENAME VARIABLE ( V141 = Gewaltregler_Andere ).
RENAME VARIABLE ( V142 = Gewaltregler_Ich ).
RENAME VARIABLE ( V143 = Gewaltregler_Eltern ).
RENAME VARIABLE ( V144 = Onlineaktivierung ).
RENAME VARIABLE ( V145 = Onlinezwang ).
RENAME VARIABLE ( V146 = Kontingent ).
RENAME VARIABLE ( V147 = Kopierschutz ).
RENAME VARIABLE ( V148 = Sicherheitskopie ).
RENAME VARIABLE ( V149 = Datenschutz ).
RENAME VARIABLE ( V150 = Geolock ).
RENAME VARIABLE ( V151 = Infointeress1Jahr_1#0 ).
RENAME VARIABLE ( V152 = Infointeress1Jahr_1#1 ).
RENAME VARIABLE ( V153 = Infointeress1Jahr_2#0 ).
RENAME VARIABLE ( V154 = Infointeress1Jahr_2#1 ).
RENAME VARIABLE ( V155 = Infointeress1Jahr_3#0 ).
RENAME VARIABLE ( V156 = Infointeress1Jahr_3#1 ).
RENAME VARIABLE ( V157 = Infointeress1Jahr_4#0 ).
RENAME VARIABLE ( V158 = Infointeress1Jahr_4#1 ).
RENAME VARIABLE ( V159 = Infointeress1Jahr_5#0 ).
RENAME VARIABLE ( V160 = Infointeress1Jahr_5#1 ).
RENAME VARIABLE ( V161 = KunstWichtig ).
RENAME VARIABLE ( V162 = KunstGrundExist ).
RENAME VARIABLE ( V163 = KunstGrund_1 ).
RENAME VARIABLE ( V164 = KunstGrund_2 ).
RENAME VARIABLE ( V165 = KunstGrund_3 ).
RENAME VARIABLE ( V166 = KunstGrund_other ).
RENAME VARIABLE ( V167 = KunstRealistisch ).
RENAME VARIABLE ( V168 = KunstBeispiel ).
RENAME VARIABLE ( V169 = KunstBeispielName ).
RENAME VARIABLE ( V170 = VRErfahrung ).
RENAME VARIABLE ( V171 = VRPlan ).
RENAME VARIABLE ( V172 = VRNein_1 ).
RENAME VARIABLE ( V173 = VRNein_2 ).
RENAME VARIABLE ( V174 = VRNein_3 ).
RENAME VARIABLE ( V175 = VRNein_other ).
RENAME VARIABLE ( V176 = VRErfolg ).
RENAME VARIABLE ( V177 = ESportWichtig ).
RENAME VARIABLE ( V178 = ESportGrundExist ).
RENAME VARIABLE ( V179 = ESportGrund_1 ).
RENAME VARIABLE ( V180 = ESportGrund_2 ).
RENAME VARIABLE ( V181 = ESportGrund_3 ).
RENAME VARIABLE ( V182 = ESportGrund_other ).
RENAME VARIABLE ( V183 = ESportRealistisch ).
RENAME VARIABLE ( V184 = feddbacktext ).
RESTORE LOCALE.
