<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/ppY_Lp9mB1w" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. AndroidAPS volgens het CARES-referentiekader (3 min)</u>**

In deze video behandelen we AndroidAPS volgens het CARES-referentiekader.

<span class="mark">We bespreken hoe AndroidAPS de automatische insulinetoediening berekent en aanpast, wanneer het terugschakelt naar manuele modus, specifieke educatieve tips, sensorproblemen en hoe het systeem gegevens deelt. Daarna bespreken we de indicaties en software-updates. Laten we beginnen!</span>

### 1) AndroidAPS volgens het CARES-paradigma

### 2.1 Calculate

In AndroidAPS wordt de vooraf ingestelde basale insulinesnelheid aangepast op basis van de voorspelde glycemie voor de komende 5 tot 9 uur. Hier wordt uitgelegd hoe AndroidAPS werkt:

- <span class="mark">AndroidAPS combineert verschillende bloedglucose of "BG" voorspellingen om de minimaal voorspelde bloedglucose te berekenen:</span>

- <span class="mark">AndroidAPS berekent een voorspelling op basis van de koolhydraten aan boord,</span>

- <span class="mark">een insulinevoorspelde BG, wat een voorspelling is op basis van de insuline aan boord,</span>

- <span class="mark">een onaangekondigde maaltijdvoorspelde BG, wat een voorspelling is in het geval van onaangekondigde koolhydraatconsumptie,</span>

- <span class="mark">en een Zero Temp voorspelde BG, wat een worst-case scenario is, in het geval insuline plotseling niet meer wordt toegediend of koolhydraten niet meer worden opgenomen.</span>

- <span class="mark">AndroidAPS houdt rekening met eventuele fouten in de voorspellingen, want de uiteindelijke BG voorspelling wordt aangepast op basis van de afwijking tussen de huidige glucose en de voorspelde glucose, ook bekend als de bloedglucose impact. Het algoritme houdt rekening met de glycemietrend door de delta door het verschil tussen de huidige en vroegere glycemie te berekenen. En het houdt rekening met het glucosemomentum op korte en lange-termijn glucosemomentum, wat de hoeveelheid verandering is tussen de huidige glucose en de glucose van 15 en 40 minuten geleden.</span>

- <span class="mark">De insulinebehoefte of InsulReq wordt berekend door de streefglucose af te trekken van de minimaal voorspelde bloedglucose, en dit verschil te delen door de insulinegevoeligheid of ISF. Deze insulinebehoefte bepaalt of de handmatig ingestelde basale insuline moet worden verhoogd of verlaagd.</span>

- Als hypoglycemie wordt voorspeld, zal basale insuline worden gestopt en kunnen reddingskoolhydraten worden aanbevolen.

AndroidAPS biedt twee opties voor insulinetoediening: OpenAPS Advanced Meal Assist (AMA) en OpenAPS SuperMicroBolus (SMB).

- <span class="mark">In AMA wordt de vereiste insuline toegediend als een tijdelijk basaal met een gespecificeerde duur en insulinesnelheid.</span>

- <span class="mark">Bij SMB wordt de helft van de berekende tijdelijk basalen toegediend als een microbolus, waardoor dezelfde insulinedosis sneller wordt toegediend, gevolgd door een tijdelijke pauze in de toediening van basale insuline. Deze tijdelijk basalen of supermicrobolussen worden elke 5 minuten opnieuw berekend, en kunnen worden aangepast binnen vooraf gedefinieerde veiligheidsinstellingen.</span>

<span class="mark">AndroidAPS biedt optionele functies zoals Autosens en Unannounced Meal (of UAM) detectie.</span>

- Autosens is een functie in AndroidAPS die de insulinetoediening verhoogt of verlaagt, op basis van de insulinegevoeligheid van de gebruiker over de afgelopen 4, 8 of 24 uur.

- Het berekent een percentage dat aangeeft hoe de insulinegevoeligheid in de afgelopen uren verschilt van de huidige ingestelde gevoeligheid, en gebruikt dit om de insulinegevoeligheid en de basale insulinesnelheid aan te passen.

- De Autosens-functie kan ook worden toegepast op de streefwaarde, waarbij deze wordt aangepast op basis van de berekende gevoeligheidsratio.

