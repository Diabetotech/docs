<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/PDHOGsPCCdc" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Componenten aan elkaar koppelen</u>**

In deze instructievideo leiden we je door het proces van het maken van de noodzakelijke koppelingen binnen het iAPS closed-loop systeem. Deze koppelingen brengen verbindingen tot stand tussen verschillende componenten om een naadloze communicatie en gegevensuitwisseling te garanderen.

iAPS werkt op de volgende manier:

- <span class="mark">De glycemie wordt elke  1 tot 5 minuten gemeten met een glucosesensor, zoals Dexcom G6, G7, Dexcom ONE Plus, FreeStyle Libre 2 of FreeStyle Libre 2 Plus.</span>

- <span class="mark">Na het opstarten van je sensor met je Dexcom of LibreLink app, stuurt de sensor de glucosewaarden rechtstreeks naar je iAPS app, behalve voor de Dexcom G7 en de Dexcom ONE Plus, waarbij de Dexcom App actief moet blijven.</span>

- <span class="mark">iAPS berekent de benodigde insulinedosering en stuurt deze naar je insulinepomp, zoals Omnipod DASH, Dana-I, TouchCare Nano, Omnipod Eros, DanaRS (alleen firmware 3) of oudere Medtronic-pompen.</span>

- De insulinepomp levert de benodigde insuline en geeft de pompgegevens door aan de iAPS-app.

- iAPS deelt de glycemie- en insulinegegevens met Nightscout, dat als uitleesprogramma dient. iAPS deelt deze informatie ook met Apple Health, en de Dexcom en LibreLink app sturen glucosegegevens naar respectievelijk Dexcom Clarity en LIbreView.

- <span class="mark">Daarnaast biedt de iAPS-app een Apple Watch-versie die tijdens hetzelfde bouw- en installatieproces wordt geïnstalleerd. Hierdoor kun je je glucosewaarden in real-time bekijken op je Apple Watch, en zelfs bolus insuline en voorgedefinieerde profielen activeren rechtstreeks vanaf je Apple Watch, waardoor je diabetesbeheer nog gemakkelijker wordt.</span>

- <span class="mark">Onlangs is ondersteuning voor Garmin Watch toegevoegd.</span>

- <span class="mark">iAPS kan ook agenda-idems aanmaken. In combinatie met Apple Carplay kun je tijdens het rijden de carb-waarde en de ontwikkeling ervan visueel volgen in het Carplay-venster.</span>

<span class="mark">In deze instructievideo leiden we je door het proces van het maken van verschillende koppelingen in het iAPS closed-loop systeem. Specifiek behandelen we de volgende stappen:</span>

- Hoe koppel je je glucosesensor aan je iAPS app.

- Hoe je  je Omnipod DASH koppelt.

- Het aanmaken van een Nightscout-account, dat dient als dataknooppunt voor iAPS.

- Hoe je een verbinding tot stand brengt tussen de iAPS app en Nightscout, zodat de overdracht van glycemie- en insulinegegevens soepel verloopt.

- En hoe je iAPS configureert op je Apple Watch.

Door deze stappen te volgen, kun je de noodzakelijke koppelingen binnen het iAPS-systeem tot stand brengen, waardoor een effectieve functie voor automatische insulinetoediening voor diabetesbeheer mogelijk wordt.

### 3.1 Sensor koppelen aan iAPS App

<span class="mark">Laten we eens kijken hoe we de meest gebruikte sensoren kunnen koppelen, zoals de FreeStyle Libre 2, 2 Plus, Dexcom G6, G7 en ONE Plus.</span>

<span class="mark">Voor de Europese FreeStyle Libre 2 of 2 Plus sensoren bestaat de eerste stap uit het opstarten van je sensor via de LibreLink app. Na de opwarmperiode van een uur kun je de verbinding tussen je sensor en de iAPS-app tot stand brengen. Navigeer binnen iAPS naar Instellingen, selecteer CGM en kies vervolgens voor de Libre Transmitter. Tik op de configuratieoptie om Libre 2 Direct te selecteren. Hier kun je het koppelingsproces starten en je sensor scannen. Hierdoor kan iAPS direct gegevens ontvangen van je FreeStyle Libre 2 of 2 Plus sensor. Na het scannen worden je sensorgegevens op het scherm ingevuld en is je huidige sensorglucose zichtbaar op het beginscherm van iAPS. Na 14 dagen stopt de FreeStyle Libre 2 of 2 Plus sensor met functioneren. Je kunt een nieuwe sensor starten via de LibreLink en iAPS app. Om er zeker van te zijn dat iAPS het juiste sensorsignaal oppikt, is het aan te raden om je iPhone opnieuw op te starten en de oude sensor in een aparte ruimte te plaatsen. Als je ononderbroken glucosewaarden wilt, kun je  je sensor eerst in de LibreLink app verwisselen en daarna in de iAPS app na de opwarmperiode. Het is goed om te weten dat de sensorlevensduur van FreeStyle Libre 2 sensoren in de iAPS app 12 uur langer is dan in de LibreLink app.</span>

