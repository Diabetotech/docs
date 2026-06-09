<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q-0UftnpQitatUeoqR6ar3g -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/7PBwptBN0Po" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. AndroidAPS nach dem CARES-Paradigma</u>**

In diesem Video behandeln wir AndroidAPS gemäß dem CARES-Bezugsrahmen.

Wir werden besprechen, wie AndroidAPS die automatische Insulinabgabe berechnet und anpasst, wann es in den manuellen Modus zurückkehrt, spezifische Schulungstipps und Sensorprobleme behandeln und ansehen, wie es Daten austauscht. Danach gehen wir auf die AndroidAPS-Indikationen und Software-Updates ein. Los geht's!

### 2.1 AndroidAPS nach dem CARES-Paradigma

### #1 Berechnung

In AndroidAPS wird die voreingestellte Basal-Insulinrate auf der Grundlage des prognostizierten Blutzuckerspiegels der nächsten 5 bis 9 Stunden angepasst. Hier eine Übersicht über die Funktionsweise von AndroidAPS:

- AndroidAPS kombiniert verschiedene Blutzucker- oder "BG"-Prognosen, um den minimal vorhergesagten Blutzucker zu berechnen:

- AndroidAPS berechnet einen Kohlenhydrat-BZ-Wert, der auf den an Bord befindlichen Kohlenhydraten basiert,

- einen mit Insulin vorhergesagten BZ, der auf dem an Bord befindlichen Insulin basiert,

- einen für unangekündigte Mahlzeiten vorhergesagten BZ, der eine Vorhersage für den Fall einer unangekündigten Kohlenhydratzufuhr darstellt,

- und einen prognostizierten Null-Temperatur-BZ, der das Worst-Case-Szenario für den Fall darstellt, dass plötzlich kein Insulin mehr verabreicht wird oder keine Kohlenhydrate mehr aufgenommen werden.

- AndroidAPS berücksichtigt alle Fehler in den Vorhersagen, weil die eventuelle Blutzucker-Vorhersage auf der Grundlage der Abweichung zwischen dem aktuellen Blutzucker und dem vorhergesagten Blutzucker angepasst wird, auch bekannt als Blutzucker-Einfluss. Der Algorithmus berücksichtigt auch den Glykämie-Trend, indem er das Delta oder die Differenz zwischen aktueller und vergangener Glykämie berechnet. Er berücksichtigt auch die kurz- und langfristige Glukose-Dynamik, das heißt, Veränderungen zwischen dem aktuellen und vergangenen Blutzuckerwerten vor 15 und 40 Minuten.

- Der Insulinbedarf oder InsulReq wird berechnet, indem der Zielblutzucker vom minimal vorhergesagten Blutzucker abgezogen wird und diese Differenz durch die Insulinsensitivität oder ISF geteilt wird. Dieser Insulinbedarf bestimmt, ob das manuell voreingestellte Basalinsulin erhöht oder gesenkt werden muss.

- Wenn eine Hypoglykämie vorhergesagt wird, wird das Basalinsulin gestoppt, und es werden möglicherweise Notfall-Kohlenhydrate empfohlen.

AndroidAPS bietet zwei Optionen für die Insulinabgabe: OpenAPS Advanced Meal Assist (oder AMA) und OpenAPS SuperMicroBolus (oder SMB).

- Bei AMA wird das erforderliche Insulin als temporäre Basalrate mit einer bestimmten Dauer und Insulin-Rate abgegeben.

- Bei SMB wird die Hälfte der berechneten temporären Basalraten als Mikrobolus verabreicht, wodurch die gleiche Insulindosis schneller abgegeben wird, gefolgt von einer vorübergehenden Pause in der Basal-Insulinabgabe. Diese temporären Basalwerte oder Supermikroboli werden alle 5 Minuten neu berechnet und können innerhalb vordefinierter Sicherheitseinstellungen angepasst werden.

AndroidAPS bietet optionale Funktionen wie Autosens und unangekündigte Mahlzeiten-Erkennung (UAM; Unannounced Meal).

- Autosens ist eine Funktion in AndroidAPS, die die Insulinabgabe erhöht oder verringert, basierend auf der Insulinempfindlichkeit des Benutzers in den letzten 4, 8 oder 24 Stunden.

