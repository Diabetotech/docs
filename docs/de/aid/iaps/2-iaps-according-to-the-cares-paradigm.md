<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q9br-IqtrZarduSn3MjE5bR -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/xXKr6iz-VGo" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. iAPS nach dem CARES-Paradigma</u>**

In diesem Video behandeln wir iAPS gemäß dem CARES-Paradigma.

Wir werden erläutern, wie iAPS die automatisierte Insulinabgabe berechnet und anpasst, wann es in den manuellen Modus wechselt, spezifische Tipps zur Schulung und Sensorprobleme sowie die Datenübertragung. Anschließend werden wir die Indikationen für iAPS und Software-Updates besprechen. Los geht's!

### 1) iAPS gemäß dem CARES-Paradigma

### 2.1 Berechnen

Bei iAPS wird die voreingestellte Basalinsulinrate auf Grundlage der prognostizierten Blutzuckerwerte der nächsten 5 bis 9 Stunden angepasst. Hier eine Übersicht über die Funktionsweise von iAPS:

- iAPS kombiniert verschiedene Blutzucker- oder „BG“-Prognosen, um den minimalen prognostizierten Blutzucker zu berechnen:

- iAPS berechnet einen auf Kohlenhydraten basierenden Blutzuckerwert, der auf den aufgenommenen Kohlenhydraten basiert.

- ein insulinvorhergesagter Blutzuckerwert, der eine Vorhersage auf der Grundlage des Insulinvorrats ist,

- eine „UnAnnounced Meal predicted BG” ist eine Vorhersage für den Fall einer unangekündigten Kohlenhydrataufnahme,

- und einen prognostizierten Blutzuckerwert von Null, was das Worst-Case-Szenario darstellt, falls plötzlich kein Insulin mehr verabreicht wird oder keine Kohlenhydrate mehr aufgenommen werden.

- iAPS berücksichtigt Fehler in den Vorhersagen, da die endgültige Blutzuckerprognose auf der Grundlage der Abweichung zwischen dem aktuellen Blutzuckerwert und dem vorhergesagten Blutzuckerwert, auch bekannt als Blutzuckerauswirkung, angepasst wird. Der Algorithmus berücksichtigt auch den Blutzuckertrend, indem er das Delta, also die Differenz zwischen dem aktuellen und dem vergangenen Blutzuckerwert, berechnet. Außerdem berücksichtigt er die kurz- und langfristige Glukose-Dynamik, also die Veränderung zwischen dem aktuellen Wert und dem Glukosewert vor 15 und 40 Minuten.

- Der Insulinbedarf oder InsulReq wird berechnet, indem der Zielblutzucker vom minimalen vorhergesagten Blutzucker abgezogen und diese Differenz durch die Insulinsensitivität oder ISF geteilt wird. Dieser Insulinbedarf bestimmt, ob das manuell voreingestellte Basalinsulin erhöht oder verringert werden muss.

- Wenn eine Hypoglykämie vorhergesagt wird, wird die Basalinsulinabgabe gestoppt und die Einnahme von Kohlenhydraten zur Blutzuckeranhebung empfohlen. 

Zusammenfassend lässt sich sagen, dass die voreingestellte Basalinsulindosis auf Grundlage des berechneten Insulinbedarfs erhöht oder verringert wird. Dies wird in der App als temporäre oder vorübergehende Basalrate mit einer bestimmten Insulindosis und Dauer oder als Mikrobolus angezeigt, wobei diese temporären Basalraten alle 5 Minuten neu berechnet werden. Eine neue Berechnung durch iAPS wird auch als Schleifenzyklus bezeichnet.  

In iAPS werden die temporären Basalraten in der Regel als Mikrobolus verabreicht, wodurch die gleiche Insulindosis schneller abgegeben wird, gefolgt von einer vorübergehenden Pause in der Basalinsulinabgabe. Wie diese Supermikroboli oder SMBs auf der Grundlage der temporären Basalraten berechnet werden, kann innerhalb vordefinierter Sicherheitseinstellungen angepasst werden. 

iAPS nutzt außerdem eine Autosens-Funktion, die die Insulinabgabe basierend auf der Insulinsensitivität des Benutzers in den letzten 8 und 24 Stunden erhöht oder verringert. 

- Es berechnet einen Prozentsatz, der angibt, wie stark sich die Insulinsensitivität in den letzten Stunden von der aktuell eingestellten Sensitivität unterscheidet, und verwendet diesen Prozentsatz, um Ihre Insulinsensitivität und Basalinsulinrate anzupassen. Die Autosens-Funktion kann auch auf den Zielwert angewendet werden, der auf der Grundlage des berechneten Sensitivitätsverhältnisses angepasst wird.

- Der maximale und minimale Autosens-Wert sind auf 1,2 bzw. 0,7 festgelegt. Sie bestimmen die maximalen und minimalen Anpassungsprozentsätze basierend auf der Autosens-Funktion. Das bedeutet, dass die Werte mit Autosens um maximal 120 % und minimal 70 % angepasst werden können.

