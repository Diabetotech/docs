<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q-F8i43p6C_snkL3lqG5Xof -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/tLNFDdlpmJI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. twiist nach dem CARES-Paradigma</u>**

In diesem Teil des Moduls werden wir uns das twiist AID-System anhand des CARES-Paradigmas ansehen.

Wir werden erläutern, wie twiist die automatisierte Insulinabgabe berechnet und anpasst, was passiert, wenn das System in den manuellen Modus wechselt, wichtige Informationen zur Aufklärung, wie das System mit dem kompatiblen Sensor interagiert und wie Daten mit Ihrem medizinischen Betreuungsteam geteilt werden können. Abschließend werden wir die offiziellen Indikationen und den Umgang mit Updates besprechen. Lassen Sie uns beginnen!

### 2.1 twiist AID gemäß dem CARES-Paradigma

#### #1 Berechnen

Der twiist Loop-Algorithmus passt die voreingestellte Basalinsulinrate alle 5 Minuten auf der Grundlage der Glukosevorhersage für bis zu 6 Stunden an. Diese Vorhersagen werden unter Berücksichtigung mehrerer Faktoren berechnet:

- Die Carbs On Board-Vorhersage schätzt die Auswirkung der aufgenommenen Kohlenhydrate auf den Glukosespiegel mithilfe eines dynamischen Kohlenhydratabsorptionsmodells.

- Die Vorhersage von Insulin On Board berücksichtigt die Wirkung des bereits im Körper vorhandenen Insulins. 

- Die Glukose-Momentum-Prognose berücksichtigt die durchschnittliche Änderungsrate des Glukosespiegels zwischen dem aktuellen Messwert und dem Messwert vor 15 bis 30 Minuten.

- Die Vorhersage der retrospektiven Korrektur berücksichtigt die Differenz zwischen den vorhergesagten und den tatsächlichen Glukosewerten der letzten 30 Minuten.

Alle 5 Minuten berechnet der twiist Loop-Algorithmus den Insulinbedarf, indem er den vorhergesagten Glukosespiegel mit dem Zielglukosespiegel vergleicht und die Differenz durch den Insulinsensitivitätsfaktor teilt. Dieser Insulinbedarf wird zur Berechnung einer temporären Basalrate für die nächsten 30 Minuten verwendet und ermöglicht eine kontinuierliche Anpassung der Basalrate.

In der twiist-App kann der Zielwert für den Blutzucker – der sogenannte Korrekturbereich – für jeden 30-Minuten-Zeitblock individuell angepasst und zwischen 87 und 180 mg/dl bzw. 4,8 und 10 mmol/l eingestellt werden.

Wenn der Glukosespiegel in den nächsten 3 Stunden voraussichtlich unter den Glukose-Sicherheitsgrenzwert fällt, wird die Basalinsulinabgabe unterbrochen, um einer Hypoglykämie vorzubeugen. Dieser Sicherheitsgrenzwert kann zwischen 67 und 110 mg/dl oder 3,7 und 6,1 mmol/l eingestellt werden. 

#### #2 Anpassen

Mit twiist können Nutzer und ihre Gesundheitsdienstleister eine Vielzahl von Parametern individuell anpassen, darunter:

- Der Korrekturbereich – es wird empfohlen, mit einem Korrekturbereich von 100 bis 115 mg/dl oder 5,6 bis 6,4 mmol/l zu beginnen.

- Eine spezielle Voreinstellung für vor dem Essen und eine Voreinstellung für das Training – darauf gehen wir in den nächsten Folien ein.

- Basalraten – einstellbar in 30-Minuten-Intervallen

- Kohlenhydratanteile und Insulinsensitivität – individuell auf Ihre Bedürfnisse zugeschnitten.

- Obwohl die Wirkungsdauer des Insulins auf 6 Stunden festgelegt ist, besteht die Möglichkeit, das Insulinmodell auszuwählen, das die maximale Wirkungsdauer des Insulinmodells bestimmt.

- Auch der Glukose-Sicherheitsgrenzwert kann individuell angepasst werden. Es wird jedoch empfohlen, ihn für Erwachsene auf 75 mg/dl oder 4,2 mmol/l und für Kinder auf 80 mg/dl oder 4,4 mmol/l festzulegen.

- Die Abgabegrenzen, insbesondere die maximale Basalrate, sind ein wichtiger Hebel für die Aggressivität des Twist-Loop-Algorithmus. Es wird empfohlen, mit einer maximalen Basalrate zu beginnen, die das 3- bis 4-fache der höchsten geplanten Basalrate beträgt, und diese dann nach Bedarf anzupassen.

Das twiist AID-System bietet außerdem zwei spezielle Glukosezielwerte:

- Die Trainingsvoreinstellung mit einem höheren Glukosezielbereich, um Hypoglykämie während des Trainings zu verhindern. Es wird empfohlen, diesen Wert auf 150 bis 170 mg/dl oder 8,3 bis 9,4 mmol/l einzustellen.

- Die Voreinstellung vor dem Essen mit einem niedrigeren Glukosezielbereich dient dazu, eine Hyperglykämie nach dem Essen zu verhindern. Es wird empfohlen, diesen Wert auf 80 bis 100 mg/dl oder 4,4 bis 5,6 mmol/l einzustellen.

Darüber hinaus haben Sie jederzeit die Möglichkeit, Loop auszuschalten und eine temporäre Basalrate zu verwenden, um Ihre Insulinabgabe an Ihre Bedürfnisse anzupassen.

Diese Anpassungen bieten Ihnen Flexibilität und sorgen gleichzeitig dafür, dass twiist weiterhin sicher im Hintergrund automatisiert.

#### #3 Zurücksetzen

Loop schaltet sich aus oder kehrt in den manuellen Modus zurück, wenn länger als 15 Minuten keine Verbindung zum Sensor besteht. Dies geschieht auch, wenn sich der Sensor aufwärmt. Das Loop-Symbol wird rot und Ihre Basalinsulinabgabe kehrt zu Ihrer geplanten Basalrate zurück, bis CGM-Werte verfügbar sind oder ein Fingerstick-Glukosewert manuell eingegeben wird.

Wenn Loop ausgeschaltet ist oder sich im „Manuellen Modus“ befindet, stehen Ihnen weiterhin viele Funktionen der Pumpe zur Verfügung. 

- Ihr Basalinsulin wird gemäß Ihrer geplanten Basalrate abgegeben, oder Sie können eine temporäre Basalrate einstellen.

- Sie können einen Insulinbolus mit dem integrierten Bolusrechner verabreichen.

- Und Sie können den Bolus-Knopf an der Pumpe verwenden, um einen Insulinbolus zu verabreichen, wenn diese Funktion aktiviert ist.

Wenn die twiist-Pumpe und die App nicht miteinander kommunizieren oder Ihr iPhone ausgeschaltet ist, sind die folgenden Funktionen weiterhin verfügbar:

- Wenn Loop aktiviert ist, passt das twiist AID-System die Basalrate weiterhin anhand der Informationen aus Ihrem CGM an.

- Wenn Loop ausgeschaltet ist, liefert das twiist AID-System weiterhin das programmierte Basalinsulin. 

- Ein-Knopf-Bolusse können ebenfalls weiterhin verabreicht werden (sofern in den Einstellungen aktiviert). 

#### #4 Aufklären

Eine angemessene Aufklärung ist bei der Einführung eines automatisierten Insulinabgabesystems von entscheidender Bedeutung. Allgemeine Informationen zur Aufklärung finden Sie im allgemeinen Modul. 

Die behandelten allgemeinen Bildungspunkte waren:

- Verwenden Sie weniger Kohlenhydrate, um eine Hypoglykämie zu korrigieren.

- Wenn der Blutzuckerspiegel ohne ersichtlichen Grund hoch bleibt, sollten Sie Probleme mit dem Infusionsset in Betracht ziehen.

- Vertrauen Sie dem AID-System und vermeiden Sie unnötige manuelle Eingriffe.

- Bolus vor den Mahlzeiten. 

- Starten Sie den Trainingsmodus ein bis zwei Stunden vor der Aktivität.

- Stoppen Sie die Insulinabgabe, wenn die Pumpe länger als 15 Minuten nicht angeschlossen ist. 

- Auf Alarme reagieren.

- Und suchen Sie Unterstützung durch Gleichgesinnte, um Ratschläge zu erhalten und Erfahrungen auszutauschen.

Hier sind einige zusätzliche Informationen speziell zur Verwendung des twiist AID-Systems:

- Tragen Sie Ihre Pumpe und Ihr CGM auf derselben Körperseite, um Kommunikationsfehler zu minimieren. Das twiist-Logo auf der Pumpe sollte von Ihrem Körper wegzeigen. 

- Halten Sie Ihr iPhone immer aufgeladen und innerhalb der Bluetooth-Reichweite Ihrer Pumpe.

- Aktivieren Sie in Ihren iPhone-Einstellungen immer die Optionen „Benachrichtigungen“ und „Kritische Warnungen“, um sicherzustellen, dass Sie Benachrichtigungen der Twiist-App erhalten.

- Schließen Sie die twiist-App nicht und lassen Sie sie im Hintergrund geöffnet. Wenn die twiist-App geschlossen wird, wird die Insulinabgabe fortgesetzt, aber Sie erhalten keine Benachrichtigungen oder Statusaktualisierungen.

- Nutzen Sie die Voreinstellung „Vor dem Essen“ vor den Mahlzeiten. 