- Sie berechnet einen Prozentsatz, der widerspiegelt, wie die Insulinempfindlichkeit in den letzten Stunden von der aktuell eingestellten Empfindlichkeit abweicht, und verwendet diesen Prozentsatz, um die Insulinempfindlichkeit und die Basal-Insulinrate anzupassen.

- Die Autosens-Funktion kann auch auf den Zielwert angewendet werden, um ihn auf der Grundlage des berechneten Empfindlichkeitsverhältnisses anzupassen.

- Die Autosens-Funktion bezieht den Zeitraum, in dem sich noch nicht absorbierte Kohlenhydrate im Körper befinden, nicht in ihre Berechnung ein. Wenn du die Autosens-Funktion verwendest, ist es wichtig, dass du alle eingenommenen Kohlenhydrate eingibst. Andernfalls werden Kohlenhydratabweichungen fälschlicherweise als Empfindlichkeitsänderung erkannt. Wenn du hingegen über einen längeren Zeitraum kontinuierlich Kohlenhydrate isst, wird die Wirksamkeit von Autosens während dieses Zeitraums verringert.  

- Wenn du einen Pod oder ein Infusionsset wechselst oder ein Profil änderst, wird das Autosens-Verhältnis wieder auf 100 % zurückgesetzt.

- Mit der Funktion “unangekündigte Mahlzeit" kann der SMB Algorithmus unangekündigte Mahlzeiten erkennen. Dies ist hilfreich, wenn du vergessen hast, AndroidAPS deine Kohlenhydrate mitzuteilen, oder deine Kohlenhydrate falsch schätzt und dadurch die Menge der eingegebenen Kohlenhydrate falsch ist, oder wenn eine Mahlzeit mit viel Fett und Eiweiß größer ist als erwartet. Ohne Kohlenhydrat-Eingabe kann UAM schnelle Glukoseschübe erkennen, die durch Kohlenhydrate, Adrenalin usw. verursacht werden, und versucht, diese mit Supermikro-Boli auszugleichen. Dies funktioniert auch in umgekehrter Richtung: Bei einem schnellen Glukose-Abfall kann es die SMBs früher stoppen.

Der Zielwert für die Glykämie kann zwischen 80 und 200 mg/dl oder 4,4 und 11 mmol/l eingestellt werden.

AndroidAPS räumt der Sicherheit einen hohen Stellenwert ein und verfügt über verschiedene Sicherheitseinstellungen und Grenzwerte, um eine potenziell gefährliche Insulinabgabe zu verhindern. Um sicherzustellen, dass die Benutzer das System richtig konfigurieren und seine Funktionen verstehen, enthält AndroidAPS eine Reihe von Zielen.

- Diese Ziele dienen als Schritt-für-Schritt-Anleitung und helfen den Benutzern, das System ordnungsgemäß einzurichten, einschließlich der Einstellungen für die Insulinpumpe, und ein umfassendes Verständnis für seine Funktionsweise zu erlangen.

- Es dauert in der Regel etwa zwei Monate, um diese Ziele zu erreichen, und es ist wichtig, sie erfolgreich abzuschließen, bevor man die automatische Insulinabgabe vollständig nutzen kann.

### #2 Einstellung

In AndroidAPS hast du die Möglichkeit, verschiedene Parameter einzustellen, um deine Behandlung zu personalisieren.

- Du kannst den Zielwert für die Glykämie pro Zeitblock von 60 Minuten zwischen 80 und 200 mg/dl  oder  4,4 und 11 mmol/l einstellen.

- Es wird empfohlen, einen einzigen Zielwert anstelle eines Bereichs zu verwenden, um eine bessere Leistung mit AndroidAPS zu erzielen. Internationale Richtlinien empfehlen, mit einem Zielbereich von 110 bis 120 mg/dl oder 6 bis 6,5 mmol/l zu beginnen. Viele Anwender entscheiden sich für einen Zielwert von 100 mg/dl oder 5,6 mmol/l am Tag und niedriger in der Nacht - zum Beispiel 90 mg/dl oder 5 mmol/l. Dies kann in Betracht gezogen werden, wenn es nicht zu einer signifikanten Hypoglykämie führt.

- Mit AndroidAPS kannst du verschiedene Basal-Insulinprofile einstellen, die deinen individuellen Bedürfnissen entsprechen.

