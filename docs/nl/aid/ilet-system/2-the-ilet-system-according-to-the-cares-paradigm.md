<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/t2K0oGFTBok" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. Het iLet Systeem volgens het CARES-paradigma</u>**

Welkom bij deze les over het iLet Systeem volgens het CARES paradigma.

Het iLet Systeem biedt een reeks functies die het tot een effectief closed-loop systeem voor diabetesmanagement maken. Laten we eens kijken naar enkele belangrijke punten om dit systeem verder te begrijpen binnen het CARES-paradigma, de indicaties en de software-updates.

### 1 Het iLet-systeem volgens het CARES-paradigma

#### 1.1 Calculate

Het iLet-systeem automatiseert de volledige insulinetoediening en heeft alleen het gewicht van de gebruiker nodig om te beginnen.

<span class="mark">Het iLet-systeem werkt met drie gelijktijdige algoritmen:</span>

<span class="mark">1. Het basaalalgoritme bepaalt elke 5 minuten de basale insulinedosering op basis van het voorgaande 24-uurs glucoseprofiel, het huidige glucoseniveau en de trend. Het houdt ook rekening met trends in de insulinebehoefte van de afgelopen 7 dagen. De basale insuline kan worden opgeschort als de glucosespiegel laag is of snel daalt.</span>

<span class="mark">2. Het bolusalgoritme levert insuline die nodig is boven op de basale insuline. Het berekent elke 5 minuten bolusinsulinedoses met behulp van een modelvoorspellend controlealgoritme, rekening houdend met het vorige 24-uurs glucoseprofiel, het huidige glucoseniveau en de huidige trend, en de insuline aan boord. Dit algoritme reageert op glucoseniveaus boven de streefwaarde.</span>

<span class="mark">3. Het algoritme voor maaltijddoseringen bepaalt automatisch maaltijddoseringen in reactie op maaltijdaankondigingen van de gebruiker, rekening houdend met het type maaltijd (dat ontbijt, lunch of diner kan zijn) en de grootte van de maaltijd (dat "gebruikelijk voor mij", "meer" of "minder" kan zijn).</span>

<span class="mark">Zowel de basale als de bolusalgoritmen zijn erop gericht het glucoseniveau naar het huidige glucosedoel te sturen, waarvoor er 3 opties zijn: "normaal" dat streeft naar een glucosedoel van 120 milligram per deciliter of 6,7 millimol per liter, "lager" dat streeft naar een glucosedoel van 110 milligram per deciliter of 6,1 millimol per liter, of "hoger" dat streeft naar een glucosedoel van 130 milligram per deciliter of 7,2 millimol per liter. Er kan ook een secundair doel worden ingesteld voor specifieke tijdsperioden.</span>

<span class="mark">Het systeem past de agressiviteit van de insulinedosering aan op basis van glucoseniveaus en trends. Basale en bolusdoseringen passen zich continu aan, terwijl maaltijddoseringen zich apart aanpassen voor ontbijt, lunch en diner.</span>

<span class="mark">Maaltijddoses worden in de loop van de tijd aangepast, gebaseerd op de 4-uurs postprandiale bolusinsulinebehoefte van eerdere maaltijdaankondigingen. Het doel is om 75% van de benodigde insuline voor een maaltijd te leveren. Eventuele extra insuline die nodig is voor de maaltijd wordt geleverd door de correctiecontroleur. De insulinedosis voor een "Minder"-maaltijd is 50% van die voor een "Gebruikelijk voor mij"-maaltijd, en de insulinedosis voor een "Meer"-maaltijd is 150% van die voor een "Gebruikelijk voor mij"-maaltijd.</span>

Hier is een voorbeeld van hoe het iLet-systeem de insulinedoseringen voor het ontbijt elke dag aanpast. Wanneer postprandiale hyperglykemie optreedt, verhoogt het systeem geleidelijk de insulinehoeveelheden voor hetzelfde type maaltijd, wat leidt tot een betere controle van de postprandiale glucosespiegels.

<span class="mark">Aanpassing van de maaltijddosis vindt alleen plaats als er binnen het aanpassingsvenster van 4 uur geen maaltijdaankondigingen zijn gedaan en als de glucosespiegels aan het begin en aan het einde van dit 4-uursvenster minder dan 80 milligram per deciliter of 4,4 millimol per liter boven de glucosedoelwaarde liggen.</span>

