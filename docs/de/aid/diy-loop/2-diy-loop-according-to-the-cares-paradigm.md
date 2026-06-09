<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q-seazUyn74Vpq16TVP6GfI -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/8uUHRuJwH6A" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. DIY Loop nach dem CARES-Paradigma</u>**

In diesem Video werden wir DIY Loop nach dem CARES-Bezugsrahmen behandeln.

Wir werden erläutern, wie DIY Loop die automatische Insulinabgabe berechnet und anpasst, wann es in den manuellen Modus zurückkehrt, welche spezifischen Schulungstipps und Sensorprobleme es gibt und wie es Daten austauscht. Danach gehen wir auf die Anzeigen und Software-Updates von DIY Loop ein. Los geht's!

### 2.1 DIY-Loop nach dem CARES-Bezugsrahmen

#### #1 Calculate

DIY Loop passt die voreingestellte Basal-Insulinrate auf der Grundlage von Vorhersagen des Glukosespiegels für die eingestellte Dauer der Insulin-Aktivität an, die standardmäßig auf 6 Stunden eingestellt ist. Diese Vorhersagen werden anhand mehrerer Faktoren berechnet,

- Die Vorhersage “Carbs On Board” schätzt die Auswirkungen der eingenommenen Kohlenhydrate auf den Glukosespiegel anhand eines dynamischen Kohlenhydratabsorptions-Modells ab.

- Die “Insulin On Board”-Vorhersage berücksichtigt die Auswirkung des bereits im Körper befindlichen Insulins auf den zukünftigen Blutzuckerspiegel.

- Die Glukose-Momentum-Vorhersage berücksichtigt die durchschnittliche Änderungsrate des Blutzuckerspiegels zwischen dem aktuellen Messwert und dem Messwert von vor 15 bis 30 Minuten und gibt an, wie schnell der Blutzucker steigt oder fällt.

- Und die “Retrospektive Korrektur-Vorhersage" berücksichtigt die Differenz zwischen vorhergesagtem und tatsächlichem Blutzuckerspiegel während der letzten 30 Minuten und bezieht diese Differenz in die vorhergesagten Werte mit ein.

DIY Loop berechnet den Insulinbedarf, indem es den vorhergesagten Blutzuckerspiegel mit dem Ziel-Blutzuckerspiegel vergleicht und die Differenz durch den Faktor für die Insulin-Empfindlichkeit dividiert. Dieser Insulinbedarf wird verwendet, um die voreingestellte Basal-Insulinrate anzupassen.

In der DIY Loop-App können die Benutzer zwischen "Nur temporäre Basalrate" und "Automatischer Bolus" für ihre Insulindosierungsstrategie wählen.

- Im Modus "Nur temporäre Basalrate" berechnet die App alle 5 Minuten temporäre Basalraten für die nächsten 30 Minuten auf der Grundlage der vorhergesagten Glukosewerte. Dies ermöglicht eine kontinuierliche Anpassung der Basalrate.

- Im automatischen Bolus-Modus berechnet die App alle 5 Minuten automatische Dosisanpassungen.  Wenn die App eine Erhöhung des Insulinbedarfs vorhersagt, wird diese Erhöhung als 40 % des empfohlenen Bolus anstelle einer erhöhten temporären Basaldosis bereitgestellt. Dies gewährleistet eine schnellere Insulinabgabe. 

Manche empfehlen, zunächst mit dem Modus "Nur Basalrate" zu beginnen und zum Modus "Automatischer Bolus" überzugehen, wenn deine Einstellungen getestet sind und du einen stabilen Blutzuckerspiegel hast. So kannst du dich an den DIY Loop und seine Anpassungen der Basalrate, des Kohlenhydrat-Verhältnisses und der Insulin-Empfindlichkeit gewöhnen, bevor du zu einer aggressiveren Insulinabgabe übergehst.

