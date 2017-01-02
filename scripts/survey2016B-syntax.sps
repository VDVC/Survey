*$Rev: 121017 $ all 2.
SET UNICODE=ON.
SHOW LOCALE.
PRESERVE LOCALE.
SET LOCALE='en_UK'.
GET DATA
 /TYPE=TXT
 /FILE='survey_311534_SPSS_data_file.dat'
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
 V8 A38
 V9 A255
 V10 F15.14
 V11 F1
 V12 A2
 V13 A5
 V14 F15.14
 V15 A2
 V16 F1
 V17 F1
 V18 F1
 V19 F1
 V20 F1
 V21 A2
 V22 F1
 V23 A2
 V24 F1
 V25 A2
 V26 F1
 V27 A2
 V28 F1
 V29 A2
 V30 F1
 V31 A2
 V32 F1
 V33 A2
 V34 F1
 V35 A2
 V36 F1
 V37 A2
 V38 F1
 V39 A2
 V40 A2
 V41 A2
 V42 A2
 V43 A2
 V44 A2
 V45 A2
 V46 A2
 V47 A2
 V48 F1
 V49 F1
 V50 F1
 V51 F1
 V52 F1
 V53 A788
 V54 F15.14
 V55 F1
 V56 A504
 V57 F1
 V58 F1
 V59 F1
 V60 F1
 V61 F1
 V62 A152
 V63 F1
 V64 F1
 V65 F1
 V66 F1
 V67 F1
 V68 F1
 V69 A439
 V70 F15.14
 V71 A2
 V72 F15.14
 V73 A2
 V74 A2
 V75 A2
 V76 A2
 V77 A2
 V78 A2
 V79 A2
 V80 A2
 V81 A2
 V82 A2
 V83 F14.13
 V84 A69
 V85 A47
 V86 A42
 V87 A45
 V88 A45
 V89 A5
 V90 A5
 V91 A5
 V92 A5
 V93 A5
 V94 A2
 V95 A2
 V96 A2
 V97 A2
 V98 A2
 V99 A2
 V100 A2
 V101 A2
 V102 A2
 V103 A2
 V104 F1
 V105 F1
 V106 F1
 V107 F1
 V108 F1
 V109 A20
 V110 A21
 V111 A19
 V112 F16.15
 V113 A17
 V114 A22
 V115 F1
 V116 F1
 V117 F1
 V118 F1
 V119 F1
 V120 F1
 V121 F1
 V122 F1
 V123 A2
 V124 F1
 V125 A2
 V126 F1
 V127 A2
 V128 F1
 V129 A2
 V130 F1
 V131 A2
 V132 F1
 V133 F1
 V134 F1
 V135 F1
 V136 F1
 V137 F1
 V138 F1
 V139 F1
 V140 F1
 V141 F1
 V142 F1
 V143 F1
 V144 F1
 V145 F1
 V146 A31
 V147 F1
 V148 A2
 V149 A2
 V150 A2
 V151 A2
 V152 A2
 V153 A2
 V154 A2
 V155 A2
 V156 A2
 V157 A2
 V158 A2
 V159 A1
 V160 A2
 V161 A1
 V162 A2
 V163 A1
 V164 A2
 V165 A1
 V166 A2
 V167 A1
 V168 A2
 V169 A1
 V170 A2
 V171 A1
 V172 A2
 V173 A1
 V174 A2
 V175 A1
 V176 A2
 V177 A1
 V178 A2
 V179 A1
 V180 A2
 V181 F1
 V182 F1
 V183 F1
 V184 A504.
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
VARIABLE LABELS V16 "[Erfahrung mit Vorgänger] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V17 "[Zusagendes Gameplay/Zusagende Spielidee] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V18 "[Neugierde auf die Story] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V19 "[Bessere Grafik] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V20 "[Freundeskreis hat Spiel gewechselt] Aus welchem Grund nutzt du ein neues Spiel?".
VARIABLE LABELS V21 "[„Antesten“, um es ggf. zu erwerben] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V22 "[„Antesten“, um es ggf. zu erwerben] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V23 "[Geldmangel] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V24 "[Geldmangel] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V25 "[Abneigung gegen den Anbieter] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V26 "[Abneigung gegen den Anbieter] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V27 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V28 "[Mangelnde Qualität - für einen Kauf ist es nicht gut genug] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V29 "[Spiel ist nicht legal erhältlich.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V30 "[Spiel ist nicht legal erhältlich.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V31 "[Einfacher/ schneller als kaufen.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V32 "[Einfacher/ schneller als kaufen.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V33 "[Zusätzlich zum Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V34 "[Zusätzlich zum Original, um mit Leuten spielen zu können, die das Original nicht besitzen.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V35 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V36 "[Zum Spielen mit Freunden, ohne selbst ein Original zu haben.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V37 "[Um das Spiel ohne Kopierschutz nutzen zu können.] [Skala 1] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V38 "[Um das Spiel ohne Kopierschutz nutzen zu können.] [Skala 2] Wenn man nach Gründen für die illegale Nutzung fragt, werden unter anderem folgende genannt.".
VARIABLE LABELS V39 "[Durchgespielt] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V40 "[Grafik nicht mehr zeitgemäß] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V41 "[Gameplay nicht mehr zeitgemäß] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V42 "[Kein Spaß mehr] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V43 "[(Besserer) Nachfolger] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V44 "[Geänderte Interessen/Vorlieben] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V45 "[Freundeskreis hat Spiel gewechselt] Aus welchen Gründen hörst du auf, ein Spiel zu nutzen?".
VARIABLE LABELS V46 "[Spiel läuft nicht mehr (neues Betriebssystem oder neue Konsole)] Hast du schon aus einem der folgenden Gründe aufgehört, ein Spiel zu nutzen?".
VARIABLE LABELS V47 "[Kein Support mehr oder Betrieb vom Anbieter eingestellt] Hast du schon aus einem der folgenden Gründe aufgehört, ein Spiel zu nutzen?".
VARIABLE LABELS V48 "Ist es dir persönlich wichtig, dass Videospiele deutlicher als bisher ""offiziell"" als Kunst anerkannt werden?".
VARIABLE LABELS V49 "Gibt es Gründe, weshalb du eine Anerkennung von Videospielen als Kunst befürwortest?".
VARIABLE LABELS V50 "[Weil Videospiele dadurch gesellschaftlich anerkannt werden.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von Videospielen als Kunst?".
VARIABLE LABELS V51 "[Weil Videospiele dann besser vor Restriktionen geschützt sind.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von Videospielen als Kunst?".
VARIABLE LABELS V52 "[Weil die (wirtschaftliche) Förderung von Videospielen dadurch erleichtert wird.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von Videospielen als Kunst?".
VARIABLE LABELS V53 "[Sonstiges] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von Videospielen als Kunst?".
VARIABLE LABELS V54 "Für wann hältst du eine formelle Anerkennung von Videospielen als Kunst in Deutschland für realistisch?".
VARIABLE LABELS V55 "Gibt es Videospiele, die du ""an sich"" (nicht ""nur"" wegen z. B. eines tollen Soundtracks) als Kunst betrachtest?".
VARIABLE LABELS V56 "An welche Spiele hast du dabei gedacht?".
VARIABLE LABELS V57 "Hattest du schon Kontakt mit einer VR-Brille?".
VARIABLE LABELS V58 "Planst du dir eine VR-Brille zuzulegen?".
VARIABLE LABELS V59 "[Sie sind (noch) zu teuer.] Was spricht deiner Meinung nach gegen eine VR-Brille?".
VARIABLE LABELS V60 "[Es gibt (noch) zu wenige Spiele.] Was spricht deiner Meinung nach gegen eine VR-Brille?".
VARIABLE LABELS V61 "[Sie bringt für meine Spiele nichts.] Was spricht deiner Meinung nach gegen eine VR-Brille?".
VARIABLE LABELS V62 "[Sonstiges] Was spricht deiner Meinung nach gegen eine VR-Brille?".
VARIABLE LABELS V63 "Glaubst du, dass sich VR bei Videospielen durchsetzen wird?".
VARIABLE LABELS V64 "Ist es dir persönlich wichtig, dass E-Sport offiziell als Sport anerkannt wird?".
VARIABLE LABELS V65 "Gibt es Gründe, weshalb du eine Anerkennung von E-Sport als Sport befürwortest?".
VARIABLE LABELS V66 "[Weil Videospiele dadurch gesellschaftlich anerkannt werden.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von E-Sport als Sport?".
VARIABLE LABELS V67 "[Weil Videospiele dann besser vor Restriktionen geschützt sind.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von E-Sport als Sport?".
VARIABLE LABELS V68 "[Weil die (wirtschaftliche) Förderung von Videospielen dadurch erleichtert wird.] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von E-Sport als Sport?".
VARIABLE LABELS V69 "[Sonstiges] Aus welchen der folgenden Gründe befürwortest du eine formelle Anerkennung von E-Sport als Sport?".
VARIABLE LABELS V70 "Für wann hältst du eine Anerkennung von E-Sport als Sport in Deutschland für realistisch?".
VARIABLE LABELS V71 "Spielst du eher Single- oder Multiplayer?".
VARIABLE LABELS V72 "Seit wann nutzt du Videospiele?".
VARIABLE LABELS V73 "[Mac/MacBook] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V74 "[Windows] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V75 "[Linux] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V76 "[Playstation 3/4] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V77 "[Wii/WiiU] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V78 "[XBox360/ XBox One] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V79 "[DS/2DS/3DS/DSi/…] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V80 "[Smartphone (Android)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V81 "[Smartphone (iPhone)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V82 "[Smartphone (Windows)] Auf welchen Plattformen hast du im vergangenen Jahr wie intensiv gespielt?".
VARIABLE LABELS V83 "Wie viele Stunden verbringst du in der Woche mit Videospielen?".
VARIABLE LABELS V84 "[Spiel 1] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V85 "[Spiel 2] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V86 "[Spiel 3] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V87 "[Spiel 4] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V88 "[Spiel 5] Welche fünf Spiele hast du als letztes genutzt?".
VARIABLE LABELS V89 "[{Products_SQ1}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V90 "[{Products_SQ2}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V91 "[{Products_SQ3}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V92 "[{Products_SQ4}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V93 "[{Products_SQ5}] Auf welcher Plattform nutzt du diese Spiele hauptsächlich?".
VARIABLE LABELS V94 "[{Products_SQ1}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V95 "[{Products_SQ2}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V96 "[{Products_SQ3}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V97 "[{Products_SQ4}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V98 "[{Products_SQ5}] Wann hast du diese zuletzt genutzt?".
VARIABLE LABELS V99 "[{Products_SQ1}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V100 "[{Products_SQ2}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V101 "[{Products_SQ3}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V102 "[{Products_SQ4}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V103 "[{Products_SQ5}] Seit wann nutzt du diese Spiele?".
VARIABLE LABELS V104 "[{Products_SQ1}] Woher hast du diese Spiele?".
VARIABLE LABELS V105 "[{Products_SQ2}] Woher hast du diese Spiele?".
VARIABLE LABELS V106 "[{Products_SQ3}] Woher hast du diese Spiele?".
VARIABLE LABELS V107 "[{Products_SQ4}] Woher hast du diese Spiele?".
VARIABLE LABELS V108 "[{Products_SQ5}] Woher hast du diese Spiele?".
VARIABLE LABELS V109 "[Spielbezogene Hardware] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V110 "[Spiele-Kauf (einmalige Ausgabe)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V111 "[Spielbezogene Abos (regelmäßige Ausgabe)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V112 "[Addons und DLCs] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V113 "[In-Game-Käufe] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V114 "[Eigene Gameserver (bei Clans: dein Anteil)] Wie viel hast du im vergangenen Jahr in etwa für Folgendes ausgegeben?".
VARIABLE LABELS V115 "Hat bei deiner Kaufentscheidung die Erforderlichkeit einer (nach jeder Installation einmaligen) Onlineaktivierung eine Bedeutung?".
VARIABLE LABELS V116 "Hat bei deiner Kaufentscheidung das Vorhandensein eines Always-On-System (auch zur Nutzung im Einzelspieler muss eine Internetverbindung bestehen), eine Bedeutung?".
VARIABLE LABELS V117 "Hat bei deiner Kaufentscheidung ein beschränktes Installationskontingent (es ist - mit dem Key - nur eine beschränkte Anzahl von Installationen möglich) eine Bedeutung?".
VARIABLE LABELS V118 "Hat bei deiner Kaufentscheidung ein „aggressiver“ Kopierschutz, der z.B. die Festplatte nach bestimmten Programmen durchsucht, nach der Deinstallation des Spieles verbleibt oder eigene Gerätetreiber installiert, eine Bedeutung?".
VARIABLE LABELS V119 "Hat bei deiner Kaufentscheidung das Fehlen der Möglichkeit, (legal) eine Sicherheitskopie anfertigen zu können, eine Bedeutung?".
VARIABLE LABELS V120 "Haben bei deiner Kaufentscheidung Datenschutzbedenken, weil unklar ist welche Daten vom PC/dem Spielverhalten übermittelt werden, eine Bedeutung?".
VARIABLE LABELS V121 "Hat bei deiner Kaufentscheidung die Festlegung auf eine bestimmte Region der Erde (Geolock) eine Bedeutung?".
VARIABLE LABELS V122 "[Art und Wirkungsweise des Kopierschutzes] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dieser Punk"+
"te im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V123 "[Art und Wirkungsweise des Kopierschutzes] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissheit über einen dieser Punk"+
"te im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V124 "[Ob und welche Daten durch die Nutzung des Spieles übermittelt werden] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewis"+
"sheit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V125 "[Ob und welche Daten durch die Nutzung des Spieles übermittelt werden] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewis"+
"sheit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V126 "[Inwieweit bei dem Spiel Gewaltdarstellungen entschärft worden sind] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissh"+
"eit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V127 "[Inwieweit bei dem Spiel Gewaltdarstellungen entschärft worden sind] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewissh"+
"eit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V128 "[Ob der Multiplayer mit der internationalen Version kompatibel ist] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewisshe"+
"it über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V129 "[Ob der Multiplayer mit der internationalen Version kompatibel ist] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ungewisshe"+
"it über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V130 "[Ob eventuelle Addons/DLCs auch von Deutschland aus bezogen werden können] [Skala 1] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ung"+
"ewissheit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V131 "[Ob eventuelle Addons/DLCs auch von Deutschland aus bezogen werden können] [Skala 2] 			Fühlst du dich durch den Anbieter über die folgenden Umstände vor der Anschaffung eines Videospiels gut informiert?			Hast du wegen der Ung"+
"ewissheit über einen dieser Punkte im letzten Jahr auf ein Spiels verzichtet?".
VARIABLE LABELS V132 "[USK-Kennzeichnung] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V133 "[PEGI-Kennzeichnung] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V134 "[Indizierungen (z.B. durch BPjM)] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V135 "[Verbot (durch Strafgesetzbuch)] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V136 "[Beschlagnahme (per Gerichtsurteil)] Welche der folgenden, rechtlichen Einstufungen von Videospielen kennst du?".
VARIABLE LABELS V137 "Weißt du, ob die Videospiele, die du besitzt, ungeschnittene oder entschärfte Versionen sind?".
VARIABLE LABELS V138 "Was denkst du über Videospiele, bei denen die Gewaltdarstellung gegenüber dem Original reduziert ist?".
VARIABLE LABELS V139 "Versuchst du dich über die Veröffentlichung indizierter oder verbotener Videospiele zu informieren?".
VARIABLE LABELS V140 "[Deutsche Spielemagazine] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V141 "[Ausländische Spielemagazine] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V142 "[Foren] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V143 "[Spezialisierte Webseiten] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V144 "[BPjM-Aktuell (z.B. in Bibliotheken)] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V145 "[Freunde oder Bekannte] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V146 "[Sonstiges] Auf welchen Wegen informierst du dich über unzensierte Versionen von Videospielen?".
VARIABLE LABELS V147 "Versuchst du ungeschnittene Version von Spielen zu bekommen?".
VARIABLE LABELS V148 "Wenn du versuchst, die ungeschnittene Version eines Spiels zu bekommen, schaffst du das üblicherweise?".
VARIABLE LABELS V149 "[Ladengeschäfte (Inland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V150 "[Ladengeschäfte (Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V151 "[Onlineshops (Inland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V152 "[Onlineshops (Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V153 "[Illegal über das Internet (z.B. Tauschbörsen)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V154 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V155 "[Legal von Bekannten (z.B. geliehen)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V156 "[Legal über Bekannte (im Ausland)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V157 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V158 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] Schätze bitte außerdem deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V159 "[Ladengeschäfte (Inland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussich"+
"ten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V160 "[Ladengeschäfte (Inland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussich"+
"ten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V161 "[Ladengeschäfte (Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussic"+
"hten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V162 "[Ladengeschäfte (Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussic"+
"hten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V163 "[Versandhandel (Inland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussicht"+
"en ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V164 "[Versandhandel (Inland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussicht"+
"en ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V165 "[Versandhandel (Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussich"+
"ten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V166 "[Versandhandel (Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfolgsaussich"+
"ten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V167 "[Illegal über das Internet (z.B. Tauschbörsen)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persö"+
"nlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V168 "[Illegal über das Internet (z.B. Tauschbörsen)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persö"+
"nlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V169 "[Legal über das Internet (z.B. Downloadshops)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persön"+
"lichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V170 "[Legal über das Internet (z.B. Downloadshops)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persön"+
"lichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V171 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerde"+
"m deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V172 "[Modifizieren der zensierten Version (z.B. ""Blutpatches"")] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerde"+
"m deine persönlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V173 "[Legal von Bekannten (z.B. geliehen)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Er"+
"folgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V174 "[Legal von Bekannten (z.B. geliehen)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Er"+
"folgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V175 "[Legal über Bekannte (im Ausland)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfol"+
"gsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V176 "[Legal über Bekannte (im Ausland)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persönlichen Erfol"+
"gsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V177 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persön"+
"lichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V178 "[Über Unbekannte im Ausland (z.B. ""Gifter"")] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persön"+
"lichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V179 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] [Skala 1] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persö"+
"nlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V180 "[Illegal von Bekannten (z.B. auf DVD gebrannt)] [Skala 2] Gib bitte an, auf welchen der folgenden Wege du im letzten Jahr versucht hast, an die ungeschnittene Version eines Spiels zu gelangen. Schätze bitte außerdem deine persö"+
"nlichen Erfolgsaussichten ein, auf folgenden Wegen an die ungeschnittene Version eines Spiels zu gelangen.".
VARIABLE LABELS V181 "[Ich kann mir vorstellen, dass andere so etwas nutzen.] Fändest du es sinnvoll, den Gewaltgrad in Spielen einstellen zu können?".
VARIABLE LABELS V182 "[Ich würde eine solche Option nutzen.] Fändest du es sinnvoll, den Gewaltgrad in Spielen einstellen zu können?".
VARIABLE LABELS V183 "[So etwas ist eine gute Option für Eltern.] Fändest du es sinnvoll, den Gewaltgrad in Spielen einstellen zu können?".
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
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V17
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V18
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V19
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V20
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V21
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V22
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V23
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V24
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V25
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V26
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V27
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V28
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V29
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V30
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V31
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V32
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V33
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V34
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V35
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V36
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V37
 "A3" "Ja, die meisten"
 "A2" "Ja, einige"
 "A1" "Fast keines"
 "A0" "Kein  einziges".
VALUE LABELS  V38
 2 "Ja"
 1 "Manchmal"
 0 "Nein".
VALUE LABELS  V39
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V40
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V41
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V42
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V43
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V44
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V45
 "A1" "Auf jeden Fall"
 "A2" "Eher ja"
 "A3" "Vielleicht"
 "A4" "Eher nicht"
 "A5" "Auf keinen Fall".
VALUE LABELS  V46
 "A1" "Ja, mehrfach"
 "A2" "Ja, ein Mal"
 "A3" "Nein, noch nie".
VALUE LABELS  V47
 "A1" "Ja, mehrfach"
 "A2" "Ja, ein Mal"
 "A3" "Nein, noch nie".
VALUE LABELS  V48
 1 "Auf jeden Fall"
 2 "Eher ja"
 3 "Vielleicht"
 4 "Eher nicht"
 5 "Auf keinen Fall".
VALUE LABELS  V49
 1 "Ja"
 2 "Nein".
VALUE LABELS  V50
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V51
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V52
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V55
 1 "Ja"
 2 "Nein".
VALUE LABELS  V57
 1 "Ja, ich habe selbst eine."
 2 "Ja, ich habe aus (beruflichen Gründen) Zugang zu einer."
 3 "Ja, ich habe schon ein Mal die Gelgenheit eine zu Nutzen (Messe, etc.)."
 4 "Nein.".
VALUE LABELS  V58
 1 "Habe schon eine."
 2 "Ja, kaufe mir demnächst eine."
 3 "Ich zögere noch."
 4 "Nein.".
VALUE LABELS  V59
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V60
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V61
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V63
 1 "Ja, VR-Brillen werden das Gaming komplett verändern."
 2 "Weniger, es wird bei manchen Genres seine Nische finden."
 3 "Nicht in der jetzt bekannten Form. Es wird noch einige Jahre dauern."
 6 "VR wird sich in anderen Bereichen, nicht aber für Gaming durchsetzen."
 4 "Nein, VR ist eine Moderscheinung, die nichts für den Massenmarkt werden wird."
 5 "Keine Meinung/Unentschlossen.".
VALUE LABELS  V64
 1 "Ja"
 2 "Nein".
VALUE LABELS  V65
 1 "Ja"
 2 "Nein".
VALUE LABELS  V66
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V67
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V68
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V71
 "A1" "Vorrangig Einzelspieler."
 "A3" "Beides gleichermaßen."
 "A5" "Vorrangig Mehrspieler.".
VALUE LABELS  V73
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V74
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V75
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V76
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V77
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V78
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V79
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V80
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V81
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V82
 "A1" "Gar nicht"
 "A2" "Selten"
 "A3" "Manchmal"
 "A4" "Oft"
 "A5" "Ständig".
VALUE LABELS  V89
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V90
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V91
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V92
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V93
 "Sony" "Konsole: Playstation"
 "Wii" "Konsole: Wii"
 "XBox" "Konsole: XBox"
 "Hand" "Mobil: DS/PSP"
 "Touch" "Mobil: Smartphone"
 "Lnx" "PC: Linux"
 "Mac" "PC: Mac"
 "Win" "PC: Windows"
 "X" "Sonstige".
VALUE LABELS  V94
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V95
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V96
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V97
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V98
 "M" "Vor über drei Wochen"
 "3W" "Vor weniger als drei Wochen"
 "W" "Vor weniger als einer Woche"
 "3T" "Vor maximal drei Tagen"
 "1T" "Heute".
VALUE LABELS  V99
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V100
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V101
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V102
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V103
 "5J" "Seit mehr als fünf Jahren"
 "J" "Seit über einem Jahr"
 "Q" "Seit über drei Monaten"
 "M" "Seit über einem Monat"
 "W" "Seit über einer Woche"
 "T" "Seit weniger als einer Woche".
VALUE LABELS  V104
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V105
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V106
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V107
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V108
 1 "Selbst gekauft/ bezogen"
 2 "Geschenkt bekommen"
 3 "Geliehen"
 4 "Bei Bekannten genutzt"
 5 "Illegal bezogen".
VALUE LABELS  V115
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V116
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V117
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V118
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V119
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V120
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V121
 1 "Keine."
 2 "Ja, aber es ist kein Grund auf die Anschaffung zu verzichten."
 3 "Ja, es kann ein Grund sein auf die Anschaffung zu verzichten."
 4 "Ja, ich habe deswegen bereits auf die Anschaffung von Spielen verzichtet - es ist aber kein absoluter Ausschlussgrund."
 5 "Ja, ich kaufe solche Spiele prinzipiell nicht.".
VALUE LABELS  V122
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V123
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V124
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V125
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V126
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V127
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V128
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V129
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V130
 1 "Immer"
 2 "Meistens"
 3 "Manchmal"
 4 "Selten"
 5 "Nie".
VALUE LABELS  V131
 "A1" "Ja"
 "A2" "Nein".
VALUE LABELS  V132
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V133
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V134
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V135
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V136
 1 "Ja"
 2 "Nein"
 3 "Unsicher".
VALUE LABELS  V137
 1 "Ja, ich weiß es bei allen."
 2 "Ich weiß es bei den meisten."
 3 "Ich weiß es bei einigen."
 4 "Nein, ich weiß es bei keinem.".
VALUE LABELS  V138
 1 "Entschärfte Versionen sind für mich kein Problem."
 2 "Schnitte stören mich, halten mich aber nicht von der Nutzung ab."
 3 "Ich versuche entschärfte Spiele nur in Ausnahmefällen zu nutzen."
 4 "Ich habe kein Interesse an geschnittenen Spielen.".
VALUE LABELS  V139
 1 "Ja"
 2 "Nein".
VALUE LABELS  V140
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V141
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V142
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V143
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V144
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V145
 1 "Ja"
 0 "Nicht gewählt".
VALUE LABELS  V147
 4 "Immer"
 3 "Meistens"
 2 "Manchmal"
 1 "Selten"
 0 "Nie".
VALUE LABELS  V148
 "A1" "Immer."
 "A2" "Meistens"
 "A3" "Manchmal"
 "A4" "Selten"
 "A5" "Nie".
VALUE LABELS  V149
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V150
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V151
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V152
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V153
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V154
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V155
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V156
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V157
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
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
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V162
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V163
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V164
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V165
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V166
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V167
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V168
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V169
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V170
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V171
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V172
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V173
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V174
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V175
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V176
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V177
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V178
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
VALUE LABELS  V179
 "J" "Ja."
 "N" "Nein.".
VALUE LABELS  V180
 "A1" "sehr groß (>90%)"
 "A2" "groß (etwa 80%)"
 "A3" "mittelmäßig (etwa 50%)"
 "A4" "gering (etwa 25%)"
 "A5" "nicht vorhanden (0%)".
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
VARIABLE LEVEL V10(SCALE).
VARIABLE LEVEL V14(SCALE).
VARIABLE LEVEL V48(ORDINAL).
VARIABLE LEVEL V54(SCALE).
VARIABLE LEVEL V57(ORDINAL).
VARIABLE LEVEL V70(SCALE).
VARIABLE LEVEL V72(SCALE).
VARIABLE LEVEL V83(SCALE).
VARIABLE LEVEL V89(ORDINAL).
VARIABLE LEVEL V90(ORDINAL).
VARIABLE LEVEL V91(ORDINAL).
VARIABLE LEVEL V92(ORDINAL).
VARIABLE LEVEL V93(ORDINAL).
VARIABLE LEVEL V94(ORDINAL).
VARIABLE LEVEL V95(ORDINAL).
VARIABLE LEVEL V96(ORDINAL).
VARIABLE LEVEL V97(ORDINAL).
VARIABLE LEVEL V98(ORDINAL).
VARIABLE LEVEL V99(ORDINAL).
VARIABLE LEVEL V100(ORDINAL).
VARIABLE LEVEL V101(ORDINAL).
VARIABLE LEVEL V102(ORDINAL).
VARIABLE LEVEL V103(ORDINAL).
VARIABLE LEVEL V104(ORDINAL).
VARIABLE LEVEL V105(ORDINAL).
VARIABLE LEVEL V106(ORDINAL).
VARIABLE LEVEL V107(ORDINAL).
VARIABLE LEVEL V108(ORDINAL).
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
RENAME VARIABLE ( V16 = Startmotivation_1 ).
RENAME VARIABLE ( V17 = Startmotivation_2 ).
RENAME VARIABLE ( V18 = Startmotivation_3 ).
RENAME VARIABLE ( V19 = Startmotivation_4 ).
RENAME VARIABLE ( V20 = Startmotivation_5 ).
RENAME VARIABLE ( V21 = Illegalmotivation_1#0 ).
RENAME VARIABLE ( V22 = Illegalmotivation_1#1 ).
RENAME VARIABLE ( V23 = Illegalmotivation_2#0 ).
RENAME VARIABLE ( V24 = Illegalmotivation_2#1 ).
RENAME VARIABLE ( V25 = Illegalmotivation_3#0 ).
RENAME VARIABLE ( V26 = Illegalmotivation_3#1 ).
RENAME VARIABLE ( V27 = Illegalmotivation_4#0 ).
RENAME VARIABLE ( V28 = Illegalmotivation_4#1 ).
RENAME VARIABLE ( V29 = Illegalmotivation_5#0 ).
RENAME VARIABLE ( V30 = Illegalmotivation_5#1 ).
RENAME VARIABLE ( V31 = Illegalmotivation_6#0 ).
RENAME VARIABLE ( V32 = Illegalmotivation_6#1 ).
RENAME VARIABLE ( V33 = Illegalmotivation_7#0 ).
RENAME VARIABLE ( V34 = Illegalmotivation_7#1 ).
RENAME VARIABLE ( V35 = Illegalmotivation_8#0 ).
RENAME VARIABLE ( V36 = Illegalmotivation_8#1 ).
RENAME VARIABLE ( V37 = Illegalmotivation_9#0 ).
RENAME VARIABLE ( V38 = Illegalmotivation_9#1 ).
RENAME VARIABLE ( V39 = Endmotivation_1 ).
RENAME VARIABLE ( V40 = Endmotivation_2 ).
RENAME VARIABLE ( V41 = Endmotivation_3 ).
RENAME VARIABLE ( V42 = Endmotivation_4 ).
RENAME VARIABLE ( V43 = Endmotivation_5 ).
RENAME VARIABLE ( V44 = Endmotivation_7 ).
RENAME VARIABLE ( V45 = Endmotivation_9 ).
RENAME VARIABLE ( V46 = Endzwang_SQ001 ).
RENAME VARIABLE ( V47 = Endzwang_SQ002 ).
RENAME VARIABLE ( V48 = KunstWichtig ).
RENAME VARIABLE ( V49 = KunstGrundExist ).
RENAME VARIABLE ( V50 = KunstGrund_1 ).
RENAME VARIABLE ( V51 = KunstGrund_2 ).
RENAME VARIABLE ( V52 = KunstGrund_3 ).
RENAME VARIABLE ( V53 = KunstGrund_other ).
RENAME VARIABLE ( V54 = KunstRealistisch ).
RENAME VARIABLE ( V55 = KunstBeispiel ).
RENAME VARIABLE ( V56 = KunstBeispielName ).
RENAME VARIABLE ( V57 = VRErfahrung ).
RENAME VARIABLE ( V58 = VRPlan ).
RENAME VARIABLE ( V59 = VRNein_1 ).
RENAME VARIABLE ( V60 = VRNein_2 ).
RENAME VARIABLE ( V61 = VRNein_3 ).
RENAME VARIABLE ( V62 = VRNein_other ).
RENAME VARIABLE ( V63 = VRErfolg ).
RENAME VARIABLE ( V64 = ESportWichtig ).
RENAME VARIABLE ( V65 = ESportGrundExist ).
RENAME VARIABLE ( V66 = ESportGrund_1 ).
RENAME VARIABLE ( V67 = ESportGrund_2 ).
RENAME VARIABLE ( V68 = ESportGrund_3 ).
RENAME VARIABLE ( V69 = ESportGrund_other ).
RENAME VARIABLE ( V70 = ESportRealistisch ).
RENAME VARIABLE ( V71 = Multiplayer ).
RENAME VARIABLE ( V72 = Erfahrung ).
RENAME VARIABLE ( V73 = AllgemPlatt_Mac ).
RENAME VARIABLE ( V74 = AllgemPlatt_Win ).
RENAME VARIABLE ( V75 = AllgemPlatt_Lnx ).
RENAME VARIABLE ( V76 = AllgemPlatt_SPS ).
RENAME VARIABLE ( V77 = AllgemPlatt_Wii ).
RENAME VARIABLE ( V78 = AllgemPlatt_XBx ).
RENAME VARIABLE ( V79 = AllgemPlatt_xDS ).
RENAME VARIABLE ( V80 = AllgemPlatt_And ).
RENAME VARIABLE ( V81 = AllgemPlatt_iOS ).
RENAME VARIABLE ( V82 = AllgemPlatt_WPh ).
RENAME VARIABLE ( V83 = Nutzungsumfang ).
RENAME VARIABLE ( V84 = Products_SQ1 ).
RENAME VARIABLE ( V85 = Products_SQ2 ).
RENAME VARIABLE ( V86 = Products_SQ3 ).
RENAME VARIABLE ( V87 = Products_SQ4 ).
RENAME VARIABLE ( V88 = Products_SQ5 ).
RENAME VARIABLE ( V89 = Plattformen_SQ1 ).
RENAME VARIABLE ( V90 = Plattformen_SQ2 ).
RENAME VARIABLE ( V91 = Plattformen_SQ3 ).
RENAME VARIABLE ( V92 = Plattformen_SQ4 ).
RENAME VARIABLE ( V93 = Plattformen_SQ5 ).
RENAME VARIABLE ( V94 = LetzteNutzung_SQ1 ).
RENAME VARIABLE ( V95 = LetzteNutzung_SQ2 ).
RENAME VARIABLE ( V96 = LetzteNutzung_SQ3 ).
RENAME VARIABLE ( V97 = LetzteNutzung_SQ4 ).
RENAME VARIABLE ( V98 = LetzteNutzung_SQ5 ).
RENAME VARIABLE ( V99 = Nutzungsdauer_SQ1 ).
RENAME VARIABLE ( V100 = Nutzungsdauer_SQ2 ).
RENAME VARIABLE ( V101 = Nutzungsdauer_SQ3 ).
RENAME VARIABLE ( V102 = Nutzungsdauer_SQ4 ).
RENAME VARIABLE ( V103 = Nutzungsdauer_SQ5 ).
RENAME VARIABLE ( V104 = Bezugsweg_SQ1 ).
RENAME VARIABLE ( V105 = Bezugsweg_SQ2 ).
RENAME VARIABLE ( V106 = Bezugsweg_SQ3 ).
RENAME VARIABLE ( V107 = Bezugsweg_SQ4 ).
RENAME VARIABLE ( V108 = Bezugsweg_SQ5 ).
RENAME VARIABLE ( V109 = Ausgaben_GHW ).
RENAME VARIABLE ( V110 = Ausgaben_ESK ).
RENAME VARIABLE ( V111 = Ausgaben_Abo ).
RENAME VARIABLE ( V112 = Ausgaben_DLC ).
RENAME VARIABLE ( V113 = Ausgaben_IGK ).
RENAME VARIABLE ( V114 = Ausgaben_SRV ).
RENAME VARIABLE ( V115 = Onlineaktivierung ).
RENAME VARIABLE ( V116 = Onlinezwang ).
RENAME VARIABLE ( V117 = Kontingent ).
RENAME VARIABLE ( V118 = Kopierschutz ).
RENAME VARIABLE ( V119 = Sicherheitskopie ).
RENAME VARIABLE ( V120 = Datenschutz ).
RENAME VARIABLE ( V121 = Geolock ).
RENAME VARIABLE ( V122 = Infointeress1Jahr_1#0 ).
RENAME VARIABLE ( V123 = Infointeress1Jahr_1#1 ).
RENAME VARIABLE ( V124 = Infointeress1Jahr_2#0 ).
RENAME VARIABLE ( V125 = Infointeress1Jahr_2#1 ).
RENAME VARIABLE ( V126 = Infointeress1Jahr_3#0 ).
RENAME VARIABLE ( V127 = Infointeress1Jahr_3#1 ).
RENAME VARIABLE ( V128 = Infointeress1Jahr_4#0 ).
RENAME VARIABLE ( V129 = Infointeress1Jahr_4#1 ).
RENAME VARIABLE ( V130 = Infointeress1Jahr_5#0 ).
RENAME VARIABLE ( V131 = Infointeress1Jahr_5#1 ).
RENAME VARIABLE ( V132 = Kennzeichenkenntnis_USK ).
RENAME VARIABLE ( V133 = Kennzeichenkenntnis_PEGI ).
RENAME VARIABLE ( V134 = Kennzeichenkenntnis_BPjM ).
RENAME VARIABLE ( V135 = Kennzeichenkenntnis_StGB ).
RENAME VARIABLE ( V136 = Kennzeichenkenntnis_GUrt ).
RENAME VARIABLE ( V137 = Schnittkenntnis ).
RENAME VARIABLE ( V138 = Zensurmeinung ).
RENAME VARIABLE ( V139 = Zensurinformation ).
RENAME VARIABLE ( V140 = Zensurinfowege_1 ).
RENAME VARIABLE ( V141 = Zensurinfowege_2 ).
RENAME VARIABLE ( V142 = Zensurinfowege_3 ).
RENAME VARIABLE ( V143 = Zensurinfowege_4 ).
RENAME VARIABLE ( V144 = Zensurinfowege_5 ).
RENAME VARIABLE ( V145 = Zensurinfowege_6 ).
RENAME VARIABLE ( V146 = Zensurinfowege_other ).
RENAME VARIABLE ( V147 = UncutBezug ).
RENAME VARIABLE ( V148 = UncutBezugErfolg ).
RENAME VARIABLE ( V149 = UncutBezugWegKErf_SQ001 ).
RENAME VARIABLE ( V150 = UncutBezugWegKErf_SQ002 ).
RENAME VARIABLE ( V151 = UncutBezugWegKErf_SQ003 ).
RENAME VARIABLE ( V152 = UncutBezugWegKErf_SQ004 ).
RENAME VARIABLE ( V153 = UncutBezugWegKErf_SQ005 ).
RENAME VARIABLE ( V154 = UncutBezugWegKErf_SQ006 ).
RENAME VARIABLE ( V155 = UncutBezugWegKErf_SQ007 ).
RENAME VARIABLE ( V156 = UncutBezugWegKErf_SQ008 ).
RENAME VARIABLE ( V157 = UncutBezugWegKErf_SQ009 ).
RENAME VARIABLE ( V158 = UncutBezugWegKErf_SQ010 ).
RENAME VARIABLE ( V159 = UncutBezugWegErf_LI#0 ).
RENAME VARIABLE ( V160 = UncutBezugWegErf_LI#1 ).
RENAME VARIABLE ( V161 = UncutBezugWegErf_LA#0 ).
RENAME VARIABLE ( V162 = UncutBezugWegErf_LA#1 ).
RENAME VARIABLE ( V163 = UncutBezugWegErf_VI#0 ).
RENAME VARIABLE ( V164 = UncutBezugWegErf_VI#1 ).
RENAME VARIABLE ( V165 = UncutBezugWegErf_VA#0 ).
RENAME VARIABLE ( V166 = UncutBezugWegErf_VA#1 ).
RENAME VARIABLE ( V167 = UncutBezugWegErf_II#0 ).
RENAME VARIABLE ( V168 = UncutBezugWegErf_II#1 ).
RENAME VARIABLE ( V169 = UncutBezugWegErf_IL#0 ).
RENAME VARIABLE ( V170 = UncutBezugWegErf_IL#1 ).
RENAME VARIABLE ( V171 = UncutBezugWegErf_MD#0 ).
RENAME VARIABLE ( V172 = UncutBezugWegErf_MD#1 ).
RENAME VARIABLE ( V173 = UncutBezugWegErf_BI#0 ).
RENAME VARIABLE ( V174 = UncutBezugWegErf_BI#1 ).
RENAME VARIABLE ( V175 = UncutBezugWegErf_BA#0 ).
RENAME VARIABLE ( V176 = UncutBezugWegErf_BA#1 ).
RENAME VARIABLE ( V177 = UncutBezugWegErf_UA#0 ).
RENAME VARIABLE ( V178 = UncutBezugWegErf_UA#1 ).
RENAME VARIABLE ( V179 = UncutBezugWegErf_IB#0 ).
RENAME VARIABLE ( V180 = UncutBezugWegErf_IB#1 ).
RENAME VARIABLE ( V181 = Gewaltregler_Andere ).
RENAME VARIABLE ( V182 = Gewaltregler_Ich ).
RENAME VARIABLE ( V183 = Gewaltregler_Eltern ).
RENAME VARIABLE ( V184 = feddbacktext ).
RESTORE LOCALE.
