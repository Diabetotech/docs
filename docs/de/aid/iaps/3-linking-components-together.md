<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q9br-IqtrZarduSn3MjE5bR -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/dsfth7QaiK4" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Komponenten verbinden</u>**

In diesem Kapitel führen wir Sie durch den Prozess der Erstellung der erforderlichen Verknüpfungen innerhalb des automatisierten Insulinabgabesystems iAPS. Diese Verknüpfungen stellen Verbindungen zwischen verschiedenen Komponenten her, um eine nahtlose Kommunikation und einen reibungslosen Datenaustausch zu gewährleisten.

iAPS funktioniert wie folgt:

- Der Blutzucker wird alle 1 bis 5 Minuten mit einem Glukosesensor gemessen, z. B. Dexcom G6, G7, Dexcom ONE Plus, FreeStyle Libre 2 oder FreeStyle Libre 2 Plus.

- Nachdem Sie Ihren Sensor mit Ihrer Dexcom- oder LibreLink-App gestartet haben, sendet der Sensor die Glukosemesswerte direkt an Ihre iAPS-App, mit Ausnahme des Dexcom G7 und des Dexcom ONE Plus, bei denen die Dexcom-App aktiv bleiben muss.

- iAPS berechnet die erforderliche Insulindosis und sendet sie an Ihre Insulinpumpe, z. B. Omnipod DASH, Dana-I, TouchCare Nano, Omnipod Eros, DanaRS (nur Firmware 3) oder ältere Medtronic-Pumpen.

- Die Insulinpumpe gibt die erforderliche Insulinmenge ab und sendet die Pumpendaten zurück an die iAPS-App.

- iAPS teilt die Blutzucker- und Insulindaten mit Nightscout, das als Ausleseprogramm dient. iAPS teilt diese Informationen auch mit Apple Health, und die Dexcom- und LibreLink-App senden die Glukosedaten jeweils an Dexcom Clarity und LibreView. 

- Darüber hinaus bietet die iAPS-App eine Apple Watch-Version, die während desselben Erstellungs- und Installationsprozesses installiert wird. So können Sie Ihre Glukosewerte in Echtzeit auf Ihrer Apple Watch anzeigen, Insulin bolusförmig verabreichen und sogar vordefinierte Profile direkt von Ihrer Apple Watch aus aktivieren, was die Verwaltung Ihres Diabetes noch komfortabler macht.

- Kürzlich wurde die Unterstützung für Garmin Watch hinzugefügt.

- iAPS bietet auch Kalenderereignisse. In Verbindung mit Apple Carplay ermöglicht es die visuelle Verfolgung des Carb-Werts und seiner Entwicklung im Carplay-Fenster während der Fahrt. 

In diesem Kapitel führen wir Sie durch den Prozess der Erstellung verschiedener Verknüpfungen im automatisierten Insulinabgabesystem iAPS. Im Einzelnen behandeln wir die folgenden Schritte:

- So verbinden Sie Ihren Glukosesensor mit Ihrer iAPS-App.

- So koppeln Sie Ihren Omnipod DASH.

- Der Prozess der Erstellung eines Nightscout-Kontos, das als Datenhub für iAPS dient.

- So stellen Sie eine Verbindung zwischen der iAPS-App und Nightscout her, um eine reibungslose Übertragung der Blutzucker- und Insulindaten zu gewährleisten.

- Und wie Sie iAPS auf Ihrer Apple Watch konfigurieren.

Wenn Sie diese Schritte befolgen, können Sie die erforderlichen Verbindungen innerhalb des iAPS-Systems herstellen und so eine effektive automatisierte Insulinabgabe für die Diabetesbehandlung ermöglichen.

### 3.1 Sensor mit der iAPS-App verbinden

Lassen Sie uns einen Blick auf den Anschluss der am häufigsten verwendeten Sensoren wie FreeStyle Libre 2, 2 Plus, Dexcom G6, G7 und ONE Plus werfen.

Bei den europäischen FreeStyle Libre 2- oder 2 Plus-Sensoren besteht der erste Schritt darin, den Sensor über die LibreLink-App zu starten. Nach einer einstündigen Aufwärmphase können Sie die Verbindung zwischen Ihrem Sensor und der iAPS-App herstellen. Navigieren Sie in iAPS zu „Einstellungen“, wählen Sie „CGM“ und dann „Libre-Transmitter“. Tippen Sie auf die Konfigurationsoption, um „Libre 2 Direct“ auszuwählen. Hier können Sie den Kopplungsvorgang starten und Ihren Sensor scannen. Dadurch kann iAPS Daten direkt von Ihrem FreeStyle Libre 2- oder 2 Plus-Sensor empfangen. Nach dem Scannen werden Ihre Sensorinformationen auf dem Bildschirm angezeigt und Ihr aktueller Sensor-Glukosewert ist auf dem iAPS-Startbildschirm sichtbar. Nach 14 Tagen funktioniert der FreeStyle Libre 2- oder 2 Plus-Sensor nicht mehr. Sie können einen neuen Sensor über die LibreLink- und iAPS-App starten. Um sicherzustellen, dass iAPS das richtige Sensorsignal empfängt, ist es ratsam, Ihr iPhone neu zu starten und den alten Sensor in einem separaten Raum zu platzieren. Wenn Sie unterbrechungsfreie Glukosewerte wünschen, können Sie Ihren Sensor zuerst in der LibreLink-App und dann nach der Aufwärmphase in der iAPS-App wechseln. Es ist gut zu wissen, dass die Lebensdauer der FreeStyle Libre 2-Sensoren in der iAPS-App 12 Stunden länger ist als in der LibreLink-App.

