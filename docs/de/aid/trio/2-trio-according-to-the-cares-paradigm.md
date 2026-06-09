<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q9iReuRuhE1loCq_DxJYhHf -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_HIER" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. Trio nach dem CARES-Paradigma</u>**

In diesem Video behandeln wir Trio gemäß dem CARES-Paradigma. 

Wir werden besprechen, wie Trio die automatisierte Insulinabgabe berechnet und anpasst, wann es wieder in den manuellen Modus zurückschaltet, konkrete Schulungstipps und Sensorprobleme, und wie es Daten teilt. Danach gehen wir auf die Trio-Indikationen und Software-Updates ein. Los geht's!

### 2.1) Trio nach dem CARES-Paradigma 

#1 Berechnen 

In Trio passt der Standardalgorithmus nur das Basalinsulin an. Die voreingestellte Basalinsulinrate wird auf Grundlage der vorhergesagten Glukosewerte der nächsten 5 bis 9 Stunden angepasst. Hier eine Übersicht wie Trio funktioniert:

Trio kombiniert verschiedene Blutzucker- bzw. "BG"-Vorhersagen, um zu berechnen, wie der Glukosewert des Nutzers voraussichtlich am Ende der vollständigen Wirkungsdauer des aktuell verabreichten Insulins (Duration of Insulin Action, DIA) sein wird: 

- Trio berechnet einen KH-basiert vorhergesagten BG, also eine Vorhersage auf Basis der an Bord befindlichen Kohlenhydrate, 

- einen insulinbasiert vorhergesagten BG, der auf dem an Bord befindlichen Insulin basiert, 

- einen UnAnnounced-Meal-basiert vorhergesagten BG, 

- also eine Vorhersage für den Fall nicht angekündigter Kohlenhydrataufnahme oder anderer Bedingungen, die zu einer unerwarteten Veränderung des Insulinbedarfs führen, 

- und einen Zero-Temp-basiert vorhergesagten BG, das Worst-Case-Szenario, falls plötzlich kein Insulin mehr verabreicht wird und verbleibende, eingetragene Kohlenhydrate nicht mehr absorbiert werden.

- Trio berücksichtigt alle Fehler in den Vorhersagen, denn die Eventual-BZ-Prognose wird anhand der Abweichung zwischen dem aktuellen Glukosewert und dem vorhergesagten Glukosewert angepasst, auch bekannt als der Einfluss auf den Blutzucker. Der Algorithmus berücksichtigt außerdem den Glukosetrend, indem er das Delta, also die Differenz zwischen der aktuellen und der früheren Glukämie, berechnet. Und er berücksichtigt auch die kurzfristige und langfristige Glukose-Dynamik, also die Veränderung zwischen dem aktuellen Wert und dem Glukosewert von vor 15 bzw. 40 Minuten.

- Der Insulinbedarf oder InsulReq wird berechnet, indem der Zielblutzucker vom minimal vorhergesagten Blutzucker abgezogen wird und diese Differenz durch die Insulinsensitivität bzw. den ISF geteilt wird. Dieser Insulinbedarf bestimmt, ob das manuell voreingestellte Basalinsulin erhöht oder gesenkt wird.

- Wenn eine Hypoglykämie vorhergesagt wird, wird die Basalinsulinabgabe gestoppt, und es können schnell wirksame Kohlenhydrate empfohlen werden. Diese Mindestsicherheitsgrenze wird durch den Zielglukosewert bestimmt, kann aber auf bis zu 120 mg/dl oder 6,7 mmol/l überschrieben werden.

Zusammenfassend wird die Insulinabgabe, einschließlich der Basalrate, je nach berechnetem Insulinbedarf erhöht oder gesenkt. In der App wird das als temporäre bzw. Temp-Basalrate mit einer festgelegten Insulinrate und Dauer oder als Mikrobolus angezeigt, und diese Temp-Basalraten werden alle 5 Minuten neu berechnet. Eine neue Berechnung von Trio wird auch als Loop-Zyklus bezeichnet.

In Trio gibt es die Möglichkeit, die berechnete erforderliche Insulinabgabe entweder als Super-Mikrobolus oder als klassischen temporären Basalwert abzugeben. Bei einer Abgabe als Mikrobolus wird dieselbe Insulindosis schneller verabreicht, gefolgt von einer vorübergehenden Pause oder Reduktion der Basalinsulinabgabe. Wie diese Super-Mikroboli bzw. SMBs auf Basis der temporären Basalwerte berechnet werden, kann innerhalb vordefinierter Sicherheitseinstellungen angepasst werden.