<span class="mark">Voor Dexcom G6-sensoren start je eerst de sensor op met de Dexcom G6-app. Verbind vervolgens je Dexcom G6-sensor met de iAPS-app door Dexcom G6 te selecteren en het serienummer van de zender in te voeren. Na een opwarmtijd van twee uur ontvang je  je resultaten.</span>

<span class="mark">Voor de Dexcom G7 en Dexcom ONE Plus-sensor, start de sensor met de Dexcom G7 of Dexcom ONE Plus app, bij voorkeur na de opwarmperiode van ten minste 30 minuten, zodat de sensoren elkaar kunnen overlappen. Selecteer in iAPS Dexcom G7 voor beide sensortypen. iAPS moet het sensorsignaal automatisch detecteren.</span>

Je kunt ervoor kiezen om sensorwaarschuwingen te ontvangen vanuit de LibreLink- of Dexcom-app of via de iAPS-app via Meldingen in de Instellingen. De iAPS heeft alleen waarschuwingen voor hoge en lage glucosewaarden en biedt minimale waarschuwingstypen. Als je meer waarschuwingsopties nodig hebt, overweeg dan het gebruik van je eigen sensor-app of een open-source applicatie zoals xDrip4iOS.

### 3.2 Insulinepomp koppelen aan iAPS-app

De meeste mensen zullen iAPS gebruiken met een Omnipod DASH insulinepomp. Als je de Omnipod Eros of een oudere Medtronic-pomp wilt gebruiken, moet je een Riley-koppeling gebruiken.

We laten je zien hoe je een Omnipod DASH-pomp koppelt.

- Ga eerst naar Instellingen en kies Omnipod DASH.

- Je wordt eerst gevraagd om je vervalherinnering, herinnering voor laag reservoir en je insulinetype in te stellen.

- <span class="mark">Daarna kun je op Omnipod DASH tikken om naar het scherm van de pomp te gaan en "Koppel Pod" te selecteren.</span>

<span class="mark">De app leidt je naar de verschillende stappen, vergelijkbaar met de Omnipod DASH PDM. Vul eerst je Pod met insuline, koppel vervolgens je Pod, verwijder de naaldbescherming en plaats de Pod op je lichaam. Plaats tot slot de canule.</span>

<span class="mark">Zodra je Pod is gekoppeld, ziet je een speciale DASH pop-up in de interface van de app. Als je hierop tikt, ga je naar het pompscherm, waar je informatie kunt opvragen over je Omnipod DASH-pomp en de functies kunt bedienen. De knoppen zijn intuïtief en dienen als vervanging voor de functies die worden uitgevoerd door de PDM van de Omnipod. Hoewel de PDM niet nodig is als je iAPS gebruikt, wordt het aanbevolen om deze als back-up te bewaren.</span>

<span class="mark">Voor gebruikers van andere insulinepompen toont de app-interface verschillende opties die overeenkomen met het specifieke pomptype. Deze functies zorgen ervoor dat je de insulinetoediening via je gekoppelde pomp effectief kunt beheren en regelen met de iAPS app.</span>

### 3.3 Een Nightscout-website maken

Nightscout is geen platform om op in te loggen, maar een website die je zelf bouwt of laat bouwen.

Een Nightscout account bestaat uit een website URL (naam) en een wachtwoord om toegang te krijgen tot de website.

Nightscout accounts worden aangemaakt als individuele gebruikersaccounts. Er is geen Nightscout-platform speciaal voor zorgverleners.

