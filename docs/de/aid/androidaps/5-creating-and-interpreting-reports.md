<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q-0UftnpQitatUeoqR6ar3g -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/Bgss0C8W9H4" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>5. Berichte erstellen und interpretieren</u>**

In diesem Kapitel werden wir den Prozess der Erstellung und Interpretation von Berichten in Nightscout, das in Verbindung mit AndroidAPS verwendet wird, untersuchen.

In den vorangegangenen Kapiteln haben wir die Schritte zur Erstellung einer Nightscout-Website und zur Verbindung deiner AndroidAPS-App mit Nightscout zur Datenübertragung alle 5 Minuten behandelt.

Jetzt werden wir uns mit den Funktionen der Nightscout-Oberfläche und den Berichten befassen, um dir zu helfen, die wertvollen Informationen, die sie für dein Diabetes-Management liefern, zu verstehen und zu nutzen.

### 5.1 Nightscout-Oberfläche

Die Nightscout-Oberfläche ist in der Regel schwarz und kann nach deinen Wünschen angepasst werden. Hier siehst du die verschiedenen Bereiche einer Nightscout-Website:

- Die Titelleiste zeigt den Namen deiner Website auf der linken Seite und enthält Tasten auf der rechten Seite, z. B. die Menütaste mit verschiedenen Einstellungsmöglichkeiten. Hier findest du auch die Symbole für die Bearbeitung und den Ton, die jedoch selten verwendet werden.  Abhängig von deinem Authentifizierungsstatus siehst du auch ein Pluszeichen, mit dem du Behandlungen eingeben kannst.

- Systeminformationen: Der Abschnitt Systeminformationen zeigt die aktuellen Informationen aller mit Nightscout verbundenen Systeme an. Er kann graue Kästchen oder Plugins enthalten, die zusätzliche Details anzeigen, wenn man mit dem Mauszeiger darüberfährt. In Nightscout nennen wir diese Pillen.

- Benutzer- und Behandlungsinformationen: Der Abschnitt Benutzer- und Behandlungsinformationen zeigt Informationen über dich und deine Behandlungen an. Du findest hier Pillen oder Abkürzungen, die im Abschnitt Einstellungen näher erläutert werden.

- Basalinsulin: Der Abschnitt Basalinsulin zeigt deine Basal-Insulinabgabe an.

- Sensor-Glukose und Behandlungen: Der Abschnitt Sensor-Glukose und Behandlungen zeigt deine Sensor-Glukosemesswerte, Kohlenhydrat- und/oder Insulin-Behandlungen sowie Vorhersagen von AndroidAPS an.

- Datenverlauf: Der Abschnitt Verlauf zeigt die Daten der letzten 48 Stunden an.

In Nightscout kannst du über das Hamburger-Menü am oberen Rand auf verschiedene Einstellungen zugreifen. Hier ist eine Übersicht über die verfügbaren Optionen:

- Berichte: Ermöglicht dir, Berichte zu erstellen.

- Profil und Ernährung: Über den Profil- und Ernährungseditor kannst du Einstellungen ändern, obwohl diese von AndroidAPS nicht verwendet werden.

- Mit den Admin-Tools kannst du Zugriffstoken erstellen, um Daten mit Gesundheitsdienstleistern oder Familienmitgliedern zu teilen.

- Kontoeinstellungen: Die Kontoeinstellungen bieten Optionen zur Anpassung von Einheiten, Zeitformat, Sprache und mehr. Du kannst auch das Aussehen deines Nightscout-Kontos anpassen, einschließlich der Anzeige von Plugins oder Pillen. Außerdem werden in diesem Abschnitt die in der Benutzeroberfläche verwendeten Abkürzungen erklärt.

- Speichern von Einstellungen: Änderungen können gespeichert werden, wenn du dein API-Passwort eingibst.  Darunter kannst du den Authentifizierungsstatus sehen.

Indem du diese Einstellungen erkundest und entsprechende Anpassungen vornimmst, kannst du deine Nightscout-Erfahrung an deine Bedürfnisse anpassen.

### 5.2 Arten von Berichten

Wenn du AndroidAPS verwendest, kannst du auf deiner Nightscout-Website über das Menü oben rechts auf die Berichte zugreifen.

Einige der wichtigsten Berichte, auf die du zugreifen kannst, sind:

- Tägliche Berichte: Diese zeigen, wie der Algorithmus das Basalinsulin anpasst und geben Einblicke in die Mikrobolus-Abgabe.

- Verteilungsbericht: Dieser Bericht zeigt die Zeit im Zielbereich, die Zeit unter dem Zielbereich und den geschätzten HbA1c-Wert an. Der Variationskoeffizient kann berechnet werden, indem die Standardabweichung durch den mittleren Blutzuckerspiegel dividiert und mit 100 multipliziert wird.