Nadat een sensorglucosewaarde onder 60 milligram per deciliter daalt, schort het bolusalgoritme de insulinedosering op voor hyperglykemiecorrectie gedurende een uur, met gereduceerde doses gedurende 30 minuten om overcorrectie te voorkomen.

Het iLet-systeem leert en past zich in de loop van de tijd aan aan de individuele insulinebehoefte, waarbij conservatief wordt gestart op basis van het ingevoerde gewicht. Gebruikers worden aangemoedigd om aanvankelijk hun gebruikelijke routines te volgen voor optimale aanpassing, en hun maaltijden minstens 4 uur uit elkaar te plaatsen om het leren van maaltijddoses door het systeem te vergemakkelijken.

#### 1.2 Adjust

<span class="mark">Gebruikers hebben beperkte controle over de instellingen van het iLet systeem. Ze kunnen alleen de glucosestreefwaarden en het gewicht aanpassen.</span>

<span class="mark">Voor de glucosestreefwaarden kunnen gebruikers kiezen tussen "Gebruikelijk", "Lager" en "Hoger", met de flexibiliteit om maximaal twee streefwaarden per dag in te stellen om hun diabetesmanagement aan te passen.</span>

<span class="mark">Bij het initialiseren van uw iLet apparaat stelt u uw gewicht in. Elke drie maanden zal de iLet je eraan herinneren om je lichaamsgewicht te bevestigen. Het wordt aanbevolen om dit te doen als je gewicht met meer dan 15% schommelt. Het maximale gewicht dat kan worden ingesteld is 255 kg of 561 pond.</span>

<span class="mark">Gebruikers kunnen geen insuline-instellingen programmeren, zoals basale hoeveelheid, koolhydratenratio, insulinegevoeligheid, duur van de insulinewerking of drempelwaarde voor hypoglykemie. Het systeem automatiseert alle insulinetoedieningen, waardoor gebruikers alleen maaltijden hoeven aan te kondigen. Een hands-off benadering is noodzakelijk bij het gebruik van dit systeem en enig geduld is nodig omdat de iLet zich aanpast aan veranderende insulinebehoeften en effectieve maaltijdbolusdoses vaststelt.</span>

#### 1.3 Revert

<span class="mark">Als de verbinding met de glucosesensor wordt verbroken, schakelt de iLet over van de CGM-modus naar de BG-stand. In deze modus wordt de basale insulinedosering voortgezet op basis van eerder geleerde doseringen van de afgelopen 7 dagen, waarbij handmatige invoer van de BG- of bloedglucosewaarden van de vingerprik nodig is.</span>

- <span class="mark">Als een lage BG-waarde wordt ingevoerd, onderbreekt de iLet de basale insulinetoediening een uur lang, of totdat u een BG-waarde invoert die niet laag is. Als daarentegen een hoge BG-waarde wordt ingevoerd, kan de iLet correctie-insuline toedienen.</span>

- <span class="mark">Maaltijdaankondigingen kunnen nog steeds worden gedaan, waarbij de iLet insuline toedient voor het type en de grootte van de maaltijd op basis van aangepaste doses op basis van eerdere sensorgegevens.</span>

<span class="mark">Als de BG-run modus wordt gestart binnen 7 dagen na het starten van de iLet, zal het alarm elk uur om een BG-invoer vragen totdat de CGM is hersteld. Als er binnen 1 uur geen BG wordt ingevoerd, wordt de insulinetoediening gestopt. Na 48 achtereenvolgende uren zonder glucosesensor eindigt de BG-run-modus en wordt alle insulinetoediening gestopt.</span>

<span class="mark">Als de BG-run modus meer dan 7 dagen na de start van iLet begint, wordt elke 4 uur om BG-invoer gevraagd totdat de CGM is hersteld. Als hier niet binnen 4 uur aan wordt voldaan, wordt de insulinetoediening gestopt. Na 72 achtereenvolgende uren zonder CGM wordt de BG-run modus beëindigd, waardoor alle insulinetoediening stopt.</span>

<span class="mark">De insulinetoediening wordt hervat zodra de glucosesensorwaarden weer worden ontvangen. Als sensortoegang niet beschikbaar is, moeten gebruikers terugschakelen naar insulinepennen met basale en bolus insuline.</span>

