<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q_jnVitIWWfQr87ZL2fG0VX -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/CAaAOGDob1Q" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. DBLG1 System mit Kaleido nach dem CARES-Paradigma</u>**

Willkommen zu diesem Kapitel, in dem wir das DBLG1-System mit Kaleido nach dem CARES-Paradigma erkunden werden.

Wir werden erörtern, wie der DBLG1-Algorithmus die automatische Insulinabgabe berechnet und anpasst, wann er in den manuellen Modus zurückkehrt, welche spezifischen Erziehungstipps und Sensorprobleme es gibt und wie das System seine Daten weitergibt. Danach gehen wir auf die offiziellen Indikationen und Software-Updates des DBLG1-Systems mit Kaleido ein.

### 2.1 Die Funktionsweise des DBLG1-Systems auf der Grundlage des CARES-Paradigmas

#1 Berechnen

Das DBLG1 System mit Kaleido basiert auf einem einzigartigen Berechnungsalgorithmus, der verschiedene Faktoren zur Bestimmung der Insulinabgabe berücksichtigt. Hier sind die wichtigsten Aspekte des Berechnungsprozesses:

- Das System gibt alle 5 Minuten auf der Grundlage des aktuellen und des vorhergesagten Blutzuckerspiegels und der täglichen Gesamtinsulindosis Mikrobolus Insulin ab, um den Blutzuckerspiegel so nahe wie möglich am festgelegten Zielwert zu halten. Dabei werden auch die angekündigte körperliche Aktivität und die Mahlzeiten berücksichtigt.

- Bei der Initialisierung wird die Hälfte der voreingestellten täglichen Gesamtinsulindosis dem Basalinsulin und die andere Hälfte dem Mahlzeiteninsulin zugewiesen.

- Der Zielglukosebereich kann zwischen 100 und 130 mg/dL oder 5,6 und 7,2 mmol/l eingestellt werden.

- Autokorrekturbolusse werden alle 5 Minuten verabreicht, wenn der Glukosespiegel voraussichtlich 180 mg/dL oder 10 mmol/l überschreitet. Wird ein Absinken des Glukosespiegels unter die Hypoglykämieschwelle vorhergesagt, wird die Basalinsulinverabreichung pausiert, und es werden Notfallkohlenhydrate empfohlen.

- Das System umfasst sowohl kurzfristige als auch langfristige Lernalgorithmen. Der kurzfristige selbstlernende Algorithmus analysiert die Trends der letzten 2 bis 3 Tage, während der langfristige Algorithmus die Trends der letzten 3 bis 6 Wochen berücksichtigt.

Der DBLG1-Algorithmus verfügt auch über einen einzigartigen Algorithmus für das Mahlzeitenmanagement, der Empfehlungen für die Verabreichung des Mahlzeitbolus enthält. Hier sind die wichtigsten Aspekte des Algorithmus für das Mahlzeitenmanagement:

- In einigen Fällen teilt das System den Mahlzeitbolus in zwei Verabreichungen auf, die sich nach dem Glukosespiegel des Sensors und der Art der Mahlzeit richten.

- Bei normalen Glukosewerten wird der erste Teil des Bolus sofort verabreicht, der zweite Teil nach 30 Minuten. Bei fettreichen Mahlzeiten wird der zweite Teil nach 60 Minuten verabreicht. Der Algorithmus für das Management nach der Mahlzeit kann zusätzlich Korrektur-Mikrobolusgaben zwischen dem ersten und zweiten Teil des Mahlzeitbolus vorsehen. In diesem Fall wird der zweite Teil des Bolus anschließend geändert, um das aktive Insulin zu berücksichtigen.

- Wenn eine Hypoglykämie vorhergesagt wird, kann der zweite Teil des Bolus bis zu 90 Minuten verzögert oder sogar gestrichen werden.