Wenn der Glukosespiegel unter den Glukose-Sicherheitsgrenzwert fällt, wird die Basal-Insulinabgabe unterbrochen. Dieser Sicherheitsgrenzwert kann zwischen 67 und 110 mg/dl oder 3,7 und 6,0 mmol/l eingestellt werden. Wenn vorhergesagt wird, dass der Glukosespiegel in den nächsten 3 Stunden unter diesen Glukose-Sicherheitsgrenzwert fallen wird, empfiehlt DIY Loop kein Basal- oder Bolusinsulin.

Der Glukose-Zielwert, der in DIY Loop als Korrekturbereich bezeichnet wird, kann pro 30-Minuten-Zeitblock angepasst werden. Er kann zwischen 87 und 180 mg/dl oder 4,8 und 10 mmol/l eingestellt werden.

#### #2 Adjust

Im DIY Loop können die Benutzer verschiedene Parameter einstellen, um ihre Insulinabgabe und ihr Blutzuckermanagement zu personalisieren. Hierzu gehören die folgenden Parameter:

- Der Benutzer kann seinen Zielwert oder Korrekturbereich in 30-Minuten-Zeitblöcken einstellen, variierend von 87 bis 180 mg/dl oder 4,8 bis 10 mmol/l.

- Üblicherweise wird er zwischen 100 bis 115 mg/dl oder 5,6 bis 6,3 mmol/l eingestellt.

- Bei der Definition des Korrekturbereichs haben die Benutzer die Möglichkeit, einen einzelnen Zielwert oder einen Bereich zu wählen. Wenn Sie einen Bereich auswählen, wird allgemein empfohlen, einen engen Bereich mit einer Differenz von 5 bis 15 mg/dl oder 0,3 bis 0,8 mmol/l zu wählen.

- Die Basalinsulin-Abgaberate kann in 30-Minuten-Intervallen eingestellt werden.

- Der Benutzer kann das Kohlenhydrat-Verhältnis einstellen, das die Insulinmenge bestimmt, die benötigt wird, um eine bestimmte Menge an aufgenommenen Kohlenhydraten abzudecken.

- Es ist auch eine Einstellung des Insulin-Sensitivitätsfaktors möglich. Dieser Parameter legt fest, um wie viel eine Einheit Insulin den Blutzuckerspiegel senken soll.

- Die Glukose-Sicherheitsgrenze  kann ebenfalls angepasst werden. Dies ist der Mindest-Glukosegehalt, bei dem die Basal-Insulinabgabe gestoppt wird, um eine Hypoglykämie zu verhindern. Er kann zwischen 67 und 110 mg/dl oder 3,7 und 6,0 mmol/l eingestellt werden, und es wird empfohlen, ihn auf 74 bis 80 mg/dl oder 4,2 bis 4,4 mmol/l einzustellen.

- Der “Pre-Meal-Bereich” ist ein optionaler Parameter, der den Zielbereich vor den Mahlzeiten festlegt und wie ein Mahlzeiten-Bolus wirkt, da er eine kleine Menge Insulin bereitstellt, um Glukose-Spitzen nach den Mahlzeiten zu kontrollieren. Dieser Bereich bleibt eine Stunde lang aktiv, bis Kohlenhydrate eingegeben werden oder bis er manuell abgebrochen wird, je nachdem, was zuerst eintritt. Er kann zwischen dem Glukose-Sicherheitslimit und einem Maximalwert von 130 mg/dl oder 7,2 mmol/l eingestellt werden und wird normalerweise zwischen dem Glukose-Sicherheitslimit und 106 mg/dl oder 5,9 mmol/l eingestellt, z. B. bei 80 mg/dl oder 4,4 mmol/l.

- Benutzer können auch Überschreibungen verwenden, um den Korrekturbereich vorübergehend anzupassen oder einen Prozentsatz der Insulinabgabe festzulegen, wodurch die Basalabgabe, die Insulin-Empfindlichkeit und das Kohlenhydrat-Verhältnis entsprechend dem festgelegten Prozentsatz angepasst werden.