- Wenn Sie die Funktion „Unangekündigte Mahlzeit“ aktivieren, erkennt der Algorithmus schnelle Glukoseanstiege, die durch Kohlenhydrate, Adrenalin usw. verursacht werden, und versucht, diese mit SMBs anzupassen. Dies funktioniert auch umgekehrt: Bei einem schnellen Glukoseabfall kann es SMBs früher beenden. Es ist wichtig zu beachten, dass die UAM-Funktion nur empfohlen wird, wenn Sie über eine relativ stabile Blutzuckerkontrolle und Glukosesensorwerte verfügen. Wenn Ihre Blutzuckerkontrolle schlecht ist, kann die Aktivierung von UAM zu zusätzlichen Schwankungen führen. Das Gleiche kann passieren, wenn Ihre Sensorwerte instabil sind, beispielsweise am ersten Tag nach einem Sensorwechsel.

Darüber hinaus bietet iAPS drei dynamische Funktionen, die in der App aktiviert werden können: Dynamic ISF, Dynamic Carb Ratio und Auto ISF (für fortgeschrittene Benutzer).

- Wenn Sie Dynamic ISF aktivieren, ersetzt es Autosens. 

- Die Standardformel für Dynamic ISF verwendet eine logarithmische Skala, um das Verhältnis für die ISF-Anpassung zu bestimmen. 

- Es passt auch Ihren ISF an, jedoch auf dynamische Weise, basierend auf Ihrem aktuellen und prognostizierten Glukosewert und der täglichen Gesamtinsulindosis.

- Da Sie bei einem höheren Glukosewert insulinresistenter sind, ist dies eine aggressivere Methode, um Ihre Insulinsensitivität anzupassen.

- Die Aggressivität des dynamischen ISF kann mithilfe verschiedener Parameter geändert werden, beispielsweise dem Anpassungsfaktor, dem Gewicht der gesamten täglichen Insulindosis der letzten 24 Stunden im Vergleich zu den letzten zwei Wochen sowie dem maximalen und minimalen Prozentsatz von Autosens.

- Alternativ kann eine Sigmoid-Skala für einen aggressiveren Ansatz verwendet werden. Im Gegensatz zu anderen Methoden bezieht sich die Sigmoid-Skala nicht auf die tägliche Gesamtinsulinmenge, sondern bestimmt die Anpassungen ausschließlich auf der Grundlage der Abweichung des aktuellen Glukosewerts vom Zielwert. Bei Sigmoid verwendet Dynamic ISF das Profil ISF, wenn Sie Ihren Zielblutzuckerwert erreicht haben. Die Aggressivität von Sigmoid kann mit drei Einstellungen angepasst werden: Sigmoid-Anpassungsfaktor, Autosens-Maximum und Autosens-Minimum. Sigmoid ist auch eine gute Option für Benutzer mit schnellen Schwankungen der Insulinsensitivität.

- Wenn Sie die dynamische Kohlenhydratrate aktivieren, wird Ihre Kohlenhydratrate bei jedem Schleifenzyklus auf der Grundlage Ihres aktuellen Blutzuckerspiegels und Ihrer täglichen Gesamtinsulindosis angepasst. Dies basiert auf der Tatsache, dass Sie bei einem höheren Blutzuckerspiegel möglicherweise eine aggressivere Kohlenhydratrate benötigen.

- Eine weitere, eher experimentelle Funktion – Auto ISF – kann von fortgeschrittenen Benutzern konfiguriert werden, um einen vollständigen Closed-Loop-Modus ohne Mahlzeitboli oder Kohlenhydrateingaben zu aktivieren. Die ordnungsgemäße Verwendung dieser Funktion erfordert ein tiefgreifendes Verständnis der ISF-Grenzwerte und der Parameter für die Glukoseakzeleration. Der Algorithmus ist unter https://github.com/bernie4375/FCL-potential-autoISF dokumentiert.

Der Zielglukosewert von iAPS kann zwischen 72 und 180 mg/dl oder 4 und 10 mmol/l eingestellt werden.

iAPS legt großen Wert auf Sicherheit und verfügt über verschiedene Sicherheitseinstellungen und Grenzwerte, um potenziell gefährliche Insulinabgaben zu verhindern. Um sicherzustellen, dass Benutzer das System korrekt konfigurieren, schlägt die Benutzergemeinschaft defensive Einstellungen vor und empfiehlt, das System ohne dynamische Funktionen zu starten. Im Laufe mehrerer Wochen können Sie schrittweise zu dynamischem iAPS und aggressiveren Einstellungen übergehen. 

Erfahrene iAPS-Benutzer empfehlen, die Auto-ISF-Funktion erst dann zu aktivieren, wenn Sie mindestens drei Monate Erfahrung mit dynamischem iAPS haben und täglich konsistent stabile Ergebnisse erzielen. 

### 2.2 Anpassen

In iAPS haben Sie die Möglichkeit, verschiedene Parameter flexibel anzupassen, um Ihre Behandlung individuell zu gestalten.

