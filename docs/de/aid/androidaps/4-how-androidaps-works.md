<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q-0UftnpQitatUeoqR6ar3g -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/LxoBeHu2F0Q" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>4. Wie AndroidAPS funktioniert</u>**

Willkommen zu diesem Kapitel über die Funktionsweise von AndroidAPS.

Die Steuerung der Insulinabgabe mit AndroidAPS erfolgt über die   AndroidAPS-App, die auf deinem Android-Mobiltelefon installiert ist. Um die Funktionen vollständig nutzen zu können, müssen die Benutzer zunächst 10 Ziele erreichen.

Die App bietet vier verschiedene Betriebsmodi: Closed-Loop oder Auto-Modus, Open-Loop und Aussetzung bei niedrigem Blutzucker. Loop kann auch deaktiviert werden, was zu einer Art manuellem Modus führt. Im Closed-Loop- oder Auto-Modus passt AndroidAPS die Insulinabgabe alle 5 Minuten automatisch an, basierend auf den Echtzeit-Glukose-Messwerten des Sensors. Im Open-Loop-Modus müssen die Vorschläge für die Anpassung des Basalinsulins manuell bestätigt werden.

Wir werden uns mit der Funktionsweise der AndroidAPS-App im Allgemeinen befassen, zeigen wie du die 10 Ziele erreichst, und dann untersuchen, wie du die AndroidAPS-App sowohl im Auto-Modus als auch im manuellen Modus verwenden kannst.

4.1 AndroidAPS-App

Wenn du die AndroidAPS-App öffnest, wirst du vom Startbildschirm begrüßt, der normalerweise auf der Registerkarte "Übersicht" geöffnet wird. Gehen wir die verschiedenen Bereiche des Startbildschirms von A bis H durch:

- In der oberen linken Ecke findest du ein Hamburger-Menü, über das du auf verschiedene Einstellungen und Optionen zugreifen kannst.

- Neben dem Hamburger-Menü siehst du die Registerkarten für verschiedene Bereiche der App.

- Ganz rechts befindet sich ein Menü mit drei Punkten, das Zugriff auf erweiterte Einstellungen, Behandlungen, den Verlauf, den Einrichtungsassistenten, Statistiken und Informationen zur App-Version bietet.

- In Abschnitt B des Startbildschirms der AndroidAPS-App findest du die Felder “Profil” und “Ziel”:

- Das Profilfeld befindet sich auf der linken Seite. Es zeigt den Namen deines aktuellen Profils oder die Anzahl der Basal-Insulineinheiten an, je nach Einstellungen.

- Wenn du auf das Profilfeld tippst, kannst du deine Profildetails sehen, und wenn du das Profilfeld lange gedrückt hältst, kannst du das Profil wechseln oder den Prozentsatz deines aktuellen Profils anpassen.

- Die Anpassung des Prozentsatzes in deinem Profil wirkt sich nicht nur auf dein Basalinsulin aus, sondern passt auch dein Kohlenhydrat-Verhältnis und deinen Insulin- Empfindlichkeitsfaktor an.

- Das Zielfeld befindet sich auf der rechten Seite. Es zeigt deinen aktuellen Zielwert oder Zielbereich für den Blutzuckerspiegel an.

- Wenn du auf das Zielfeld drückst, kannst du einen temporären Zielwert festlegen, mit dem du deine Insulinabgabe anpassen kannst.

- Du kannst auch voreingestellte temporäre Zielwerte für bestimmte Situationen wie "Bald essen", "Aktivität" oder "Hypo" aktivieren.

- Wenn die Autosens-Funktion aktiviert ist und der Zielwert angepasst werden darf, leuchtet die Zielwert-Taste grün, um Anpassungen des Zielwerts anzuzeigen.

- Der Bereich "Sensor-Glykämie" zeigt deine aktuellen Blutzuckerwerte an. Die Farbe der Messwerte zeigt an, ob sie innerhalb des Zielbereichs liegen oder nicht.

- Rote und gelbe Dreiecke weisen auf Probleme beim Import von Sensordaten hin.

- Ein rotes Dreieck weist auf ein kritisches Problem hin, bei dem doppelte Sensorwerte empfangen werden, z. B. sowohl von xDrip als auch von Nightscout. Dies muss behoben werden, bevor die Closed-Loop-Funktionalität wieder aktiviert werden kann.