- Der Perzentil-Diagrammbericht bietet ein dem ambulanten Glukose-Profil ähnliches Bild zur Analyse von Glukose-Trends.

- Mit dem Profilbericht kannst du Insulin-Einstellungen wie Insulin-Dauer, Kohlenhydrat-Verhältnis, Insulin-Empfindlichkeit, Basal-Insulinrate und Zielwert überprüfen und aufzeichnen.

- Und der Loopalyzer-Bericht bietet eine Visualisierung der durchschnittlichen Basalraten-Anpassungen über einen Zeitraum von 24 Stunden innerhalb eines bestimmten Zeitraums. Dies kann helfen, Muster und Trends bei den vom Algorithmus vorgenommenen Basalinsulin-Anpassungen zu erkennen.

Alternativ können die Berichte von Nightscout mit der Nightscout Reporter-Software visualisiert werden. Diese kostenlose webbasierte Plattform bietet eine benutzerfreundlichere Oberfläche und ermöglicht es dir, die gewünschten Berichte auszuwählen, den Zeitraum festzulegen und ein PDF-Dokument zu erstellen, das du an deinen Gesundheitsdienstleister weiterleiten kannst. Zu den interessanten Berichten gehören Analysen, Profile, Glukose-Perzentil-Diagramme und Tagesberichte.

Es gibt drei Möglichkeiten, diese Berichte mit deinem Gesundheitsdienstleister zu besprechen:

- Du kannst deinem Gesundheitsdienstleister deine Nightscout-URL und ein von dir erstelltes sicheres Token zur Verfügung stellen. So kann er direkt auf die Berichte zugreifen und sie einsehen.

- Du kannst zwar nicht direkt aus Nightscout eine PDF-Datei erzeugen, aber du kannst die Berichte als PDF-Dateien speichern. Öffne einfach den gewünschten Bericht, drücke "Strg+P" (bzw. Befehl+P auf dem Mac) und wähle "Als PDF speichern" als Druckoption. Dadurch wird eine PDF-Datei erstellt, die du speichern und bei Bedarf per E-Mail versenden kannst.

- Eine weitere Option ist die Verwendung von Nightscout Reporter, um visuell ansprechendere Berichte zu erstellen, die einfach weitergeleitet werden können.

Durch den effektiven Einsatz von Nightscout und Nightscout Reporter kannst du deinem Gesundheitsdienstleister umfassende Berichte zur Verfügung stellen, die die Leistung und Trends deines Diabetes-Managements mit AndroidAPS aufzeigen.

### 5.3 Berichte interpretieren

In AndroidAPS sind die wichtigsten Parameter, die angepasst werden können, der Zielwert, die Basal-Insulinrate, das Kohlenhydrat-Verhältnis und die Insulin-Sensitivität.

Dies kann auf der Registerkarte "Profil" in der AndroidAPS-App erfolgen, wenn du auf eine der Unterregister-Karten tippst.

Es ist wichtig, bei der Interpretation von Berichten und der Durchführung von Anpassungen strukturiert vorzugehen. Hier ist ein detaillierter Leitfaden:

1. Bewerte die glykämischen Informationen:

- Überprüfe anhand des Behandlungsberichts, ob die Behandlungsziele, insbesondere die Zeit im Zielbereich und die Zeit unter dem Zielbereich, in den letzten 2 bis 4 Wochen erreicht worden sind. Nach internationalen Richtlinien sollte die Zeit im Bereich über 70 % und die Zeit unter dem Bereich unter 4 % liegen.

- Wenn du Zugriff auf den Analysebericht von Nightscout Reporter hast, notiere dir die Häufigkeit der Mahlzeiten-Bolusgabe, die im Durchschnitt 3 Mal pro Tag betragen sollte.

2. Optimiere die AID-Einstellungen:

- Analysiere das ambulante Glukose-Profil, um Trends der Hypo- oder Hyperglykämie zu erkennen. Wenn du Trends erkennst, versuche anhand der Tagesberichte herauszufinden, ob diese mit Mahlzeit-Bolusgaben zusammenhängen.

- Bei Trends im Zusammenhang mit Mahlzeit-Bolus: Bewerte Faktoren wie Zeitpunkt und Kohlenhydratzählung und ziehe eine Anpassung des Kohlenhydrat-Verhältnisses in Betracht.

- Wenn postprandiale Hyperglykämie ein Problem ist, solltest du auch das Ziel "Bald essen" vor den Mahlzeiten erwägen.

- Du kannst auch die Möglichkeit von schneller wirkenden Insulinen wie Fiasp oder Lyumjev prüfen.