- Du kannst auch einen beliebigen temporären Zielwert oder einen Prozentsatz der Insulinabgabe innerhalb eines sicheren Bereichs festlegen.

- AndroidAPS hat 3 Standard-temporäre Zielwerte: Baldiges Essen, Aktivität und Hypo:

- “Baldiges Essen” ist ein temporärer Zielwert von 90 mg/dl oder 5 mmol/l für 45 Minuten,

- “Aktivität” ist ein temporärer Zielwert von 140 mg/dl oder 7,8 mmol/l für 90 Minuten,

- Und "Hypo" ist ein temporärer Zielwert von 160 mg/dl oder 8,9 mmol/l für 60 Minuten.

- Diese Standardeinstellungen können über die Präferenzen geändert werden.

Das Kohlenhydrat-Verhältnis, die Insulinempfindlichkeit und die Dauer der Insulinwirkung können entsprechend deiner spezifischen Anforderungen angepasst werden.

- In AndroidAPS kann die Dauer der Insulinwirkung zwischen 5 und 8 Stunden eingestellt werden, was in der Regel länger ist als bei herkömmlichen Insulinmodellen, da der Longtail-Effekt von Insulin berücksichtigt wird. Die meisten Anwender bevorzugen 6 bis 7 Stunden. Wenn du eine längere Wirkungsdauer benötigst, überprüfe deine ISF-Einstellungen, da diese möglicherweise zu aggressiv sind. Im Allgemeinen unterscheidet sich die tatsächliche Dauer der Insulinwirkung zwischen den Benutzern nicht so sehr.

- Mit AndroidAPS kannst du die Art des Insulins auswählen, das du verwendest.

- Du kannst aus Optionen wie schnell wirkenden Profilen für Novorapid oder Humalog, einem ultraschnellen Profil für Fiasp, einem separaten Profil für Lyumjev oder einem Profil mit einstellbarem Spitzenwert für nicht aufgelistete Insuline oder Mischungen wählen.

- Je nach gewähltem Insulintyp stellt AndroidAPS ein entsprechendes Profil zur Verfügung.

Innerhalb von AndroidAPS gibt es zahlreiche weitere einstellbare Parameter, von denen wir die wichtigsten näher betrachten werden: Algorithmus-Typ, Funktion für unangekündigte Mahlzeiten-Funktion, Autosens und Abgabegrenzen.

- Beim Start von AndroidAPS kannst du zwischen dem OpenAPS AMA- und dem OpenAPS SMB-Algorithmus wählen.

- Es wird empfohlen, Supermikro-Boli (SMB) anfangs nur nach der Einnahme von Kohlenhydraten zu verwenden. Wenn dies für dich gut funktioniert, kannst du SMB auch zu anderen Zeiten aktivieren. Diese Option ist nur für vertrauenswürdige Blutzuckerdatenquellen verfügbar, wie bei den meisten Dexcom- und FreeStyle Libre-Sensoren

- Dynamischer ISF ist ein experimenteller Algorithmus, der in AndroidAPS zusätzlich zu OpenAPS AMA und SMB verfügbar ist. Mit Dynamic ISF wird die Insulinempfindlichkeit dynamisch auf der Grundlage der täglichen Gesamt-Insulindosis sowie der aktuellen und vorhergesagten Blutzuckerwerte berechnet. Dieser Algorithmus berücksichtigt die Insulinresistenz, die bei höheren Blutzuckerwerten im Vergleich zu niedrigeren Werten auftritt. Durch die Verwendung des dynamischen ISF bestimmt das System die Insulinempfindlichkeit  unabhängig von den vom Benutzer eingestellten Werten.

- Die UAM-Erkennungsfunktion hilft dem Algorithmus, signifikante glykämische Anstiege als unangekündigte Mahlzeiten zu interpretieren.

- Es ist wichtig zu beachten, dass diese Funktion nur dann empfohlen wird, wenn du eine relativ stabile Blutzuckerkontrolle und Glukose-Sensorwerte hast. Wenn deine Blutzuckerkontrolle schlecht ist, kann die Aktivierung von UAM zu zusätzlichen Variabilitäten führen. Das Gleiche kann passieren, wenn deine Sensorwerte instabil sind, zum Beispiel am ersten Tag nach einem Sensorwechsel.