Bei Dexcom G6-Sensoren starten Sie zunächst den Sensor mit der Dexcom G6-App. Verbinden Sie dann Ihren Dexcom G6-Sensor mit der iAPS-App, indem Sie Dexcom G6 auswählen und die Seriennummer des Transmitters eingeben. Nach einer zweistündigen Aufwärmphase erhalten Sie Ihre Ergebnisse.

Starten Sie den Dexcom G7- und Dexcom ONE Plus-Sensor mit der Dexcom G7- oder Dexcom ONE Plus-App, vorzugsweise nach einer Aufwärmphase von mindestens 30 Minuten, um eine Überlappung der Sensoren zu ermöglichen. Wählen Sie in iAPS für beide Sensortypen „Dexcom G7“ aus. iAPS sollte das Sensorsignal automatisch erkennen. 

Sie können sich dafür entscheiden, Sensorwarnungen entweder über die LibreLink- oder Dexcom-App oder über die iAPS-App über die Benachrichtigungen in den Einstellungen zu erhalten. Die iAPS verfügt nur über Warnungen bei hohem und niedrigem Blutzucker und bietet somit nur minimale Warnungsarten. Wenn Sie mehr Warnungsoptionen benötigen, sollten Sie die Verwendung Ihrer nativen Sensor-App oder einer Open-Source-Anwendung wie xDrip4iOS in Betracht ziehen.

### 3.2 Insulinpumpe mit der iAPS-App verbinden

Die meisten Menschen verwenden iAPS mit einer Omnipod DASH Insulinpumpe. Wenn Sie Omnipod Eros oder eine ältere Medtronic-Pumpe verwenden möchten, benötigen Sie einen Riley Link.

Wir zeigen Ihnen, wie Sie einen Omnipod DASH Pod verbinden. 

- Gehen Sie zunächst zu den Einstellungen und wählen Sie „Omnipod DASH“.

- Zunächst werden Sie aufgefordert, Ihre Ablauf-Erinnerung, Ihre Erinnerung bei niedrigem Reservoir und Ihren Insulintyp einzustellen. 

- Dann können Sie auf Omnipod DASH tippen, um zum Pumpenbildschirm zu gelangen, und „Pod koppeln“ auswählen. 

Die App führt Sie durch die verschiedenen Schritte, ähnlich wie beim Omnipod DASH PDM. Füllen Sie zunächst Ihren Pod mit Insulin, verbinden Sie dann Ihren Pod, entfernen Sie die Nadelschutzkappe und bringen Sie den Pod an Ihrem Körper an. Führen Sie schließlich die Kanüle ein. 

Sobald Ihr Pod gekoppelt ist, wird in der App-Oberfläche ein spezielles DASH-Popup angezeigt. Wenn Sie darauf tippen, gelangen Sie zum Pumpenbildschirm, wo Sie Informationen zu Ihrer Omnipod DASH-Pumpe abrufen und deren Funktionen steuern können. Die Schaltflächen sind intuitiv und ersetzen die Funktionen des PDM von Omnipod. Obwohl das PDM bei Verwendung von iAPS nicht benötigt wird, wird empfohlen, es als Backup-Gerät aufzubewahren.

Für Benutzer anderer Insulinpumpen zeigt die App-Oberfläche verschiedene Optionen an, die dem jeweiligen Pumpentyp entsprechen. Diese Funktionen stellen sicher, dass Sie die Insulinabgabe über Ihre verbundene Pumpe mithilfe der iAPS-App effektiv verwalten und steuern können.

### 3.3 Erstellen einer Nightscout-Website

Nightscout ist keine Plattform, auf der man sich anmeldet, sondern eine Website, die man selbst erstellt oder erstellen lässt, was mit zusätzlichen Kosten verbunden sein kann.

Ein Nightscout-Konto besteht aus einer Website-URL (Name) und einem Passwort für den Zugriff auf die Website. 

Nightscout-Konten werden als individuelle Benutzerkonten erstellt. Es gibt keine Nightscout-Plattform speziell für Gesundheitsdienstleister.

