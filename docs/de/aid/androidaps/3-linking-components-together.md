<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q-0UftnpQitatUeoqR6ar3g -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/I_GGCdDyZy0" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Komponenten verbinden</u>**

In diesem Kapitel führen wir dich durch den Prozess der Erstellung der notwendigen Verbindungen innerhalb des automatischen Insulinabgabesystems AndroidAPS. Diese stellen Verbindungen zwischen verschiedenen Komponenten her, um eine nahtlose Kommunikation und den Datenaustausch zu gewährleisten.

AndroidAPS funktioniert auf folgende Weise:

- Der Blutzuckerspiegel wird alle 5 Minuten mit einem Glukosesensor wie dem Dexcom- oder FreeStyle Libre-Sensor gemessen.

- Der Sensor sendet die Glukosemesswerte an eine spezielle Sensor-App auf deinem Mobiltelefon, die die Daten dann an die AndroidAPS-App weiterleitet.

- AndroidAPS berechnet die erforderliche Insulindosis und sendet sie an deine Insulinpumpe, z. B. Accu-Chek Combo oder Insight-Pumpe, Dana-Pumpe, Omnipod DASH, TouchCare Nano-Pumpe oder ältere Medtronic-Pumpen.

- Die Insulinpumpe gibt das benötigte Insulin ab und sendet die Pod-Daten zurück an die AndroidAPS-App.

- AndroidAPS teilt die Blutzucker- und Insulindaten mit Nightscout oder Tidepool, das als Ausleseprogramm dient.

- Wenn du die Glykämiedaten auf deinem Mobilgerät an xDrip überträgst, können Betreuungspersonen die Daten über ihre eigene xDrip-App aus der Ferne überwachen.

- Außerdem können die AndroidAPS-App oder xDrip deine Sensor- und Insulindaten an kompatible Smartwatches übertragen. Einige Smartwatches bieten sogar die Funktion, Insulin direkt von der Uhr aus zu verabreichen, was dein Diabetes-Management noch bequemer macht und dich über deinen Blutzuckerspiegel informiert, ohne dass du dein Smartphone herausnehmen musst.

In diesem Video-Tutorial führen wir dich durch den Prozess der Erstellung verschiedener Verbindungen im automatischen Insulinabgabesystem AndroidAPS. Im Einzelnen werden wir die folgenden Schritte abdecken:

- Wie du deinen Sensor mit einer speziellen Sensor-App verknüpfst und so die Übertragung von Sensor-Messwerten an deine AndroidAPS-App ermöglichst.

- Wie du deine Insulin Pumpe für eine nahtlose Kommunikation mit AndroidAPS verbindest.

- Den Prozess der Erstellung eines Nightscout-Kontos, das als Datendrehscheibe für AndroidAPS dient.

- Wie man eine Verbindung zwischen der AndroidAPS-App und Nightscout herstellt, um die reibungslose Übertragung von Blutzucker- und Insulin-Daten zu gewährleisten.

- Und wie du AndroidAPS mit deiner Smartwatch verbinden kannst.

Wenn du diese Schritte befolgst, wirst du in der Lage sein, die notwendigen Verbindungen innerhalb des AndroidAPS-Systems herzustellen, um eine effektive automatische Insulinabgabe für das Diabetes-Management zu ermöglichen.

3.1 Verbindung des Sensors mit der AndroidAPS-App

Wenn es darum geht, Sensoren mit der AndroidAPS-App zu verknüpfen, gibt es je nach verwendetem Sensor verschiedene Möglichkeiten.

Da AndroidAPS keine direkte Verbindung zu nativen Sensor-Apps wie der Dexcom- oder LibreLink-App herstellen kann, ist eine zusätzliche Open-Source-Sensor-App erforderlich, um die Lücke zu schließen und die Sensordaten an AndroidAPS zu übertragen. Je nach Sensortyp kann dies xDrip+ oder Juggluco sein.

- xDrip+ ist eine leistungsstarke App, die für verschiedene Sensoren verwendet werden kann. Sie kann auch mit Plattformen wie Nightscout und Tidepool, mit Smartwatches und anderen mobilen Geräten verbunden werden.

xDrip+ kannst du nicht direkt aus dem Play Store herunterladen. Stattdessen kannst du es aus dem GitHub-Repository erhalten. Wenn du dem angegebenen Link folgst, kannst du die xDrip+ APK-Datei herunterladen und auf deinem Gerät installieren. Nach der Installation wirst du in den Einstellungen der App aufgefordert, eine Datenquelle auszuwählen. Wähle die entsprechende Option für deinen Sensortyp und folge den Anweisungen auf dem Bildschirm, um den Sender zu verbinden und den Sensor zu starten.

