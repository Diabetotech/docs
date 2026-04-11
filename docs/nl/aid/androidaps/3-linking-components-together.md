<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/XfOE4hud2RI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Onderdelen aan elkaar verbinden (14 min)</u>**

In deze instructievideo leiden we je door het proces van het maken van de nodige koppelingen binnen het AndroidAPS closed-loop systeem. Deze koppelingen maken verbindingen tussen verschillende componenten om een naadloze communicatie en gegevensuitwisseling te garanderen.

AndroidAPS werkt op de volgende manier:

- <span class="mark">De glycemie wordt elke 5 minuten gemeten met een glucosesensor, zoals een Dexcom of FreeStyle Libre sensor.</span>

- <span class="mark">De sensor stuurt de glucosewaarden naar een speciale sensor-app op je mobiele apparaat, die de gegevens vervolgens doorstuurt naar de AndroidAPS app.</span>

- <span class="mark">AndroidAPS berekent de benodigde insulinedosering en stuurt deze naar je insulinepomp, zoals de Accu-Chek Combo of Insight pomp, Dana pomp, Omnipod DASH, TouchCare Nano Pump of oudere Medtronic pompen.</span>

- <span class="mark">De insulinepomp levert de benodigde insuline en geeft Pod-gegevens door aan de AndroidAPS-app.</span>

- <span class="mark">AndroidAPS deelt de glycemie- en insulinegegevens met Nightscout of Tidepool, dat als uitleesprogramma dient.</span>

- <span class="mark">Als je de glycemiegegevens doorstuurt naar xDrip op je gsm, kunnen zorgverleners de gegevens op afstand monitoren via hun eigen xDrip app.</span>

- Daarnaast kan de AndroidAPS app of xDrip je sensor- en insulinegegevens doorsturen naar compatibele smartwatches. Sommige smartwatches bieden  de mogelijkheid om AndroidAPS te besturen direct vanaf het horloge, zoals het geven van een bolus insuline, wat je diabetesmanagement nog makkelijker maakt en je bewuster maakt van je glycemische status zonder dat je je smartphone hoeft te pakken.

In deze instructievideo leiden we je door het proces van het maken van verschillende koppelingen in het AndroidAPS closed-loop systeem. Specifiek behandelen we de volgende stappen:

- Hoe je je sensor kunt koppelen aan een speciale sensor-app, zodat sensormetingen naar je AndroidAPS-app kunnen worden verzonden.

- Hoe je je insulinepomp kunt koppelen met AndroidAPS voor naadloze communicatie.

- Het aanmaken van een Nightscout-account, dat dient als dataknooppunt voor AndroidAPS.

- Hoe je een verbinding tot stand brengt tussen de AndroidAPS app en Nightscout, zodat de overdracht van glycemie- en insulinegegevens soepel verloopt.

- En hoe je AndroidAPS koppelt aan je smartwatch.

Door deze stappen te volgen, kun je de noodzakelijke koppelingen binnen het AndroidAPS-systeem tot stand brengen, waardoor effectieve geautomatiseerde insulinetoediening mogelijk wordt.

3.1 Sensor koppelen aan AndroidAPS-app

Als het gaat om het koppelen van sensoren aan de AndroidAPS app, zijn er verschillende opties afhankelijk van de sensor die je gebruikt.

Omdat AndroidAPS niet direct verbinding kan maken met native sensor apps zoals de Dexcom of LibreLink app, is een extra open-source sensor app nodig om de kloof te overbruggen en de sensorgegevens naar AndroidAPS te sturen. Dit kan xDrip+ of Juggluco zijn, afhankelijk van je sensortype.

- xDrip+ is een krachtige app die gebruikt kan worden voor verschillende sensoren. Hij kan ook verbinding maken met andere platforms zoals Nightscout, Tidepool, smartwatches en andere mobiele apparaten.

<span class="mark">xDrip+ kan niet rechtstreeks uit de Play Store worden gedownload. In plaats daarvan kun je het downloaden van de GitHub repository. Door in Google te zoeken naar xDrip en Github, kun je het xDrip+ APK bestand downloaden en installeren op je gsm. Na de installatie word je gevraagd om een gegevensbron te kiezen in de instellingen van de app. Selecteer de juiste optie op basis van je sensortype en volg de instructies op het scherm om de zender te koppelen en de sensor te starten.</span>