Trio nutzt außerdem eine Autosens-Funktion, die die Insulinabgabe erhöht oder verringert, basierend auf einem Vergleich der Insulinsensitivität des Nutzers in den letzten 8 und 24 Stunden.

- Dabei wird ein Prozentsatz berechnet, der widerspiegelt, wie stark sich die Insulinsensitivität in den letzten Stunden von der aktuell eingestellten Sensitivität unterscheidet, und dieser Prozentsatz wird genutzt, um Ihre Insulinsensitivität und die Basalinsulinrate anzupassen. 

- Die Autosens-Funktion kann auch auf den Zielwert angewendet werden und passt ihn anhand des berechneten Sensitivitätsverhältnisses an. 

- Das maximale und minimale Autosens-Verhältnis sind auf 120 % bzw. 70 % festgelegt. Sie bestimmen die maximalen und minimalen Anpassungsprozentsätze auf Basis der Autosens-Funktion. Das bedeutet, dass die Werte – und damit die abgegebene Insulinmenge – mit Autosens um nicht mehr als 120% und nicht weniger als 70% angepasst werden können. 

- Wenn Sie die UnAnnounced-Meal-Funktion aktivieren, erkennt der Algorithmus schnelle Glukoseanstiege, die durch Kohlenhydrate, Adrenalin usw. verursacht werden, und versucht, das mit SMBs auszugleichen. Das funktioniert auch umgekehrt: Wenn es einen schnellen Glukoseabfall gibt, kann er SMBs früher stoppen.

Außerdem bietet Trio Dynamic ISF, was eine aggressivere Methode ist, um Ihre Insulinempfindlichkeit anzupassen. 

- Wenn Sie Dynamic ISF aktivieren, ersetzt es die Autosens-Prozentberechnung. 

- Es passt Ihren ISF an, aber auf dynamische Weise, basierend auf deinem aktuellen Glukosewert. Dabei erfolgt eine umgekehrte Anpassung des ISF: Je höher der Glukosewert, desto niedriger der ISF – und umgekehrt. 

- Die Standardformel für Dynamic ISF verwendet eine logarithmische Skala, um das Verhältnis für die ISF-Anpassung zu bestimmen.

– Diese Berechnung nutzt eine Kombination aus dem gesamten täglichen Insulin der letzten 2 Stunden und der letzten 10 Tage, dem aktuellen Glukosewert, und berücksichtigt den verwendeten Insulintyp, um zu bestimmen, wie hoch die aktuelle Insulinsensitivität für diesen Loop-Zyklus ist. Dies gilt als die physiologisch genauere Methode, um die Insulinsensitivität anhand von Glukosewerten zu bestimmen. 

– Logarithmic Dynamic ISF muss beim Aktivieren zunächst manuell eingestellt werden. Der Logarithmic Adjustment Factor sollte bei ungefähr 0,02 pro Ihrer durchschnittlichen täglichen Gesamtdosis Insulin starten. Der Adjustment Factor ist ein sehr individueller Wert und wird bei jeder Person unterschiedlich sein. 

– Die Aggressivität von Logarithmic kann über die Einstellungen „Autosens Maximum“ und „Autosens Minimum“ angepasst werden. Der Logarithmic Adjustment Factor sollte nicht verwendet werden, um die Aggressivität zu ändern.

- Die zweite Option für Dynamic ISF verwendet eine Sigmoid-Formel. 

- Diese Formel ist einfacher und enthält weniger Variablen, ist aber physiologisch weniger genau. Sigmoid nutzt nicht Ihre tägliche Gesamtinsulinmenge, sondern stützt sich ausschließlich darauf, wie weit Ihr aktueller Glukosewert vom Zielwert entfernt ist. Mit Sigmoid verwendet Dynamic ISF den Profil-ISF, wenn Sie Ihren Ziel-Glukosewert erreichen. 

- Die Aggressivität von Sigmoid kann über 3 Einstellungen angepasst werden: Sigmoid-Adjustierungsfaktor, Autosens Maximum und Autosens Minimum. Bei Sigmoid sollte der Adjustierungsfaktor niemals größer als 100 % sein und für die meisten Nutzer bei etwa 50 % liegen. Unter 50 % führt zu einer langsameren Reaktion, über 50 % zu einer schnelleren Reaktion.