<span class="mark">Nightscout maakt het mogelijk om je sensor- en insulinegegevens in realtime te volgen, zodat je deze kunt delen met je dierbaren of zorgverlener. Daarnaast is Nightscout de exclusieve methode voor het genereren van rapporten van je iAPS closed-loop systeem.</span>

Nightscout is meer dan alleen een website voor iAPS-gegevens; het kan verbinding maken met verschillende apparaten. Nightscout fungeert als een centrale hub die gegevens ontvangt van sensoren en deze doorstuurt naar verschillende apparaten, zoals mobiele telefoons, smartwatches, computers en andere controleapparaten. Het biedt verschillende opties om glucose-informatie op te vragen en weer te geven, waaronder via smartwatches, desktop widgets, apparaten aan de muur en integratie met spraakassistenten zoals Alexa.

Er zijn meerdere manieren om een Nightscout website te maken.

Nightscout is open-source software. Je kunt alle informatie vinden op github.nightscout.io.

- <span class="mark">Je kunt het zelf opzetten met behulp van stappenplannen die online beschikbaar zijn.</span>

- <span class="mark">Of er zijn bedrijven die Nightscout setup diensten aanbieden, zoals T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy en Opensource.clinic.</span>

- <span class="mark">Nightscout en de bijbehorende diensten zijn niet goedgekeurd door de FDA, behalve de dienst van T1Pals.</span>

- Er is geen goedkeuring van Europese autoriteiten, dus het gebruik is op eigen risico.

- Nightscout lijkt GDPR en HIPAA compliant te zijn, maar claimt geen officiële naleving door het ontbreken van auditors.

- Het is cruciaal om veilig om te gaan met sensorglycemiegegevens en je Nightscout URL te beschermen met een wachtwoord.

- Als je je Nightscout website wilt delen met een dierbare of zorgverleners, dan is het aan te raden om voor hen een apart token aan te maken.

Door deze stappen te volgen kun je eenvoudig en veilig een Nightscout website maken, waarmee je  je diabetesgegevens effectief kunt volgen en delen.

### 3.4 iAPS App koppelen aan Nightscout

Om je iAPS gegevens te koppelen aan je Nightscout website, ga je naar Instellingen, dan Nightscout, en vul je  je Nightscout URL en wachtwoord in.

<span class="mark">Eenmaal verbonden zijn, je iAPS-gegevens zichtbaar op je Nightscout-website. Dit geeft jou, je familie en je zorgverlener realtime informatie over hoe je met je diabetes omgaat.</span>

Als je "Controle op afstand" inschakelt, kunnen vertrouwde personen je insuline geven, koolhydraten invoeren, of je insuline-instellingen aanpassen met hun Nightscout-login.

### 3.5 iAPS App op Apple Watch

<span class="mark">Als je een Apple Watch gebruikt, kun je niet alleen je sensorglucose en insuline aan boord van je pols volgen, maar kun je ook koolhydraten toevoegen, bolussen en een profiel selecteren, instellen of stoppen vanaf je horloge.</span>

<span class="mark">iAPS wordt automatisch gedownload op je aangesloten Apple Watch. Op je Apple Watch kun je een iAPS-complicatie instellen in een modulaire wijzerplaat.</span>

<span class="mark">Als je op de iAPS-complicatie op je wijzerplaat tikt, krijg je een iAPS-scherm te zien met je glucose- en loopgegevens, je insuline aan boord en 3 actieknoppen. Hier kun je een insuline bolus geven op basis van de koolhydraten die je gaat eten, profiel selecteren, instellen of stoppen, of een handmatige insuline bolus geven.</span>

In dit hoofdstuk hebben we de verschillende verbindingen onderzocht die beschikbaar zijn in iAPS. Van glucosesensoren tot insulinepompen en Nightscout, deze verbindingen maken naadloze communicatie mogelijk voor effectief diabetesmanagement. Door deze verbindingen tot stand te brengen, kunnen gebruikers volledig gebruikmaken van de mogelijkheden van iAPS en controle krijgen over hun diabetes.

4. Hoe iAPS werkt

Welkom bij deze video over de functionaliteit van iAPS.

<span class="mark">Het regelen van je insulinetoediening met het iAPS closed-loop systeem gebeurt via de iAPS app die op je iPhone is geïnstalleerd.</span>

<span class="mark">De app biedt twee bedieningsmodi: Closed Loop of automatische modus en Open Loop.</span>

