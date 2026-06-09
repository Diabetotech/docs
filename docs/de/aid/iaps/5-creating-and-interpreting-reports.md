<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q9br-IqtrZarduSn3MjE5bR -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/XRr1EsDIcHw" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>5. Berichte erstellen und interpretieren</u>**

In diesem Kapitel werden wir den Prozess der Erstellung und Interpretation von Berichten in Nightscout untersuchen, das in Verbindung mit iAPS verwendet wird. 

In früheren Kapiteln wurden die Schritte zum Erstellen einer Nightscout-Website und zum Verbinden Ihrer iAPS-App mit Nightscout für die Datenübertragung alle 5 Minuten behandelt. 

Nun werden wir uns mit den Funktionen und Merkmalen der Nightscout-Oberfläche und den Berichten befassen, damit Sie die wertvollen Informationen, die sie für die Behandlung Ihrer Diabeteserkrankung liefern, besser verstehen und nutzen können.

### 5.1 Nightscout-Schnittstelle

In der Nightscout-Oberfläche ist die Website in der Regel schwarz und kann nach Ihren Vorlieben angepasst werden. Hier sind die verschiedenen Bereiche einer Nightscout-Website:

- Die Titelleiste zeigt links den Namen Ihrer Website an und enthält rechts Schaltflächen, wie beispielsweise die Menüschaltfläche mit verschiedenen Einstellungsoptionen. Möglicherweise finden Sie dort auch Bearbeitungs- und Audiosymbole, die jedoch selten verwendet werden.  Je nach Ihrem Authentifizierungsstatus wird dort auch ein Pluszeichen angezeigt, über das Sie Behandlungen protokollieren können.

- Systeminformationen: Der Abschnitt „Systeminformationen“ zeigt die aktuellen Informationen aller mit Nightscout verbundenen Systeme an. Er kann graue Felder oder Plugins enthalten, die zusätzliche Details anzeigen, wenn man mit der Maus darüberfährt. In Nightscout nennen wir diese Felder „Pills“.

- Benutzer- und Behandlungsinformationen: Der Abschnitt „Benutzer- und Behandlungsinformationen“ enthält Informationen über Sie und Ihre Behandlungen. Dort finden Sie Pillen oder Abkürzungen, die im Abschnitt „Einstellungen“ näher erläutert werden.

- Basalinsulin: Der Abschnitt „Basalinsulin“ zeigt Ihre Basalinsulinabgabe an.

- Sensorglukose und Behandlungen: Der Abschnitt „Sensorglukose und Behandlungen“ zeigt Ihre Sensorglukosemesswerte, Kohlenhydrat- und/oder Insulinbehandlungen sowie Vorhersagen von iAPS an.

- Datenverlauf: Dieser Abschnitt zum Datenverlauf zeigt die Daten der letzten 48 Stunden an.

In Nightscout können Sie über das Hamburger-Menü oben auf verschiedene Einstellungen zugreifen. Hier finden Sie eine Übersicht über die verfügbaren Optionen:

- Berichte: Ermöglicht Ihnen die Erstellung von Berichten.

- Profil und Ernährung: Über den Profil- und Ernährungseditor können Sie Einstellungen ändern, obwohl die Einstellungen in der Regel über die iAPS-App und nicht über Nightscout verwaltet werden. 

- Mit den Admin-Tools können Sie Zugriffstoken erstellen, um Daten mit Gesundheitsdienstleistern oder Familienmitgliedern zu teilen. 

- Kontoeinstellungen: In den Kontoeinstellungen können Sie Einheiten, Zeitformat, Sprache und mehr anpassen. Sie können auch das Erscheinungsbild Ihres Nightscout-Kontos anpassen, einschließlich der Anzeige von Plugins oder Pillen. Darüber hinaus werden in diesem Abschnitt die in der Benutzeroberfläche verwendeten Abkürzungen erläutert.

- Einstellungen speichern: Änderungen können gespeichert werden, wenn Sie Ihr API-Passwort eingeben.  Darunter sehen Sie den Authentifizierungsstatus. 

Durch das Erkunden dieser Einstellungen und das Vornehmen entsprechender Anpassungen können Sie Ihr Nightscout-Erlebnis ganz nach Ihren Bedürfnissen personalisieren.

### 5.2 Arten von Berichten

Wenn Sie iAPS verwenden, können Sie über das Menü oben rechts auf Ihrer Nightscout-Website auf Berichte zugreifen.

Zu den wichtigsten Berichten, auf die Sie zugreifen können, gehören:

- Tägliche Berichte: Diese zeigen, wie der Algorithmus die Basalinsulinmenge anpasst, und geben Einblicke in die Verabreichung von Mikroboli.