Nightscout ermöglicht die Echtzeit-Verfolgung Ihrer Sensor- und Insulindaten, sodass Sie diese mit Ihren Angehörigen oder Ihrem Gesundheitsdienstleister teilen können. Darüber hinaus ist Nightscout die einzige Methode zur Erstellung von Berichten aus Ihrem automatisierten Insulinabgabesystem iAPS.

Nightscout ist mehr als nur eine Website für iAPS-Daten; es kann mit verschiedenen Geräten verbunden werden. Nightscout fungiert als zentrale Schnittstelle, die Daten von Sensoren empfängt und an mehrere Geräte wie Mobiltelefone, Smartwatches, Computer und andere Überwachungsgeräte weiterleitet. Es bietet vielfältige Möglichkeiten für den Zugriff auf und die Anzeige von Glukoseinformationen, darunter über Smartwatches, Desktop-Widgets, wandmontierte Geräte und die Integration mit Sprachassistenten wie Alexa.

Es gibt mehrere Möglichkeiten, eine Nightscout-Website zu erstellen.

Nightscout ist eine Open-Source-Software. Alle Informationen finden Sie unter github.nightscout.io.

- Sie können es selbst einrichten, indem Sie die Schritt-für-Schritt-Anleitungen verwenden, die online verfügbar sind. 

- Oder es gibt Unternehmen, die Nightscout-Einrichtungsservices anbieten, wie beispielsweise T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy und Opensource.clinic.

- Nightscout und die damit verbundenen Dienste sind nicht von der FDA zugelassen, mit Ausnahme des Dienstes von T1Pal.

- Es liegt keine Zulassung durch europäische Behörden vor, daher erfolgt die Verwendung auf eigene Gefahr.

- Nightscout scheint DSGVO- und HIPAA-konform zu sein, beansprucht jedoch aufgrund fehlender Prüfer keine offizielle Konformität.

- Es ist äußerst wichtig, die Blutzuckerdaten des Sensors sicher zu behandeln und Ihre Nightscout-URL mit einem Passwort zu schützen. 

- Wenn Sie Ihre Nightscout-Website mit einem Angehörigen oder Gesundheitsdienstleistern teilen möchten, wird empfohlen, für diese Personen ein separates Token zu erstellen.

Wenn Sie diese Schritte befolgen, können Sie ganz einfach und sicher eine Nightscout-Website erstellen, auf der Sie Ihre Diabetesdaten effektiv verfolgen und teilen können.

### 3.4 Verknüpfung der iAPS-App mit Nightscout

Um Ihre iAPS-Daten mit Ihrer Nightscout-Website zu verbinden, gehen Sie einfach zu „Einstellungen“, dann zu „Nightscout“ und geben Sie Ihre Nightscout-URL und Ihr Passwort ein. 

Sobald die Verbindung hergestellt ist, werden Ihre iAPS-Daten auf Ihrer Nightscout-Website angezeigt. So erhalten Sie, Ihre Familie und Ihr Arzt Echtzeitinformationen darüber, wie Sie Ihren Diabetes behandeln.

Wenn Sie „Fernsteuerung“ aktivieren, können vertrauenswürdige Personen Ihnen Insulin verabreichen, Kohlenhydrate eingeben oder Ihre Insulineinstellungen über ihren Nightscout-Login anpassen.

3.5 iAPS-App auf Apple Watch

Mit einer Apple Watch können Sie nicht nur Ihren Sensor-Glukose- und Insulinspiegel am Handgelenk verfolgen, sondern auch Kohlenhydrate hinzufügen, Bolusgaben verabreichen und ein Profil von Ihrer Uhr aus auswählen/einrichten/beenden. 

iAPS wird automatisch auf Ihre verbundene Apple Watch heruntergeladen. Auf Ihrer Apple Watch können Sie eine iAPS-Komplikation in einem modularen Zifferblatt einstellen.

Wenn Sie auf die iAPS-Komplikation auf Ihrem Zifferblatt tippen, wird ein iAPS-Bildschirm angezeigt, auf dem Sie Ihre Glukose- und Loop-Daten, Ihr Insulin on Board und 3 Aktionsschaltflächen sehen können. Hier geben Sie einen Insulinbolus basierend auf den Kohlenhydraten, die Sie zu sich nehmen werden, wählen/legen/stoppen ein Profil oder geben einen manuellen Insulinbolus.

In diesem Kapitel haben wir die verschiedenen Verbindungsmöglichkeiten von iAPS untersucht. Von Glukosesensoren über Insulinpumpen bis hin zu Nightscout ermöglichen diese Verbindungen eine nahtlose Kommunikation für ein effektives Diabetesmanagement. Durch die Einrichtung dieser Verbindungen können Nutzer die Funktionen von iAPS voll ausschöpfen und ihre Diabeteserkrankung selbst in die Hand nehmen.