- In Closed Loop past iAPS automatisch elke 5 minuten de insulinetoediening aan op basis van real-time sensorglucosewaarden.

- <span class="mark">Als Closed Loop is uitgeschakeld, bevind je  je in Open Loop. Open Loop kan worden beschouwd als een soort handmatige modus, hoewel iAPS suggesties geeft voor het aanpassen van de basale insuline op basis van de onderliggende algoritmen, die handmatig kunnen worden bevestigd.</span>

In deze video gaan we dieper in op de functionaliteit van de iAPS-app in het algemeen en onderzoeken we hoe je de iAPS-app kunt gebruiken in zowel de Closed Loop als de Open Loop modus.

### 4.1 iAPS-app

<span class="mark">Wanneer je de iAPS-app opent, zie je het iAPS-homescreen.</span>

- <span class="mark">De bovenste rij toont een Closed-Loop pictogram met een tijdstempel van de laatste Loop cyclus.</span>

- <span class="mark">De kleur van het Loop pictogram moet groen zijn. Als de laatste Loop-cyclus meer dan 5 minuten geleden is, verandert de cirkel in oranje en na meer dan 10 minuten in rood. Als de closed-loop is uitgeschakeld,  staat er "Open", wat verwijst naar de open Loop..</span>

<span class="mark">Naast het Loop pictogram staat je sensorglucosewaarde met de tijdstempel, de trend, en het verschil met de vorige glucosewaarde.</span>

- <span class="mark">De 2e rij toont je koolhydraten aan boord, je insuline aan boord, 2 statuspictogrammen met betrekking tot je insulinepomp, zoals de tijd sinds de laatste infusieset of Pod-wissel en resterende insuline-eenheden.</span>

- <span class="mark">Als je op de pompstatuspictogrammen tikt, krijg je het scherm met je pompinstellingen te zien.</span>

- <span class="mark">Merk op dat de insuline aan boord negatief kan zijn als het algoritme de vooraf ingestelde basale insulinesnelheid heeft verlaagd.</span>

- <span class="mark">De 3e regel geeft een overzicht van de werkelijke basale insuline die aan de pomp wordt toegediend, het actieve profiel</span>

- <span class="mark">Normaal profiel staat voor het standaardprofiel uit de instellingen.</span>

- <span class="mark">Als je op profiel tikt, kun je eenvoudig het standaardprofiel wijzigen en dit opslaan als een apart profiel.  Je kunt het percentage insulinetoediening en de streefwaarde voor de glucosewaarde wijzigen. Via Meer opties kun je de SMB's uitschakelen of de SMB-minuten wijzigen. En je kunt beslissen of je wilt dat de verandering in % insulinetoediening effect heeft op de ISF of koolhydratenratio.</span>

- <span class="mark">Zodra het nieuwe profiel is geactiveerd, zijn de instellingen zichtbaar op het hoofdscherm door de profielnaam en de instellingen in de rechterbovenhoek aan te geven.</span>

<span class="mark">en de berekende glucosewaarde die binnen 2 uur zal worden bereikt op basis van alle parameters die beschikbaar zijn voor het algoritme. Deze waarde verandert elke Loop cyclus.</span>

- <span class="mark">In het midden van het startscherm van iAPS ziet je  je basale insulinetoediening in blauw. De horizontale stippellijn is je vooraf ingestelde basale insulinesnelheid.</span>

- <span class="mark">Daaronder zie je je glucosecurve.</span>

- <span class="mark">De curve links van de stippellijn toont je recente glucosewaarden. Oranje cirkels zijn ingevoerde koolhydraten en blauwe  pijlen  zijn insuline bolussen.</span>

- <span class="mark">De curven rechts van de stippellijn tonen de verschillende voorspellingen voor je glucose. Onder de curve staat een legende voor deze voorspellingslijnen.</span>

- <span class="mark">De schaal van de grafiek en extra grafiekopties kunnen worden ingesteld via de Instellingen.</span>

- <span class="mark">Als je op de glucosecurve tikt, zie je het scherm Geschiedenis met je recente insulinetoediening en glucosewaarden.</span>

- <span class="mark">De onderste rij toont 4 verschillende actieknoppen: Maaltijdbolus, Correctiebolus, Profielen en Instellingen.</span>