<span class="mark">Als je xDrip met AndroidAPS gebruikt, krijg je extra functies zoals het delen van sensorgegevens met geliefden, aanpasbare alarmen, een smartphone-widget, Bluetooth-integratie voor autogeluidssystemen en Nightscout-integratie voor uitgebreid gegevensbeheer.</span>

<span class="mark">Als je alleen toegang hebt tot oudere FreeStyle Libre sensoren, heb je een extra NFC naar Bluetooth brug nodig, zoals een MiaoMiao Reader, Bubble of Blucon Nightrider. Deze NFC naar Bluetooth bruggen kunnen koppelen aan specifieke open-source apps om de glucosewaarden op je telefoon te ontvangen, waarna ze naar AndroidAPS kunnen worden verzonden.</span>

Door gebruik te maken van open-source sensor-apps kun je sensormetingen ontvangen en naadloos doorsturen naar de AndroidAPS-app, waardoor een effectief diabetesbeheer mogelijk is via het closed-loop systeem.

3.2 Insulinepomp koppelen aan AndroidAPS-app

Wanneer je de AndroidAPS app gebruikt, heb je de optie om deze te koppelen aan je insulinepomp. Bij het starten van de app wordt je gevraagd om het type pomp dat je gebruikt te selecteren. Je kunt deze instelling later ook wijzigen via de configurator.

Als je de Omnipod DASH als pomptype hebt gekozen, zie je een speciaal DASH-tabblad bovenaan de interface van de app.

- In dit tabblad heb je toegang tot informatie over je Omnipod DASH-pomp en kun je de functies ervan regelen.

- Met de verversingsknop kan AndroidAPS een verbinding maken met de Omnipod en zijn status ophalen. Dit kan handig zijn bij het uitschakelen van bepaalde Omnipod-alarmen.

- Onder pompbeheer vind je vier opties die specifiek zijn voor de Omnipod DASH:

- Pod activeren: Dit leid je door de stappen van het vullen van een pod met insuline, het plaatsen ervan en het starten van de werking.

- Pod deactiveren: hiermee kun je een actieve pod deactiveren.

- Testpieptoon afspelen: Deze optie regelt de auditieve waarschuwingen op de Omnipod DASH.

- Podgeschiedenis: Hier heb je toegang tot de geschiedenis van je Omnipod DASH-pods.

- In bepaalde situaties kan er een derde knop verschijnen in het tabblad DASH. Dit kan de knop "Resume Delivery" of de knop "Silence Alert" zijn, afhankelijk van de situatie. De knop "Resume Delivery" kan de insulinetoediening herstellen na een profielwijziging, terwijl de knop "Silence Alert" alarmen met betrekking tot het verlopen van een Pod of een laag insulinereservoir dempt. Het verschijnenvan deze knoppen biedt dus specifieke opties voor het aanpakken van pompgerelateerde problemen.

- Deze knoppen zijn intuïtief en dienen als vervanging voor de functies die worden uitgevoerd door de PDM van de Omnipod. Hoewel de PDM niet nodig is als je AndroidAPS gebruikt, is het aanbevolen om deze als back-up te bewaren.

Voor gebruikers van andere insulinepompen zal de interface van de app verschillende opties tonen die overeenkomen met het specifieke pomptype. Elk pomptype heeft zijn eigen tab bovenaan. De beschikbare opties en instellingen kunnen variëren, afhankelijk van het pompmodel.

Deze instellingen zorgen ervoor dat je de insulinetoediening via je gekoppelde pomp effectief kunt beheren en regelen met de AndroidAPS app.

3.3 Een Nightscout-website maken

- Nightscout is geen platform om op in te loggen, maar een website die je zelf bouwt of laat bouwen, wat extra kosten met zich mee kan brengen.

- Een Nightscout account bestaat uit een website URL (naam) en een wachtwoord om toegang te krijgen tot de website.

- Nightscout accounts worden aangemaakt als individuele gebruikersaccounts. Er is geen Nightscout platform specifiek voor zorgverleners.