- <span class="mark">De Autosens-functie neemt de periode waarin koolhydraten aan boord zijn niet mee in de berekening. Als je de Autosens-functie gebruikt, is het belangrijk om alle gegeten koolhydraten in te voeren. Anders worden afwijkingen van koolhydraten verkeerd geïdentificeerd als een gevoeligheidsverandering. Aan de andere kant, als je gedurende een langere periode continu koolhydraten eet, zal de effectiviteit van Autosens gedurende die periode afnemen.</span>

- <span class="mark">Als je een Pod of infusieset vervangt, of een profiel wijzigt, wordt de Autosens-verhouding weer op 100% gezet.</span>

- <span class="mark">Als je de functie Onaangekondigde maaltijd gebruikt, kan het SMB-algoritme onaangekondigde maaltijden herkennen. Dit is handig als je vergeet je koolhydraten door te geven aan Android APS,  of je koolhydraten verkeerd inschat, en de hoeveelheid ingevoerde koolhydraten verkeerd is,  of als een maaltijd met veel vet en eiwit langer duurt dan verwacht. Zonder invoer van koolhydraten kan UAM snelle glucosestijgingen veroorzaakt door koolhydraten, adrenaline, enz. herkennen, en probeert dit aan te passen met supermicrobolussen. Dit werkt ook omgekeerd: als er een snelle glucosedaling is, kan het SMB's eerder stoppen.</span>

De streefwaarde  kan worden ingesteld tussen 80 en 200 mg/dl of 4,4 en 11 mmol/l.

AndroidAPS geeft een hoge prioriteit aan veiligheid en bevat verschillende veiligheidsinstellingen en limieten, om potentieel gevaarlijke insulinetoediening te voorkomen. Om ervoor te zorgen dat gebruikers het systeem correct configureren en de functionaliteit begrijpen, bevat AndroidAPS een reeks Objectieven.

- Deze Objectieven of Doelstellingen dienen als een stap-voor-stap handleiding om gebruikers te helpen het systeem correct in te stellen, inclusief de instellingen van de insulinepomp, en een goed begrip te krijgen van de werking ervan.

- <span class="mark">Het duurt meestal ongeveer twee maanden om deze doelen te voltooien en het is essentieel om ze met succes te voltooien voordat de automatische insulinetoediening volledig kan worden gebruikt.</span>

### 2.2 Adjust

In AndroidAPS heb je de flexibiliteit om verschillende parameters aan te passen om je behandeling te personaliseren.

- <span class="mark">Je kan de streefwaarde per tijdsblok van 60 minuten instellen tussen de 80 en 200 mg/dl (of 4.4 en 11 mmol/l).</span>

- <span class="mark">Het wordt aanbevolen om een enkele streefwaarde te gebruiken in plaats van een streefbereik voor betere prestaties met AndroidAPS. Internationale richtlijnen stellen voor om te beginnen met een streefwaarde van 110 tot 120 mg/dl (of 6 tot 6,5 mmol/l). Veel gebruikers kiezen voor een streefwaarde van 100 mg/dl (of 5,6 mmol/l) overdag en nog lager 's nachts - bijvoorbeeld 90 mg/dl (of 5 mmol/l). Dit kan worden overwogen als dit geen significante hypoglycemie veroorzaakt.</span>

- Met AndroidAPS kun je verschillende basale insulineprofielen instellen op basis van je individuele behoeften.

- Je kan ook een tijdelijke streefwaarde of % insulinetoediening instellen binnen een veilig bereik.

- AndroidAPS heeft 3 standaard tijdelijke streefwaarden: Eating Soon, Activiteit en Hypo:

- Eating Soon is een tijdelijke streefwaarde van 90 mg/dl of 5 mmol/l gedurende 45 minuten,

- Activiteit is een tijdelijke streefwaarde van 140 mg/dl of 7,8 mmol/l gedurende 90 minuten,

- En Hypo is een tijdelijke streefwaarde van 160 mg/dl of 8,9 mmol/l gedurende 60 minuten.

- <span class="mark">Deze standaardinstellingen kunnen worden gewijzigd via de Voorkeuren.</span>

<span class="mark">Koolhydraatratio, insulinegevoeligheid en de duur van de insulineactie kunnen worden aangepast aan jouw specifieke behoeften.</span>