- Sie können einen Zielwert für den Blutzucker pro 30-Minuten-Zeitblock zwischen 72 und 180 mg/dl (oder 4 und 10 mmol/l) festlegen. Internationale Richtlinien empfehlen, mit einem Zielwert von 110 bis 120 mg/dl (oder 6 bis 6,5 mmol/l) zu beginnen. Viele Anwender entscheiden sich für einen Zielwert von 100 mg/dl (oder 6 mmol/l) während des Tages und einen noch niedrigeren Wert während der Nacht – beispielsweise 90 mg/dl (oder 5 mmol/l). Dies kann in Betracht gezogen werden, wenn dadurch keine signifikante Hypoglykämie verursacht wird. 

- Mit iAPS können Sie verschiedene Basalinsulinprofile entsprechend Ihren individuellen Bedürfnissen einstellen. Das Standardprofil wird als „Normales Profil“ bezeichnet. Sie können Varianten dieses „Normalen Profils“ mit unterschiedlichen Prozentsätzen für die Insulinabgabe, Zielglukosewerte, SMB und dynamischen Funktionen speichern. Die erstellten alternativen Profile können dauerhaft oder mit einer bestimmten Dauer (z. B. für geplante sportliche Aktivitäten) angelegt werden.

Kohlenhydratverhältnis, Insulinsensitivität und Wirkungsdauer des Insulins können entsprechend Ihren individuellen Anforderungen angepasst werden.

- Die Wirkungsdauer von Insulin in Open-Source-Closed-Loop-Systemen ist aufgrund der Berücksichtigung des Long-Tail-Effekts von Insulin in der Regel länger als bei herkömmlichen Insulinmodellen. Die meisten Anwender bevorzugen eine Wirkungsdauer von 6 bis 7 Stunden. Wenn Sie eine längere Wirkungsdauer benötigen, überprüfen Sie Ihre ISF-Einstellungen, da diese möglicherweise zu aggressiv sind. Im Allgemeinen unterscheidet sich die tatsächliche Wirkungsdauer von Insulin zwischen den Anwendern nicht wesentlich.

- Mit iAPS können Sie die Art des Insulins auswählen, das Sie verwenden. Sie können zwischen Optionen wie Apidra, Humalog, Novorapid oder NovoLog, Fiasp und Lyumjev wählen. Je nach ausgewähltem Insulintyp stellt iAPS ein entsprechendes Profil bereit. Darüber hinaus haben Sie die Möglichkeit, Ihre Insulinkurve zu ändern oder eine benutzerdefinierte Insulin-Spitzenzeit festzulegen.

Innerhalb von iAPS gibt es zahlreiche weitere einstellbare Parameter, von denen wir uns mit den wichtigsten befassen werden: SMB-Optionen, empfohlener Bolusprozentsatz, Autosens-Optionen, dynamische Funktionen, Abgabegrenzen und Autotune.

- Wenn Sie mit der Verwendung von iAPS im „geschlossenen Regelkreis“ beginnen, wird empfohlen, Supermikroboli nur nach dem Verzehr von Kohlenhydraten zu verwenden. Wenn dies für Sie gut funktioniert, können Sie SMB auch zu anderen Zeiten aktivieren. Sie können die SMBs mehr oder weniger aggressiv gestalten, indem Sie den maximalen Delta-BG-Schwellenwert, die maximale SMB-Basalminuten, das SMB-Abgabeverhältnis und das SMB-Intervall anpassen. Wenn Sie zusätzlich die UAM-Funktion aktivieren, reagieren die SMBs schneller auf schnelle Glukoseveränderungen, um unangekündigte Mahlzeiten auszugleichen.

- In iAPS können Sie die vom Bolusrechner vorgeschlagene Insulinmenge ändern, indem Sie den empfohlenen Bolusprozentsatz anpassen. iAPS berechnet zunächst eine Insulindosis auf Basis des integrierten Bolusrechners, die dann mit Ihrem „empfohlenen Bolusprozentsatz“ multipliziert wird, um Ihre vorgeschlagene Insulindosis anzuzeigen. iAPS gibt das verbleibende Insulin über SMBs ab, sobald der Blutzucker zu steigen beginnt. 

- iAPS passt Ihre Insulinsensitivität automatisch anhand einer Autosens-Funktion an. Sie können Autosens aktivieren, um auch Ihren Zielglukosewert anzupassen. Sie können den maximalen und minimalen Prozentsatz festlegen, um den Ihr ISF angepasst werden kann. Außerdem können Sie Autosens erlauben, Ihren ISF anzupassen, wenn Sie ein temporäres Profil einrichten.

- Die dynamischen Funktionen, die aktiviert werden können, sind „Dynamic ISF” und „Dynamic Carb Ratio”. Die Intensität der dynamischen ISF kann angepasst werden, indem die maximalen und minimalen Autosens-Werte, das Profil-ISF, der Anpassungsfaktor, der gewichtete Durchschnitt der gesamten täglichen Insulindosis der letzten 24 Stunden im Vergleich zu den letzten zwei Wochen geändert und die Sigmoid-Funktion aktiviert werden. 