- Autosens ist eine der wichtigsten einzigartigen Funktionen von AndroidAPS. Es analysiert deine Reaktion auf Insulin in den letzten 4, 8 oder 24 Stunden und passt die Insulinempfindlichkeit und die Basalinsulinrate  entsprechend an. Du hast die Möglichkeit, Autosens zu erlauben, deinen Zielwert ebenfalls zu ändern. Sei dir bewusst, dass dein Diabetes variieren kann. Es wird empfohlen, die Verwendung der Autosens-Ergebnisse zu evaluieren, bevor sie dauerhaft aktiviert werden.

- Die Empfindlichkeit für die Autosens-Funktion kann ausgewählt werden, und die Option Oref1 wird für Benutzer von OpenAPS SMB und UAM empfohlen.

- Die erweiterten Einstellungen für Autosens in AndroidAPS lässt du am besten unverändert:

- Der Wert min_5min_carbimpact bestimmt die Geschwindigkeit, mit der Kohlenhydrate abgebaut werden, wenn der Blutzucker nicht ansteigt. Der Standardwert für AMA ist 5 mg/dl/5 Minuten, während er für SMB 8 mg/dl/5 Minuten beträgt.

- Die maximale Absorptionszeit der Mahlzeit ist die Dauer, nach der davon ausgegangen wird, dass alle Kohlenhydrate absorbiert worden sind. Standardmäßig ist sie auf 6 Stunden eingestellt.

- Das maximale und minimale Autosens-Verhältnis ist auf 1,2 bzw. 0,8 eingestellt. Sie bestimmen die maximalen und minimalen Anpassungsprozentsätze auf der Grundlage der Autosens-Funktion. Das bedeutet, dass die Werte mit Autosens maximal um 120 % und minimal um 80 % angepasst werden können.

- Schließlich gibt es in AndroidAPS auch Sicherheitseinstellungen und Grenzwerte, die je nach Alter und Typ des Benutzers innerhalb eines sicheren Bereichs angepasst werden können.

- Zu diesen Einstellungen gehören:

- Maximale Basalrate: Für Erwachsene wird empfohlen, diese Grenze auf das 3- bis 5-Fache der höchsten Basal-Einstellung festzulegen.

- Maximales noch wirksames Insulin: Dieser Grenzwert bezieht sich auf die maximal kombinierte Menge an Basal- und Bolusinsulin, die auf einmal verabreicht werden darf.

- Es gibt auch mehrere erweiterte Sicherheitseinstellungen, die am besten unverändert bleiben sollten:

- AndroidAPS bietet die Option, immer die kurze Durchschnittsdifferenz zu verwenden, anstatt sich nur auf die letzte Sensor-Glykämie zu verlassen. Dies ist besonders nützlich, wenn du Glykämie-Sensoren mit mehr Rauschen verwendest, wie z. B. Daten von xDrip- und Libre-Sensoren. Die kurze durchschnittliche Differenz berücksichtigt die durchschnittliche Sensor-Glykämie der letzten 15 Minuten oder der letzten 3 Sensorwerte.

- Maximaler täglicher Sicherheitsmultiplikator und aktueller Basalraten-Sicherheitsmultiplikator sind zusätzliche Grenzwerte für die maximale Basal-Insulinrate, und es ist im Allgemeinen am besten, sie unverändert zu lassen. Der maximale tägliche Multiplikator ist standardmäßig auf 3 eingestellt und erlaubt maximal das Dreifache der höchsten manuell eingestellten Basalrate. Der aktuelle Basalraten-Multiplikator ist auf 4 eingestellt, sodass maximal das Vierfache der manuell eingestellten Basalrate möglich ist.

- In OpenAPS AMA gibt es eine weitere spezifische Sicherheitseinstellung, nämlich "Bolus snooze dia divider". Dadurch wird die Dauer für die Abgabe von zusätzlichem Insulin nach einem Mahlzeit-Bolus bestimmt. Standardmäßig ist sie auf die Hälfte der Dauer der Insulinwirkung eingestellt.

- In OpenAPS SMB gibt es auch zusätzliche Sicherheitseinstellungen in Bezug auf Supermikro-Boli. Dazu gehören zum Beispiel die “maximale Basal-Minuten" zur Begrenzung von Supermikro-Boli, die standardmäßig auf 30 Minuten eingestellt ist.