- In AndroidAPS kan de duur van de insulinewerking worden ingesteld tussen 5 en 8 uur, wat doorgaans langer is dan in traditionele insulinemodellen vanwege het lange staarteffect van insuline. De meeste gebruikers geven de voorkeur aan 6 tot 7 uur. Als je een langere duur nodig hebt, controleer dan de ISF-instellingen, want die kunnen te agressief zijn. Over het algemeen verschilt de werkelijke werkingsduur van insuline niet veel tussen gebruikers.

- Met AndroidAPS kun je het type insuline selecteren dat je gebruikt.

- Je kunt kiezen uit opties zoals snelwerkende profielen voor Novorapid of Humalog, een ultrasnel profiel voor Fiasp, een apart profiel voor Lyumjev, of een profiel met instelbare piekwerking voor niet-vermelde insuline of mengsels.

- Afhankelijk van het geselecteerde insulinetype, zal AndroidAPS een overeenkomstig profiel gebruiken.

<span class="mark">Binnen AndroidAPS, zijn er tal van andere instelbare parameters, en we zullen ons verdiepen in de belangrijkste: het type algoritme, de UnAnnounced Meal  functie, de Autosens-functie, en limieten.</span>

- Bij het starten van AndroidAPS kun je kiezen tussen het OpenAPS AMA of OpenAPS SMB algoritme.

- <span class="mark">In eerste instantie wordt aangeraden om OpenAPS SMB of supermicrobolussen alleen te gebruiken na het consumeren van koolhydraten. Als dit goed voor je werkt, kun je ervoor kiezen om SMB ook op andere momenten te activeren. Deze optie is alleen mogelijk met betrouwbare bronnen van bloedglucosegegevens, zoals de meeste Dexcom- en FreeStyle Libre-sensoren. Dynamic ISF is een experimenteel algoritme dat beschikbaar is in AndroidAPS, naast OpenAPS AMA en SMB. Met Dynamic ISF wordt de insulinegevoeligheid dynamisch berekend op basis van de totale insuline dagdosis en de huidige en voorspelde bloedglucosewaarden. Dit algoritme houdt rekening met de insulineresistentie die optreedt bij hogere bloedglucosewaarden, vergeleken met lagere. Door Dynamic ISF te gebruiken, bepaalt het systeem je insulinegevoeligheid onafhankelijk van de door de gebruiker ingestelde waarden.</span>

- De UnAnnounced Meal functie helpt het algoritme om significante glycemische verhogingen te interpreteren als onaangekondigde maaltijden.

- Het is belangrijk op te merken dat deze functie alleen wordt aanbevolenals je een relatief stabiele bloedsuikercontrole en sensorwaarden hebt. Als je glucosecontrole slecht is, kan het activeren van de UnAnnounced Meal functie extra variabiliteit introduceren. Hetzelfde kan gebeuren als je sensorwaarden instabiel zijn, bijvoorbeeld tijdens de eerste dag na een sensorwissel.

- <span class="mark">De Autosens-functie is een van de belangrijkste unieke functies van AndroidAPS. Het analyseert je reactie op insuline over de afgelopen 4, 8 of 24 uur, en past de insulinegevoeligheid en basale insulinesnelheid hierop aan. Je hebt de optie om de Autosens-functie ook je streefwaarde te laten aanpassen. Houd er rekening mee dat je diabetes kan variëren. Het is aan te raden om de resultaten met de Autosens-functie eerst te evalueren, voordat je het permanent activeert.</span>

- De gevoeligheid voor de Autosens-functie kan geselecteerd worden en de optie Oref1 wordt aanbevolen voor gebruikers van OpenAPS SMB en de UnAnnounced Meal functie.

- De geavanceerde instellingen voor de Autosens-functie in AndroidAPS kunnen het beste ongewijzigd blijven. Deze omvatten:

- De min_5min_carbimpact bepaalt de snelheid waarmee koolhydraten worden verondersteld te worden afgebroken wanneer je bloedglucose niet stijgt. De standaardwaarde voor AMA is 5 mg/dl/5 minuten, terwijl dit voor SMB 8 mg/dl/5 minuten is.

- De maximale opnametijd van de maaltijd is de tijdsduur waarna wordt aangenomen dat alle koolhydraten zijn opgenomen. Standaard is deze ingesteld op 6 uur.

- De max en min autosens ratio zijn respectievelijk ingesteld op 1,2 en 0,8. Ze bepalen het maximale en minimale aanpassingspercentage op basis van de Autosens-functie. Dit betekent dat de waarden met Autosens kunnen worden aangepast met een maximum van 120% en een minimum van 80%.

