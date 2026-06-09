<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q9iReuRuhE1loCq_DxJYhHf -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_HIER" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Komponenten verbinden</u>**

In diesem Kapitel führen wir Sie durch den Prozess, die erforderlichen Verknüpfungen im automatisierten Insulinabgabesystem Trio zu erstellen. Diese Verknüpfungen stellen Verbindungen zwischen verschiedenen Komponenten her, um eine reibungslose Kommunikation und einen nahtlosen Datenaustausch sicherzustellen. 

Trio funktioniert folgendermaßen: 

- Der Glukosewert wird alle 1 bis 5 Minuten mithilfe eines Glukosesensors gemessen, zum Beispiel Dexcom G6, G7, Dexcom ONE Plus, FreeStyle Libre 2 oder FreeStyle Libre 2 Plus. 

- Nachdem Sie Ihren europäischen Libre 2- oder 2 Plus-Sensor mit Ihrer LibreLink-App gestartet haben, sendet der Sensor die Glukosewerte direkt an Ihre Trio-App. Bei Dexcom-Sensoren muss die Dexcom App aktiv bleiben. 

- Trio berechnet die erforderliche Insulindosis und sendet sie an Ihre Insulinpumpe, zum Beispiel Omnipod DASH, Medtrum Nano, Dana RS, Dana-i, Omnipod Eros oder ältere Medtronic-Pumpen. 

- Die Insulinpumpe gibt das benötigte Insulin ab und liefert Pumpendaten zurück an die Trio- App. 

- Trio teilt die Glukose- und Insulindaten mit Nightscout, das als Anzeigeprogramm dient. Trio teilt diese Informationen außerdem mit Apple Health und Tidepool, und die Dexcom- und LibreLink-App senden Glukosedaten an Dexcom Clarity bzw. LibreView.

- Außerdem stellt die Trio-App eine Apple-Watch-Version bereit, die während desselben Build- & Installationsprozesses mitinstalliert wird. So können Sie Ihre Glukosewerte in Echtzeit auf Ihrer Apple Watch ansehen, einen Insulinbolus abgeben und sogar Overrides sowie temporäre Ziele direkt über Ihre Apple Watch starten und stoppen – für mehr Komfort bei Ihrem Diabetes-Management.

In diesem Kapitel führen wir Sie durch den Prozess, verschiedene Verknüpfungen im automatisierten Insulinabgabesystem Trio einzurichten. Konkret behandeln wir die folgenden Schritte: 

- Wie Sie Ihren Glukosesensor mit Ihrer Trio-App verbinden.

- Wie Sie Ihre Insulinpumpe koppeln.

- Den Prozess zum Erstellen eines Nightscout-Kontos, das als Daten-Hub für Trio dient.

- Wie Sie eine Verbindung zwischen der Trio-App und Nightscout herstellen, um die reibungslose Übertragung von Glukose- und Insulindaten sicherzustellen.

- Und wie Sie Trio auf Ihrer Apple Watch konfigurieren. 

 Indem Sie diese Schritte befolgen, können Sie die notwendigen Verknüpfungen im Trio-System herstellen, wodurch eine effektive automatisierte Insulinabgabe zur Diabetesbehandlung ermöglicht wird.

### 3.1) Sensor mit der Trio-App verbinden 

Lassen Sie uns in den Prozess eintauchen, wie Sie die am häufigsten verwendeten Sensoren wie den FreeStyle Libre 2, 2 Plus, Dexcom G6, G7 und ONE Plus verbinden.

Europäischer FreeStyle Libre 2 Sensor 

Für europäische FreeStyle Libre 2- oder 2-Plus-Sensoren besteht der erste Schritt darin, Ihren Sensor über die LibreLink-App zu starten. Nach der einstündigen Aufwärmphase können Sie die Verbindung zwischen Ihrem Sensor und der Trio-App herstellen. In Trio navigieren Sie zu „Einstellungen“, wählen Sie „Geräte“, CGM, und entscheiden Sie sich dann für FreeStyle Libre. 

Tippen Sie auf die Konfigurationsoption, um Libre 2 Direct auszuwählen. Hier können Sie den Kopplungsvorgang starten und Ihren Sensor scannen. Dadurch kann Trio Daten direkt von Ihrem FreeStyle Libre 2- oder 2-Plus-Sensor empfangen. Nach dem Scan werden Ihre Sensorinformationen auf dem Bildschirm angezeigt, und Ihr aktueller Sensorglukosewert ist auf dem Trio-Startbildschirm sichtbar. Achten Sie darauf, die Bluetooth-Berechtigungen in der Libre-App zu deaktivieren, sonst ist die Verbindung von Trio instabil. Nach 14 Tagen hört der FreeStyle Libre 2- oder 2-Plus-Sensor auf, zu funktionieren. Sie können einen neuen Sensor über die LibreLink- und die Trio-App starten.

FreeStyle-Libre-1-Sensor 