- Verteilungsbericht: Dieser Bericht zeigt die Zeit im Zielbereich, die Zeit unterhalb des Zielbereichs und den geschätzten HbA1c-Wert an. Der Variationskoeffizient kann berechnet werden, indem die Standardabweichung durch den mittleren Glukosespiegel dividiert und mit 100 multipliziert wird.

- Der Perzentil-Diagrammbericht bietet ein ambulantes Glukoseprofil-ähnliches Bild zur Analyse von Glukosetrends.

- Mit dem Profilbericht können Sie Insulineinstellungen wie Insulinwirkdauer, Kohlenhydratverhältnis, Insulinsensitivität, Basalinsulindosis und Zielwert überprüfen und aufzeichnen.

- Der Loopalyzer-Bericht bietet Visualisierungen der durchschnittlichen Basalinsulinanpassungen über einen Zeitraum von 24 Stunden innerhalb eines bestimmten Zeitraums. Dies kann dabei helfen, Muster und Trends bei den vom Algorithmus vorgenommenen Basalinsulinanpassungen zu erkennen.

Alternativ können Berichte von Nightscout mit der Software Nightscout Reporter visualisiert werden. Diese kostenlose webbasierte Plattform bietet eine benutzerfreundlichere Oberfläche und ermöglicht es Ihnen, die gewünschten Berichte auszuwählen, den Zeitraum festzulegen und ein PDF-Dokument zu erstellen, das Sie an Ihren Gesundheitsdienstleister weiterleiten können. Zu den verfügbaren interessanten Berichten gehören Analysen, Profile, Glukose-Perzentil-Diagramme und Tagesberichte.

Es gibt drei Möglichkeiten, diese Berichte mit Ihrem Arzt zu besprechen:

- Sie können Ihrem Gesundheitsdienstleister Ihre Nightscout-URL und einen von Ihnen erstellten sicheren Token zur Verfügung stellen. Dadurch kann er direkt auf die Berichte zugreifen und diese einsehen.

- Sie können zwar keine PDF-Datei direkt aus Nightscout erstellen, aber Sie können die Berichte als PDF-Dateien speichern. Öffnen Sie einfach den gewünschten Bericht, drücken Sie auf dem Mac die Tastenkombination „Befehl+P“ (oder unter Windows „Strg+P“) und wählen Sie als Druckeroption „Als PDF speichern“. Dadurch wird eine PDF-Datei erstellt, die Sie speichern und bei Bedarf per E-Mail an Ihren Arzt senden können.

- Eine weitere Möglichkeit ist die Verwendung von Nightscout Reporter, um optisch ansprechendere Berichte zu erstellen, die Sie ganz einfach an Ihren Arzt weiterleiten können.

Durch die effektive Nutzung von Nightscout und Nightscout Reporter können Sie Ihrem Arzt umfassende Berichte zur Verfügung stellen, die die Leistung und Trends Ihres Diabetesmanagements mit iAPS hervorheben.

### 5.3 Berichte interpretieren

In iAPS können vor allem der Zielblutzuckerwert, die Basalinsulindosis, das Kohlenhydratverhältnis und die Insulinsensitivität angepasst werden. 

Dies kann über die Einstellungen erfolgen.

Bei der Interpretation von Berichten und der Vornahme von Anpassungen ist es wichtig, strukturiert vorzugehen. Hier finden Sie eine detaillierte Anleitung:

1. Bewertung der glykämischen Informationen:

- Überprüfen Sie im Verteilungsbericht, ob die Behandlungsziele, insbesondere die Zeit im Zielbereich und die Zeit unterhalb des Zielbereichs, in den letzten 2 bis 4 Wochen erreicht wurden. Gemäß internationalen Richtlinien sollte die Zeit im Zielbereich über 70 % und die Zeit unterhalb des Zielbereichs unter 4 % liegen.

- Wenn Sie Zugriff auf den Analysebericht von Nightscout Reporter haben, notieren Sie sich die Häufigkeit der Mahlzeitenboli, die durchschnittlich 3 Mal pro Tag liegen sollte. 

2. AID-Einstellungen optimieren:

- Analysieren Sie das ambulante Glukoseprofil, um Trends hinsichtlich Hypo- oder Hyperglykämie zu erkennen. Wenn Sie Trends feststellen, versuchen Sie anhand der Tagesberichte herauszufinden, ob diese mit Mahlzeitenboli zusammenhängen.

- Bei Trends im Zusammenhang mit Mahlzeitenboli: Faktoren wie Zeitpunkt und Kohlenhydratzählung bewerten und eine Anpassung des Kohlenhydratverhältnisses in Betracht ziehen. 

- Wenn postprandiale Hyperglykämie ein Problem darstellt, sollten Sie auch die Verwendung eines niedrigeren Temperaturziels vor den Mahlzeiten in Betracht ziehen.

- Sie können auch die Option schneller wirkender Insuline wie Fiasp oder Lyumjev in Betracht ziehen.