- Wird eine Hyperglykämie zu Beginn der Mahlzeit festgestellt, kann das System den Bolus in einer einzigen Gabe verabreichen. Falls erforderlich, können zusätzliche Autokorrekturbolusgaben erfolgen.

- Nach einer Mahlzeit kann das Basalinsulin durch Autokorrekturbolus ersetzt werden, der in der Regel maximal 3 Stunden lang reicht.

#2 Einstellen

Mit dem DBLG1-Algorithmus haben Sie die Möglichkeit, verschiedene Parameter einzustellen, um Ihre Insulinabgabe zu personalisieren. Hier sind die Parameter, die Sie ändern können:

- Der Zielwert für den Blutzucker. Der Standardwert liegt bei 110 mg/dl oder 6,1 mmol/l, Sie können ihn jedoch zwischen 100 und 130 mg/dl oder 5,6 und 7,2 mmol/l einstellen.

- Die Aggressivität bei den Mahlzeiten bestimmt die Menge des zu den Mahlzeiten abgegebenen Insulins. Der Standardwert ist 100%, und Sie können ihn zwischen 50% und 200% einstellen. Die Einstellung dieses Parameters ermöglicht es Ihnen, mehr oder weniger Insulin für die Mahlzeiten zur Verfügung zu haben, ähnlich wie die Einstellung des Kohlenhydratanteils in anderen automatischen Insulinabgabesystemen.

- Die Aggressivität bei Hyperglykämie steuert die Reaktion auf hohe Glukosespiegel. Der Standardwert ist 100 %, und er kann zwischen 43 % und 186 % eingestellt werden. Das Erhöhen oder Verringern dieses Parameters wirkt sich auf die Insulindosen der Autokorrekturbolusse aus.

- Die Aggressivität bei Normoglykämie moduliert die basale Insulinabgabe bei normalem Glukosespiegel. Der Standardwert ist 100%, und Sie können ihn zwischen 59% und 147% einstellen. Wenn Sie diesen Parameter ändern, wird die Modulation des Basalinsulins mehr oder weniger aggressiv.

- Der Schwellenwert für Hypoglykämie bestimmt den Blutzuckerspiegel, bei dem das System Kohlenhydrate zur Rettung empfiehlt und die Abgabe von Basalinsulin anpasst. Der Standardwert beträgt 70 mg/dl oder 3,9 mmol/l, kann aber zwischen 60 und 85 mg/dl oder 3,3 und 4,7 mmol/l eingestellt werden.

- Die Insulin-Tagesgesamtdosis ist die wichtigste Einstellung zur Feinabstimmung des gesamten Glukosemanagements durch das System. Sie sollte bei zu häufigen Kohlenhydrat-Rettungsempfehlungen und Hypoglykämie reduziert werden, oder im Gegenteil, sie kann bei zu häufiger Hyperglykämie (postprandial oder nüchtern) erhöht werden. Beachten Sie, dass Sie zwar die Gesamttagesdosis des Insulins zwischen 8 und 90 Einheiten pro Tag ändern können, häufige Anpassungen jedoch die Selbstregulierung des Systems beeinträchtigen können. Es wird daher empfohlen, häufige Änderungen zu vermeiden und Anpassungen in Schritten von nicht mehr als 10 % vorzunehmen.

Zusätzlich zu den bereits erwähnten Parametern bietet der DBLG1-Algorithmus weitere Modi, die auf bestimmte Situationen abgestimmt sind:

- Der Modus "Körperliche Aktivität" ist für körperliche Betätigung wie Sport, intensive Gartenarbeit, Hausarbeit usw. gedacht. Eine körperliche Aktivität kann für den aktuellen Tag oder den nächsten Tag angegeben werden. Wenn diese Funktion aktiviert ist, werden der Zielblutzuckerwert und die Hypoglykämie-Schwelle angepasst, um den Anforderungen der Aktivitäten besser gerecht zu werden. Der Zielwert und die Schwellenwerte werden um 70 mg/dl oder 3,9 mmol/l erhöht. Falls erforderlich, werden frühere Notfallkohlenhydrate empfohlen. Die Dauer dieses Modus ist in einem Bereich von 0 bis 24 Stunden einstellbar. Nach der Aktivität senkt der DBLG1-Algorithmus den Zielwert langsam wieder auf den normalen Zielglukosespiegel. Die Art und Intensität der körperlichen Aktivität wirkt sich auf den Grad der Aggressivitätsreduktion bei körperlicher Aktivität aus.