- Ein gelbes Dreieck ist eine Warnung, die anzeigt, dass einige Sensorwerte fehlen. Dies kann bei der Verwendung eines FreeStyle Libre-Sensors in Kombination mit anderen sensorbezogenen Problemen auftreten. Wenn es nicht zusammen mit anderen wichtigen Problemen auftritt, kann diese Warnung im Allgemeinen ignoriert werden.

- Die Loop-Statusanzeige auf der rechten Seite zeigt den aktuellen Betriebsmodus des automatischen Insulinabgabesystems an. Hier sind die verschiedenen Zustände und ihre Farben. Durch Tippen auf das Symbol für den Loop-Status kannst du den Modus bei Bedarf manuell ändern.

- Der nächste Abschnitt zeigt das wirksame Insulin, Kohlenhydrate, Kohlenhydrate angefordert, Basal-Insulinrate und Autosens-Status an.

- Wenn du auf die Werte tippst, erhältst du detailliertere Informationen über die Aufteilung des noch wirksamen Insulins und der Kohlenhydrate.

- Beachte, dass der Wert "Insulin an Bord" in Basal- und Bolusinsulin unterteilt ist.  Das Basalinsulin kann negativ sein, wenn der Algorithmus die voreingestellte Basal-Insulinrate reduziert hat. Wenn du häufig negatives wirksames Insulin hast, kann dies darauf hindeuten, dass deine Basal-Insulinrate zu hoch eingestellt ist und möglicherweise angepasst werden muss.

- Das Autosens-Symbol zeigt Pfeile an, wenn es aktiv ist, und ein Kreuz, wenn es inaktiv ist. Wenn aktiviert, werden die prozentualen Anpassungen für die Basal-Insulinrate und die Insulinsensitivität werden unterhalb des Symbols angezeigt. Wenn „Dynamische Empfindlichkeit“ ausgewählt ist, werden auch die aktuellen ISF-Einstellungen angezeigt.

- Im nächsten Abschnitt werden Statussymbole zu deiner Insulinpumpe und deinem Glukosesensor angezeigt, z. B. die Zeit seit dem letzten Infusionsset- oder Pod-Wechsel, die verbleibenden Insulineinheiten und das Alter des Sensors.

- Das CGM-Diagramm zeigt deine Glukosewerte im Zeitverlauf an, wobei der grüne Bereich den Zielbereich angibt.

- Der Maßstab der Grafik und weitere Grafikoptionen können mit dem Pfeil oben links und rechts angepasst werden.

- Die gelbe Linie stellt die Insulin-Aktivität dar, und die blauen Dreiecke zeigen die Mikrobolus-Werte an.

- Im nächsten Abschnitt werden weitere vom Benutzer auswählbare Diagramme angezeigt, z. B. absolutes Insulin, noch wirksames Insulin, Kohlenhydrate, Abweichungen und Empfindlichkeit.

- Du kannst über den Pfeil oben rechts im Sensordiagramm auswählen, welche Diagramme angezeigt werden sollen.

- Mit den Aktionstasten im letzten Abschnitt kannst du verschiedene Aktionen in Bezug auf Insulin und Kohlenhydrate durchführen.

- Die Insulin-Aktionstaste ermöglicht die manuelle Bolusabgabe oder die Registrierung eines mit einem Insulinpen verabreichten Bolus.

- Mit der Kohlenhydrat-Aktionstaste kannst du Kohlenhydrate ohne Bolus eingeben. Mit Dauer kannst du optional die Absorptionsgeschwindigkeit dieser Kohlenhydrate angeben. 1 Stunde für schnellen Zucker, 2 Stunden für mittlere Absorption und 3 Stunden für etwas wie Pizza.

- Die Taste Bolus-Rechner oder Bolus-Wizard berechnet einen Insulin-Bolus auf der Grundlage der Kohlenhydratmenge und des aktuellen Blutzuckerspiegels.

- Du hast die Möglichkeit, nur einen Prozentsatz des berechneten Bolus zu verabreichen und zu wählen, ob der glykämische Trend berücksichtigt werden soll oder nicht.

- Du kannst die detaillierte Berechnung einsehen und sehen, welche Faktoren der Bolus-Assistent berücksichtigt.

- Unter Kohlenhydrat-Zeit kannst du angeben, ob du die Kohlenhydrate später essen willst oder bereits gegessen hast. Du kannst einen Erinnerungsalarm für die geplante Essenszeit einstellen.