- Darüber hinaus gibt es in iAPS Lieferbeschränkungen, die je nach Alter und Typ des Benutzers innerhalb eines sicheren Bereichs angepasst werden können. 

- In den Pumpeneinstellungen können Sie Ihre maximale Basalrate, Ihren maximalen Bolus und Ihre maximale Kohlenhydratmenge festlegen. Für Erwachsene wird empfohlen, die maximale Basalrate auf das 3- bis 5-Fache  der höchsten Basalrate einzustellen.

- In den OpenAPS-Einstellungen können Sie Ihre maximale Insulin- und Kohlenhydratmenge festlegen. Die maximale Insulinmenge bezieht sich auf die maximale kombinierte Menge an Basal- und Bolusinsulin, die gleichzeitig verabreicht werden darf.

- Der maximale tägliche Sicherheitsmultiplikator und der aktuelle Basal-Sicherheitsmultiplikator sind zusätzliche Begrenzungen für die maximale Basalinsulindosis. Im Allgemeinen ist es am besten, diese unverändert zu lassen. Der maximale tägliche Multiplikator ist standardmäßig auf 3 eingestellt, wodurch maximal das Dreifache der höchsten manuell eingestellten Basalrate möglich ist. Der aktuelle Basalmodus-Multiplikator ist auf 4 eingestellt, wodurch maximal das Vierfache der manuell eingestellten Basalrate möglich ist.

- In den dynamischen Einstellungen finden Sie eine Schwellenwerteinstellung, die als Hypoglykämie-Schwellenwert fungiert. Wenn zu irgendeinem Zeitpunkt ein Absinken des Blutzuckers unter diesen Wert vorhergesagt wird, unterbricht iAPS die Insulinabgabe und wartet, bis seine Algorithmen etwas anderes vorhersagen.

Schließlich können Sie auch die Option „Autotune“ aktivieren. 

- Autotune macht Vorschläge oder Anpassungen zu Ihren Basalraten, ISF und Kohlenhydratverhältnis basierend auf Ihren Daten der letzten 24 Stunden. Es gibt eine Option, mit der Autotune nur die Profil-Basalraten anpassen kann. Autotune wird standardmäßig jede Nacht ausgeführt. Sie können jedoch auch auf „Jetzt ausführen“ tippen, um eine sofortige Berechnung durchzuführen. Die von Autotune vorgenommenen Anpassungen sind gering und betragen maximal 10 % der aktuellen Kohlenhydratverhältnisse und ISF oder 20 % der aktuellen Basalraten pro Durchlauf, summieren sich jedoch über mehrere Tage. 

- Autotune ist so konzipiert, dass es über mehrere Wochen hinweg arbeitet, um die Genauigkeit Ihrer ursprünglich eingestellten Basalraten, ISF und Kohlenhydratverhältnisse langsam zu verbessern. Das Ergebnis der Autotune-Formeln ist ein Verhältnis, das dem von Autosens ähnelt. Dieses Verhältnis wird ebenfalls durch die Autosens-Maximal- und Minimalpräferenzen begrenzt.

- Beachten Sie, dass Autotune feste Werte für das Kohlenhydratverhältnis und die Insulinsensitivität erfordert. Daher ist es bei Verwendung der vollständigen dynamischen Einstellungen in iAPS nicht wirksam, und es wird nicht empfohlen, Autotune dauerhaft zu aktivieren, wenn iAPS dynamische ISF und dynamisches Kohlenhydratverhältnis verwendet.

- Autotune funktioniert möglicherweise auch nicht, wenn Nightscout zusätzliche Sicherheitsmaßnahmen wie ein Token verwendet.

Beachten Sie, dass alle Einstellungen und Parameter in Absprache mit Ihrem Arzt unter Berücksichtigung Ihrer individuellen Bedürfnisse und medizinischen Anweisungen angepasst werden sollten. Die Aktivierung von Auto-ISF erfordert zusätzliche medizinische Beratung.  

### 2.3 Zurücksetzen

Wenn bei iAPS länger als 15 Minuten keine Verbindung zum Sensor oder zur Pumpe besteht, wechselt das System in den manuellen Modus.

Wenn die Verbindung unterbrochen wird, schaltet die Pumpe zunächst auf die zuletzt eingestellte Basalrate um. Nach maximal 120 Minuten wechselt sie in den manuellen Modus. 

Im manuellen Modus wird die Basalinsulinabgabe auf die voreingestellte Basalrate ohne Suspend-before-Low-Funktion eingestellt. 

Sobald die Verbindung zur Pumpe oder zum Sensor wiederhergestellt ist, kehrt das System automatisch in den Auto-Modus zurück, der in iAPS als Closed Loop bezeichnet wird. 