Wenn du xDrip mit AndroidAPS verwendest, erhältst du zusätzliche Funktionen wie das Teilen von Sensordaten mit Angehörigen, anpassbare Alarme, ein Smartphone-Widget, Bluetooth-Integration für Auto-Audiosysteme und Nightscout-Integration für ein umfassendes Datenmanagement.

Wenn du nur Zugang zu älteren FreeStyle Libre-Sensoren hast, benötigst du eine zusätzliche NFC-zu-Bluetooth-Brücke, wie z. B. einen MiaoMiao Reader, Bubble oder Blucon Nightrider. Diese NFC-zu-Bluetooth-Brücken können mit bestimmten Open-Source-Apps verknüpft werden, um die Glukosewerte auf deinem Telefon zu empfangen, wonach sie an AndroidAPS gesendet werden können.

Durch die Verwendung von Open-Source-Sensor-Apps kannst du Sensor-Messwerte empfangen und diese nahtlos an die AndroidAPS-App übertragen, was ein effektives Diabetes-Management durch das automatische Insulinabgabesystem ermöglicht.

3.2 Verbindung der Insulinpumpe mit der AndroidAPS-App

Wenn du die AndroidAPS-App verwendest, hast du die Möglichkeit, sie mit deiner Insulinpumpe zu verknüpfen. Beim Starten der App wirst du aufgefordert, den Pumpentyp auszuwählen, den du verwendest. Du kannst diese Einstellung auch später über den Konfigurator ändern.

Wenn du die Omnipod DASH-Pumpe als Pumpentyp ausgewählt hast, siehst du oben auf der App-Oberfläche eine spezielle DASH-Registerkarte.

- Auf dieser Registerkarte kannst du Informationen über deine Omnipod DASH-Pumpe abrufen und ihre Funktionen steuern.

- Über die Taste Aktualisieren kann AndroidAPS eine Verbindung mit dem Omnipod herstellen und dessen Status abrufen. Dies kann hilfreich sein, um bestimmte Omnipod-Alarme zu deaktivieren.

- Unter dem Abschnitt “Pumpenverwaltung” findest du vier Optionen, die speziell für Omnipod DASH gelten:

- Pod aktivieren: Diese Option führt dich durch die Schritte zum Befüllen eines Pods mit Insulin, zum Einsetzen des Pods und zum Starten des Betriebs.

- Pod deaktivieren: Hiermit kannst du einen aktiven Pod deaktivieren.

- Test-Ton abspielen: Diese Option kontrolliert die akustischen Warnsignale auf dem Omnipod DASH.

- Pod-Verlauf: Hier kannst du auf den Verlauf deiner Omnipod DASH-Pods zugreifen.

- In bestimmten Situationen kann auf der Registerkarte DASH eine dritte Taste erscheinen. Dabei kann es sich je nach Situation um die Taste "Abgabe fortsetzen" oder die Taste "Alarm stummschalten" handeln. Mit der Taste "Abgabe fortsetzen" kann die Insulinabgabe nach einer Profiländerung wiederhergestellt werden, während die Taste "Alarm stummschalten" Alarme im Zusammenhang mit dem Verfall des Pods oder einem niedrigen Insulinvorrat zum Schweigen bringt. Das Erscheinen dieser Tasten bietet spezifische Optionen für die Behebung von pumpenbezogenen Problemen.

- Diese Tasten sind intuitiv und dienen als Ersatz für die Funktionen, die der PDM des Omnipod ausführt. Obwohl der PDM nicht benötigt wird, wenn du AndroidAPS verwendest, ist es empfehlenswert, ihn als Ersatzgerät zu behalten.

Für Benutzer anderer Insulinpumpen werden auf der App-Oberfläche je nach Pumpentyp unterschiedliche Optionen angezeigt. Für jeden Pumpentyp gibt es eine eigene Registerkarte am oberen Rand. Die verfügbaren Optionen und Einstellungen können je nach Pumpenmodell variieren.

Diese Einstellungen stellen sicher, dass du die Insulinabgabe über deine verbundene Pumpe mit der AndroidAPS-App effektiv verwalten und steuern kannst.

3.3 Erstellen einer Nightscout-Website

- Nightscout ist keine Plattform, in die man sich einloggt, sondern eine Website, die du selbst erstellst oder erstellen lässt, was mit einigen zusätzlichen Kosten verbunden sein kann.

- Ein Nightscout-Konto besteht aus einer Website-URL (Name) und einem Passwort für den Zugang zur Website.

- Nightscout-Konten werden als individuelle Benutzerkonten angelegt. Es gibt keine Nightscout-Plattform speziell für Gesundheitsdienstleister.

- Nightscout ermöglicht die Verfolgung deiner Sensor- und Insulin-Daten in Echtzeit, so dass du diese mit deinen Angehörigen oder deinem Gesundheitsdienstleister teilen kannst. Darüber hinaus ist ermöglicht Nightscout die Erstellung von Berichten von deinem automatischen AndroidAPS-Insulinabgabesystem.