- Wenn ein Nutzer seine logarithmischen Einstellungen nicht anpassen kann, ist Sigmoid die empfohlene Option. Sigmoid ist auch eine sehr gute Option für Nutzer mit schnellen Schwankungen der Insulinempfindlichkeit, zum Beispiel Frauen, bei denen es während ihres Menstruationszyklus zu Variationen kommt.

Der Zielglukosewert von Trio kann zwischen 72 und 180 mg/dl oder 4 und 10 mmol/l eingestellt werden.

Trio legt großen Wert auf Sicherheit und integriert verschiedene Sicherheitseinstellungen und -grenzwerte, um eine potenziell gefährliche Insulinabgabe zu verhindern.

Um sicherzustellen, dass Nutzer das System korrekt konfigurieren, schlägt die Nutzer-Community defensivere Einstellungen vor und hat Dynamic ISF für die ersten 7 Tage der Closed-Loop-Nutzung deaktiviert. Im Verlauf von mehreren Wochen können Sie dann schrittweise zu aggressiveren Einstellungen übergehen. 

#2 Anpassen 

In Trio haben Sie die Flexibilität, verschiedene Parameter anzupassen, um Ihre Therapie zu personalisieren. – Sie können pro 30‐Minuten‐Zeitblock einen einzelnen Ziel-Glukosewert zwischen 72 und 180 mg/dl (4 und 10 mmol/l) festlegen.

- Internationale Leitlinien empfehlen, mit einem Zielwert zwischen 110 und 120 mg/dl (oder 6 bis 6,5 mmol/l) zu beginnen. Viele Nutzerinnen und Nutzer entscheiden sich tagsüber für einen Zielwert von 100 mg/dl (oder 5,6 mmol/l) und nachts sogar für einen noch niedrigeren – zum Beispiel 90 mg/dl (oder 5 mmol/l). Das kann in Betracht gezogen werden, wenn dies keine ausgeprägten Hypoglykämien verursacht.

Kohlenhydratfaktor, Insulinsensitivität und die Insulin-Peak-Zeit können je nach Ihren spezifischen Anforderungen angepasst werden.

- Die Wirkdauer von Insulin in Open-Source-Closed-Loop-Systemen ist in der Regel länger als in traditionellen Insulinmodellen, weil dabei der lange Nachlauf der Insulinwirkung berücksichtigt wird und welche Auswirkungen eine Anpassung darauf auf das Insulin-Abklingmodell hätte. Trio verwendet intern eine Insulin-Wirkdauer von 10 Stunden, da die verwendete Formel für das Insulin-Abklingen am ehesten dem von Insulinherstellern berichteten Abklingverlauf entspricht.

- Trio ermöglicht es Ihnen, den Insulintyp auszuwählen, den Sie verwenden. Sie können aus Optionen wie Apidra, Humalog, Novorapid oder NovoLog, Fiasp und Lyumjev wählen. Je nach ausgewähltem Insulintyp stellt Trio ein entsprechendes Profil bereit. Außerdem sollte die Wirkdauer des Insulins zwar nicht angepasst werden, die Insulin-Spitzenzeit kann jedoch von Person zu Person variieren, und diese Einstellung kann bei Bedarf feinjustiert werden.

In Trio gibt es zahlreiche weitere anpassbare Parameter, und wir werden uns mit den wichtigsten befassen: SMB-Optionen, empfohlener Bolus-Prozentsatz, Autosens-Optionen, dynamischer ISF und Abgabelimits.

- Wenn Sie anfangen, Trio im "Closed-Loop" zu verwenden, wird empfohlen, Supermikroboli erst nach der Aufnahme von Kohlenhydraten zu verwenden. Wenn das für Sie gut funktioniert, können Sie SMB auch zu anderen Zeiten aktivieren. Wenn irgendwelche SMB-Optionen aktiviert sind, sollte auch UAM aktiviert sein. Sie können die SMBs aggressiver oder weniger aggressiv machen, indem Sie die Max SMB Basal Minutes anpassen.

- In Trio können Sie ändern, wie viel Insulin Ihnen über den Bolusrechner vorgeschlagen wird, indem Sie den Prozentsatz für den empfohlenen Bolus anpassen. Trio berechnet zunächst anhand des integrierten Bolusrechners eine Insulindosis, die anschließend mit Ihrem "Prozentsatz für den empfohlenen Bolus" multipliziert wird, um Ihre vorgeschlagene Insulindosis anzuzeigen. Trio gibt das verbleibende Insulin über SMBs ab, sobald der Blutzucker zu steigen beginnt. Sie können die Details der Bolusberechnung einsehen, indem Sie auf das "Info-Symbol" neben der Empfehlung tippen.