Darüber hinaus gibt es bei Verwendung von Omnipod DASH-Pods eine manuelle Option für die temporäre Basalrate, mit der du eine bestimmte temporäre Basalrate einstellen kannst.

Bei der Ersteinrichtung kann der Benutzer zwischen den Modi "Nur temporäre Basalrate" und "Automatischer Bolus" wählen.

Du musst auch die maximale Basalrate einstellen, die in der Regel auf das Vierfache der höchsten eingestellten Basalrate pro Stunde festgelegt wird, sowie eine maximale Bolus-Grenze, die auf dem realistischen Bolus-Bedarf für größere Mahlzeiten basieren sollte.

Darüber hinaus haben die Anwender die Möglichkeit, ein Insulin-Modell zu wählen, das auf die Verwendung von schnell wirkenden oder ultra-schnell wirkenden Insulinen zugeschnitten ist.

#### #3 Revert

DIY Loop kehrt in den manuellen Modus zurück, wenn mehr als 15 Minuten lang keine Verbindung zum Sensor oder zur Pumpe besteht. Dies kann während einer Sensor-Aufwärmung passieren, das Mobiltelefon außerhalb der Reichweite ist oder einen schwachen Akku hat. Wenn der DIY-Loop korrekt läuft, siehst du einen grünen Kreis auf dem Startbildschirm der Loop-App. Dieses Loop-Symbol wird gelb oder rot, wenn der Loop 15 Minuten oder länger keinen Zyklus abgeschlossen hat. Wenn du auf das Loop-Symbol klickst, erfährst du, wann der Loop das letzte Mal beendet wurde, aber du musst dir das Pumpen-Status-Symbol und das Glukose-Status-Symbol ansehen, um weitere Informationen zu erhalten. Zum Beispiel zeigt das Glukose-Symbol 3 Streifen an, wenn die Glukose-Daten älter als 15 Minuten sind, und wenn die Pumpe ein Kommunikationsproblem hat, siehst du das Symbol “Kein Signal".

Wenn die Verbindung unterbrochen wird, schaltet das System zunächst auf die zuletzt eingestellte temporäre Basalrate um. Nach maximal 30 Minuten ohne Verbindung wechselt DIY Loop in den manuellen Modus, in dem die Basal-Insulinabgabe den voreingestellten Einstellungen folgt. Es ist wichtig zu wissen, dass es im manuellen Modus keine Unterbrechungsfunktion gibt, um eine Hypoglykämie zu verhindern.

Es ist möglich, einen Glukosewert aus einem Fingerstich-Test in die Loop-App einzugeben. Loop wird diesen Wert für die Berechnung der automatischen Insulinabgabe verwenden.

Sobald die Verbindung zur Pumpe oder zum Sensor wiederhergestellt ist, wechselt DIY Loop automatisch in den Auto-Modus und fährt mit der automatischen Insulinabgabe fort.

#### #4 Educate

Bei der Einführung eines automatischen Insulinabgabesystems ist eine angemessene Schulung von entscheidender Bedeutung. Die allgemeinen Aufklärungspunkte findest du im allgemeinen Modul.

Die behandelten Punkte der allgemeinen Ausbildung waren:

- Weniger Kohlenhydrate verwenden, um eine Hypoglykämie zu korrigieren.

- Probleme mit dem Infusionsset in Betracht ziehen, wenn der Blutzuckerspiegel ohne ersichtlichen Grund hoch bleibt.

- Vertrauen in das AID-System und Vermeiden unnötiger manueller Eingriffe.

- Zeitliche Abstimmung der Mahlzeiten-Bolusgabe vor den Mahlzeiten.

- Verwendung eines Sportmodus ab 1 bis 2 Stunden vor der Aktivität.

- Unterbrechung der Insulinabgabe, wenn die Pumpe für mehr als 15 Minuten nicht angeschlossen ist.

- Reaktion auf Alarme und Achten auf automatische Updates auf Mobiltelefonen.

- Unterstützung durch Peers suchen, um sich beraten zu lassen und Erfahrungen auszutauschen