- Der Zen-Modus kann aktiviert werden, wenn Sie eine Hypoglykämie vermeiden und so wenig wie möglich mit dem Bedürfnis, rettende Kohlenhydrate zu essen, belästigt werden möchten. Im Zen-Modus kann der Zielwert um 10 bis 40 mg/dl oder 0,6 bis 2,2 mmol/l erhöht werden. Die Dauer des Zen-Modus kann in einem Bereich von 1 bis 8 Stunden über die Einstellungen angepasst werden.

Wenn Sie mit dem DBLG1-System beginnen, müssen Sie Ihre Gesamtinsulindosis, Ihr Gewicht und die durchschnittliche Grammzahl der Kohlenhydrate, die Sie pro Standardmahlzeit zu sich nehmen, eingeben. Sie können drei Standardmahlzeiten für Frühstück, Mittag- und Abendessen eingeben. Diese Parameter können später bei Bedarf geändert werden.

Es gibt jedoch bestimmte Parameter, die der Algorithmus berechnet und die nicht angepasst werden können.

- Dazu gehören die Basalinsulinrate, das Kohlenhydratverhältnis, die Insulinempfindlichkeit und die Dauer der Insulinwirkung.

- Während der Einrichtung werden Sie aufgefordert, ein Sicherheits-Basalprofil in das DBLG-Handgerät einzugeben, das jedoch nur im manuellen Modus oder im offenen Kreislauf verwendet wird.

- Die Hyperglykämie-Schwelle ist auf 180 mg/dl oder 10 mmol/l festgelegt. Im DBLG1-Handgerät können Sie den Hyperglykämie-Schwellenwert ändern, aber dies hat keinen Einfluss auf den Algorithmus. Sie wirkt sich nur dann aus, wenn der Glukosewert auf Ihrem DBLG1-Handgerät orange angezeigt wird.

#3 Wiederherstellen

Wenn die Verbindung zur Insulinpumpe oder zum Glukosesensor für mehr als 30 Minuten unterbrochen wird, auch während der Aufwärmphase des Sensors, kehrt das DBLG1-System in den manuellen Modus zurück. Sie können den Verbindungsstatus auf dem Systemstatusbildschirm überprüfen. Wenn dort "Signalverlust" oder "Pumpe wartet" angezeigt wird, bedeutet dies, dass die Verbindung nicht hergestellt wurde.

Theoretisch sollte die Verbindung innerhalb eines Bereichs von 2 Metern aufrechterhalten werden, es wird jedoch empfohlen, das Handgerät so nah wie möglich an den Sensor und die Kaleido-Pumpe zu halten, um eine zuverlässige Kommunikation zu gewährleisten.

Im manuellen Modus steht keine Funktion zur Unterbrechung der Insulinabgabe zur Verfügung. Das im manuellen Modus abgegebene Basalinsulin wird als Basal-Sicherheitsprofil bezeichnet, und Sie haben die Möglichkeit, es direkt über Ihr Handgerät einzustellen. Wenn Ihr Handgerät noch mit der Pumpe verbunden ist, können Sie es außerdem verwenden, um einen Insulinbolus zu verabreichen oder eine vorübergehende Basalrate einzustellen.

Sobald die Verbindung zur Pumpe oder zum Sensor wiederhergestellt ist, wechselt das System automatisch in den Automatikmodus oder in den geschlossenen Kreislauf.

#4 Wichtige Informationen/Ausbildung