- Trio passt Ihre Insulinempfindlichkeit automatisch anhand der Autosens-Funktion an. Sie können Autosens aktivieren, damit auch Ihr Ziel-Glukosewert angepasst wird. Sie können den maximalen und minimalen Prozentsatz festlegen, um den Ihr ISF angepasst werden kann. Und Sie können Autosens erlauben, Ihr ISF anzupassen, wenn Sie ein temporäres Ziel festlegen.

- Dynamisches ISF kann über die Dynamischen Einstellungen nach 7 Tagen erfolgreichem Closed Loop aktiviert werden. Wie aggressiv das dynamische ISF eingestellt wird, hängt davon ab, welche Formel verwendet wird. Nachdem der passende Logarithmic Adjustment Factor festgelegt ist, kann das Logarithmic Dynamic ISF mithilfe von Autosens Maximum und/oder Minimum angepasst werden. Das Sigmoid Dynamic ISF kann mithilfe des Sigmoid Adjustment Factor, Autosens Maximum und/oder Autosens Minimum angepasst werden.

- Zusätzlich gibt es in Trio Abgabelimits, die sich je nach Alter und Typ des Nutzers innerhalb eines sicheren Bereichs anpassen lassen.

- Sie können Ihr Maximum an aktivem Insulin, den maximalen Bolus, die maximale Basalrate, die maximale Menge an aktiven Kohlenhydraten und einen minimalen Sicherheitsschwellenwert festlegen. Das Maximum an aktivem Insulin oder IOB ist die Gesamtmenge an Basal- und Bolusinsulin, die gleichzeitig aktiv sein darf. Es dient als Sicherheitslimit dafür, wie viel Insulin Trio zusätzlich zu Ihren geplanten Basalraten abgeben kann. In Trio ist dieser Wert aus Sicherheitsgründen standardmäßig auf 0 gesetzt und muss manuell erhöht werden, bevor eine automatisierte Insulinabgabe erfolgt. Für Erwachsene wird empfohlen, die maximale Basalrate auf das 3- bis 5-Fache der höchsten Basalrate einzustellen.

- Der maximale tägliche Sicherheitsmultiplikator und der aktuelle Basal-Sicherheitsmultiplikator sind zusätzliche Begrenzungen für die maximale Basal-Insulinrate, und am Anfang ist es in der Regel am besten, sie unverändert zu lassen. Der maximale tägliche Multiplikator ist standardmäßig auf 300 % eingestellt und erlaubt maximal das 3-Fache der höchsten manuell eingestellten Basalrate. Der Multiplikator für den aktuellen Basalmodus ist auf 400 % eingestellt und erlaubt maximal das 4-Fache der manuell eingestellten Basalrate. Diese Werte können bei Bedarf sicher auf bis zu 500 % erhöht werden, wenn deine Basalraten im Vergleich zu deinem gesamten Insulinbedarf für Kohlenhydrate niedrig sind.

Denken Sie daran, dass alle Einstellungen und Parameter in Absprache mit Ihrer Ärztin oder Ihrem Arzt angepasst werden sollten, unter Berücksichtigung Ihrer individuellen Bedürfnisse und der medizinischen Vorgaben.

#3 Zurücksetzen 

In Trio wird das System bei fehlender Verbindung zum Sensor oder zur Pumpe von mehr als 15 Minuten in den manuellen Modus zurückkehren. Wenn die Verbindung verloren geht, führt die Pumpe die zuletzt eingestellte temporäre Basalrate weiter aus. Nach maximal 120 Minuten bei temporären Basalraten von null oder 30 Minuten bei erhöhten temporären Basalraten wechselt es in den manuellen Modus. Im manuellen Modus oder im Open-Loop wird die Basalinsulinabgabe auf die voreingestellte Basalrate eingestellt – ohne eine „Suspend-before-low“-Funktion.

Derzeit wird Open Loop für Trio-Nutzer nicht empfohlen.. Wenn Sie Ihre Pumpe im manuellen Modus verwenden möchten, stellen Sie am besten „Maximum Insulin on Board“ (Max IOB) auf 0 und setzen Sie Autosens Maximum und Minimum beide auf 100 %. Dadurch erhalten Sie eine Suspend-vor-niedrig-Funktion ohne Autosens- oder dynamische Funktionen.

Sobald die Verbindung zur Pumpe oder zum Sensor wiederhergestellt ist, setzt das System den Auto-Modus automatisch fort, der in Trio „Closed-Loop“ genannt wird. Nach einem getrennten Sensor sind 2 bis 3 aufeinanderfolgende Messwerte erforderlich, damit Trio den Closed-Loop automatisch wieder aufnimmt.