Im Folgenden findest du einige zusätzliche Informationen, die speziell für die Verwendung von DIY Loop wichtig sind:

- Halte das Mobiltelefon mit der DIY Loop-App gut aufgeladen und in Körpernähe, um eine optimale Kommunikation zwischen den Geräten zu gewährleisten. Es ist ratsam, einen tragbaren Akku mit dir zu führen.

- Halte ein Ersatz-Mobiltelefon für Notfälle oder als Backup-Gerät bereit und installiere die DIY Loop-App darauf.

- Nutze erweiterte Einstellungen wie den automatischen Bolus erst, wenn du die Grundlagen beherrschst und dein Blutzuckerspiegel stabil ist.

- Nutze die Funktion "Pre-Meal-Bereich" vor den Mahlzeiten.

- Richte im Voraus mehrere Überschreibungen ein, um deine Insulinabgabe leicht an deine täglichen Aktivitäten anzupassen.

- Stelle sicher, dass dein Gesundheitsdienstleister Zugang zu deinen Nightscout-Berichten hat, um dich effektiv zu überwachen und zu unterstützen.

- Lerne, wie du deine eigenen NightScout-Berichte verwenden kannst.

Durch die Beachtung dieser allgemeinen und spezifischen Punkte können Benutzer ihre Erfahrungen mit DIY Loop optimieren und ihr Verständnis für automatisierte Insulinabgabesysteme verbessern.

#### #5 Sensor

DIY Loop ist mit mehreren Glukosesensoren kompatibel, darunter alle Dexcom-Sensoren und einige FreeStyle Libre-Sensoren. Obwohl DIY Loop theoretisch die Sensoren Dexcom G5, Dexcom ONE und Enlite von Medtronic unterstützt, sind diese Sensoren nicht mehr auf dem Markt erhältlich.

Wenn du Zweifel an der Genauigkeit deiner Sensormessungen hast oder das Gefühl, dass sie deinen Zustand nicht widerspiegeln, führe zur Kontrolle einen Fingerstich-Test durch. Wenn du eine signifikante Diskrepanz feststellst - z. B. einen Unterschied von mehr als 20 % zwischen den Sensor- und den Fingerstich-Messwerten, selbst wenn dein Blutzucker innerhalb des Zielbereichs stabil ist - ist es ratsam, den Auto-Modus zu deaktivieren, bis das Problem behoben ist. Das Problem könnte mit der Konfiguration des Glukose-Sensors, dem Sensor selbst oder der Einstichstelle zusammenhängen. Gegebenenfalls ist ein Austausch des Glukose-Sensors erforderlich, um das Problem zu beheben.

Einige Sensoren können mit einem Fingerstich-Wert kalibriert werden. Dies sollte nur gemacht werden, wenn deine Sensorwerte stabil sind und im Bereich liegen.  Der Sensor selbst oder die Einführungsstelle. Gegebenenfalls ist ein Austausch des Glukosesensors erforderlich, um das Problem zu beheben.

#### #6 Share

Mit DIY Loop können Nutzer Insulin- und Blutzucker-Daten über verschiedene Apps und Plattformen mit Gesundheitsdienstleistern und Familienmitgliedern teilen.

Die meistgenutzte Plattform ist Nightscout. So kann man das machen:

- Insulin- und Glukose-Daten können an eine Nightscout-Website weitergeleitet werden, die der Nutzer selbst erstellt oder erstellen lassen muss.

- Gesundheitsdienstleister und Familienmitglieder können die Daten in Echtzeit auf dieser Nightscout-Website mit einem Token einsehen.

Nightscout geht über die Daten-Einsicht hinaus und ermöglicht autorisierten Personen, aus der Ferne Therapieanpassungen zu machen, wie einen Insulinbolus zu verabreichen, Kohlenhydrat-Informationen einzugeben oder Überschreibungen anzuwenden. Diese Funktion ist besonders vorteilhaft für Eltern, die zur Sicherheit ihres Kindes die Insulinwerte anpassen können, auch wenn sie nicht physisch anwesend sind.