- <span class="mark">Via Maaltijd kun je je koolhydraten, vet en eiwit invoeren, waarna een insulinebolus wordt voorgesteld. Als je op het i-icoontje tikt, kun je zien hoe dit wordt berekend. Je kunt de bolus insuline die je wilt toedienen invoeren en tikken op “bolus activeren” om deze toe te dienen.</span>

- <span class="mark">Via het insulinedruppelpictogram kunt u een handmatige correctiebolus toedienen. Dit wordt afgeraden als je gebruik maakt van SMB- en UAM-functies. U kunt ook insuline invoeren zonder deze toe te dienen via uw pomp, bijvoorbeeld wanneer u een insulinepen gebruikt.</span>

- <span class="mark">Via Profiel  kunt je een hogere of lagere streefwaarde voor glucose voor een bepaalde duur definiëren, selecteren of annuleren, je insulinegevoeligheid, koolhydraatratio en generieke insulinetoediening aanpassen en je kunt ook presets maken.</span>

- <span class="mark">Alle instellingen zijn toegankelijk via het pictogram Instellingen op het hoofdscherm.</span>

- <span class="mark">Eerst zie je de versie-informatie van je iAPS</span>

- <span class="mark">Dan heb je de Closed Loop selector</span>

- <span class="mark">En de link naar je apparaatschermen voor je insulinepomp, CGM en horloge.</span>

- <span class="mark">Dan heb je een link naar je diensten, namelijk Nightscout, Apple Health en Meldingen.</span>

- <span class="mark">Vervolgens kun je de pompinstellingen configureren, het basale profiel, de insulinegevoeligheid, de koolhydraatratio en de streefglucose.</span>

- <span class="mark">In het gedeelte OpenAPS kun je alle OpenAPS-parameters definiëren, evenals de Autotune-instellingen.</span>

- <span class="mark">In de Extra Functies kunnen verschillende parameters voor gebruik van de app, App Pictogrammen, Boluscalculator, Vet- en Eiwitconversie, Dynamische insulinegveoligheid, delen en Contactafbeelding worden ingesteld.</span>

- <span class="mark">Tot slot heb je de Hypo Behandeling instelling, Debug Opties, kun je een Geanimeerde Achtergrond aanzetten, en is er een link om je recente logs te delen voor als je hulp wilt van een ontwikkelaar.</span>

- <span class="mark">Statistieken zijn beschikbaar door in het hoofdscherm omlaag te scrollen.</span>

- <span class="mark">Vandaag: geeft de tijd in bereik aan.  Door dat item te selecteren, wordt een nieuw venster geopend met alle mogelijke opties voor de Time In Range informatie  (vandaag, dag, week, maand, of totaal van 3 maanden), evenals de HbA1c-schattingen, % geslaagde Loop cycli, standaardafwijking, variatiecoëfficiënt en gemiddelde glucose.</span>

- <span class="mark">Loop cycli: met vermelding van het % geslaagde Loop cycli, hoeveelheid Loop cycli, en de gemiddelde Loop cycli (in minuten). Na selectie verschijnt hetzelfde venster als eerder beschreven.</span>

- <span class="mark">Actieve koolhydraten: weergave van de ingevoerde koolhydraten van de laatste 24 uur</span>

- <span class="mark">Actieve insuline: 24-uurs weergave, met bovenaan de totale insuline dagdosis voor vandaag, gisteren en eergisteren en ook een daggemiddelde van de laatste 10 dagen.</span>

<span class="mark">We zullen de OpenAPS opties in detail bekijken.</span>

- <span class="mark">Je vindt alle OpenAPS parameters in Instellingen. Deze zijn onderverdeeld in OpenAPS Main Settings, OpenAPS SMB Settings, OpenAPS Target Settings en OpenAPS Other Settings.</span>

<span class="mark">Als je op een van de OpenAPS-instellingen tikt, zie je een korte beschrijving. Je kunt ook meer gedetailleerde informatie vinden in de OpenAPS documentatie.</span>

- <span class="mark">Autotune kan ook worden ingeschakeld.</span>

- <span class="mark">Via de pompinstellingen kun je je maximale basaal, maximale bolus, maximale koolhydraten en je insulinewerkingsduur instellen, die standaard is ingesteld op 6 uur.</span>