- <span class="mark">Tot slot, zijn er ook  veiligheidsinstellingen en limieten in AndroidAPS, die kunnen worden aangepast binnen een veilig bereik op basis van de leeftijd en het type van de gebruiker.</span>

- <span class="mark">Deze instellingen zijn onder andere:</span>

- <span class="mark">Maximaal basaal: Voor volwassenen is het aanbevolen om deze limiet in te stellen op 3-5 keer de hoogste basaalsnelheid.</span>

- Maximale insuline aan boord: Deze limiet verwijst naar de maximale gecombineerde hoeveelheid basale en bolus insuline die in één keer is toegestaan.

- Er zijn ook verschillende geavanceerde veiligheidsinstellingen die je best ongewijzigd laat:

- <span class="mark">AndroidAPS biedt de optie om altijd het korte gemiddelde verschil te gebruiken in plaats van alleen te vertrouwen op de meest recente sensorglycemie. Dit is vooral handig bij gebruik van glycemiesensoren met meer ruis, zoals gegevens van xDrip en Libre sensoren. Het korte gemiddelde verschil beschouwt de gemiddelde sensorglycemie van de laatste 15 minuten of de laatste 3 sensorwaarden. De maximale dagelijkse veiligheidsmultiplicator en de huidige basale veiligheidsmultiplicator zijn extra grenzen voor de maximale basale insulinesnelheid, en het is over het algemeen het beste om deze ongewijzigd te laten. De maximale dagelijkse multiplicator is standaard ingesteld op 3, waardoor maximaal 3 keer de hoogste handmatig ingestelde basale hoeveelheid kan worden toegediend. De huidige vermenigvuldigingsfactor van de basaalmodus is ingesteld op 4, waardoor maximaal 4 keer de huidige ingestelde basaalsnelheid kan worden gebruikt.</span>

- In OpenAPS AMA is er nog een andere specifieke veiligheidsinstelling, namelijk "bolus snooze dia divider". Deze bepaalt de duur voor het toedienen van extra insuline na een maaltijdbolus. Standaard is deze ingesteld op de helft van de duur van de insulineactie.

- <span class="mark">In OpenAPS SMB zijn er ook extra beveiligingsinstellingen met betrekking tot supermicrobolussen. Deze omvatten bijvoorbeeld de maximale basale minuten om supermicrobolussen te beperken, die standaard op 30 minuten staat.</span>

Vergeet niet dat deze instellingen en parameters moeten worden aangepast in overleg met je zorgverlener, rekening houdend met je individuele behoeften en medische begeleiding.

### 2.3 Revert

Als er in AndroidAPS langer dan 15 minuten geen verbinding is met de sensor of de pomp, schakelt het systeem terug naar de manuelemodus.

Als de verbinding wordt verbroken, zal de pomp in eerste instantie overschakelen naar de laatst ingestelde tijdelijke basaalsnelheid. Na maximaal 120 minuten wordt overgeschakeld naar de manuele modus.

In de manuele modus is de basale insulineafgifte ingesteld op de vooraf ingestelde snelheid, zonder de 'stop-voor-laag' functie. Je hebt de optie om de 'stop-voor-laag' functie handmatig in te schakelen, maar dit is alleen mogelijk als de sensor en pomp zijn aangesloten.

<span class="mark">Zodra de verbinding met de pomp of sensor is hersteld, zal het systeem automatisch de automodus hervatten, die in AndroidAPS Closed Loop wordt genoemd. In deze Closed Loop modus berekent het systeem elke 5 minuten een tijdelijk basaal en dient deze toe.</span>

<span class="mark">Het is vermeldenswaard dat in AndroidAPS, de term "Open-Loop" niet verwijst naar de manuele modus. In plaats daarvan geeft de Open Loop modus aan dat tijdelijke basalen alleen verschijnen als meldingen, en dat je ze handmatig moet bevestigen. Deze Open Loop modus wordt aanbevolen voor gebruikers die nieuw zijn met AndroidAPS en willen observeren hoe het algoritme werkt voordat ze er volledig op vertrouwen.</span>

### 2.4 Educate

Goede educatie is cruciaal bij het starten van een closed-loop systeem. Raadpleeg de algemene module voor algemene educatiepunten.

De algemene educatiepunten die aan bod kwamen, waren:

- Neem minder koolhydraten een om hypoglycemie te behandelen