#4 Wichtige Informationen

Eine angemessene Schulung ist entscheidend, wenn Sie ein automatisiertes Insulinabgabesystem starten. Für allgemeine Schulungsinhalte sehen Sie bitte im allgemeinen Modul nach.

Die behandelten allgemeinen Schulungspunkte waren: 

- Weniger Kohlenhydrate zur Korrektur einer Hypoglykämie verwenden. 

- Bei anhaltend hohen Blutzuckerwerten ohne erkennbaren Grund auch Probleme mit dem Infusionsset in Betracht ziehen. 

- Dem automatisierten Insulinabgabesystem vertrauen und unnötige manuelle Eingriffe vermeiden. 

- Mahlzeitenboli 15 Minuten vor dem Essen abgeben. 

- Den Trainingsmodus 1 bis 2 Stunden vor der Aktivität nutzen. 

- Die Insulinabgabe stoppen, wenn die Pumpe länger als 15 Minuten abgekoppelt ist. 

- Auf Alarme reagieren und auf automatische Updates auf Mobiltelefonen achten. Automatische iOS-Updates sollten deaktiviert werden, da neue iOS-Versionen Trio möglicherweise nicht sofort unterstützen; die Kompatibilität sollte immer zuerst geprüft werden.

- Peer-Support zur Orientierung suchen und Erfahrungen teilen.

Trio ist ein leistungsstarkes Tool zur Diabetesbehandlung, aber es ist wichtig, daran zu denken, dass es kein vollständig automatisiertes System ist, das man "einmal einstellt und dann vergisst". Es erfordert eine aktive Überwachung und ein Verständnis dafür, was es tut. Hier sind einige zusätzliche Lernpunkte speziell zur Nutzung von Trio:

- Trio steuert Ihre Insulinabgabe, daher ist es entscheidend, es genau zu beobachten und zu verstehen, wie es funktioniert. Achten Sie auf mögliche Fehler oder unerwartetes Verhalten und lernen Sie, die Aktionen des Systems richtig zu interpretieren. 

- Sobald gekoppelt, kann das Smartphone die Pumpe anweisen, verschiedene Aktionen auszuführen. Ihr Smartphone mit Trio ist als Medizinprodukt zu betrachten und entsprechend zu handhaben. Vermeiden Sie die Installation unnötiger Apps oder Spiele, die Schadsoftware einschleusen und möglicherweise die Funktion des Systems beeinträchtigen könnten. 

- Installieren Sie alle von Apple bereitgestellten Sicherheitsupdates, um Ihr Gerät zu schützen. Das hilft, potenzielle Sicherheitslücken abzusichern. Aktivieren Sie in den Einstellungen für Softwareupdate Ihres iPhones weder "Automatische Updates" noch "Beta-Updates". Prüfen Sie vor dem Upgrade des Betriebssystems Ihres iPhones in der Trio-Community zunächst, ob eine bestimmte iOS-Version unterstützt wird.

- Halten Sie Ihr Mobiltelefon in unmittelbarer Nähe zu Ihrer Insulinpumpe und Ihrem CGM. Es sollte sich innerhalb der empfohlenen Entfernung befinden (beim CGM üblicherweise innerhalb von 5 Metern oder 15 Fuß), um eine zuverlässige Verbindung.. 

- Führen Sie eine Liste aller verwendeten Passwörter und speichern Sie ein Backup Ihrer App in iCloud. Wenn Sie Ihre Einstellungen regelmäßig nach iCloud exportieren, wird die Neuinstallation einfacher und es wird verhindert, dass Ihre personalisierten Parameter zurückgesetzt werden. 

- Es ist ratsam, für Notfälle ein Ersatz-Mobiltelefon mit installierter Trio-App und den CGM-Apps bereitzuhalten. So haben Sie ein Backup-Gerät, falls es bei Ihrem Haupttelefon zu technischen Problemen kommt.

- Es wird empfohlen, den Loop zu schließen und die ersten 7 Tage ohne Zugriff auf dynamische ISF zu nutzen, um alle grundlegenden Einstellungen wie Basalinsulinrate, Kohlenhydratfaktor und Insulinsensitivität zu überprüfen.

- Die Ergebnisse des Trio-Systems hängen stark von der Richtigkeit dieser Grundeinstellungen ab, daher müssen sie ziemlich genau sein.