Denke daran, dass diese Einstellungen und Parameter in Absprache mit deinem Gesundheitsdienstleister angepasst werden sollten, wobei deine individuellen Bedürfnisse und medizinischen Handlungsempfehlungen zu berücksichtigen sind.

### #3 Zurücksetzung

Wenn in AndroidAPS für mehr als 15 Minuten keine Verbindung zum Sensor oder zur Pumpe besteht, kehrt das System in den manuellen Modus zurück.

Wenn die Verbindung unterbrochen wird, schaltet die Pumpe zunächst auf die zuletzt eingestellte temporäre Basalrate um. Nach maximal 120 Minuten geht sie in den manuellen Modus über.

Im manuellen Modus wird die Basal-Insulinabgabe auf die voreingestellte Rate ohne die Funktion "Aussetzen vor Untergrenze" eingestellt. Du hast die Möglichkeit, die Funktion zum Aussetzen der Insulinabgabe vor der Untergrenze manuell zu aktivieren, aber dies ist nur möglich, wenn der Sensor und die Pumpe angeschlossen sind.

Sobald die Verbindung zur Pumpe oder zum Sensor wiederhergestellt ist, nimmt das System automatisch den Auto-Modus wieder auf, der in AndroidAPS “automatische Insulinabgabe" genannt wird. In diesem AID-Modus berechnet und verabreicht das System alle 5 Minuten eine temporäre Basalrate.

Es ist erwähnenswert, dass sich der Begriff "Open-Loop" in AndroidAPS nicht auf den manuellen Modus bezieht. Stattdessen bedeutet der Open-Loop-Modus, dass temporäre Basalraten nur als Benachrichtigung angezeigt werden und du sie manuell bestätigen musst. Dieser Open-Loop-Modus wird für Benutzer empfohlen, die AndroidAPS noch nicht kennen und erst einmal beobachten möchten, wie der Algorithmus funktioniert, bevor sie sich voll darauf verlassen.

### #4 Wichtige Informationen/Ausbildung

Bei der Einführung eines automatischen Insulinabgabesystems ist eine angemessene Schulung entscheidend. Die allgemeinen Aufklärungspunkte sind dem allgemeinen Modul zu entnehmen.

Die behandelten Punkte der allgemeinen Ausbildung waren:

- Weniger Kohlenhydrate verwenden, um eine Hypoglykämie zu behandeln.

- Probleme mit dem Infusionsset in Betracht ziehen, wenn der Blutzuckerspiegel ohne ersichtlichen Grund hochbleibt.

- Vertrauen in das automatische Insulinabgabesystem und Vermeiden unnötiger manueller Eingriffe.

- Zeitliche Abstimmung der Mahlzeitsbolusgabe 15 Minuten vor den Mahlzeiten.

- Verwendung des Trainingsmodus ab 1 bis 2 Stunden vor der Aktivität.

- Unterbrechung der Insulinabgabe, wenn die Pumpe für mehr als 15 Minuten nicht angeschlossen ist.

- Reaktion auf Alarme und Achten auf automatische Updates auf Mobiltelefonen.

- Unterstützung durch Peers suchen, um sich beraten zu lassen und Erfahrungen auszutauschen.

AndroidAPS ist ein leistungsfähiges Werkzeug für das Diabetes-Management, aber es ist wichtig, daran zu denken, dass es kein vollautomatisches System ist, das man einstellen und vergessen kann. Es muss aktiv überwacht werden, und man muss wissen, was es tut. Im Folgenden findest du einige zusätzliche Informationen, die speziell für die Verwendung von AndroidAPS gelten:

- Aktive Überwachung: AndroidAPS steuert deine Insulinabgabe, daher ist es wichtig, es genau zu beobachten und zu verstehen, wie es funktioniert. Achte auf mögliche Fehler oder unerwartetes Verhalten und lerne, wie du die Aktionen des Systems interpretieren kannst.

- Verwendung des Mobiltelefons: Nach der Kopplung kann das Mobiltelefon die Pumpe anweisen, verschiedene Aktionen durchzuführen. Dein Mobiltelefon mit AndroidAPS ist als medizinisches Gerät zu betrachten und entsprechend zu behandeln. Benutze es nur für AndroidAPS und wichtige Kommunikationen. Erwäge, mit separaten Geräten für AndroidAPS und der täglichen Mobiltelefon-Nutzung zu beginnen. Vermeide die Installation unnötiger Apps oder Spiele, die Malware verbreiten und den Betrieb des Systems beeinträchtigen könnten.