- Overweeg problemen met het infusieset als de bloedglucosespiegels hoog blijven zonder duidelijke reden.

- <span class="mark">Vertrouw op het closed-loop systeem en vermijd onnodige handmatige interventies.</span>

- Geef maaltijdbolussen 15 minuten voor de maaltijd.

- Gebruik de sportmodus 1 tot 2 uur voor de activiteit.

- Stop de insulineafgifte als de pomp langer dan 15 minuten is losgekoppeld.

- Reageer op alarmen en let op met automatische updates op gsm’s.

- Zoek peers voor begeleiding en het delen van ervaringen.

AndroidAPS is een krachtig hulpmiddel voor het beheren van diabetes, maar het is belangrijk om te onthouden dat het geen volledig geautomatiseerd systeem is dat je kunt "instellen en vergeten". Het vereist actieve controle en begrip van de acties. Hier zijn enkele aanvullende educatieve punten die specifiek zijn voor het gebruik van AndroidAPS:

- AndroidAPS regelt je insulinetoediening, dus het is cruciaal om het nauwlettend in de gaten te houden en te begrijpen hoe het werkt. Let op mogelijke fouten of onverwacht gedrag en leer hoe je de acties van het systeem moet interpreteren.

- Eenmaal gekoppeld kan de gsm de pomp opdracht geven om verschillende acties uit te voeren. Je gsm met AndroidAPS moet worden beschouwd als een medisch apparaat en dienovereenkomstig worden behandeld. Gebruik de gsm alleen voor AndroidAPS en essentiële communicatie. Overweeg om te beginnen met aparte gsm’s voor AndroidAPS en dagelijks gebruik. Vermijd het installeren van onnodige apps of games die malware kunnen introduceren en mogelijk de werking van het systeem kunnen verstoren.

- Installeer alle beveiligingsupdates van de fabrikant van je gsm en Google om je apparaat te beschermen. Dit helpt je te beschermen tegen mogelijke zwakke plekken in de beveiliging.

- Nabijheid van pomp en CGM: Houd uw mobiele telefoon in de buurt van uw insulinepomp en CGM om een betrouwbare verbinding te behouden.

- Houd alle gebruikte wachtwoorden bij en bewaar een reservekopie van je app in de cloud. Regelmatig je instellingen exporteren naar de cloud, vereenvoudigt het herinstallatieproces, en voorkomt dat je al je doelstellingen opnieuw moet doen.

- Het is aan te raden om een  reserve gsm bij de hand te hebben voor noodgevallen. Dit zorgt ervoor dat je een back-up toestel hebt in geval van technische problemen met je primaire telefoon.

- Gebruik geavanceerde instellingen, zoals OpenAPS SMB, pas nadat je de basisbeginselen goed kent en een stabiele bloedglucoseregeling hebt bereikt. Houd er rekening mee dat functies zoals de UnAnnounced Meal functie en Autosens-functie mogelijk niet voor iedereen optimaal werken.

- Als je hyperglycemie ervaart na een maaltijd, maak dan gebruik van het tijdelijke doel "Eating Soon". Met deze functie kun je proactief een hoge bloedsuikerspiegel aanpakken als voorbereiding op de komende maaltijden.

- <span class="mark">Zorg ervoor dat je zorgverlener toegang heeft tot je rapporten die Nightscout of Tidepool genereert. Zo kan hij of zij op de hoogte blijven van je diabetesmanagement en weloverwogen beslissingen nemen tijdens je medische consulten.</span>

- Zorg ervoor dat je je insulinepomp en -sensor ook goed kunt gebruiken.

<span class="mark">Door deze richtlijnen te volgen en een proactieve benadering te hanteren bij het gebruik van AndroidAPS, kun je de effectiviteit van het systeem optimaliseren en zorgen voor een veilige en betrouwbare automatische insulinetoediening.</span>

### 2.5 Sensor

AndroidAPS kan worden gekoppeld aan de Dexcom sensoren, bepaalde FreeStyle Libre sensoren, Eversense, Enlite, POCTech, Sibionics, Ottai, Syai Tag en CareSens Air sensoren.

Houd er rekening mee dat alleen Dexcom- en FreeStyle Libre-sensoren worden beschouwd als betrouwbare bronnen voor bloedglucosegegevens, omdat ze wettelijk zijn goedgekeurd voor gebruik in commerciële closed-loop systemen. Betrouwbare bronnen voor bloedglucosegegevens maken het mogelijk om continu SMB's toe te dienen, terwijl andere gegevensbronnen alleen supermicrobolussen toestaan na de inname van koolhydraten.