- Für Trends nach manuellen Korrektur-Boli oder nach Hyperglykämie: Ändere die Insulin-Empfindlichkeit oder die Dauer der Insulinwirkung, um die Aggressivität des Algorithmus anzupassen.

- Du kannst auch die Aggressivität der Insulinabgabe des AndroidAPS-Algorithmus steuern, indem du die Einstellungen für die maximale Basalrate und die maximale IOB anpasst.

- Eine Senkung dieser Grenzwerte kann dazu beitragen, eine übermäßige Insulinverabreichung zu verhindern, insbesondere in Fällen häufiger Hypoglykämie.

- Für den Fall, dass die maximale IOB-Einstellung die Fähigkeit des Systems einschränkt, hohe Blutzuckerwerte wirksam zu korrigieren, muss sie möglicherweise erhöht werden. Dies sollte mit Bedacht geschehen.

- Für Trends außerhalb von Mahlzeiten oder Boli: Du kannst den Zielwert pro Zeitblock anpassen oder die Basal-Insulinrate 1 Stunde vor und während des entsprechenden Zeitraums um 10 bis 20 % ändern.

Es ist auch wichtig, mögliche Korrelationen mit verpassten Boli, Sport, Alkohol oder Hypoglykämie zu untersuchen.

Bei AndroidAPS ist es wichtig, sicherzustellen, dass die Basal-Insulinrate richtig eingestellt ist. Wenn du ein konsistentes Muster von steigendem oder fallendem Basalinsulin während eines bestimmten Zeitraums des Tages feststellst, das nicht durch SMB oder manuelle Boli erklärt werden kann, z.B. in “Tägliche Berichte”, besteht das Ziel darin, die Basal-Insulinrate in dieser Zeit anzupassen, um sie mit den Bedürfnissen des Benutzers in Einklang zu bringen.

Wenn du als erfahrener AndroidAPS-Benutzer eine zusätzliche Profilanpassung wünschst, kannst du "Autotune" verwenden. Dies ist ein Web-Tool zur Berechnung der optimalen Einstellungen für Basalinsulin, Insulin-Empfindlichkeit und Kohlenhydrat-Verhältnis. Wenn du deine Nightscout-URL in die Autotune-Website eingibst, kannst du das Programm deine idealen Einstellungen auf der Grundlage deiner Sensorglukose-Ergebnisse berechnen lassen. Wenn Autotune erhebliche Abweichungen von deinen aktuellen Einstellungen vorschlägt, kannst du diese anpassen.

- Beachte, dass Autotune feste Werte für das Kohlenhydrat-Verhältnis und die Insulin-Empfindlichkeit benötigt.

- Autotune funktioniert möglicherweise nicht, wenn Nightscout zusätzliche Sicherheitsmaßnahmen wie einen Token hat.

3. Leitfaden für Verhaltensempfehlungen: Überprüfe die ordnungsgemäße Verwendung des Closed-Loop-Systems in den Tagesberichten:

- Die Tragedauer des Sensors, die Aktivierung des Auto-Modus und die Einhaltung der Bolusgabe vor einer Mahlzeit können am besten in den Tagesberichten überprüft werden.

- Du kannst auch die korrekte Verwendung von temporären Zielen und Profilwechseln überprüfen und die Überkorrektur von Hypo- oder Hyperglykämie bewerten.

- Schaue außerdem nach der Angemessenheit der Alarmeinstellungen und Erinnerungshinweise, um eine Alarmmüdigkeit zu vermeiden.

4. Überprüfe die Pumpeneinstellungen und Notfallpläne:

- Dokumentiere deine Pumpeneinstellungen, darunter mindestens deine Basalinsulinrate, das Kohlenhydratverhältnis, die Insulinempfindlichkeit und den Zielwert.

- Lege einen Notfallplan fest und habe immer Insulinpens bei dir, für den Fall einer Pumpenstörung oder anderer Notfälle.

Wenn du Änderungen vornimmst, solltest du jeweils nur eine Einstellung ändern. Beobachte nach einer Änderung die Auswirkungen über einen Zeitraum von 1 bis 2 Wochen genau. Es ist möglich, dass deine anfängliche Anpassung nicht die gewünschten Ergebnisse bringt. In diesem Fall kannst du alternative Optionen untersuchen und weitere Anpassungen vornehmen. Das Wichtigste ist, dass du deine Einstellungen auf der Grundlage der von den Nightscout-Berichten gelieferten Rückmeldungen abstimmst, um eine optimale Leistung deines AndroidAPS-Systems zu gewährleisten.

Wenn du diese Richtlinien befolgst und die bereitgestellten Details berücksichtigst, kannst du Berichte effektiv interpretieren, Insulineinstellungen optimieren und die ordnungsgemäße Verwendung von AndroidAPS für ein verbessertes Diabetes-Management sicherstellen.