- In den erweiterten Übersichtseinstellungen gibt es eine Superbolus-Funktion. Wenn sie aktiviert ist, erscheint diese Option im Bolus-Wizard. Sie kombiniert das geplante Basal-Insulin für die nächsten 2 Stunden mit dem Bolus zur Essenszeit. Während der nächsten 2 Stunden wird kein Basal-Insulin abgegeben. Ziel ist es, mehr Insulin in kürzerer Zeit bereitzustellen, um eine Hyperglykämie nach der Mahlzeit zu minimieren. Es ist jedoch Vorsicht geboten, da dies das Risiko einer Hypoglykämie erhöhen kann.

Zusätzlich zum Startbildschirm sind in der App weitere Registerkarten verfügbar, darunter Aktionen, Insulin-Modell, dein Pumpen-Bildschirm, Schleife, APS-Modus, Profil, Automatisierung, NSClient und deine BZ-Quelle. Diese Registerkarten ermöglichen den Zugriff auf bestimmte Informationen und Funktionen im Zusammenhang mit AndroidAPS. Welche Registerkarten hier angezeigt werden, kannst du über den Konfigurator im Hamburger-Menü auswählen.

Indem du durch diese Registerkarten und Abschnitte navigierst, kannst du deinen Diabetes mit der AndroidAPS-App effektiv managen. Über das Hamburger-Menü-Symbol kannst du die Behandlungen und Aktionen von AndroidAPS genau ansehen.

4.2 Erreichen der 10 Ziele

Um AndroidAPS im Closed-Loop- oder Auto-Modus zu verwenden, müssen Sie 10 Ziele erfüllen. Diese Ziele helfen dir dabei, dich mit der App vertraut zu machen und schrittweise in den automatischen Insulinabgabebetrieb überzugehen.

Es dauert in der Regel etwa 2 Monate, um alle Ziele zu erreichen.

Das Durchlaufen dieser Ziele hilft dir, den AndroidAPS-Algorithmus kennenzulernen und deine Einstellungen schrittweise zu optimieren. Dies erfordert Geduld und die Bereitschaft, zu experimentieren und von der Online-Community zu lernen. Es ist wichtig, diese Anfangsphase zu nutzen, um dein Basalinsulin, dein Kohlenhydratverhältnis und deinen Insulin-Empfindlichkeitsfaktor fein abzustimmen.

Sobald du die Ziele erreicht und deine Einstellungen optimiert hast, verfügst du über ein stabileres automatisches Insulinabgabesystem, das weniger Anpassungen erfordert. Zu Beginn ist es ein aufwändiger Prozess, aber er bietet das Potenzial für ein verbessertes Diabetes-Management, ohne dass ständig manuell eingegriffen werden muss.

Bitte beachte, dass es für Benutzer äußerst wichtig ist, regelmäßig Sicherungskopien der AndroidAPS-Einstellungen über das App-Wartungsmenü zu exportieren und eine Kopie der letzten Einstellungsexporte an einem sicheren Ort aufzubewahren. Die Exportdatei enthält nicht nur alle Einstellungen, sondern auch die Ziele, die für den automatisierten Betrieb erforderlich sind. Im Notfall ist diese Datei die einzige Möglichkeit, AndroidAPS wiederherzustellen und den normalen Betrieb fortzusetzen.

4.3 Closed-Loop- oder Auto-Modus

Auto-Modus starten

In der AndroidAPS-App kannst du den Auto-Modus aktivieren, indem du auf das Loop-Symbol auf dem Startbildschirm klickst. Bevor du den Auto-Modus aktivierst, musst du jedoch sicherstellen, dass die Pumpe und der Sensor ordnungsgemäß gekoppelt sind und dass alle erforderlichen Ziele erreicht wurden.

Sobald der Auto-Modus aktiviert ist, leuchtet die Modus-Anzeige auf dem Startbildschirm grün und zeigt damit an, dass das System automatische Anpassungen des Basalinsulins vornimmt. Du kannst diese Anpassungen auch auf dem Startbildschirm verfolgen. Wenn du die Berechnung hinter den Anpassungen überprüfen möchtest, kannst du die Registerkarte Loop oder OpenAPS aufrufen.

Verwende ein voreingestelltes temporäres Ziel

In AndroidAPS kannst du auf voreingestellte temporäre Ziele zugreifen, indem du unten auf das Zielfeld in der App drückst. So kannst du aus Optionen wie "Bald essen", "Aktivität" oder "Hypo" wählen. Diese voreingestellten Ziele können entsprechend deinen individuellen Bedürfnissen und Vorlieben angepasst werden.

Anpassen von Parametern