<span class="mark">Gebruikers moeten het stoppen met insuline proberen te voorkomen door te zorgen voor continue toegang tot de glucosesensoren, alarmen direct te bevestigen en de BG-waarden in te voeren in de BG-stand. Het hebben van een back-up plan is cruciaal voor het geval vervangende sensoren niet beschikbaar zijn. Indien mogelijk verdient het de voorkeur om 's ochtends of 's avonds over te schakelen op het back-up insulinetherapieplan, op een tijdstip dat gebruikelijk is voor het innemen van langwerkende insuline.</span>

<span class="mark">Omdat de iLet geen geprogrammeerde pompinstellingen heeft, zoals basale hoeveelheden of koolhydratenratio's, is de handmatige modus niet beschikbaar. Recente informatie over de insulinedosis, waaronder de totale dagelijkse insuline, de totale dagelijkse basale dosis en de maaltijddosis, wordt echter wel verstrekt voor referentie en berekening als gebruikers om wat voor reden dan ook moeten overschakelen op insuline-injecties.</span>

#### 1.4 Educate

Als u begint met een closed-loop systeem zoals het iLet systeem, is het belangrijk om op de hoogte te zijn van zowel algemene als specifieke educatiepunten voor dit systeem.

De algemene onderwijspunten waren:

- Gebruik minder koolhydraten om hypoglykemie te corrigeren.

- <span class="mark">Overweeg problemen met de infuusset als de blobloedglucosewaarden gedurende langere tijd hoog blijven zonder duidelijke reden. "Als je twijfelt, vervang het dan."</span>

- <span class="mark">Vertrouwen op het closed loop-systeem en onnodige handmatige interventies vermijden.</span>

- <span class="mark">Maaltijdbolussen 15 minuten voor de maaltijd timen.</span>

- <span class="mark">Gebruik van de inspanningsmodus 1 tot 2 uur voor de activiteit - hoewel dit niet relevant is voor het iLet systeem.</span>

- <span class="mark">Het pauzeren van de insulinetoediening als de pomp langer dan 15 minuten niet is aangesloten.</span>

- Reageren op alarmen.

- Automatische updates op mobiele telefoons in de gaten houden.

- Collegiale ondersteuning zoeken voor begeleiding en het delen van ervaringen.

Laten we nu eens kijken naar de specifieke onderwijspunten voor het iLet systeem:

- Het iLet-systeem is ontworpen om alle insulinetoedieningen automatisch te regelen, zodat gebruikers alleen maaltijden hoeven aan te kondigen. Het bevat geen door de gebruiker instelbare pompinstellingen of bolusopties. Een hands-off benadering is essentieel, zodat het systeem zich kan aanpassen aan veranderende insulinebehoeften en de maaltijdbolusdoses kan optimaliseren.

- <span class="mark">Gebruik GEEN maaltijdaankondigingen om te proberen meer insuline uit de iLet te krijgen buiten de maaltijden om of om een hoge glucosespiegel te corrigeren. Dit verstoort de aanpassing van het systeem en verhoogt de kans op lage glucosespiegels.</span>

- Maaltijdaankondigingen moeten vlak voor het eten worden gedaan, waarbij het koolhydraatgehalte van de maaltijd wordt aangegeven in verhouding tot de gebruikelijke inname van de gebruiker ("Gebruikelijk voor mij", "Meer" of "Minder"). De meeste maaltijden moeten worden aangekondigd als "Gebruikelijk voor mij". Elk maaltijdtype (ontbijt, lunch, diner) wordt afzonderlijk aangepast, wat betekent dat de "Gebruikelijke" hoeveelheid koolhydraten per maaltijd kan verschillen.

- De keuze van het maaltijdtype is gebaseerd op de voorkeur van de gebruiker, waarbij de maaltijdgrootte wordt bepaald door het koolhydraatgehalte ten opzichte van de gebruikelijke inname. Snacks met een vergelijkbare koolhydraatinhoud als maaltijden moeten als maaltijden worden aangekondigd.

- In de eerste week dat u de iLet gebruikt, helpt het systeem bij het effectief aanleren van maaltijddoses door maaltijden minstens 4 uur uit elkaar te plaatsen.

- Neem altijd een bloedglucosemeter mee om handmatig vingerprikwaarden in te voeren als de sensor onverwacht uitvalt.

- Zorg dat er reservesensoren beschikbaar zijn, want als een sensor niet binnen 2 tot 3 dagen wordt vervangen, wordt de insulinetoediening stopgezet. Gebruikers moeten in dergelijke gevallen een back-up plan hebben.