<span class="mark">Omdat AndroidAPS geen directe verbinding kan maken met native sensor-apps zoals de Dexcom of LibreLink app, is een extra open-source sensor-app (zoals xDrip+ of Juggluco) nodig om de kloof te overbruggen en de sensorgegevens naar AndroidAPS te sturen.</span>

<span class="mark">Als je twijfelt aan de nauwkeurigheid van je sensormetingen of het gevoel hebt dat ze je toestand niet weerspiegelen, voer dan ter bevestiging een vingerpriktest uit. Als je een significante discrepantie opmerkt - zoals een verschil van meer dan 20% tussen de sensor- en vingerprikmetingen, zelfs als je bloedglucose stabiel is binnen het doelbereik - is het raadzaam om de automatische modus uit te schakelen totdat het probleem is opgelost.</span>

<span class="mark">Sommige sensoren kunnen worden gekalibreerd met een vingerprik. Dit moet je alleen doen als je sensorwaarden stabiel en binnen bereik zijn.</span>

### 2.6 Share

In AndroidAPS is het delen van insuline- en glucosegegevens met zorgverleners en familieleden op verschillende manieren mogelijk:

<span class="mark">Om je zorgverlener in staat te stellen je gegevens te monitoren, is het essentieel om een Nightscout website in te stellen of een account aan te maken op Tidepool. AndroidAPS kan de gegevens doorsturen naar de Nightscout website of Tidepool cloud, zodat je zorgverlener de informatie in real-time kan bekijken. Gebruikers kunnen rapporten downloaden van Tidepool of Nightscout, of tools zoals Nightscout Reporter gebruiken om uitgebreide rapporten te genereren die gedeeld kunnen worden met zorgverleners voor diepgaande analyse en evaluatie.</span>

- <span class="mark">Het is belangrijk om te begrijpen dat Tidepool alleen bedoeld is voor rapportages. Het is geen real-time volg app. Als je volgers nodig hebt buiten je eigen AndroidAPS telefoon, moet je ook Nightscout instellen.</span>

<span class="mark">Zorgverleners hebben toegang tot de gegevens op de persoonlijke Nightscout website, met een token of op een andere geautoriseerde manier. Zo kunnen ze je insuline- en glucosegegevens bekijken en bijhouden en op de hoogte blijven van je diabetesmanagement. Voor zorg op afstand naast Nightscout, kunnen zorgverleners de NSClient app gebruiken, waarin ze doelen kunnen aanpassen, koolhydraten kunnen importeren en andere instellingen kunnen wijzigen. Alles behalve het geven van een bolus.</span>

- <span class="mark">Familieleden kunnen je gegevens ook op afstand volgen met een Dexcom Follow app als je een Dexcom Share account hebt, of met xDrip of varianten daarvan. Deze toepassingen geven hen toegang tot real-time glucose- en insuline-informatie, wat een extra laag van ondersteuning en bewustzijn biedt.</span>

Door gebruik te maken van deze mogelijkheden om te delen, kunnen AndroidAPS-gebruikers effectieve communicatie en samenwerking met hun zorgteam en dierbaren vergemakkelijken, waardoor een ondersteunende en geïnformeerde diabetesbeheeromgeving wordt bevorderd.

### 2.7 Indicaties

<span class="mark">AndroidAPS is een open-source app die geen officiële indicaties heeft die zijn goedgekeurd door de FDA of Europese autoriteiten. Het kan worden gebruikt met alle snelwerkende insulineanalogen.</span>

De AndroidAPS-app kan niet worden gedownload uit app stores. Gebruikers moeten de app zelf bouwen op eigen risico. Het opzetten van het systeem vereist vastberadenheid en technische kennis. Als je aan het begin nog niet over de technische kennis beschikt, zal dat aan het einde wel het geval zijn. Alle informatie die je nodig hebt kun je vinden in de AndroidAPS documentatie die online beschikbaar is, en van anderen die het al gedaan hebben - je kunt het hen vragen in Facebook groepen of andere forums zoals Discord. Discord is een sterk aanbevolen platform voor interactieve chat tussen AndroidAPS en Nightscout gebruikers, ouders en ontwikkelaars. Het beslaat een breed scala aan onderwerpen, van vragen van beginnende gebruikers tot meer technisch geavanceerde discussies over de innerlijke werking van AndroidAPS en het OpenAPS-algoritme. De voertaal op Discord is Engels.