- Verwenden Sie die Pumpe nicht beim Schwimmen oder Baden. Das Eintauchen der Pumpe in Wasser kann zu Fehlfunktionen führen.

Für Personen, die an DIY Loop gewöhnt sind und zum twiist AID-System wechseln, ist es wichtig zu wissen, dass der twiist Loop-Algorithmus eine frühere Version des DIY Loop-Algorithmus ist:

- Es bietet keine Übersteuerungen, Profile, Auto-Bolus, Anpassungen und Algorithmus-Experimente. 

- Es besteht keine Verbindung zu Nightscout, sodass die Pflegekraft keine Alarme verfolgen oder Fernbefehle geben kann.

Im Gegensatz zu DIY-Systemen ist twiist jedoch von der FDA zugelassen, bietet automatische Updates und verfügt über zertifizierten Trainer-Support sowie einen 24/7-Kundendienst, sodass Sie bei Problemen Hilfe erhalten.

#### #5 Sensor

Zum Zeitpunkt der Erstellung dieses Kurses ist das twiist AID-System nur mit dem FreeStyle Libre 3 Plus-Sensor kompatibel. 

Der FreeStyle Libre 3 Plus Sensor kann nur mit der twiist App verwendet werden, nicht jedoch mit der FreeStyle Libre 3 App oder dem Libre 3 Empfänger. Das bedeutet, dass die Werte weder an LibreView übertragen noch über LibreLinkUp geteilt werden können.

Wenn Sie Zweifel an der Genauigkeit Ihrer Sensorwerte haben oder der Meinung sind, dass diese Ihren Zustand nicht widerspiegeln, führen Sie zur Bestätigung einen Fingerstich-Test durch. Wenn Sie eine erhebliche Abweichung feststellen – beispielsweise einen Unterschied von mehr als 20 % zwischen den Sensor- und Fingerstich-Werten, selbst wenn Ihr Blutzucker innerhalb des Zielbereichs stabil ist –, ist es ratsam, Loop zu deaktivieren, bis das Problem behoben ist. Ersetzen Sie gegebenenfalls den Glukosesensor, um das Problem zu beheben.

#### #6 Teilen von Daten

Die Daten aus twiist können nahtlos in Tidepool hochgeladen werden, wo Sie und Ihr Gesundheitsteam Berichte über Insulinabgabe, Glukosemuster, Kohlenhydrate und Einstellungen einsehen können.

Ihre Familie und Ihre Angehörigen können die insiight-App nutzen, um Sie in Echtzeit zu verfolgen. Zum Zeitpunkt der Erstellung dieses Kurses bietet die insiight-App jedoch keine Benachrichtigungen an, was für Pflegekräfte ein entscheidender Nachteil sein könnte.

### 2.2 Indikationen

Das twiist AID-System ist von der FDA für Menschen mit Diabetes ab 6 Jahren zugelassen, die Insulin benötigen. Es ist für den Gebrauch durch einen einzelnen Patienten zu Hause bestimmt und verschreibungspflichtig.

Das System ist mit Humalog-, Novolog- oder Novorapid U100-Insulin kompatibel. Einige Menschen verwenden Fiasp oder Lyumjev ohne Probleme, dies ist jedoch noch nicht offiziell zugelassen.

Bitte beachten Sie, dass das twiist AID-System derzeit nicht über eine CE-Kennzeichnung verfügt und nicht für die Verwendung durch Schwangere, Dialysepatienten oder schwerkranke Personen vorgesehen ist.

Das twiist AID-System ist vollständig von einem iPhone (mit iOS 18 oder höher) abhängig. In Zukunft könnten eine Android-Version und eine Version für einen Empfänger verfügbar werden.

### 2.3 Software-Updates

Im Gegensatz zu Open-Source-AID-Systemen, die manuell neu erstellt werden müssen, bietet twiist automatische Updates über den App Store und offizielle Firmware-Veröffentlichungen.

Es wird empfohlen, die automatischen Updates auf Ihrem iPhone zu aktivieren, damit Sie immer die neueste Version der Apple-Software verwenden. Wenn Updates für die Twiist-App verfügbar sind, können diese direkt aus dem Apple App Store auf Ihr iPhone installiert werden.

Dadurch stellen Sie sicher, dass Sie stets über die neuesten Sicherheitsverbesserungen und Funktionen verfügen, ohne dass technische Arbeiten erforderlich sind.

Sie verstehen nun, wie das twiist AID-System innerhalb des CARES-Paradigmas funktioniert, einschließlich seiner zugelassenen Indikationen und automatischen Software-Updates, die es aktuell und sicher halten.

In der nächsten Lektion bauen wir auf dieser Grundlage auf und zeigen, wie alle Systemkomponenten miteinander verbunden werden und wie das twiist AID-System in realen Situationen eingesetzt wird.