- Als Nächstes erhöhen Sie langsam „Maximum Insulin on Board“, damit Trio Insulin automatisch dosieren kann. Das ist standardmäßig auf 0 gesetzt und kann schrittweise bis zur Summe aus Ihrem durchschnittlichen Mahlzeitenbolus plus dem 3‐Fachen Ihrer höchsten Basalrate erhöht werden.

- Als Nächstes können Sie mehrere individuelle SMB-Optionen oder „SMBs Always“ aktivieren.

- Nutzen Sie erweiterte Einstellungen wie Max SMB Basal Minutes und Dynamic ISF erst, wenn Sie die Grundlagen gut verstanden und eine stabile Blutzuckerkontrolle erreicht haben. Beachten Sie, dass diese Funktionen möglicherweise nicht bei allen optimal funktionieren.

- Stellen Sie sicher, dass Ihr behandelndes Team Zugriff auf Ihre von Nightscout oder Tidepool erstellten Berichte hat. So bleiben sie über Ihr Diabetes-Management informiert und können bei Ihren Arztterminen fundierte Entscheidungen treffen. Stellen Sie außerdem sicher, dass Sie Ihre Insulinpumpe und Ihren Sensor richtig bedienen können.

- Wenn Sie diese Richtlinien befolgen und bei der Nutzung von Trio proaktiv bleiben, können Sie die Wirksamkeit des Systems optimieren und eine sichere und zuverlässige automatisierte Insulinabgabe gewährleisten.

#5 Sensor 

Trio kann mit den Dexcom-Sensoren G5, G6, G7 und One Plus, den europäischen FreeStyle-Libre-2- und Libre-2-Plus-Sensoren sowie mit Medtronic-Enlite-Sensoren über ältere Medtronic-Pumpen verbunden werden. Da Trio sich direkt mit den europäischen FreeStyle-Libre-2- und Libre-2-Plus-Sensoren verbinden kann, wird die LibreLink-App in diesen Fällen nur benötigt, um einen neuen Sensor zu starten. Für Dexcom-Sensoren müssen Sie die zugehörige Dexcom-App auf Ihrem iPhone laufen lassen, damit Trio Ihren Glukosewert abrufen kann.

Trio akzeptiert auch zusätzliche Open-Source-Sensor-Apps wie Nightscout als CGM oder xDrip4iOS. Diese Apps können genutzt werden, um Sensordaten über eine Internetverbindung an Trio zu übertragen, auch wenn die nativen Verbindungen zum CGM stabiler sind. Manche Menschen entscheiden sich für diese Open-Source-Apps wegen besserer Alarme und der Verbindung zu anderen Geräten.

In einem automatisierten Insulinabgabesystem sind kontinuierliche und genaue Sensorwerte entscheidend für die richtige Insulindosierung. Wenn Ihre Sensor-Glukosewerte sprunghaft oder stark verrauscht sind, kann das zu einer falschen Insulindosierung führen – mit zu hohen oder zu niedrigen Blutzuckerwerten als Folge. In solchen Fällen ist es wichtig, den Auto-Modus zu deaktivieren, bis das Problem behoben ist. Die Ursache kann mit der Konfiguration des Glukosesensors zusammenhängen oder mit Problemen am Sensor selbst bzw. an der Sensorstelle. Falls erforderlich, kann es nötig sein, den Glukosesensor auszutauschen, um das Problem zu beheben.

Wenn Sie sprunghafte oder verrauschte Sensorwerte feststellen, können Sie versuchen, die Funktion "Glättung des Glukosewerts" in den CGM-Geräteeinstellungen zu aktivieren.

Wenn Ihr Sensor weder eine Zahl noch einen Pfeil anzeigt oder Ihre Messwerte nicht zu Ihren Symptomen passen, verwenden Sie Ihr Messgerät, um Entscheidungen zur Diabetesbehandlung zu treffen. Im Zweifel: Holen Sie Ihr Messgerät raus.

Wenn Sie einen deutlichen Unterschied zwischen Ihrem Sensor-Glukosewert und dem Fingerpiksergebnis feststellen, obwohl Ihr Glukosewert stabil und im Zielbereich ist, können Sie versuchen, Ihren Sensor zu kalibrieren. Das geht über die Trio-Einstellungen, über das CGM-Menü oder direkt in der Sensor-App.

#6 Teilen von Daten 