Es ist anzumerken, dass sich der Begriff „Open-Loop” in iAPS nicht auf den manuellen Modus bezieht. Stattdessen bedeutet der Open-Loop-Modus, dass temporäre Basalraten nur als Benachrichtigungen angezeigt werden und manuell eingestellt werden können. Dieser Open-Loop-Modus wird für Benutzer empfohlen, die iAPS noch nicht kennen und zunächst beobachten möchten, wie der Algorithmus funktioniert, bevor sie sich vollständig darauf verlassen. 

### 2.4 Aufklären

Eine angemessene Aufklärung ist bei der Einführung eines automatisierten Insulinabgabesystems von entscheidender Bedeutung. Allgemeine Informationen zur Aufklärung finden Sie im allgemeinen Modul. 

Die behandelten allgemeinen Bildungspunkte waren:

- Weniger Kohlenhydrate zur Korrektur einer Hypoglykämie verwenden.

- Berücksichtigung von Problemen mit dem Infusionsset, wenn der Blutzuckerspiegel ohne ersichtlichen Grund hoch bleibt.

- Vertrauen Sie dem automatisierten Insulinabgabesystem und vermeiden Sie unnötige manuelle Eingriffe.

- Die Mahlzeitboli 15 Minuten vor den Mahlzeiten verabreichen.

- Verwenden Sie den Trainingsmodus 1 bis 2 Stunden vor der Aktivität.

- Unterbrechung der Insulinabgabe, wenn die Pumpe länger als 15 Minuten nicht angeschlossen ist.

- Auf Alarme reagieren und auf automatische Updates auf Mobiltelefonen achten.

- Suche nach Unterstützung durch Gleichgesinnte für Ratschläge und Erfahrungsaustausch.

iAPS ist ein leistungsstarkes Tool zur Behandlung von Diabetes, aber es ist wichtig zu bedenken, dass es sich nicht um ein vollautomatisches System handelt, das man einfach „einmal einstellen und dann vergessen“ kann. Es erfordert eine aktive Überwachung und ein Verständnis seiner Funktionsweise. Hier sind einige zusätzliche Informationen speziell zur Verwendung von iAPS:

- Aktive Überwachung: iAPS steuert Ihre Insulinabgabe, daher ist es wichtig, das System genau zu beobachten und seine Funktionsweise zu verstehen. Achten Sie auf mögliche Fehler oder unerwartete Verhaltensweisen und lernen Sie, die Aktionen des Systems zu interpretieren.

- Telefonnutzung: Nach dem Koppeln kann das Telefon die Pumpe anweisen, verschiedene Aktionen auszuführen. Ihr Telefon mit iAPS ist als medizinisches Gerät zu betrachten und entsprechend zu behandeln. Vermeiden Sie die Installation unnötiger Apps oder Spiele, die Malware einschleusen und möglicherweise den Betrieb des Systems beeinträchtigen könnten.

- Sicherheitsmaßnahmen: Installieren Sie alle von Apple bereitgestellten Sicherheitsupdates, um Ihr Gerät zu schützen. Dies hilft, potenzielle Sicherheitslücken zu schließen. Aktivieren Sie in den Software-Update-Einstellungen Ihres iPhones nicht die Optionen „Automatische Updates“ oder „Beta-Updates“. Überprüfen Sie vor dem Upgrade Ihres iPhone-Betriebssystems zunächst in der iAPS-Community, ob eine bestimmte iOS-Version unterstützt wird. 

- Nähe zu Pumpe und CGM: Bewahren Sie Ihr Mobiltelefon in unmittelbarer Nähe Ihrer Insulinpumpe und Ihres CGM auf. Es sollte sich innerhalb der empfohlenen Entfernung befinden (in der Regel innerhalb von 5 Metern oder 15 Fuß für das CGM), um eine zuverlässige Verbindung aufrechtzuerhalten. 

- Passwörter und Backups: Notieren Sie sich alle verwendeten Passwörter und speichern Sie ein Backup Ihrer App in iCloud. Durch regelmäßiges Exportieren Ihrer Einstellungen in iCloud vereinfachen Sie den Neuinstallationsprozess und verhindern, dass Ihre personalisierten Parameter zurückgesetzt werden.

- Ersatz-Mobiltelefon: Es ist ratsam, ein Ersatz-Mobiltelefon für Notfälle bereitzuhalten. So haben Sie ein Ersatzgerät, falls bei Ihrem Haupttelefon technische Probleme auftreten sollten.

- Eine spezielle Zusatzfunktion namens „Sharing“ wurde zu iAPS hinzugefügt, um Ihre persönlichen Einstellungen zu schützen, beispielsweise alle dynamischen Verhaltensweisen sowie Ihre ISF, Ihr Kohlenhydratverhältnis, Ihre Glukosezielwerte, Profile usw.  So können Sie die Einstellungen bei einer Neuinstallation oder bei einem Wechsel zu einem anderen Gerät bei Bedarf wiederherstellen.