- Sicherheitsmaßnahmen: Installiere alle von deinem Mobiltelefonhersteller und Google bereitgestellten Sicherheitsupdates, um dein Gerät zu schützen. Dies trägt zum Schutz vor potenziellen Sicherheitslücken bei.

- Nähe zur Pumpe und CGM: Führe dein Mobiltelefon in unmittelbarer Nähe zu deiner Insulinpumpe und deinem CGM, um eine zuverlässige Verbindung zu gewährleisten.

- Passwörter und Backups: Registriere alle verwendeten Passwörter und speichere eine Sicherungskopie deiner App in der Cloud. Das regelmäßige Exportieren deiner Einstellungen in die Cloud vereinfacht die Neuinstallation und verhindert, dass du alle deine Ziele erneut eingeben musst.

- Ersatz-Mobiltelefon: Es ist ratsam, ein Ersatz-Mobiltelefon für Notfälle bereitzuhalten. So kannst du sicherstellen, dass du bei technischen Problemen über ein Ersatzgerät verfügst.

- Erweiterte Einstellungen: Verwende erweiterte Einstellungen wie OpenAPS SMB erst, wenn du die Grundlagen gut kennst und eine stabile Blutzuckereinstellung erreicht hast. Beachte, dass Funktionen wie Unangekündigte Mahlzeit (UAM) und Autotune nicht für jedermann optimal funktionieren.

- Temporäres Ziel "Bald essen": Wenn du nach den Mahlzeiten eine Hyperglykämie feststellst, nutze das temporäre Ziel "Bald essen". Diese Funktion hilft dir, hohe Blutzuckerwerte in Vorbereitung auf die nächsten Mahlzeiten proaktiv anzugehen.

- Zugang für den Gesundheitsdienstleister: Stelle sicher, dass dein Gesundheitsdienstleister Zugang zu deinen von Nightscout oder Tidepool erstellten Berichten hat. So kann er sich über dein Diabetes-Management informieren und bei deinen Konsultationen fundierte Entscheidungen treffen.

- Beherrsche die Handhabung von Insulinpumpe und Sensor: Stelle sicher, dass du deine Insulinpumpe und den Sensor auch richtig verwenden kannst.

Wenn du diese Richtlinien befolgst und einen proaktiven Ansatz bei der Verwendung von AndroidAPS beibehältst, kannst du die Wirksamkeit des Systems optimieren sowie eine sichere und zuverlässige automatische Insulinabgabe gewährleisten.

### #5 Sensor

AndroidAPS kann mit Dexcom, bestimmten FreeStyle Libre, Eversense, Enlite, POCTech, Sibionics, Ottai, Syai Tag und CareSens Air-Sensoren

Bitte beachte, dass nur Dexcom- und FreeStyle Libre-Sensoren als vertrauenswürdige Blutzuckerdatenquellen gelten, da sie für die Verwendung in kommerziellen automatisierten Insulinabgabesystemen zugelassen sind. Vertrauenswürdige Blutzuckerdatenquellen ermöglichen eine kontinuierliche SMB-Abgabe, während andere Datenquellen nur Supermikroboli nach der Kohlenhydrataufnahme zulassen.

Da AndroidAPS keine direkte Verbindung zu nativen Sensor-Apps wie der Dexcom- oder LibreLink-App herstellen kann, ist eine zusätzliche Open-Source-Sensor-App (wie xDrip+ oder Juggluco) erforderlich, um die Lücke zu schließen und die Sensordaten an AndroidAPS zu übertragen.

Wenn du Zweifel an der Genauigkeit deiner Sensormessungen hast oder das Gefühl, dass sie deinen Zustand nicht widerspiegeln, führe zur Bestätigung einen Fingerstich-Test durch. Wenn du eine signifikante Diskrepanz feststellst - z. B. eine Abweichung von mehr als 20 % zwischen den Sensor- und den Fingerstich-Messwerten, selbst wenn dein Blutzucker innerhalb des Zielbereichs stabil ist - solltest du den Automatikmodus deaktivieren und/oder den Sensor austauschen.