- Nightscout ist mehr als nur eine Website für AndroidAPS-Daten; es kann sich mit verschiedenen Geräten verbinden.

- Nightscout fungiert als zentraler Knotenpunkt, der Daten von Sensoren empfängt und sie an verschiedene Geräte wie Mobiltelefone, Smartwatches, Computer und andere Überwachungsgeräte weiterleitet. Es bietet Optionen für den Zugriff auf und die Anzeige von Glukose-Informationen, darunter Smartwatches, Desktop-Widgets, an der Wand montierte Geräte und die Integration mit Sprachassistenten wie Alexa.

- Es gibt mehrere Möglichkeiten, eine Nightscout-Website zu erstellen.

- Nightscout ist eine Open-Source-Software. Du findest alle Informationen auf github.nightscout.io.

- Du kannst Nightscout selbst einrichten, indem du die online verfügbaren Schritt-für-Schritt-Pläne verwendest.

- Es gibt auch Firmen, die Nightscout-Einrichtungsdienste anbieten, z. B. T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy und Opensource.clinic. Nightscout und die damit verbundenen Dienste sind nicht von der FDA zugelassen, mit Ausnahme des Dienstes von T1Pals. Es gibt keine Zulassung von europäischen Behörden, sodass die Nutzung bei eigenes Risiko erfolgt. Nightscout scheint GDPR- und HIPAA-konform zu sein, erhebt aber keinen Anspruch auf offizielle Konformität, da es keine Prüfer gibt.

- Es ist wichtig, dass du mit den Sensor-Glykämiedaten sicher umgehst und deinen Nightscout-URL mit einem Passwort schützt.

- Wenn du deine Nightscout-Website mit Angehörigen oder deinem Gesundheitsdienstleister teilen möchtest, empfiehlt es sich, für diese ein separates Token zu erstellen.

Wenn du diese Schritte befolgst, kannst du einfach und sicher eine Nightscout-Website erstellen, die es dir ermöglicht, deine Diabetes-Daten effektiv zu verfolgen und zu teilen.

3.4 Verbindung der AndroidAPS-App mit Nightscout

Beim Einrichten der AndroidAPS-App wirst du aufgefordert, deine Nightscout-URL und dein Passwort einzugeben. Wenn du dies nicht während der Ersteinrichtung getan hast, kannst du diese Informationen auch später über den Konfigurator eingeben.

Sobald du die Nightscout-Zugangsdaten eingegeben hast, kannst du in der AndroidAPS-App zur Registerkarte "Nightscout" navigieren. Auf dieser Registerkarte kannst du sehen, welche Daten an deine Nightscout-Website weitergeleitet werden.

Die Verknüpfung von AndroidAPS mit Nightscout ermöglicht es dir, deine Daten nahtlos an deine Nightscout-Website zu übertragen, wo sie in Echtzeit abgerufen und überwacht werden können. Dadurch erhalten du, deine Angehörigen und dein Gesundheitsdienstleister wertvolle Einblicke in dein Diabetes-Management.

3.5 Verbindung der AndroidAPS-App mit einer Smartwatch

Wenn es darum geht, die AndroidAPS-App mit einer Smartwatch zu verknüpfen, gibt es mehrere Möglichkeiten:

- Wenn du eine Smartwatch mit dem Betriebssystem Wear besitzt, kannst du nicht nur deine AndroidAPS-Daten auf der Uhr anzeigen, sondern auch Aktionen durchführen, wie z. B. einen Bolus geben oder einen temporären Zielwert festlegen. Informationen darüber, welche Uhren getestet wurden und wie man sie einrichtet, findest du in der AndroidAPS-Dokumentation.

- Eine weitere Option ist die Weiterleitung der Sensordaten von xDrip+ an deine Smartwatch. Auf diese Weise kannst du deine Blutzuckerdaten auf der Uhr anzeigen, hast jedoch keine Möglichkeit, deine Insulinpumpe zu steuern oder ihr Befehle zu erteilen. Verschiedene Arten von Smartwatches haben möglicherweise spezielle Optionen für die Integration mit xDrip+. Weitere Informationen findest du in der xDrip-Dokumentation.

In diesem Kapitel haben wir die verschiedenen Verbindungen untersucht, die in AndroidAPS verfügbar sind. Von CGM-Sensoren über Insulinpumpen bis hin zu Nightscout - diese Verbindungen ermöglichen eine nahtlose Kommunikation für ein effektives Diabetes-Management. Durch die Herstellung dieser Verbindungen können Nutzer die Möglichkeiten von AndroidAPS voll ausschöpfen und die Kontrolle über ihren Diabetes übernehmen.