Bei der Inbetriebnahme eines automatischen Insulinverabreichungssystems wie DBLG1 gibt es allgemeine Aufklärungspunkte, die für alle automatischen Insulinverabreichungssysteme gelten, sowie spezielle Aufklärungspunkte, die für das DBLG1-System gelten. Lassen Sie uns diese durchgehen:

Für eine allgemeine Ausbildung in automatisierten Insulinverabreichungssystemen, beziehen Sie sich bitte auf das generische Modul. Dazu gehören die folgenden Kernpunkte:

- Verwenden Sie weniger Kohlenhydrate, um eine Hypoglykämie zu korrigieren.

- Ziehen Sie ein Problem mit dem Infusionsset in Betracht, wenn der Blutzuckerspiegel über einen längeren Zeitraum ohne ersichtlichen Grund hoch bleibt. "Im Zweifelsfall wechseln Sie es aus."

- Vertrauen Sie dem automatischen Insulinabgabesystem und lassen Sie es seine Arbeit machen.

- Geben Sie einen Mahlzeitbolus etwa 15 Minuten vor dem Essen.

- Aktivieren Sie den Aktivitätsmodus 1 bis 2 Stunden vor der sportlichen Betätigung.

- Unterbrechen Sie vorübergehend die Insulinabgabe, wenn Sie die Pumpe für mehr als 15 Minuten vom Stromnetz trennen.

- Reagieren Sie umgehend auf Systemalarme.

- Deaktivieren Sie automatische Updates auf Ihrem Mobiltelefon, um Störungen zu vermeiden.

- Holen Sie sich Unterstützung von Gleichgesinnten, um zusätzliche Beratung und Erkenntnisse zu erhalten.

Konzentrieren wir uns nun auf die spezifischen Ausbildungspunkte für das DBLG1-System:

- Bei der Initialisierung wird die Hälfte der täglichen Gesamtinsulindosis dem Basalinsulin und die andere Hälfte dem Mahlzeiteninsulin zugewiesen. Wenn diese Aufteilung nicht mit Ihrem tatsächlichen Insulinbedarf übereinstimmt, wird empfohlen, die tägliche Gesamtinsulindosis entsprechend anzupassen. Wenn Sie typischerweise eine geringere Menge an Bolusinsulin im Vergleich zum Basalinsulin verwenden (z. B. 30 über 70 %, wenn Sie eine kohlenhydratarme Ernährung einhalten), kann eine Erhöhung der täglichen Gesamtinsulindosis um 5 bis 10 % bei der Initialisierung von Vorteil sein. Wenn Sie hingegen typischerweise eine größere Menge Bolusinsulin im Vergleich zum Basalinsulin verwenden (z. B. 70 über 30 %, wenn Sie eine größere Menge Kohlenhydrate zu sich nehmen), kann eine Reduzierung der täglichen Gesamtinsulindosis um 5 bis 10 % bei der Initialisierung in Betracht gezogen werden.

- Es wird empfohlen, die Mahlzeiten mindestens 15 Minuten vor der Mahlzeit einzugeben, obwohl der eigentliche Insulinbolus erst 6 Minuten vor der Mahlzeit verabreicht wird. Vergessen Sie nicht, den Insulinbolus zu diesem Zeitpunkt zu bestätigen, sonst wird das Insulin nicht verabreicht.

- Halten Sie das Handgerät nahe am Körper oder in Reichweite und laden Sie es über Nacht auf.

- Halten Sie Notfall-Kohlenhydrate bereit und kennen Sie die Menge an Kohlenhydraten, die sie enthalten (z. B. 5, 10 oder 15 Gramm), um sie schnell und einfach verabreichen zu können.

- Die Anpassung der täglichen Gesamtinsulindosis ist der effektivste Parameter für die Feinabstimmung des DBLG1-Algorithmus. Vermeiden Sie jedoch häufige Anpassungen, da dadurch die automatische Lernfunktion zurückgesetzt wird.