Wenn Sie den FreeStyle Libre 1-Sensor mit einem Aftermarket-Sender verwenden, können Sie „Bluetooth transmitter“ auswählen und den Anweisungen in xDrip4iOS folgen. Dieser Sensor erfordert eine dauerhafte Internetverbindung und wird allgemein nicht empfohlen.

Dexcom G6 

Für Dexcom G6-Sensoren starten Sie den Sensor über die Dexcom G6 App.

Wählen Sie in der Trio-App im CGM-Menü Dexcom G6 aus und geben Sie die Seriennummer des Senders ein. Nach einer zweistündigen Aufwärmphase erhalten Sie Ihre Ergebnisse. Sie müssen die G6-App im Hintergrund weiterlaufen lassen. Sensorwechsel werden in der G6-App durchgeführt.

Dexcom G7 oder Dexcom ONE Plus 

Für den Dexcom G7- und den Dexcom ONE Plus-Sensor starten Sie den Sensor über die Dexcom G7- bzw. Dexcom ONE Plus-App, vorzugsweise nach einer Aufwärmphase von mindestens 30 Minuten, um eine Überlappung der Sensoren zu ermöglichen.

Wählen Sie in Trio Dexcom G7 und ONE+ aus. Sobald in der Dexcom-App Messwerte starten, liest Trio die G7- und ONE+-Messwerte automatisch aus. Sie können wählen, Sensorwarnungen entweder aus der LibreLink- oder der Dexcom-App zu erhalten oder über die Trio-App unter „Mitteilungen“ in den Einstellungen. Trio bietet 3 Optionen für Glukosewarnungen. „Deaktiviert“ gibt keine Warnungen aus, „Immer“ warnt Sie bei jedem Glukosewert, und „Nur Alarmgrenzen“ warnt Sie, wenn die Glukose über oder unter den von Ihnen festgelegten Grenzwerten liegt. Wenn Sie mehr Warnoptionen benötigen, nutzen Sie am besten Ihre jeweilige Sensor-App oder eine Open-Source-Anwendung wie xDrip4iOS.

### 3.2) Insulinpumpe mit der Trio-App koppeln 

Die meisten Menschen werden Trio mit einem Omnipod DASH, Dana oder einer TouchCare Nano-Insulinpumpe verwenden. Wenn Sie Omnipod Eros oder eine ältere Medtronic-Pumpe nutzen möchten, benötigen Sie einen Riley Link.

Wir zeigen den Ablauf, wie ein Omnipod DASH Pod gekoppelt wird.

- Gehen Sie zuerst zu den Einstellungen, Geräte, Insulinpumpe und wählen Sie Omnipod DASH aus. 

- Zunächst werden Sie gebeten, Ihre Erinnerung an das Ablaufdatum, die Erinnerung bei niedrigem Reservoir, und Ihren Insulintyp festzulegen. 

- Dann können Sie auf Omnipod DASH tippen, um zum Pumpenbildschirm zu gelangen und „Pair Pod“ auszuwählen.

Die App führt Sie durch die einzelnen Schritte, ähnlich wie das Omnipod DASH PDM. Füllen Sie zuerst Ihren Pod mit Insulin, koppeln Sie dann Ihren Pod, entfernen Sie die Nadelschutzkappe und bringen Sie den Pod an Ihrem Körper an. Fahren Sie schließlich fort, um die Kanüle einzuführen.

Sobald Ihr Pod gekoppelt ist, sehen Sie in der App-Oberfläche ein eigenes DASH-Pop-up. Wenn Sie darauf tippen, gelangen Sie zum Pumpenbildschirm, wo Sie Informationen zu Ihrer Omnipod DASH-Pumpe abrufen und ihre Funktionen steuern können. Die Schaltflächen sind intuitiv und ersetzen die Funktionen, die sonst vom PDM des Omnipod ausgeführt werden. Auch wenn der PDM nicht benötigt wird, wenn Sie Trio verwenden, wird empfohlen, ihn als Backup-Gerät aufzubewahren.

Für Nutzer anderer Insulinpumpen zeigt die App-Oberfläche unterschiedliche Optionen an, die dem jeweiligen Pumpentyp entsprechen. Diese Funktionen stellen sicher, dass Sie die Insulinabgabe über Ihre gekoppelte Pumpe mit der Trio-App effektiv verwalten und steuern können.

### 3.3) Eine Nightscout-Website erstellen 

Nightscout ist keine Plattform, in die man sich einloggt, sondern eine Website, die Sie selbst erstellen oder erstellen lassen, was unter Umständen mit zusätzlichen Kosten verbunden ist.

Ein Nightscout-Konto besteht aus einer Website-URL und einem Passwort, um auf die Website zuzugreifen. Nightscout-Konten werden als individuelle Benutzerkonten erstellt. Es gibt keine Nightscout-Plattform speziell für Gesundheitsdienstleister.