- Überprüfen Sie zunächst die Grundeinstellungen: Es wird empfohlen, iAPS zunächst im „Open Loop“-Modus zu starten, um alle Grundeinstellungen wie Basalinsulinsatz, Kohlenhydratverhältnis und Insulinsensitivität zu konfigurieren und zu überprüfen. 

- Die Ergebnisse des iAPS-Systems hängen weitgehend von der Richtigkeit dieser Grundeinstellungen ab, daher müssen diese relativ genau sein. 

- Erhöhen Sie anschließend langsam den Wert für „maximale Insulinmenge im Körper“, damit iAPS die Insulindosis automatisch dosieren kann. Dieser Wert ist standardmäßig auf 0 eingestellt und kann langsam auf die Summe Ihres durchschnittlichen Mahlzeitenbolus plus das Dreifache Ihrer höchsten Basalrate erhöht werden.

- Als Nächstes können Sie Supermicroboli aktivieren und den maximalen Delta-BG-Schwellenwert SMB von der Standardeinstellung 0,2 auf 0,3 ändern, damit iAPS SMB verwenden kann, wenn Ihr Blutzucker schnell ansteigt.

- Erweiterte Einstellungen: Verwenden Sie erweiterte Einstellungen wie die Funktion „Unangekündigte Mahlzeit“, „Max. SMB-Basalminuten“, „Autotune“, „Dynamische ISF“ und „Dynamisches Kohlenhydratverhältnis“ erst, wenn Sie die Grundlagen gut verstanden haben und eine stabile Blutzuckerkontrolle erreicht haben. Beachten Sie, dass diese Funktionen möglicherweise nicht bei allen Personen optimal funktionieren. 

- Zugriff für Gesundheitsdienstleister: Stellen Sie sicher, dass Ihr Gesundheitsdienstleister Zugriff auf Ihre von Nightscout generierten Berichte hat. So bleibt er über Ihr Diabetesmanagement auf dem Laufenden und kann während Ihrer Arzttermine fundierte Entscheidungen treffen.

- Beherrschen Sie die Verwendung der Insulinpumpe und des Sensors: Stellen Sie sicher, dass Sie auch in der Lage sind, Ihre Insulinpumpe und Ihren Sensor richtig zu verwenden. 

Wenn Sie diese Richtlinien befolgen und iAPS proaktiv nutzen, können Sie die Wirksamkeit des Systems optimieren und eine sichere und zuverlässige automatisierte Insulinabgabe gewährleisten.

### 2.5 Sensor 

iAPS kann mit den Dexcom-Sensoren G5, G6, G7, Dexcom One Plus, den europäischen FreeStyle Libre 2- und Libre 2 Plus-Sensoren sowie den Medtronic Enlite-Sensoren über ältere Medtronic-Pumpen verbunden werden. 

Da iAPS direkt mit Dexcom G5, G6 und den europäischen Sensoren FreeStyle Libre 2 und Libre 2 Plus verbunden werden kann, wird die Dexcom- oder LibreLink-App in diesen Fällen nur zum Starten eines neuen Sensors benötigt. 

Für Dexcom G7 und One+ müssen Sie die zugehörige Dexcom-App auf Ihrem iPhone ausführen, damit iAPS Ihren Glukosewert abrufen kann.  Es wird empfohlen, die Dexcom-App für Bluetooth-Konnektivitätsalarme zu verwenden.  

iAPS akzeptiert auch zusätzliche Open-Source-Sensor-Apps wie Glucose Direct oder xDrip4iOS. Diese Apps können zur Übertragung von Sensordaten an iAPS verwendet werden, obwohl die nativen Verbindungen zu CGM stabiler sind. Einige Nutzer entscheiden sich für diese Open-Source-Apps, um bessere Alarme und eine bessere Verbindung zu anderen Geräten zu erhalten.

In einem automatisierten Insulinabgabesystem sind kontinuierliche und genaue Sensorwerte für eine korrekte Insulindosierung unerlässlich. Wenn Ihr Sensor-Blutzuckerwert unregelmäßig oder verrauscht ist, kann dies zu einer falschen Insulindosierung führen, was hohe oder niedrige Blutzuckerwerte zur Folge hat. In solchen Fällen ist es wichtig, den Auto-Modus zu deaktivieren, bis das Problem behoben ist. Das Problem kann mit der Konfiguration des Glukosesensors oder mit Problemen mit dem Sensor oder der Einstichstelle zusammenhängen. Falls erforderlich, muss der Glukosesensor möglicherweise ausgetauscht werden, um das Problem zu beheben. 

Wenn Sie unruhige oder verrauschte Sensorwerte feststellen, können Sie versuchen, die Funktion „Glättung des Glukosewerts” über die Einstellungen zu aktivieren.

Wenn Ihr Sensor keine Zahl oder keinen Pfeil anzeigt oder Ihre Messwerte nicht mit Ihren Symptomen übereinstimmen, verwenden Sie Ihr Messgerät, um Entscheidungen zur Diabetesbehandlung zu treffen. Im Zweifelsfall holen Sie Ihr Messgerät heraus.