In Trio ist das Teilen von Glukosedaten mit medizinischem Fachpersonal und Familienangehörigen über Nightscout, Tidepool, Apple Health und über Dexcom Share oder LibreView möglich. Das Teilen von Glukose- und Insulindaten ist nur über Nightscout und Tidepool möglich, wobei Nightscout die bevorzugte Option ist. Nightscout ist die einzige Plattform, die vollständige Trio-Daten und Remote-Befehle unterstützt; Tidepool unterstützt keine Remote-Dosierung und erfordert manuelle Uploads.

Um Nightscout zu nutzen, musst du eine persönliche Nightscout-Website einrichten. Trio kann die Daten an die Nightscout-Website senden, sodass dein Behandlungsteam in Echtzeit auf deine Berichte zugreifen und sie einsehen kann.

Betreuende Personen können über die persönliche Nightscout-Website, die Loop Follow App und Nightscout auf die Daten zugreifen. So können sie Ihre Insulin- und Glukosewerte einsehen und nachverfolgen und bleiben bei Ihrem Diabetes-Management auf dem Laufenden. Betreuende Personen können sogar aus der Ferne einen Insulinbolus abgeben, Kohlenhydrate eintragen und das Insulinprofil ändern, über Loop Follow. Damit die Fernbetreuung genutzt werden kann, muss Nightscout so eingerichtet sein, dass es Remote-Befehle verwenden kann, und die Fernbetreuung muss in der Trio-App aktiviert sein.

In den Trio-Einstellungen sind mehrere iOS-Kurzbefehle verfügbar, aber iOS-Bolus-Kurzbefehle müssen durch "Bolusabgabe mit Kurzbefehlen erlauben" aktiviert werden. Das kann Eltern auch dabei helfen, ihre kleinen Kinder aus der Ferne zu unterstützen.

Nutzer können Berichte aus Nightscout und Tidepool herunterladen oder Tools wie Nightscout Reporter verwenden, um umfassende Berichte zu erstellen, die für eine eingehende Analyse und Bewertung mit medizinischen Fachkräften geteilt werden können.

Durch die Nutzung dieser Freigabefunktionen können Trio-Nutzerinnen und -Nutzer eine effektive Kommunikation und Zusammenarbeit mit ihrem Behandlungsteam und ihren Angehörigen ermöglichen und so ein unterstützendes und gut informiertes Umfeld für das Diabetesmanagement schaffen.

### 2.2) Indikationen 

Trio ist eine Open-Source-App, die keine offiziellen, von der FDA oder europäischen Behörden zugelassenen Indikationen hat. Sie kann mit allen schnell wirksamen und ultraschnell wirksamen Insulinanaloga verwendet werden.

Die Trio-App ist in App-Stores nicht zum Download verfügbar. Nutzer sind verpflichtet, die App auf eigenes Risiko selbst zu erstellen. Das Einrichten des Systems erfordert Durchhaltevermögen und die Bereitschaft, Anweisungen zu befolgen und zu lernen. Wenn Sie zu Beginn nicht über das technische Know-how verfügen, werden Sie es am Ende haben.

Alle Informationen, die Sie benötigen, finden Sie in der online verfügbaren Trio-Dokumentation sowie bei anderen, die es bereits gemacht haben – Unterstützung gibt es über die Trio-Facebook-Gruppe oder andere Foren wie Discord. Discord wird hauptsächlich für Entwicklungs- und Build-Themen genutzt, während Facebook eher für Hilfe für Endanwender genutzt wird. Beides kann parallel genutzt werden, aber posten Sie dasselbe Problem oder Thema nicht zeitgleich in beiden Umgebungen. Sowohl Facebook als auch Discord sind sehr empfehlenswerte Plattformen für interaktiven Austausch unter Trio- und Nightscout-Nutzern, Eltern und Entwicklern. Dort wird ein breites Spektrum an Themen abgedeckt – von Fragen neuer Nutzer bis hin zu technisch fortgeschrittenen Diskussionen über die Funktionsweise von Trio und den OpenAPS-Algorithmus. Die Hauptsprache ist Englisch.

Viele Menschen haben Trio erfolgreich aufgebaut und nutzen es inzwischen völlig sicher. Dennoch ist es unerlässlich, dass Trio-Nutzer: 

- verstehen, wie ihre Insulinpumpe und ihr Glukosesensor funktionieren. 

- den individuellen Dosierungsalgorithmus mit Hilfe ihres Diabetes-Teams anpassen. 

- das System warten und überwachen, um sicherzustellen, dass es ordnungsgemäß funktioniert. 