Einige Sensoren können mit dem Wert aus einem Fingerstich-Test kalibriert werden. Dies sollte nur dann geschehen, wenn die Sensorwerte stabil sind und im Bereich liegen.

### #6 Teilen von Daten

In AndroidAPS ist es möglich, Insulin- und Glukose-Daten mit Gesundheitsdienstleistern und Familienmitgliedern auf verschiedene Weisen zu teilen:

Damit dein Gesundheitsdienstleister deine Daten überwachen kann, musst du eine Nightscout-Website oder einen Account bei Tidepool erstellen. AndroidAPS kann die Daten an die Nightscout-Website oder Tidepool-Cloud senden, so dass dein Gesundheitsdienstleister die Informationen in Echtzeit sehen kann. Die Benutzer können Berichte von Tidepool oder Nightscout herunterladen oder Tools wie Nightscout Reporter verwenden, um umfassende Berichte zu erstellen, die zur eingehenden Analyse und Bewertung an Gesundheitsdienstleister weitergegeben werden können.

- Es ist wichtig zu verstehen, dass Tidepool nur zur Berichterstattung dient. Es handelt sich nicht um eine Echtzeit-Follow-App. Wenn du neben dem AndroidAPS-Haupttelefon weitere Follower haben möchtest, musst du auch Nightscout einrichten. Betreuungspersonen können auf die Daten auf der persönlichen Nightscout-Website zugreifen, entweder mit einem Token oder über andere autorisierte Mittel. So können sie deine Insulin- und Glukose-Daten einsehen und verfolgen und über dein Diabetes-Management auf dem Laufenden bleiben. Für die Fernbetreuung können Betreuungspersonen neben Nightscout die NSClient-App verwenden, in der sie Zielwerte anpassen und Kohlenhydrate und andere Einstellungen importieren können. Alles außer eine Bolusgabe.

- Familienmitglieder können deine Daten auch aus der Ferne überwachen, indem sie eine Dexcom Follow-App verwenden, wenn du ein Dexcom Share-Konto hast, oder indem sie xDrip oder seine Varianten verwenden. Diese Anwendungen ermöglichen ihnen den Zugriff auf Glukose- und Insulininformationen in Echtzeit und bieten eine zusätzliche Ebene der Unterstützung und Aufmerksamkeit.

Durch die Nutzung dieser Teilen-Funktionen können AndroidAPS-Benutzer die effektive Kommunikation und Zusammenarbeit mit ihrem Gesundheitsteam und ihren Angehörigen erleichtern und so ein unterstützendes und informiertes Diabetes-Management fördern.

### 2.2 Indikationen

AndroidAPS ist eine Open-Source-App, für die es keine offiziellen, von der FDA oder europäischen Behörden genehmigten Indikationen gibt. Sie kann mit allen schnellwirkenden Insulinanaloga verwendet werden.

Die AndroidAPS-App steht nicht in App-Stores zum Download bereit. Die Benutzer müssen die App auf eigenes Risiko selbst erstellen. Das Einrichten des Systems erfordert Entschlossenheit und technisches Wissen. Wenn du am Anfang nicht über das technische Know-how verfügst, wirst du es am Ende haben. Alle Informationen, die du benötigst, findest du in der AndroidAPS-Dokumentation, die online verfügbar ist, und von anderen, die es bereits getan haben - sie kannst du in Facebook-Gruppen oder anderen Foren wie Discord fragen. Discord ist eine sehr empfehlenswerte Plattform für den interaktiven Chat unter AndroidAPS- und Nightscout-Nutzern, Eltern und Entwicklern. Sie deckt ein breites Spektrum an Themen ab, von Fragen von Erstnutzern bis hin zu technisch fortgeschrittenen Diskussionen über die innere Funktionsweise von AndroidAPS und dem OpenAPS-Algorithmus. Die primäre Sprache, die auf Discord verwendet wird, ist Englisch.

Viele Leute haben AndroidAPS erfolgreich eingerichtet und verwenden es jetzt völlig sicher, aber es ist wichtig, dass jeder Benutzer:

- das System selbst aufbaut, damit er seine Funktionsweise genau versteht,

- seinen individuellen Dosierungsalgorithmus mit Hilfe seines Diabetes-Teams anpasst,

- das System instand hält und überwacht, um sicherzustellen, dass es ordnungsgemäß funktioniert