Nightscout ermöglicht das Echtzeit-Tracking Ihrer Sensor- und Insulindaten, sodass Sie diese mit Ihren Angehörigen oder Ihrer behandelnden Fachkraft teilen können. Außerdem ist Nightscout die einzige Methode, um Berichte aus Ihrem Trio-System zur automatisierten Insulinabgabe zu erstellen.

Nightscout ist mehr als nur eine Website für Trio-Daten; es kann sich mit verschiedenen Geräten verbinden.

Nightscout fungiert als zentrale Anlaufstelle, empfängt Daten von Sensoren und verteilt sie an mehrere Geräte wie Mobiltelefone, Smartwatches, Computer und andere Überwachungsgeräte. Es bietet vielfältige Möglichkeiten, Glukoseinformationen abzurufen und anzuzeigen – unter anderem über Smartwatches, Desktop-Widgets, wandmontierte Geräte und durch die Integration mit Sprachassistenten wie Alexa.

Es gibt mehrere Möglichkeiten, eine Nightscout-Website zu erstellen. Nightscout ist Open-Source-Software.

Alle Informationen finden Sie auf nightscout.github.io.

- Sie können es selbst einrichten, mithilfe von Schritt-für-Schritt-Anleitungen, die online verfügbar sind. 

- Oder es gibt Firmen, die Nightscout-Einrichtungsservices anbieten, zum Beispiel T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy und Opensource.clinic. 

- Nightscout und die dazugehörigen Dienste sind nicht von der FDA zugelassen, mit Ausnahme des Dienstes von T1Pals'. Es gibt keine Zulassung durch europäische Behörden, daher erfolgt die Nutzung auf eigenes Risiko. Nightscout scheint DSGVO- und HIPAA-konform zu sein, erhebt jedoch aufgrund fehlender Auditoren keinen Anspruch auf eine offizielle Konformität.

Es ist entscheidend, Sensorglukosedaten sicher zu handhaben und Ihre Nightscout-URL mit einem Passwort zu schützen.

Wenn Sie Ihre Nightscout-Website mit einem Angehörigen oder medizinischem Fachpersonal teilen möchten, empfiehlt es sich, dafür ein separates Token zu erstellen.

Indem Sie diese Schritte befolgen, können Sie ganz einfach und sicher eine Nightscout-Website erstellen, sodass Sie Ihre Diabetesdaten effektiv verfolgen und teilen können.

### 3.4) Trio-App mit Nightscout verknüpfen 

Um Ihre Trio-Daten mit Ihrer Nightscout-Website zu verbinden, gehen Sie einfach zu „Einstellungen“, dann zu „Nightscout“, und geben Ihre Nightscout-URL und Ihr Passwort ein. Sobald die Verbindung steht, werden Ihre Trio-Daten auf Ihrer Nightscout-Website angezeigt. So erhalten Sie, Ihre Familie und Ihr Behandlungsteam Informationen in Echtzeit darüber, wie Sie Ihren Diabetes managen. Wenn Sie "Remote Control" aktivieren, können vertrauenswürdige Personen Ihnen Insulin geben, Kohlenhydrate eintragen oder Ihre Insulin-Einstellungen anpassen – über Loop Follow oder mit ihrem Nightscout-Login.

### 3.5) Trio-App auf der Apple Watch 

Mit einer Apple Watch können Sie nicht nur Ihre Sensor-Glukose und das Insulin an Bord direkt am Handgelenk verfolgen, sondern auch Kohlenhydrate eintragen, einen Bolus abgeben und ein Profil direkt über die Uhr auswählen, starten, einstellen oder stoppen. Trio wird automatisch auf Ihre verbundene Apple Watch geladen. Auf Ihrer Apple Watch können Sie in einem modularen Zifferblatt eine Trio-Komplikation einrichten.

Wenn Sie auf die Trio-Komplikation auf Ihrem Zifferblatt tippen, sehen Sie einen Trio-Bildschirm, auf dem Sie Ihre Glukose- und Loop-Daten, Ihr aktives Insulin und Ihre aktiven Kohlenhydrate sehen können. Außerdem können Sie damit Kohlenhydrate hinzufügen, einen manuellen Bolus abgeben und ein Override oder ein temporäres Ziel festlegen. Die Begleit-App dient jedoch nur als Fernbedienung für die iPhone-App; die Verbindung zum CGM und zur Pumpe erfolgt weiterhin über Ihr iPhone, und Sie müssen es mitnehmen.

In diesem Kapitel haben wir die verschiedenen in Trio verfügbaren Verbindungen untersucht. Von Glukosesensoren über Insulinpumpen bis hin zu Nightscout ermöglichen diese Verknüpfungen eine nahtlose Kommunikation für ein effektives Diabetesmanagement. Durch das Einrichten dieser Verbindungen können Nutzerinnen und Nutzer die Funktionen von Trio voll ausschöpfen und die Kontrolle über ihren Diabetes übernehmen.