Wenn Sie einen erheblichen Unterschied zwischen Ihrem Sensor-Glukosewert und dem Wert aus der Fingerpunktion feststellen, obwohl Sie einen stabilen Glukosewert im Normbereich haben, können Sie versuchen, Ihren Sensor zu kalibrieren. Dies können Sie über die iAPS-Einstellungen, über das CGM-Menü oder direkt in der Sensor-App tun. 

### 2.6 Teilen von Daten

In iAPS ist die Weitergabe von Glukosedaten an Gesundheitsdienstleister und Familienangehörige über Nightscout, Apple Health und über Dexcom Share oder LibreView möglich. Die Weitergabe von Glukose- und Insulindaten ist nur über Nightscout und Tidepool möglich, wobei Nightscout die bevorzugte Option ist, da Tidepool manuelle Uploads erfordert, die recht zeitaufwändig sind.

Um Nightscout nutzen zu können, müssen Sie eine persönliche Nightscout-Website einrichten. iAPS kann die Daten an die Nightscout-Website senden, sodass Ihr Gesundheitsdienstleister in Echtzeit auf Ihre Berichte zugreifen und diese überprüfen kann. 

Pflegekräfte können auf die Daten auf der persönlichen Nightscout-Website zugreifen, idealerweise mit einem Token. So können sie Ihre Insulin- und Glukosewerte einsehen und verfolgen und bleiben über Ihr Diabetesmanagement auf dem Laufenden. 

Pflegekräfte können sogar einen Insulinbolus verabreichen, Kohlenhydrate eingeben und das Insulinprofil aus der Ferne über die Nightscout-Website oder eine App wie Nightscout X oder Loop Follow ändern. Um die Fernbetreuung nutzen zu können, muss Nightscout für die Verwendung von Fernbefehlen eingerichtet und die Fernbetreuung in der iAPS-App aktiviert sein.

In den Einstellungen des iAPS Bolus Calculator können iOS-Bolus-Shortcuts mit einem Maximalwert über „iOS Shortcuts“ aktiviert werden. Dies könnte auch Eltern dabei helfen, ihre kleinen Kinder aus der Ferne zu unterstützen.

Benutzer können Berichte von Nightscout herunterladen oder Tools wie Nightscout Reporter verwenden, um umfassende Berichte zu erstellen, die mit Gesundheitsdienstleistern geteilt werden können, um sie einer eingehenden Analyse und Bewertung zu unterziehen. 

Durch die Nutzung dieser Sharing-Funktionen können iAPS-Benutzer eine effektive Kommunikation und Zusammenarbeit mit ihrem Gesundheitsteam und ihren Angehörigen fördern und so ein unterstützendes und informiertes Umfeld für das Diabetesmanagement schaffen.

### 2.7 Indikationen

iAPS ist eine Open-Source-App, die keine offiziellen Indikationen hat, die von der FDA oder den europäischen Behörden zugelassen sind. Sie kann mit allen schnell wirkenden Insulinanaloga verwendet werden.

Die iAPS-App kann nicht aus App-Stores heruntergeladen werden. Benutzer müssen die App auf eigenes Risiko selbst erstellen. Die Einrichtung des Systems erfordert Entschlossenheit und ein wenig technisches Wissen. Wenn Sie zu Beginn noch nicht über das technische Know-how verfügen, werden Sie es am Ende haben. 

Alle erforderlichen Informationen finden Sie in der online verfügbaren iAPS-Dokumentation und bei anderen, die dies bereits getan haben – Unterstützung erhalten Sie über die iAPS-Facebook-Gruppe oder andere Foren wie Discord. 

Discord wird hauptsächlich für Themen rund um Entwicklung und Build verwendet, während Facebook eher für die Hilfe für Endbenutzer genutzt wird. Beide können parallel verwendet werden, aber bitte wiederholen Sie ein Problem oder Thema nicht gleichzeitig in beiden Umgebungen. 

Sowohl Facebook als auch Discord sind sehr empfehlenswerte Plattformen für den interaktiven Austausch zwischen iAPS- und Nightscout-Nutzern, Eltern und Entwicklern. Dort wird eine Vielzahl von Themen behandelt, von Fragen von Erstnutzern bis hin zu technisch anspruchsvolleren Diskussionen über die Funktionsweise von iAPS und den OpenAPS-Algorithmus. Die Hauptsprache ist Englisch.

Viele Menschen haben iAPS erfolgreich eingerichtet und nutzen es nun völlig sicher, aber es ist unerlässlich, dass iAPS-Nutzer:

- Verstehen, wie ihre Insulinpumpe und ihr Glukosesensor funktionieren.

- Passen ihren individuellen Dosierungsalgorithmus mit Hilfe ihres Diabetes-Teams an.

- Warten und überwachen das System, um sicherzustellen, dass es ordnungsgemäß funktioniert.