In AndroidAPS hast du die Möglichkeit, deine Insulin-Profile zu ändern, indem du entweder das Profilfeld auf dem Startbildschirm drückst oder die Registerkarte “Profil” aufrufst. Hier kannst du verschiedene Parameter wie Dauer der Insulinwirkung, Kohlenhydrat-Verhältnis, Insulin-Empfindlichkeitsfaktor, Basal-Insulinrate und Zielwert ändern. 

Um das Profil zu wechseln oder den Prozentsatz der Insulinabgabe anzupassen, tippe einfach auf die Registerkarte “Profil” im Startbildschirm.

- Wenn du den Prozentsatz in deinem Profil änderst, denke daran, dass er sich nicht nur auf das Basalinsulin, sondern auch auf dein Kohlenhydrat-Verhältnis und deine Insulin-Empfindlichkeit auswirkt.

Um deinen Zielwert zu ändern, kannst du auf die Zieltaste klicken. Hier hast du die Möglichkeit, deinen Zielwert für eine bestimmte Dauer festzulegen.

Der Konfigurator im Menü bietet weitere Anpassungsmöglichkeiten. Du kannst die Art des Algorithmus wählen, nämlich OpenAPS AMA oder OpenAPS SMB, spezifische Einstellungen für “Super Micro Bolus" konfigurieren, Autosens- und/oder unangekündigte Mahlzeit-Funktionen aktivieren und mehr.

Darüber hinaus ermöglicht AndroidAPS die Einrichtung spezifischer Automatisierungen auf der Grundlage verschiedener Bedingungen wie Blutzuckerwerte, Insulinabgabe, wirksames Insulin, Kohlenhydrate, Standort und andere Apps. Dies ermöglicht eine personalisierte und dynamische Kontrolle deines Diabetes-Managements.

Abgabe eines Insulinbolus

Für den Mahlzeit-Bolus hast du mehrere Möglichkeiten:

- Die Bolus-Wizard-Taste berechnet die Insulindosis auf der Grundlage der Menge Kohlenhydrate, die du zu essen planst.

- Über die Insulin-Taste kannst du direkt die Anzahl der Insulineinheiten eingeben, die du abgeben möchtest.

- Über die Kohlenhydrat-Taste kannst du die Gramm Kohlenhydrate eingeben, die der Algorithmus bei seinen Berechnungen berücksichtigen wird.

Unterbrechung der Insulinabgabe

Wenn du die Insulinabgabe vorübergehend unterbrechen musst, kannst du auf das Loop-Symbol auf dem Startbildschirm klicken. Von dort aus kannst du die Option "Pumpe abschalten" für eine Dauer von 30 Minuten bis 3 Stunden wählen. Dadurch wird die Insulinabgabe durch die Pumpe vorübergehend unterbrochen.

4.4 Manueller Modus

In bestimmten Situationen kann es notwendig sein, in AndroidAPS in den manuellen Modus zu wechseln, z.B. wenn die automatische Insulinabgabe nicht dem aktuellen Insulinbedarf entspricht (z.B. bei Krankheit). Die Deaktivierung des Loop-Modus kann einfach über das Loop-Symbol auf dem Startbildschirm erfolgen.

Im manuellen Modus funktioniert AndroidAPS ähnlich wie im automatischen Modus:

- Du kannst die Basalrate, das Kohlenhydrat-Verhältnis, die Insulin-Empfindlichkeit und die Dauer der Insulinwirkung in den Profileinstellungen anpassen.

- Du kannst eine temporäre Basalrate einstellen, indem du lange auf die Profil-Taste drückst und die erforderlichen Anpassungen vornimmst.

- Du kannst einen Bolus manuell über die Insulin-Aktionstaste verabreichen oder die Aktionstaste des Bolus-Wizards verwenden, wenn du lieber den Bolus-Rechner nutzen möchtest.

Zusammenfassend lässt sich sagen, dass die Verwendung der AndroidAPS-App das Erreichen bestimmter Ziele, den Übergang von Open-Loop zur automatischen Insulinabgabe und das Verständnis für die Arbeit im automatischen und manuellen Modus erfordert. Auch wenn es entmutigend erscheinen mag, das System selbst einzustellen, ist es wichtig, sich daran zu erinnern, dass du auf dieser Reise nicht allein bist.

Die AndroidAPS-Community ist da, um dich bei jedem Schritt zu unterstützen. Sei also zuversichtlich, suche dir bei Bedarf Hilfe und lies die ausführliche Dokumentation, während du darauf hinarbeitest, mit AndroidAPS eine optimale Blutzuckerkontrolle zu erreichen.