- Sie können die Kohlenhydratinformationen entweder über den Bolusrechner oder als Rettungs-Kohlenhydrate eingeben. Wenn Sie die letztere Option wählen, gibt das System kein zusätzliches Insulin für die aufgenommenen Kohlenhydrate ab.

- Sie können vergangene und zukünftige Mahlzeiten und körperliche Aktivitäten eingeben. Selbst wenn Sie vergessen haben, eine Mahlzeit oder eine Aktivität einzugeben, ist es von Vorteil, sie später einzugeben, damit der Algorithmus sie automatisch erlernen kann.

- Das DBLG1-System bietet zwei zusätzliche Modi: Den Zen-Modus, der das Risiko einer Hypoglykämie verringert, und den vertraulichen Modus, der die Datenübertragung an YourLoops vorübergehend verhindert.

- Nach einer Mahlzeit und während automatischer Boli sinkt der Basalinsulinspiegel entsprechend dem einzigartigen Verhalten des DBLG1-Algorithmus.

- In den YourLoops-Berichten wird die gesamte tägliche Insulindosis in einen Prozentsatz für Basalinsulin und einen Prozentsatz für Bolusinsulin aufgeteilt. Die Autokorrekturbolusmengen werden zum Bolusprozentsatz addiert, so dass in den Berichten häufig ein relativ hoher Bolusprozentsatz zu sehen ist.

Wenn Sie sich mit diesen Schulungspunkten vertraut machen, werden Sie besser verstehen, wie Sie das DBLG1-System optimieren und Ihren Diabetes effektiv verwalten können.

#5 Sensor

Das DBLG1-System verwendet den Dexcom G6-Sensor zur Blutzuckermessung. Wenn Ihr Sensor keine Zahl oder keinen Pfeil anzeigt oder Ihre Messwerte nicht mit Ihren Symptomen übereinstimmen, verwenden Sie Ihr Messgerät mit dem Finger, um Entscheidungen über die Diabetesbehandlung zu treffen. Im Zweifelsfall sollten Sie Ihr Messgerät herausholen.

Wenn es eine signifikante Diskrepanz zwischen dem Blutzuckermesswert des Sensors und der Fingermessung Punktmessung gibt, können Sie in Erwägung ziehen, den Dexcom G6 Sensor über das Handgerät DBLG1 zu kalibrieren. Es ist jedoch wichtig, nur dann zu kalibrieren, wenn Ihr Blutzuckerspiegel in den letzten Minuten stabil und innerhalb des Zielbereichs war. Sie müssen nicht kalibrieren, aber Sie können.

Wenn Sie mit einem neuen Sensor beginnen, erhalten Sie bis zum Ende der zweistündigen Aufwärmphase keine G6-Messwerte oder Alarme/Alarmmeldungen. Verwenden Sie während dieser Zeit Ihr Fingerstichmessgerät, um Behandlungsentscheidungen zu treffen.

#6 Teilen von Daten

Mit dem DBLG1-System haben Sie die Möglichkeit, Insulin- und Glukosedaten über YourLoops und Dexcom Follow mit Ihrem medizinischen Betreuer und Familienmitgliedern zu teilen. Die Überwachung der Glukosewerte in Echtzeit ist für beide Seiten möglich.

Das DBLG1-Handgerät bleibt über die eingebaute SIM-Karte ständig mit YourLoops verbunden, so dass eine manuelle Datenabfrage nicht erforderlich ist. Die Datenübertragung vom Handgerät zur YourLoops-Cloud erfolgt alle 5 Minuten über die 4G-Verbindung der SIM-Karte. Wenn Ihre Mobilfunkverbindung schlecht oder gar nicht vorhanden ist (z. B. wenn Sie sich auf See, in einem Gebirge oder in einer Region ohne Verbindung befinden), kann die Übertragung von Daten an YourLoops beeinträchtigt werden.