Veel mensen hebben met succes AndroidAPS gebouwd en gebruiken het nu volledig veilig, maar het is essentieel dat elke gebruiker:

- Het systeem zelf bouwt zodat ze goed begrijpen hoe het werkt.

- Zijn individuele doseringsalgoritme aanpast met de hulp van zijn of haar diabetesteam.

- Het systeem goed opvolgt om ervoor te zorgen dat het goed werkt.

- En begrijpt hoe hun insulinepomp en glucosesensor werken.

<span class="mark">Om AndroidAPS te bouwen en te gebruiken, heb je een compatibele gsm nodig. De minimale vereisten voor je apparaten kun je vinden in de AndroidAPS documentatie. De documentatie biedt ook een lijst van specifieke mobiele telefoons die zijn getest en compatibel zijn gebleken met AndroidAPS. Het controleren van de minimale vereisten en compatibiliteit zorgt ervoor dat je apparaten in staat zijn om de applicatie effectief uit te voeren.</span>

Het bouwen van de app kan worden gedaan met een computer met behulp van Android Studio, of vanaf je telefoon met behulp van GitHub-acties. Een stapsgewijze handleiding is beschikbaar in de AndroidAPS-documentatie. Je moet verschillende stappen doorlopen om het APK bestand te genereren. Het is belangrijk om de benodigde wachtwoorden en het sleutelbestand veilig op te slaan voor toekomstige updates. Zodra het APK-bestand is gegenereerd, kan het worden opgeslagen in de cloud en geïnstalleerd op de mobiele telefoon.

Na het installeren van de AndroidAPS app, moet je 10 Objectieven voltooien in de loop van ongeveer 2 maanden. Deze doelstellingen leiden je door belangrijke functies en instellingen, zodat je je systeem correct configureert en de werking ervan begrijpt. Door het voltooien van de Objectieven, zul je vertrouwen krijgen in het AndroidAPS systeem, zodat je je diabetes effectief kunt beheren.

Concluderend vereist AndroidAPS dat gebruikers een actieve rol spelen in het begrijpen en bouwen van het systeem en zich houden aan de veiligheidsmaatregelen en medische richtlijnen.

### 2.8 Software-updates

Regelmatige software-updates zijn cruciaal voor het behoud van de optimale prestaties en toegang tot de nieuwste functies van AndroidAPS. Het AndroidAPS team brengt periodiek nieuwe versies uit, met grote updates die jaarlijks plaatsvinden en kleine updates tussendoor. Deze updates bevatten vaak bug fixes en verbeteringen om de functionaliteit van het systeem te verbeteren.

Meldingen op de AndroidAPS app zullen je informeren wanneer er een nieuwe versie beschikbaar is. Het is dan verplicht om binnen 60 dagen de update te doen, om AndroidAPS te kunnen blijven gebruiken.

Volg deze stappen om AndroidAPS bij te werken:

- Exporteer je huidige AndroidAPS-instellingen en sla ze op een veilige locatie op.

- Gebruik Android Studio of GitHub om de code te vernieuwen naar de nieuwe versie.

- Maak een nieuw APK-bestand met dezelfde tekensleutel als de vorige installatie.

- Breng het nieuwe APK-bestand over naar je gsm, en werk de huidige installatie bij.

- Controleer de werking en instellingen van AndroidAPS na de update.

Als je problemen tegenkomt, blijf dan kalm en zoek ondersteuning bij de AndroidAPS-community en documentatie. Onthoud dat het oplossen van problemen een normaal onderdeel is van het gebruik van software en met geduld kunt u alle problemen overwinnen.

Kortom, geïnformeerd en proactief blijven met AndroidAPS is de sleutel tot het optimaliseren van je diabetesbeheer. Door software-updates bij te houden, zorgrichtlijnen te volgen en eventuele problemen direct aan te pakken, kun je zorgen voor een soepele en effectieve ervaring. Geef prioriteit aan veiligheid, houd nauwkeurige gegevens bij en maak gebruik van beschikbare bronnen voor ondersteuning. Omarm de mogelijkheden die AndroidAPS biedt om je gezondheid en welzijn te verbeteren.