Eine weitere Plattform, auf der du Daten hochladen und teilen kannst, ist Tidepool.

Darüber hinaus gibt es mehrere Follow-Apps:

- Wenn der Benutzer einen Dexcom-Sensor hat, können Betreuungspersonen die Daten des Benutzers über die Dexcom Follow-App verfolgen.

- Wenn der Benutzer Tidepool verwendet, können Betreuungspersonen den Benutzer über die Tidepool Mobile-App verfolgen.

- Darüber hinaus gibt es zwei Open-Source-Apps, die eine Fernüberwachung ermöglichen: die Loop Follow-App mit einer breiten Palette von Alarmen und Warnungen und die Loop Caregiver-App, die Fernbefehle von Betreuungspersonen ermöglicht.

Durch die Weitergabe ihrer Daten können die Nutzer Unterstützung von ihren Gesundheitsdienstleistern erhalten und ihre Familienangehörigen in Echtzeit über ihre Blutzuckerwerte und ihr Diabetes-Management informieren.

### 2.2 Indikationen

DIY Loop ist eine Open-Source-App, für die es keine offiziellen, von der FDA oder europäischen Behörden genehmigten Indikationen gibt. Es kann mit allen schnell wirkenden Insulinanaloga verwendet werden.

Die Nutzer müssen die App selbst erstellen und tragen die Verantwortung für alle damit verbundenen Risiken. Die notwendigen Informationen zum Bau der App findest du in der Loopkit-Dokumentation, die online verfügbar ist, sowie in Diskussionen mit erfahrenen Benutzern in Facebook-Gruppen oder anderen Foren.

Obwohl viele Menschen DIY Loop erfolgreich gebaut und sicher verwendet haben, ist es wichtig, dass jeder Benutzer:

- ein gründliches Verständnis der Funktionsweise der App hat,

- mit seinem Diabetes-Gesundheitsteam zusammenarbeitet, um die Therapie-Einstellungen anzupassen,

- das System pflegt und überwacht, um die ordnungsgemäße Funktion sicherzustellen

- und versteht, wie seine Insulinpumpe und sein Glukose-Sensor funktionieren.

Um DIY Loop zu erstellen und zu nutzen, benötigen die Nutzer ein kompatibles iPhone und einen Computer. Die Mindestanforderungen an das Gerät können in der Loopkit-Dokumentation nachgelesen werden. Das iPhone muss mindestens die Version 15.1 haben.

Für die Erstellung der App folgst du den Schritt-für-Schritt-Anweisungen in der Loopkit-Dokumentation. Benutzer können wählen, ob sie die App mit einem Mac oder einem Windows-PC erstellen möchten. Für Mac-Benutzer ist eine Betriebssystemversion von mindestens 12.5 oder höher erforderlich. Eine erneute Erstellung ist alle paar Monate erforderlich, je nachdem, wie du die Loop-App erstellt hast. Mit der Version 3.4 von Loop ist eine erneute Erstellung nicht mehr erforderlich, da automatische Aktualisierungen enthalten sind.

Um die Loop-App zu erstellen, benötigen Nutzer außerdem eine Apple Developer Membership, die 99 Dollar pro Jahr kostet. Die Beantragung der Mitgliedschaft dauert in der Regel 12 Tage bis zur Genehmigung. Andere notwendige Software wie Xcode, TestFlight oder Github für Nicht-Mac-PC-Nutzer ist kostenlos erhältlich.

Die meisten Menschen entscheiden sich dafür, die DIY-Loop-App selbst zu erstellen. Alternativ bieten einige Gesundheitsdienstleister oder Unternehmen an, die App gegen eine Gebühr für dich zu erstellen. 

Während des gesamten Prozesses der App-Entwicklung ist es von Vorteil, einen Mentor oder einen erfahrenen Nutzer zu haben, der dich anleitet und unterstützt. Facebook-Gruppen wie "Looped" und "Loop and Learn" sind hilfreiche Ressourcen für Unterstützung und Informationen.