- das System selbst aufbauen, damit sie genau verstehen, wie es funktioniert, oder sich auf eine vertrauenswürdige Quelle verlassen, um die Trio-App über Testflight herunterzuladen und zu nutzen. Testflight-Apps sind 90 Tage gültig, da diese iOS-Umgebung von Apple zum Testen neuer Apps unterstützt wird.

Um Trio zu nutzen, benötigen Sie ein kompatibles iPhone, auf dem iOS 17 oder neuer läuft. Die Mindestanforderungen für Ihre Geräte finden Sie in der Trio-Dokumentation.

Zum Erstellen benötigst du eine jährlich verlängerbare Apple-Developer-Lizenz, die 99 US-Dollar pro Jahr kostet. Sobald diese Lizenz aktiviert ist, kannst du den Build-Prozess auf zwei verschiedene Arten starten.

- Sie können dem Verfahren "Build Trio with Script" folgen und dabei einen Mac-Computer mit einem Xcode-Trio-Build verwenden. Für diese Methode müssen Sie zunächst Ihr iPhone und – falls zutreffend – Ihre Apple Watch in den Entwicklermodus versetzen. Auf Ihrem Gerät können Sie dies über „Einstellungen“ sowie „Datenschutz & Sicherheit“ aktivieren.

- Oder Sie folgen dem Verfahren "Trio mit GitHub erstellen", das auch "Browser-Build" genannt wird, da Sie dafür jeden beliebigen Computer verwenden können. Nach Abschluss dieser Methode können Sie die Trio-App über Testflight auf Ihr iPhone herunterladen. Der Hauptvorteil dieser Methode ist, dass es eine einfachere Methode ist, Ihre Trio-App zu erstellen und zu aktualisieren.

Manche Leute erstellen die Trio-App nicht selbst, sondern werden per TestFlight-Einladung zur Nutzung eingeladen. Manche medizinische Fachkräfte sind möglicherweise bereit, die App weiterzugeben. Wenn Ihre medizinische Fachkraft Ihnen die App zur Verfügung stellt, brauchen Sie keine Apple-Developer-Lizenz.

### 2.3) Software-Updates 

Regelmäßige Software-Updates sind entscheidend, um die optimale Leistung zu erhalten und auf die neuesten Funktionen von Trio zugreifen zu können. Das Trio-Team veröffentlicht in regelmäßigen Abständen neue Versionen. Diese Updates enthalten häufig Fehlerbehebungen und Verbesserungen, um die Funktionalität des Systems zu optimieren. Die Trio-Version wird oben auf dem Einstellungsbildschirm angezeigt. Außerdem werden die neuesten "main"- und "dev"-Versionen genannt, um darauf hinzuweisen, dass "neuere" Version(en) verfügbar sind.

Etwa alle 3 Monate müssen Sie Ihre Trio-App aktualisieren. Um Trio zu aktualisieren, folgen Sie diesen Schritten: 

- Es ist gute Praxis, Ihre iPhone-Einstellungen mit iCloud zu synchronisieren. So werden alle Ihre Trio-Einstellungen in iCloud gesichert. Sie können Ihr iPhone über die Einstellungen sichern.. Achten Sie beim Build darauf, dieselben Signing-Keys wie bei der vorherigen Installation zu verwenden. 

- Wenn Sie die Methode „Build Trio with script“ verwenden, nutzen Sie Xcode, um den Code auf die neue Version zu aktualisieren, während Ihr iPhone und Ihre Apple Watch verbunden und mit Strom versorgt sind. 

- Bei der Methode „Browser build“ muss die neue Version nach erfolgreichem Durchlauf des Build-Prozesses per TestFlight-Download installiert werden.

Wenn Sie auf Probleme stoßen, bleiben Sie ruhig und holen Sie sich Unterstützung aus der Trio-Community und der Dokumentation. Denken Sie daran, dass die Fehlersuche ein normaler Teil der Softwarenutzung ist und Sie mit Geduld jede Herausforderung meistern können, die sich ergibt.

Abschließend ist es entscheidend, mit Trio gut informiert zu bleiben und proaktiv zu handeln, um Ihr Diabetesmanagement zu optimieren. Indem Sie Software-Updates im Blick behalten, die Pflegehinweise befolgen und mögliche Probleme umgehend angehen, sorgen Sie für eine reibungslose und effektive Nutzung. Stellen Sie die Sicherheit an erste Stelle, führen Sie genaue Aufzeichnungen und nutzen Sie die verfügbaren Ressourcen zur Unterstützung. Nutzen Sie die Möglichkeiten, die Trio bietet, um Ihre Gesundheit und Ihr Wohlbefinden zu verbessern.