- und versteht, wie seine Insulinpumpe und sein Glukosesensor funktionieren.

Um AndroidAPS zu erstellen und zu nutzen, benötigst du ein kompatibles Mobiltelefon. Die Mindestanforderungen für deine Geräte findest du in der AndroidAPS-Dokumentation. Die Dokumentation enthält auch eine Liste bestimmter Mobiltelefone, die getestet wurden und sich als kompatibel mit AndroidAPS erwiesen haben. Die Überprüfung der Mindestanforderungen und der Kompatibilität stellt sicher, dass deine Geräte in der Lage sind, die Anwendung effektiv auszuführen.

Um die App zu erstellen, können Sie entweder einen Computer mit Android Studio verwenden oder den Vorgang über GitHub Actions direkt  von Ihrem Smartphone aus durchführen. Eine Schritt-für-Schritt-Anleitung finden Sie in der AndroidAPS-Dokumentation. Für die Erstellung der APK-Datei müssen mehrere Schritte durchlaufen werden. Es ist wichtig, die notwendigen Passwörter und die Schlüsseldatei für zukünftige Updates sicher zu speichern. Sobald die APK-Datei erstellt sind, kann sie in der Cloud gespeichert und auf dem Mobiltelefon installiert werden.

Nach der Installation der AndroidAPS-App musst du über einen Zeitraum von etwa 2 Monaten 10 Ziele absolvieren. Diese Ziele führen dich durch wichtige Funktionen und Einstellungen und stellen sicher, dass du dein System richtig konfigurierst und seine Funktionen verstehst. Indem du die Ziele erfüllst, gewinnst du Vertrauen in das AndroidAPS-System und kannst so deinen Diabetes effektiv managen.

Zusammenfassend lässt sich sagen, dass AndroidAPS von den Nutzern verlangt, dass sie eine aktive Rolle beim Verstehen und Aufbau des Systems übernehmen und gleichzeitig die Sicherheitsvorkehrungen und medizinischen Hinweise beachten.

### 2.3 Software-Updates

Regelmäßige Software-Updates sind entscheidend für die Aufrechterhaltung der optimalen Leistung und den Zugriff auf die neuesten Funktionen von AndroidAPS. Das AndroidAPS-Team veröffentlicht in regelmäßigen Abständen neue Versionen, wobei größere Updates jährlich erscheinen und kleinere Updates dazwischen. Diese Updates enthalten oft Fehlerbehebungen und Verbesserungen, um die Funktionalität des Systems zu verbessern.

Benachrichtigungen in der AndroidAPS-App informieren dich, wenn eine neue Version verfügbar ist. Es ist zwingend erforderlich, das Update innerhalb von 60 Tagen auszuführen, um AndroidAPS weiterhin nutzen zu können.

Um AndroidAPS zu aktualisieren, führe die folgenden Schritte aus:

- Exportiere deine aktuellen AndroidAPS-Einstellungen und speichere sie an einem sicheren Ort.

- Verwende Android Studio oder GitHub, um den Code für die neue Version zu aktualisieren.

- Erstelle eine neue APK-Datei mit demselben Signaturschlüssel wie bei der vorherigen Installation.

- Übertrage die neue APK-Datei auf dein Mobiltelefon und aktualisiere die aktuelle Installation.

- Überprüfe den Betrieb und die Einstellungen von AndroidAPS nach dem Update.

Wenn du auf Probleme stößt, bleibe ruhig und suche Unterstützung bei der AndroidAPS-Community und der Dokumentation. Denke daran, dass die Fehlersuche ein normaler Teil der Software-Nutzung ist, und mit Geduld kannst du alle auftretenden Herausforderungen meistern.

Zusammenfassend lässt sich sagen, dass ein informierter und proaktiver Umgang mit AndroidAPS der Schlüssel zur Optimierung deines Diabetes-Managements ist. Indem du dich über Software-Updates auf dem Laufenden hältst, die Behandlungsrichtlinien befolgst und alle Probleme umgehend angehst, kannst du eine reibungslose und effektive Erfahrung sicherstellen. Priorisiere die Sicherheit, führe genaue Aufzeichnungen und nutze die verfügbaren Ressourcen zur Unterstützung. Nutze die Möglichkeiten, die AndroidAPS bietet, um deine Gesundheit und dein Wohlbefinden zu verbessern.