- <span class="mark">Via Basaalprofiel, Insulinegevoeligheid en Koolhydratenratio kun je je kerninstellingen instellen per tijdsblok van 1 uur. Dit wordt je "Normaal profiel" genoemd.</span>

- <span class="mark">Hier kun je ook je doelglucosewaarde instellen per tijdsblok van 1 uur.</span>

<span class="mark">Door door deze secties te navigeren, kun je je diabetes effectief beheren met de iAPS app.</span>

### 4.2 Closed Loop

Nu we weten hoe  iAPS werkt, bespreken we hoe je  iAPS kunt gebruiken in de automatische modus of in de Closed Loop modus.

#### iAPS Closed Loop-modus starten

Nadat je hebt gecontroleerd of je kerninstellingen redelijk nauwkeurig zijn, kun je Closed Loop inschakelen via de Instellingen.

#### Een vooraf ingestelde Tijdelijke Streefwaarde gebruiken

<span class="mark">In iAPS kun je een Tijdelijke Streefwaarde instellen via een profielschakelaar,</span>

- <span class="mark">De meest voorkomende voorinstellingen zijn een hoog doel voor lichaamsbeweging en een laag doel voor de voorbereiding op maaltijden.</span>

- <span class="mark">Een profielschakelaar maakt ook aanpassingen van je koolhydraatratio, insulinegevoeligheid en SMB instellingen mogelijk, volgens jouw individuele behoeften en voorkeuren.</span>

#### Parameters aanpassen

<span class="mark">In iAPS heb je de flexibiliteit om je standaard- of normale profiel te wijzigen via de instellingen. Hier kun je je basale insulinesnelheid, koolhydraatratio, insulinegevoeligheid en doelglucose wijzigen. De duur van de insulinewerking is te vinden in de pompinstellingen.</span>

#### Een insulinebolus toedienen

Je kunt op 2 manieren insuline voor een maaltijd toedienen:

- Via de Maaltijd actieknop kun je koolhydraten invoeren, en wordt er een insuline bolus berekend. Je kunt deze bevestigen of corrigeren voordat de bolus wordt toegediend.

- Of via de knop met het insuline afgifte pictogram kun je direct het aantal toe te dienen insuline eenheden invoeren.

#### De insulinetoediening onderbreken

Als je de insulinetoediening tijdelijk moet stoppen, bijvoorbeeld tijdens het sporten om het risico op hypoglycemie te voorkomen, kun je naar je pompscherm gaan door op de pomppictogrammen op het beginscherm of via de instellingen te tikken. Van daaruit kun je de optie kiezen om de insulinetoediening op te schorten voor een duur variërend van 30 minuten tot 2 uur. Hierdoor wordt de insulinetoediening van de pomp tijdelijk onderbroken. Hier kun je ook de insulinetoediening hervatten.

### 4.3 Open Loop

In bepaalde situaties kan het nodig zijn om over te schakelen naar de handmatige modus in iAPS. In theorie zou iAPS in staat moeten zijn om om te gaan met ziekte en andere omstandigheden. Soms kan het echter beter zijn om terug te gaan naar de basis.

Je kunt naar de handmatige modus gaan door Closed Loop uit te schakelen via de instellingen.

<span class="mark">In de handmatige modus werkt iAPS zoals de Closed Loop modus:</span>

- <span class="mark">Je kunt de basale insulinesnelheid, koolhydraatratio, insulinegevoeligheid, doelglucosewaarde en duur van de insulineactie aanpassen via de instellingen.</span>

- <span class="mark">Je kunt van profiel wisselen of een nieuw profiel instellen via het startscherm</span>

- <span class="mark">En je kunt een bolus toedienen via het maaltijdpictogram of via het insulinedruppelpictogram.</span>

Concluderend, iAPS biedt veel extra instellingen bovenop de kerninstellingen van de handmatige modus. Het is het beste om te experimenteren met de app in Open Loop en de documentatie door te nemen voordat je de Loop sluit en geavanceerde en dynamische instellingen gebruikt.

Hoewel het ontmoedigend kan lijken om het systeem zelf aan te passen, is het belangrijk om te onthouden dat je niet alleen staat in deze reis. De iAPS-gemeenschap is er om je bij elke stap te steunen. Heb dus vertrouwen, vraag hulp wanneer dat nodig is en raadpleeg de uitgebreide documentatie terwijl je werkt aan het bereiken van een optimale glycemische controle met iAPS.