Wenn die 4G-Abdeckung nicht verfügbar ist, z. B. während eines Fluges, werden die Daten nicht weitergeleitet. Sie können Ihre Daten jedoch immer noch über die Registerkarte "Verlauf" einsehen, da 3 Monate an Daten gespeichert werden, und das Handgerät verwenden, da es nur Bluetooth für die Verbindung mit der Pumpe und dem Sensor benötigt.

Es ist wichtig zu beachten, dass die SIM-Karte nur innerhalb bestimmter Länder in Europa funktioniert. Wenn Sie also außerhalb der aufgelisteten Länder reisen, wird die SIM-Karte nicht verbunden und die Daten werden nicht an YourLoops übertragen. Wenn die SIM-Karte über einen längeren Zeitraum nicht angeschlossen war, wird sie möglicherweise nicht sofort neu gestartet. Sie wird am ersten Tag des folgenden Monats neu gestartet, wenn sie wieder in SIM-Reichweite ist.

Gesundheitsdienstleister können über ihre jeweiligen Anmeldedaten auf YourLoops zugreifen, während Familienmitglieder den Blutzuckerspiegel über die Dexcom Follow App aus der Ferne überwachen können, vorausgesetzt, der Nutzer hat auch die Dexcom G6 App installiert.

Das DBLG1-System bietet eine einzigartige Funktion namens Confidential Mode, die es dem Benutzer ermöglicht, die Weitergabe seiner Daten für einen bestimmten Zeitraum von 3 Stunden, 1 Tag oder 3 Tagen zu unterbinden. Es ist wichtig zu wissen, dass die Daten nach der Aktivierung des vertraulichen Modus nicht mehr in YourLoops wiederhergestellt werden können.

### 2.2 Hinweise

Der DBLG1-Algorithmus ist CE-lagekennzeichnet für die Verwendung bei Personen mit Typ-1-Diabetes, die mindestens 18 Jahre alt sind. Er ist für Personen mit einem täglichen Insulinbedarf von 8 bis 90 Einheiten pro Tag geeignet. Das System ist nur mit NovoRapid und Humalog 100 U/ml schnell wirkendem Insulin kompatibel, und ist für die Verwendung bei einem Patienten vorgesehen.

Bitte beachten Sie, dass das DBLG1-System derzeit keine FDA-Kennzeichnung hat und nicht für die Verwendung in der Schwangerschaft und während der Dialyse zugelassen ist.

### 2.3 Software-Aktualisierungen

Sie können über das Menü des Mobilteils nach Software-Updates suchen. Wenn ein Update verfügbar ist, tippen Sie auf Herunterladen.

- Wenn der Akku Ihres DBLG1-Mobiltelefons ausreichend ist, können Sie wählen, ob Sie das Update sofort installieren möchten oder ob Sie die vom System voreingestellte Update-Zeit beibehalten möchten.

- Sie können die Aktualisierungszeit ändern, aber sie kann nicht in der Nacht eingestellt werden.

- Vergewissern Sie sich während der Aktualisierung, dass Ihr Akku ausreichend geladen ist, und schalten Sie Ihren DBLG1 NICHT aus. Ihr Gerät kann nach Abschluss der Installation automatisch neu starten.

Zusammenfassend lässt sich sagen, dass das DBLG1-System mit Kaleido verschiedene Komponenten für eine automatische Insulinabgabe integriert. Mit seinem fortschrittlichen Algorithmus und den einstellbaren Parametern bietet das DBLG1-System Flexibilität, um individuelle Bedürfnisse zu erfüllen. Wenn Sie Fragen oder Bedenken haben, können Sie sich an Ihren medizinischen Betreuer, die spezielle Facebook-Gruppe oder den ViCentra-Kundendienst wenden. Denken Sie daran, dass Sie auf Ihrem Weg zum Diabetesmanagement nicht allein sind und dass es Ressourcen gibt, die Sie bei jedem Schritt unterstützen.