Wenn du die notwendigen Schritte befolgst und bei Bedarf Hilfe in Anspruch nimmst, kannst du die DIY-Loop-App erfolgreich auf deinen Mobilgeräten installieren. Der Prozess erfordert zwar Zeit, Energie und Ausdauer, aber es ist durchaus möglich, die Loop-App zu installieren und effektiv zu nutzen.

### 2.3 Software-Updates

DIY Loop wird ständig weiterentwickelt, und alle paar Monate werden neue Versionen veröffentlicht. Diese Updates bringen Verbesserungen, Fehlerbehebungen und neue Funktionen, um die Benutzerfreundlichkeit zu erhöhen. Für die Aktualisierung der Loop-App auf eine neuere Version ist jedoch in der Regel ein Computer erforderlich.

Um die aktuell auf deinem Gerät installierte Version von Loop zu ermitteln, tippe auf das Symbol "Einstellungen" unten auf dem Hauptbildschirm der Loop-App. Die Versionsinformationen findest du in der oberen linken Ecke. Du kannst auch die LoopKit-Versionsseite auf GitHub für detaillierte Versionsinformationen und Aktualisierungen konsultieren. 

Loop folgt einem Verzweigungssystem mit zwei primären Zweigen: master und dev.

- Der Master-Zweig stellt die stabile und gut getestete Version der App dar. Aktualisierungen des Master-Zweigs erfolgen, wenn neue Funktionen aus dem Dev-Zweig in den Master-Zweig integriert werden, was zu einer neuen Release-Version führt.

- Der Dev-Zweig ist der Ort, an dem die nächste Version von Loop entwickelt und getestet wird. Er enthält laufende Entwicklungen und Optimierungen, die auf der Grundlage von Rückmeldungen und Tests von Benutzern und Entwicklern kontinuierlich verfeinert werden. Es ist jedoch wichtig zu beachten, dass sich der Entwicklungszweig schnell verändert, und die Benutzer müssen sich der Erwartungen bewusst sein und über die Updates und Änderungen informiert bleiben.

Um über den Entwicklungsfortschritt von Loop informiert zu bleiben, können Benutzer:

- Die Zulipchat-Kanäle für Updates und Diskussionen abonnieren.

- Das Loop Repo und die Issues List auf GitHub anschauen.

- In den Loop Facebook-Gruppen aktiv bleiben.

- sich mit den Datenquellen vertraut machen und damit auch, wo zusätzliche Informationen zu finden sind.

Ein Backup-Plan ist wichtig, um die ununterbrochene Nutzung des automatischen Insulinabgabesystems zu gewährleisten. Für den Fall, dass das iPhone verloren geht, beschädigt wird oder ausfällt, wird empfohlen, ein Ersatz-iPhone bereitzuhalten und einen sicheren Ort zu haben, vorzugsweise eine Cloud, um wichtige DIY Loop-Dateien zu speichern. Zu diesen Dateien gehören die DIY Loop-App selbst, Passwörter und eine Exportdatei mit den neuesten Einstellungen und Zielen. Erstelle auch einen Notfallplan für den Fall, dass deine Insulinpumpe ausfällt. Du solltest immer wissen, wie viel Basal- und Bolusinsulin du im Durchschnitt benötigst und bereit sein, im Notfall auf Insulin-Pen’s umzusteigen.

Bei Auftreten von Problemen ist es wichtig, ruhig zu bleiben und die Loop-Community und die Dokumentation um Unterstützung zu bitten. Die Fehlersuche ist ein normaler Teil der Software-Nutzung, und mit Geduld und Unterstützung lassen sich Herausforderungen meistern.

Indem sie informiert bleiben, sich aktiv an der Loop-Community beteiligen und die empfohlenen Praktiken befolgen, können Benutzer Software-Updates effektiv verwalten und eine reibungslose Erfahrung mit DIY Loop sicherstellen.