- <span class="mark">Nightscout maakt het mogelijk om je sensor- en insulinegegevens in realtime te volgen, zodat je deze kunt delen met je dierbaren of zorgverlener. Daarnaast maakt Nightscout het mogelijk om rapporten te genereren van uw AndroidAPS closed-loop systeem.</span>

- Nightscout is meer dan alleen een website voor AndroidAPS-gegevens; het kan verbinding maken met verschillende apparaten.

- Nightscout fungeert als een centrale hub die gegevens ontvangt van sensoren en deze distribueert naar meerdere apparaten, zoals mobiele telefoons, smartwatches, computers en andere controleapparaten. Het biedt opties voor toegang tot en weergave van glucose-informatie, waaronder via smartwatches, widgets op het bureaublad, apparaten aan de muur en integratie met spraakassistenten zoals Alexa.

- Er zijn meerdere manieren om een Nightscout website te maken.

- Nightscout is open-source software. Je kunt alle informatie vinden op github.nightscout.io.

- Je kunt het zelf opzetten met behulp van stappenplannen die online beschikbaar zijn.

- Of er zijn bedrijven die Nightscout setup-diensten aanbieden, zoals T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy en Opensource.clinic.

- Nightscout en de bijbehorende diensten zijn niet goedgekeurd door de FDA, behalve de dienst van T1Pals. Er is geen goedkeuring van de Europese autoriteiten, dus het gebruik is op eigen risico. Nightscout lijkt GDPR- en HIPAA-compliant te zijn, maar claimt geen officiële naleving door het ontbreken van auditors.

- Het is cruciaal om veilig om te gaan met sensorglycemiegegevens en je Nightscout URL te beveiligen met een wachtwoord.

- <span class="mark">Als je je Nightscout website wilt delen met een dierbare of zorgverlener, dan is het aan te raden om voor hen een aparte token aan te maken.</span>

Door deze stappen te volgen, kun je eenvoudig en veilig een Nightscout website maken, waarmee je je diabetesgegevens effectief kunt volgen en delen.

3.4 AndroidAPS App koppelen aan Nightscout

Bij het instellen van de AndroidAPS app word je gevraagd om je Nightscout URL en wachtwoord in te voeren. Als je dit niet hebt gedaan tijdens de eerste installatie, kun je deze informatie ook later invoeren via de configurator.

Als je je Nightscout-referenties hebt ingevoerd, kun je naar het tabblad Nightscout gaan in de AndroidAPS-app. In dit tabblad kun je zien welke gegevens worden doorgestuurd naar je Nightscout-website.

Door AndroidAPS te koppelen aan Nightscout kun je je diabetesgegevens naadloos doorsturen naar je Nightscout website, waar ze in real-time kunnen worden bekeken en gecontroleerd. Dit geeft jou, je dierbaren en je zorgverlener waardevolle inzichten in je diabetesmanagement.

3.5 AndroidAPS App koppelen aan een Smartwatch

Als het gaat om het koppelen van de AndroidAPS app aan een smartwatch, zijn er verschillende opties beschikbaar:

- Als je een smartwatch hebt met het Wear-besturingssysteem kun je niet alleen je AndroidAPS-gegevens op het horloge bekijken maar ook acties uitvoeren zoals het geven van een bolus of het instellen van een tijdelijke streefwaarde. Informatie over welke horloges zijn getest en hoe je ze kunt instellen, vind je in de AndroidAPS documentatie.

- <span class="mark">Een andere optie is om de sensorgegevens van xDrip+ door te sturen naar je smartwatch. Hiermee kun je je glucosegegevens bekijken op je horloge, maar je kunt je insulinepomp niet bedienen of er opdrachten aan geven. Verschillende soorten smartwatches kunnen specifieke opties hebben om te integreren met xDrip+, je kunt meer informatie vinden in de xDrip documentatie.</span>

In dit hoofdstuk hebben we de verschillende verbindingen onderzocht die beschikbaar zijn in AndroidAPS. Van sensoren tot insulinepompen en Nightscout, deze verbindingen maken naadloze communicatie mogelijk voor effectief diabetesbeheer. Door deze verbindingen tot stand te brengen, kunnen gebruikers de mogelijkheden van AndroidAPS volledig benutten en controle krijgen over hun diabetes.