- Elke 3 maanden zal het systeem je vragen om je gewicht bij te werken, dit is alleen nodig als er meer dan 15% verschil is.

- Toegang tot de Beta Bionics Cloud is beperkt tot de VS; gebruikers die naar het buitenland reizen, kunnen geen rapporten uploaden.

Door zich aan deze educatieve richtlijnen te houden, kunnen gebruikers de voordelen van het iLet systeem voor verbeterd diabetesmanagement optimaliseren. Vertrouw op het continue leervermogen van het systeem en wees geduldig tijdens de aanpassingsperiode.

#### 1.5 Sensor

De nauwkeurigheid van de sensorwaarden is van vitaal belang voor het goed functioneren van een automatisch insulinetoedieningssysteem. Als u twijfelt over de nauwkeurigheid van de sensormeting, wordt aanbevolen om een bloedglucosetest uit te voeren ter bevestiging. Zorg ervoor dat u uw handen wast voordat u een vingerprik uitvoert. Als er een aanzienlijk verschil is tussen de sensorglucosewaarde en het resultaat van uw vingerprik, kunt u overwegen uw Dexcom-sensor te kalibreren. U kunt dit doen via de Dexcom app of via het iLet apparaat zelf.

Het is echter belangrijk om de kalibratie alleen uit te voeren als uw bloedglucosewaarden de afgelopen paar minuten stabiel en binnen uw doelbereik zijn geweest. Kalibreren onder deze omstandigheden zorgt voor nauwkeurigere sensormetingen en verbetert de algehele prestaties van het closed-loop systeem.

<span class="mark">De FreeStyle Libre 3 Plus-sensoren zijn in de fabriek gekalibreerd en handmatige kalibratie is niet nodig.</span>

#### 1.6 Share

<span class="mark">Met het iLet-systeem, is het mogelijk om insuline- en glucosegegevens te delen met zorgverleners en familieleden. De iLet Mobile app synchroniseert automatisch met de iLet Cloud  en real-time monitoring voor maximaal 10 familieleden en verzorgers is beschikbaar via de Bionic Circle app.</span>

<span class="mark">Zorgverleners hebben toegang tot de gegevens door in te loggen op het Beta Bionics Portal met hun persoonlijke account.</span>

<span class="mark">Familieleden kunnen ook de glucosespiegels op afstand controleren via de Dexcom Follow app, op voorwaarde dat de gebruiker ook de Dexcom G6 of G7 app geïnstalleerd heeft.</span>

<span class="mark">Deze mogelijkheid om gegevens te delen zorgt voor een effectieve communicatie en samenwerking tussen gebruikers, zorgverleners en familieleden, wat leidt tot betere resultaten op het gebied van diabetesmanagement.</span>

### 2. Indicaties

De iLet Bionic pancreas, die bestaat uit de iLet ACE Pump en de iLet Dosing Decision Software, heeft een FDA-label voor gebruik bij mensen met type 1 diabetes die minstens 6 jaar oud zijn. Er is een recept voor nodig. Het iLet-systeem is ontworpen voor gebruik door één patiënt en mag niet worden gedeeld.

<span class="mark">Het systeem is goedgekeurd voor gebruik met Novolog en Humalog 100 U/ml en met Fiasp PumpCarts.</span>

<span class="mark">Bij het maken van deze les is de iLet bionische pancreas nog niet goedgekeurd in Europa.</span>

Houd er rekening mee dat de iLet bionische pancreas niet is goedgekeurd voor gebruik tijdens zwangerschap of bij personen die dialyse nodig hebben.

### 3. Software-updates

Updates voor de iLet software kunnen worden gedownload naar de iLet Mobile smartphone app en worden geleverd aan de iLet via een Bluetooth link.

De softwareversie van het iLet apparaat kan worden gecontroleerd via de instellingen, wanneer je "Over iLet" selecteert.

Concluderend kan worden gesteld dat het iLet Systeem een krachtig closed-loop systeem biedt. Met de juiste verwachtingen en duidelijke voorlichting kunnen gebruikers een verbeterde glykemische controle ervaren en meer vertrouwen krijgen in het beheren van hun diabetes.

<span class="mark">Het is belangrijk om te onthouden dat het enige tijd kost om te wennen aan een closed-loop systeem, zoals het iLet Systeem. Raak niet ontmoedigd als er in het begin uitdagingen of tegenslagen zijn. Met tijd en doorzettingsvermogen zul je het systeem effectiever gaan gebruiken.</span>