- Entwickeln das System selbst, damit sie dessen Funktionsweise genau verstehen, oder verlassen sich auf eine vertrauenswürdige Quelle, um die iAPS-App von Testflight herunterzuladen und zu verwenden. Testflight-Apps haben eine Gültigkeit von 90 Tagen, da diese iOS-Umgebung von Apple für das Testen neuer Apps unterstützt wird. 

Um iAPS nutzen zu können, benötigen Sie ein kompatibles iPhone mit iOS 16 oder neuer. Die Mindestanforderungen für Ihre Geräte finden Sie in der iAPS-Dokumentation. 

Für die Erstellung benötigen Sie eine jährlich verlängerbare Apple Developer-Lizenz, die 99 US-Dollar pro Jahr kostet. Sobald diese Lizenz aktiviert ist, können Sie den Erstellungsprozess auf zwei verschiedene Arten starten. 

- Sie können die Vorgehensweise „iAPS mit Skript erstellen“ befolgen, indem Sie einen Mac-Computer mit Xcode verwenden iAPS erstellen. Bei dieser Methode müssen Sie zunächst Ihr iPhone und gegebenenfalls Ihre Apple Watch in den Entwicklermodus versetzen. Auf Ihrem Gerät können Sie dies über „Einstellungen“ und „Datenschutz & Sicherheit“ aktivieren.

- Oder Sie können die Vorgehensweise „Build iAPS with GitHub” befolgen, die auch als „Browser-Build” bezeichnet wird, da Sie hierfür jeden beliebigen Computer verwenden können (iAPS Browser-Build). Nach Abschluss dieses Vorgangs können Sie die iAPS-App über Testflight auf Ihr iPhone herunterladen. Der Hauptvorteil dieser Methode besteht darin, dass sie eine einfachere Methode zum Erstellen und Aktualisieren Ihrer iAPS-App darstellt.

Einige Personen entwickeln die iAPS-App nicht selbst, sondern werden über eine TestFlight-Einladung zur Nutzung eingeladen. Einige medizinische Fachkräfte haben möglicherweise kein Problem damit, die App weiterzugeben. Wenn Sie die App von Ihrer medizinischen Fachkraft erhalten, benötigen Sie keine Apple-Entwicklerlizenz.

Möglicherweise finden Sie in der iAPS-Support-Community auch andere Benutzer, die bereit sind, ihre TestFlight-Build zu teilen.

### 2.8 Software-Updates

Regelmäßige Software-Updates sind entscheidend für die Aufrechterhaltung der optimalen Leistung und den Zugriff auf die neuesten Funktionen von iAPS. Das iAPS-Team veröffentlicht regelmäßig neue Versionen. Diese Updates enthalten häufig Fehlerbehebungen und Verbesserungen, um die Funktionalität des Systems zu optimieren. 

Die Version von iAPS wird oben auf dem Einstellungsbildschirm und unterhalb der verwendeten Entwicklungszweigstelle (Branch) angegeben. Wenn es eine neuere „Hauptversion“ gibt, wird diese unterhalb der Zeile „Branch“ angegeben, um darauf hinzuweisen, dass „neuere“ Versionen verfügbar sind.  

Alle drei Monate müssen Sie Ihre iAPS-App aktualisieren. Um iAPS zu aktualisieren, gehen Sie wie folgt vor:

- Es empfiehlt sich, die Einstellungen Ihres iPhones auf iCloud zu aktualisieren. Auf diese Weise werden alle Ihre Einstellungen des iAPS auf iCloud gesichert. Sie können Ihr iPhone über die Einstellungen sichern.

- Behalten Sie beim Bauen die gleichen Beschriftungsschlüssel wie bei der vorherigen Installation bei.

- Wenn Sie die Methode „Build iAPS with script” verwenden, aktualisieren Sie den Code mit Xcode auf die neue Version, während Ihr iPhone und Ihre Apple Watch verbunden und mit Strom versorgt sind.

- Bei der Methode „Browser-Build“ muss die neue Version nach erfolgreicher Ausführung des Build-Prozesses über einen Testflight-Download installiert werden.

Wenn Sie auf Probleme stoßen, bleiben Sie ruhig und suchen Sie Unterstützung in der iAPS-Community und in der Dokumentation. Denken Sie daran, dass die Fehlerbehebung ein normaler Bestandteil der Softwarenutzung ist und Sie mit etwas Geduld alle auftretenden Herausforderungen meistern können.

Zusammenfassend lässt sich sagen, dass es für eine optimale Diabetesbehandlung entscheidend ist, mit iAPS stets auf dem Laufenden zu bleiben und proaktiv zu handeln. Indem Sie Software-Updates installieren, Pflegehinweise befolgen und Probleme umgehend beheben, können Sie eine reibungslose und effektive Nutzung gewährleisten. Legen Sie Wert auf Sicherheit, führen Sie genaue Aufzeichnungen und nutzen Sie die verfügbaren Ressourcen zur Unterstützung. Nutzen Sie die Möglichkeiten, die iAPS bietet, um Ihre Gesundheit und Ihr Wohlbefinden zu verbessern.