- Für Trends nach manuellen Korrekturboli oder nach Hyperglykämie: Ändern Sie die Insulinsensitivität oder die Wirkungsdauer des Insulins, um die Aggressivität des Algorithmus anzupassen.

- Für Trends außerhalb von Mahlzeiten oder Bolussen: Sie können den Zielglukosewert pro Zeitblock anpassen oder die Basalinsulinrate ab 1 Stunde vor und während des entsprechenden Zeitraums um 10–20 % ändern.

- Es ist auch wichtig, mögliche Zusammenhänge mit versäumten Bolusgaben, körperlicher Betätigung, Alkoholkonsum oder Hypoglykämie zu untersuchen.

Bei iAPS ist es wichtig, sicherzustellen, dass die Basalinsulinrate richtig eingestellt ist. Wenn Sie ein konsistentes Muster der Erhöhung oder Verringerung des Basalinsulins während eines bestimmten Zeitraums des Tages feststellen, das nicht durch SMB oder manuelle Bolusabgabe erklärt werden kann, beispielsweise im Loopalyzer-Bericht, besteht das Ziel darin, die Basalinsulinrate zu diesem Zeitpunkt anzupassen, um sie an die Anforderungen des Algorithmus anzupassen. 

Wenn Sie ein erfahrener iAPS-Benutzer sind und zusätzliche Profiloptimierungen vornehmen möchten, können Sie die Aktivierung von Autotune in Betracht ziehen. 

Darüber hinaus können Sie die Aggressivität der Insulinabgabe des iAPS-Algorithmus auf verschiedene Weise steuern.

- Sie können die Einstellungen für die maximale Basalrate und die maximale IOB anpassen.

- Eine Senkung dieser Grenzwerte kann dazu beitragen, eine übermäßige Insulinverabreichung zu verhindern, insbesondere bei häufiger Hypoglykämie.

- Wenn hingegen die maximale IOB-Einstellung die Fähigkeit des Systems einschränkt, hohe Blutzuckerwerte wirksam zu korrigieren, muss sie möglicherweise erhöht werden. Dies sollte mit Vorsicht erfolgen.

- Sie können die SMBs auch anpassen, indem Sie den maximalen Delta-BG-Schwellenwert ändern, die UAM-Funktion aktivieren, die maximale SMB-Basalminutenanzahl, das SMB-Abgabeverhältnis und das SMB-Intervall ändern.

- Wenn Sie Dynamic ISF verwenden, können Sie den Anpassungsfaktor, den Algorithmus-Typ, den gewichteten Durchschnitt der täglichen Gesamtinsulindosis und die Schwellenwerteinstellung ändern.

3. Verhaltensempfehlungen: Stellen Sie die ordnungsgemäße Verwendung des automatisierten Insulinabgabesystems sicher. In den täglichen Berichten:

- Die Tragezeit des Sensors, die Aktivierung des Auto-Modus und die Einhaltung der Bolusgabe vor den Mahlzeiten lassen sich am besten in den Tagesberichten überprüfen. 

- Sie können auch die korrekte Verwendung von temporären Zielen und Profilwechseln überprüfen und eine Überkorrektur von Unter- oder Überzuckerung bewerten.

- Fragen Sie auch nach der Angemessenheit von Alarmeinstellungen und Erinnerungen, um Alarmmüdigkeit zu vermeiden.

4. Pumpeneinstellungen und Notfallpläne überprüfen:

- Dokumentieren Sie Ihre Pumpeneinstellungen, darunter mindestens Ihre Basalinsulindosis, das Kohlenhydratverhältnis, die Insulinsensitivität und den Zielblutzuckerwert.

- Erstellen Sie einen Notfallplan und tragen Sie immer Insulinpens bei sich, für den Fall, dass die Pumpe ausfällt oder andere Notfälle eintreten.

Bei Änderungen ist es wichtig, jeweils nur eine Einstellung zu ändern. Beobachten Sie nach der Umsetzung einer Änderung die Auswirkungen über einen Zeitraum von 1–2 Wochen genau. Es ist möglich, dass Ihre anfängliche Anpassung nicht zu den gewünschten Ergebnissen führt. In diesem Fall können Sie alternative Optionen ausprobieren und entsprechende weitere Anpassungen vornehmen. Der Schlüssel liegt darin, Ihre Einstellungen auf der Grundlage des Feedbacks aus Ihren Nightscout-Berichten zu wiederholen und zu optimieren, um eine optimale Leistung Ihres iAPS-Systems sicherzustellen.

Wenn Sie diese Richtlinien befolgen und die bereitgestellten Details berücksichtigen, können Sie Berichte effektiv interpretieren, die Insulineinstellungen optimieren und die ordnungsgemäße Verwendung von iAPS für ein verbessertes Diabetesmanagement sicherstellen.
