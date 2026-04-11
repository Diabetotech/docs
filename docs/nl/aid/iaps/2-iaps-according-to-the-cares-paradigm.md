<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/EIkEnCWMVWQ" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. iAPS volgens het CARES-paradigma</u>**

In deze video behandelen we iAPS volgens het CARES-paradigma.

We bespreken hoe iAPS de automatische insulinetoediening berekent en aanpast, wanneer het terugschakelt naar de handmatige modus, specifieke educatietips en sensorproblemen, en hoe het gegevens deelt. Daarna bespreken we de indicaties en software-updates van iAPS. Laten we beginnen!

### 2.1 Calculate

In iAPS wordt de vooraf ingestelde basale insulinesnelheid aangepast op basis van de voorspelde glycemie voor de komende 5 tot 9 uur. Hier volgt een uitleg over hoe iAPS werkt:

- iAPS combineert verschillende bloedglucose- of "BG"-voorspellingen om de minimaal voorspelde bloedglucose te berekenen:

- iAPS berekent een koolhydraatvoorspelde BG, dit is een voorspelling op basis van de koolhydraten aan boord,

- een insulinevoorspelde BG, dit is een voorspelling op basis van de insuline aan boord,

- een onaangekondigde maaltijd voorspelde BG, dit is een voorspelling in geval van onaangekondigde koolhydraatconsumptie,

- en een Zero Temp voorspelde BG, wat het slechtst denkbare scenario is, voor het geval insuline plotseling niet meer wordt toegediend of koolhydraten niet meer worden opgenomen.

- iAPS houdt rekening met eventuele fouten in de voorspellingen, omdat de uiteindelijke BG-voorspelling wordt aangepast op basis van de afwijking tussen de huidige glucose en de voorspelde glucose, ook wel de bloedglucose-impact genoemd. Het algoritme houdt ook rekening met de glycemietrend door de delta, of het verschil tussen de huidige en vroegere glycemie, te berekenen. En het houdt ook rekening met het glucosemomentum op korte en lange termijn, wat de hoeveelheid verandering is tussen de huidige en de glucose van 15 en 40 minuten geleden.

- De insulinebehoefte of InsulReq wordt berekend door de streefbloedglucose af te trekken van de minimaal voorspelde bloedglucose, en dit verschil te delen door de insulinegevoeligheid of ISF. Deze insulinebehoefte bepaalt of de handmatig ingestelde basale insuline moet worden verhoogd of verlaagd.

- Als hypoglycemie wordt voorspeld, zal de basale insuline worden gestopt en kunnen koolhydraten worden aanbevolen.

<span class="mark">Tot slot wordt de vooraf ingestelde basale insulinesnelheid verhoogd of verlaagd op basis van de berekende insulinebehoefte. Dit wordt in de app weergegeven als een tijdelijk basaal met een gespecificeerde insulinesnelheid en -duur of een microbolus. Deze tijdelijke basalen worden elke 5 minuten opnieuw berekend. Een nieuwe berekening van iAPS wordt ook wel een “loop” cyclus genoemd.</span>

Bij iAPS worden de tijdelijke basalen meestal toegediend als een microbolus, waarbij dezelfde insulinedosis sneller wordt toegediend, gevolgd door een tijdelijke pauze in de toediening van basale insuline. Hoe deze supermicrobolussen of SMB's worden berekend op basis van de tijdelijke basalen, kan worden aangepast binnen vooraf gedefinieerde veiligheidsinstellingen.

iAPS gebruikt ook een autosens-functie, die de insulinetoediening verhoogt of verlaagt op basis van de insulinegevoeligheid van de gebruiker over de afgelopen 8 en 24 uur.

- <span class="mark">Het berekent een percentage dat aangeeft hoe de insulinegevoeligheid in de afgelopen uren verschilt van de huidige ingestelde gevoeligheid, en gebruikt dat % om je insulinegevoeligheid en basale insulinesnelheid aan te passen.  De Autosens-functie kan ook worden toegepast op de streefwaarde, door deze aan te passen op basis van de berekende gevoeligheidsratio.</span>

- <span class="mark">De max en min Autosens ratio zijn respectievelijk ingesteld op 1,2 en 0,7. Ze bepalen het maximale en minimale aanpassingspercentage op basis van de Autosens-functie. Dit betekent dat de waarden met Autosens kunnen worden aangepast met een maximum van 120% en een minimum van 70%.</span>

- <span class="mark">Als je de functie Onaangekondigde maaltijd, of UAM, activeert, detecteert het algoritme snelle glucosetoenames veroorzaakt door koolhydraten, adrenaline, enz. en probeert het om dit op te vangen met SMB's. Dit werkt ook omgekeerd: als er een snelle glucosedaling is, kan het SMB's eerder stoppen. Het is belangrijk op te merken dat de UAM-functie alleen wordt aanbevolen voor gebruik als je een relatief stabiele bloedsuikercontrole en glucosesensorwaarden hebt. Als je glucosecontrole slecht is, kan het activeren van UAM extra variabiliteit introduceren. Hetzelfde kan gebeuren als je sensorwaarden instabiel zijn, bijvoorbeeld tijdens de eerste dag na een sensorwissel.</span>

<span class="mark">Daarnaast biedt iAPS 3 dynamische functies die in de app kunnen worden ingeschakeld: Dynamische ISF, Dynamische Koolhydraatratio en Auto ISF (voor gevorderde gebruikers).</span>

- <span class="mark">Als je Dynamische ISF inschakelt, vervangt het Autosens.</span>

- <span class="mark">De standaardformule voor Dynamic ISF gebruikt een logaritmische schaal om de verhouding voor de ISF-aanpassing te bepalen.</span>

- <span class="mark">Het past ook je ISF aan, maar op een dynamische manier, gebaseerd op je huidige en voorspelde glucosewaarde en op de totale dagelijkse insulinedosis.</span>

- <span class="mark">Omdat je meer insulineresistent bent als je glucose hoger is, is het een agressievere manier om je insulinegevoeligheid aan te passen.</span>

- <span class="mark">De agressiviteit van de Dynamic ISF kan worden gewijzigd met behulp van verschillende parameters, zoals de aanpassingsfactor, het gewicht van de totale dagelijkse insulinedosis van de afgelopen 24 uur in vergelijking met de afgelopen 2 weken, en de Autosens max en min %.</span>

- <span class="mark">Als alternatief kan een sigmoïde schaal worden gebruikt voor een agressievere aanpak. In tegenstelling tot andere methoden verwijst de sigmoïde schaal niet naar de totale dagelijkse insuline; in plaats daarvan bepaalt deze uitsluitend aanpassingen op basis van de afwijking van de huidige glucosewaarde ten opzichte van de streefwaarde. Met Sigmoid gebruikt Dynamische ISF deingesteldeISF wanneer je je streefglucosewaarde hebt bereikt. De agressiviteit van Sigmoid kan worden aangepast met behulp van 3 instellingen: Sigmoid-aanpassingsfactor, Autosens Maximum en Autosens Minimum. Sigmoid is ook een uitstekende optie voor gebruikers met een snel veranderende insulinegevoeligheid.</span>

- <span class="mark">Als je Dynamische koolhydraatratio inschakelt, wordt je koolhydraatratio elke cyclus aangepast, op basis van je huidige bloedglucose en totale dagelijkse insulinedosis. Dit is gebaseerd op het feit dat je mogelijk een agressievere koolhydraatratio nodig hebt wanneer je een hogere bloedglucose hebt.</span>

- <span class="mark">Een andere, meer experimentele functie – Auto ISF – kan door gevorderde gebruikers worden geconfigureerd om een volledige closed-loopmodus in te schakelen zonder maaltijdbolussen of koolhydraatinvoer. Voor een correct gebruik van deze functie is een grondige kennis van ISF-limieten en glucoseversnellingsparameters vereist. Het algoritme is gedocumenteerd op https://github.com/bernie4375/FCL-potential-autoISF</span>

<span class="mark">De streefwaarde voor de glucosewaarde van iAPS kan worden ingesteld tussen 72 en 180 mg/dl of 4 en 10 mmol/l.</span>

iAPS geeft een hoge prioriteit aan veiligheid en bevat verschillende veiligheidsinstellingen en -limieten om mogelijk gevaarlijke insulinetoediening te voorkomen. Om ervoor te zorgen dat gebruikers het systeem correct configureren, stelt de gebruikersgemeenschap defensieve instellingen voor, en om het systeem te starten zonder dynamische functies. In de loop van enkele weken kun je geleidelijk overgaan op dynamische iAPS en agressievere instellingen.

<span class="mark">Voor de Auto ISF-functie raden ervaren iAPS-gebruikers aan om deze pas in te schakelen als je minstens drie maanden ervaring hebt met dynamische iAPS en consistent stabiele dagelijkse resultaten hebt.</span>

### 2.2 Adjust

In iAPS hebt je de flexibiliteit om verschillende parameters aan te passen om je behandeling te personaliseren.

- Je kunt per tijdsblok van 30 minuten een streefwaarde voor de glucosewaarde instellen tussen 72 en 180 mg/dl (of 4 en 10 mmol/l). Internationale richtlijnen stellen voor om te beginnen met een streefwaarde van 110 tot 120 mg/dl (of 6 tot 6,5 mmol/l). Veel gebruikers kiezen voor een streefwaarde van 100 mg/dl (of 5,6 mmol/l) overdag en nog lager 's nachts - bijvoorbeeld 90 mg/dl (of 5 mmol/l). Dit kan worden overwogen als dit geen significante hypoglycemie veroorzaakt.

- <span class="mark">Met iAPS kun je verschillende basale insulineprofielen instellen op basis van je individuele behoeften. Het standaardprofiel heet het 'normale profiel'. Je kunt iteraties van dit "normale profiel" opslaan met een ander percentage insulinetoediening, streefwaarde voor de glucosewaarde, en SMB en dynamische functies. De aangemaakte alternatieve profielen kunnen permanent zijn of een specifieke duur hebben (bijvoorbeeld voor geplande sportactiviteiten).</span>

<span class="mark">Koolhydraatratio, insulinegevoeligheid en insulinewerkingsduur kunnen worden aangepast aan je specifieke behoefte.</span>

- De werkingsduur van insuline in open-source closed-loop systemen is doorgaans langer dan in traditionele insulinemodellen vanwege het lange-staart-effect van insuline. De meeste gebruikers geven de voorkeur aan 6 tot 7 uur. Als je een langere duur nodig hebt, controleer dan je ISF-instellingen, want die kunnen te agressief zijn. Over het algemeen verschilt de werkelijke werkingsduur van insuline niet veel tussen gebruikers.

- <span class="mark">Met iAPS kun je het type insuline selecteren dat je gebruikt. Je kunt kiezen uit opties zoals Apidra, Humalog, Novorapid of NovoLog, Fiasp en Lyumjev. Afhankelijk van het gekozen insulinetype, geeft iAPS een bijbehorend profiel. Daarnaast heb je de mogelijkheid om de insulinecurve te wijzigen of een aangepaste insulinepiektijd in te stellen.</span>

Binnen iAPS zijn er talloze andere instelbare parameters, waarvan we de belangrijkste zullen bespreken: SMB-opties, Aanbevolen boluspercentage, Autosens-opties, Dynamische functies, Afgiftelimieten en Autotune.

- Als je iAPS begint te gebruiken in "closed-loop", is het aan te raden om supermicrobolussen alleen te gebruiken na het consumeren van koolhydraten. Als dit goed voor je werkt, kun je ervoor kiezen om de SMB's ook op andere momenten te activeren. Je kunt de SMB's agressiever of minder agressief maken door de Maximale Delta-BG Drempel, de Maximale SMB Basale Minuten, de SMB Afgifte Ratio en het SMB Interval aan te passen. Als je bovendien de functie UAM inschakelt, zullen de SMB's sneller reageren op snelle veranderingen in glucose om onaangekondigde maaltijden op te vangen.

- In iAPS kun je de voorgestelde hoeveelheid insuline via de boluscalculator wijzigen door het “aanbevolen boluspercentage” te wijzigen. iAPS berekent eerst een insulinedosis op basis van de geïntegreerde boluscalculator, die vervolgens wordt vermenigvuldigd met je "aanbevolen boluspercentage" om je voorgestelde insulinedosis weer te geven. iAPS zal de resterende insuline via SMB's toedienen wanneer de bloedsuiker begint te stijgen.

- <span class="mark">iAPS past automatisch je insulinegevoeligheid aan op basis van een Autosens-functie. Je kunt instellen hoeveel % je ISF maximaal en minimaal kan worden aangepast. Je kunt Autosens ook je streefwaarde voor glucose laten aanpassen. En je kunt Autosens je ISF laten aanpassen als je een Tijdelijk profiel instelt.</span>

- <span class="mark">De dynamische functies die kunnen worden ingeschakeld zijn Dynamische ISF en Dynamische Koolhydraatratio. De agressiviteit van de Dynamische ISF kan worden aangepast door de maximale en minimale Autosens, het profiel ISF, de aanpassingsfactor, het gewogen gemiddelde van de totale dagelijkse insulinedosis van de afgelopen 24 uur in vergelijking met de afgelopen 2 weken en door de Sigmoid-functie in te schakelen.</span>

- <span class="mark">Daarnaast zijn er toedieningslimieten in iAPS die kunnen worden aangepast binnen een veilig bereik, gebaseerd op de leeftijd en het type van de gebruiker.</span>

- <span class="mark">Binnen de pompinstellingen kun je je maximale basaal, maximale bolus en maximale koolhydraten instellen. Voor volwassenen wordt aanbevolen om de maximale basaal in te stellen op 3 tot 5 keer de hoogste basaalinstelling.</span>

- In de OpenAPS-instellingen kun je de maximale insuline en koolhydraten aan boord instellen. De maximale insuline aan boord verwijst naar de maximale gecombineerde hoeveelheid basale en bolus insuline die in één keer is toegestaan.

- De maximale dagelijkse veiligheidsmultiplicator en de huidige basale veiligheidsmultiplicator zijn aanvullende limieten voor de maximale basale insulinesnelheid, en het is over het algemeen het beste om deze ongewijzigd te laten. De maximale dagelijkse vermenigvuldigingsfactor is standaard ingesteld op 3, waardoor maximaal 3 keer de hoogste handmatig ingestelde basale hoeveelheid kan worden toegediend. De huidige vermenigvuldigingsfactor voor de basaalmodus is ingesteld op 4, waardoor maximaal 4 keer de handmatig ingestelde basaalsnelheid kan worden toegediend.

- In de dynamische instellingen vind je de instelling Drempelwaarde, die functioneert als drempel voor hypoglycemie. Als voorspeld wordt dat de bloedsuiker op een bepaald moment onder deze waarde zal komen, zal iAPS de insulinetoediening stopzetten en wachten tot de algoritmen anders voorspellen.

Tot slot kun je er ook voor kiezen om Autotune in te schakelen.

- Autotune doet suggesties voor of past je basale hoeveelheden, ISF en koolhydraatratio aan op basis van je laatste 24 uur gegevens. Er is een optie om Autotune alleen de basale hoeveelheden van je profiel te laten aanpassen. Autotune wordt standaard 's nachts uitgevoerd, of je kunt op Nu uitvoeren tikken om direct een berekening uit te voeren. De aanpassingen die autotune maakt zijn klein, met een maximum van 10% verandering in de huidige koolhydraatratio en ISF, of 20% verandering in de huidige basale hoeveelheden per uur, maar tellen op in de loop van de dagen.

- <span class="mark">Autotune is ontworpen om wekenlang langzaam de nauwkeurigheid van je aanvankelijk ingestelde basale hoeveelheden, ISF en koolhydraatratio te verbeteren.  De output van autotune formules produceert een verhouding, vergelijkbaar met die van Autosens. Deze verhouding wordt ook beperkt door de Autosens max en min voorkeuren.</span>

- <span class="mark">Let op: Autotune vereist vaste waarden voor koolhydraatratio en insulinegevoeligheid. Het werkt dus niet en het is ook niet aan te raden om Autotune te activeren wanneer je de Dynamische insulinegevoeligheid en Dynamische koolhydraatratio gebruikt.</span>

- <span class="mark">Autotune kan ook niet werken als Nightscout extra veiligheidsmaatregelen heeft, zoals een token.</span>

<span class="mark">Vergeet niet dat alle instellingen en parameters moeten worden aangepast in overleg met je zorgverlener, rekening houdend met je individuele behoeften en medische begeleiding. Voor het activeren van Auto ISF is aanvullend medisch advies vereist.</span>

### 2.3 Revert

Als er in iAPS langer dan 15 minuten geen verbinding is met de sensor of pomp, schakelt het systeem terug naar de handmatige modus.

Wanneer de verbinding wordt verbroken, schakelt de pomp in eerste instantie naar de laatst ingestelde basaalsnelheid. Na maximaal 120 minuten schakelt de pomp over naar de handmatige modus.

In de handmatige modus wordt de basale insulinetoediening ingesteld op de vooraf ingestelde basale hoeveelheid, zonder een stop-voor-laag functie.

Zodra de verbinding met de pomp of sensor is hersteld, keert het systeem automatisch terug naar de automatische modus, die in iAPS closed loop wordt genoemd.

In iAPS verwijst de term "Open-Loop" niet naar de handmatige modus. In plaats daarvan geeft de Open-Loop modus aan datde tijdelijke basaalaanpassingen alleen verschijnen als meldingen, en dat je ze handmatig kunt bevestigen. Deze Open-Loop modus wordt aanbevolen voor gebruikers die nieuw zijn met iAPS en willen observeren hoe het algoritme werkt voordat ze er volledig op vertrouwen.

### 2.4 Educate

<span class="mark">Een goede opleiding is cruciaal bij het opstarten van een closed-loop systeem. Voor algemene educatiepunten verwijzen we naar de generieke module.</span>

De algemene educatiepunten die aan bod kwamen, waren:

- Minder koolhydraten gebruiken om hypoglycemie te corrigeren.

- Problemen met het infusieset overwegen als de bloedglucosespiegel hoog blijft zonder duidelijke reden.

- <span class="mark">Vertrouwen op het closed-loop systeem en onnodige handmatige ingrepen vermijden.</span>

- Maaltijdbolussen 15 minuten voor de maaltijd ingeven.

- 1 tot 2 uur voor de activiteit een sportmodus gebruiken.

- De insulinetoediening stoppen als de pomp langer dan 15 minuten niet is aangesloten.

- Reageren op alarmen en letten op automatische updates op mobiele telefoons.

- Ondersteuning zoeken bij lotgenoten voor begeleiding en het delen van ervaringen.

iAPS is een krachtig hulpmiddel voor het beheren van diabetes, maar het is belangrijk om te onthouden dat het geen volledig geautomatiseerd systeem is dat je kunt "instellen en vergeten". Het vereist actieve controle en begrip van de acties. Hier volgen enkele aanvullende educatieve punten die specifiek zijn voor het gebruik van iAPS:

- Actieve controle: iAPS regelt je insulinetoediening, dus het is van cruciaal belang om het systeem goed in de gaten te houden en te begrijpen hoe het werkt. Let op mogelijke fouten of onverwacht gedrag en leer hoe je de acties van het systeem moet interpreteren.

- Gebruik van de telefoon: Na koppeling kan de telefoon de pomp opdracht geven om verschillende acties uit te voeren. Je telefoon met iAPS moet worden beschouwd als een medisch apparaat en dienovereenkomstig worden behandeld. Installeer geen onnodige apps of games die malware kunnen introduceren en de werking van het systeem kunnen verstoren.

- <span class="mark">Beveiligingsmaatregelen: Installeer alle beveiligingsupdates van Apple om je apparaat te beschermen. Dit helpt je te beschermen tegen mogelijke zwakke plekken in de beveiliging. Activeer "Automatische updates" of "Beta-updates" niet in de instellingen voor Software-updates van je iPhone. Controleer eerst de ondersteuning van een specifieke iOS-release in de iAPS community voordat je een upgrade van het besturingssysteem van uw iPhone uitvoert.</span>

- Afstand tot pomp en CGM: Houd je mobiele telefoon in de buurt van je insulinepomp en CGM. Het moet binnen de aanbevolen afstand zijn (dat is meestal binnen de 5 meter voor de CGM) om een betrouwbare verbinding te behouden.

- Wachtwoorden en back-ups: Houd alle gebruikte wachtwoorden bij en bewaar een back-up van je app in iCloud. Regelmatig je instellingen exporteren naar iCloud vereenvoudigt het herinstallatieproces en voorkomt het resetten van je persoonlijke parameters.

- Reserve mobiele telefoon: Het is aan te raden om een mobiele reservetelefoon bij de hand te hebben voor noodgevallen. Dit zorgt ervoor dat je een back-up apparaat hebt in geval van technische problemen met je primaire telefoon.

- Er is een speciale extra functie genaamd Delen toegevoegd aan iAPS om je persoonlijke instellingen te beschermen, bijvoorbeeld alle dynamische gedragingen en je insulinegevoeligheid, koolhydraatratio, glucosedoelen, profielen, enzovoort.  Hierdoor kun je de instellingen herstellen wanneer je ze opnieuw installeert of naar een ander apparaat overzet wanneer dat nodig is.

- Controleer eerst de basisinstellingen: Het is aan te raden om iAPS eerst te starten in "Open Loop" om al je basisinstellingen te configureren en te controleren, zoals de basale insulinesnelheid, koolhydraatratio en insulinegevoeligheid.

- De resultaten van het iAPS-systeem hangen grotendeels af van de juistheid van deze basisinstellingen, dus ze moeten redelijk nauwkeurig zijn.

- Verhoog vervolgens langzaam de "maximale insuline aan boord", zodat iAPS automatisch insuline kan doseren. Dit is standaard ingesteld op 0, en kan langzaam worden verhoogd, tot de som van je gemiddelde maaltijdbolus, plus 3 keer je hoogste basale hoeveelheid.

- Vervolgens kun je Supermicrobolussen inschakelen en de Maximale Delta-BG Drempel SMB wijzigen van de standaard 0,2 naar 0,3, zodat iAPS SMB kan gebruiken wanneer je bloedglucose snel stijgt.

- <span class="mark">Geavanceerde instellingen: Gebruik geavanceerde instellingen, zoals de functie Onaangekondigde Maaltijd, Max SMB Basale Minuten, Autotune, Dynamische ISF en Dynamische Koolhydraatratio, pas nadat je de basisbeginselen goed hebt begrepen, en een stabiele bloedglucoseregeling hebt bereikt. Houd er rekening mee dat deze functies mogelijk niet voor iedereen optimaal werken.</span>

- <span class="mark">Toegang zorgverlener: Zorg ervoor dat je zorgverlener toegang heeft tot je rapporten via Nightscout. Zo kan hij of zij op de hoogte blijven van je diabetesmanagement en weloverwogen beslissingen nemen tijdens je medische consulten.</span>

- <span class="mark">Beheers het gebruik van insulinepomp en sensor: Zorg ervoor dat je je  insulinepomp en sensor ook goed kunt gebruiken.</span>

Door deze richtlijnen te volgen en een proactieve benadering te hanteren bij het gebruik van iAPS, kun je de effectiviteit van het systeem optimaliseren en zorgen voor een veilige en betrouwbare ervaring met automatische insulinetoediening.

### 2.5 Sensor

<span class="mark">iAPS kan worden gekoppeld aan de Dexcom sensoren G5, G6, G7, Dexcom One Plus, Europese FreeStyle Libre 2 en Libre 2 Plus sensoren, en Medtronic Enlite sensoren via oudere Medtronic pompen.</span>

<span class="mark">Aangezien iAPS rechtstreeks verbinding kan maken met de Dexcom G5, G6 en met de Europese FreeStyle Libre 2 en Libre 2 Plus sensoren, is de Dexcom of LibreLink app alleen nodig om een nieuwe sensor te starten in deze gevallen.</span>

<span class="mark">Voor Dexcom G7 en One Plus, moet je de bijbehorende Dexcom App op je iPhone hebben om iAPS je glucosewaarde te laten ophalen.  Voor het activeren van Auto ISF is aanvullend medisch advies vereist.</span>

<span class="mark">iAPS accepteert ook aanvullende open-source sensor apps zoals Glucose Direct of xDrip4iOS. Deze apps kunnen worden gebruikt om sensorgegevens naar iAPS te verzenden, hoewel de native verbindingen met CGM stabieler zijn. Sommige mensen kiezen ervoor om deze open-source apps te gebruiken voor betere alarmen en verbinding met andere apparaten.</span>

In een closed-loop systeem zijn continue en nauwkeurige sensorwaarden essentieel voor een goede insulinedosering. Als de sensorglycemie schokkerig of onregelmatig is, kan dit leiden tot onjuiste insulinedosering, wat resulteert in hoge of lage bloedglucosewaarden. In zulke gevallen is het belangrijk om de automatische modus uit te schakelen totdat het probleem is opgelost. Het probleem kan te maken hebben met de configuratie van de glucosesensor of met problemen met de sensor of de locatie. Indien nodig kan het nodig zijn om de glucose sensor te vervangen om het probleem op te lossen.

Als je last hebt van schokkerige of ruisende sensorwaarden, kun je proberen om de functie "Glucosewaarde gladstrijken" in te schakelen via de instellingen.

Als je sensor geen getal of pijl weergeeft, of als je meetwaarden niet overeenkomen met je symptomen, gebruik je meter dan om beslissingen te nemen over diabetesbehandeling. Haal bij twijfel je meter tevoorschijn.

Als je een aanzienlijk verschil ervaart tussen je sensorglucose en de waarde van je vingerprik, hoewel je glucose stabiel is en binnen bereik ligt, kun je proberen je sensor te kalibreren. Je kunt dit doen via de iAPS-instellingen, via het CGM-menu of rechtstreeks in de sensor-app.

### 2.6 Share

<span class="mark">In iAPS is het delen van glucosegegevens met zorgverleners en familieleden mogelijk via Nightscout, Apple Health en via Dexcom Share of LibreView. Het delen van glucose- en insulinegegevens is alleen mogelijk via Nightscout en Tidepool, waarbij Nightscout de voorkeur geniet, omdat Tidepool handmatige uploads vereist, die vrij tijdrovend zijn.</span>

<span class="mark">Om Nightscout te gebruiken, moet je een persoonlijke Nightscout website opzetten. iAPS kan de gegevens doorsturen naar de Nightscout website, zodat je zorgverlener je rapporten in real-time kan bekijken.</span>

Zorgverleners hebben toegang tot de gegevens op de persoonlijke Nightscout website, idealiter met een token. Zo kunnen ze je insuline- en glucosegegevens bekijken en bijhouden en op de hoogte blijven van je diabetesmanagement.

<span class="mark">Zorgverleners kunnen zelfs op afstand een insuline bolus toedienen, koolhydraten invoeren en het insulineprofiel wijzigen, via de Nightscout website of app zoals Nightscout X of Loop volgen. Om zorg op afstand te kunnen gebruiken, moet Nightscout ingesteld zijn om commando's op afstand te gebruiken en moet zorg op afstand ingeschakeld zijn in de iAPS app.</span>

<span class="mark">In de instellingen van de iAPS Boluscalculator kunnen iOS Bolus snelkoppelingen worden geactiveerd via "iOS Snelkoppelingen". Dit kan ouders ook helpen om hun jonge kinderen op afstand te helpen.</span>

<span class="mark">Gebruikers kunnen rapporten downloaden uit Nightscout of tools zoals Nightscout Reporter gebruiken om uitgebreide rapporten te genereren die gedeeld kunnen worden met zorgverleners voor diepgaande analyse en evaluatie.</span>

Door gebruik te maken van deze mogelijkheden om rapporten te delen, kunnen iAPS-gebruikers effectieve communicatie en samenwerking met hun zorgteam en dierbaren bevorderen, waardoor een ondersteunende en geïnformeerde omgeving voor diabetesbeheer ontstaat.

### 2.7 Indicaties

iAPS is een open-source app die geen officiële indicaties heeft die zijn goedgekeurd door de FDA of Europese autoriteiten. Het kan worden gebruikt met alle snelwerkende insulineanalogen.

De iAPS-app kan niet worden gedownload uit app stores. Gebruikers moeten de app op eigen risico zelf bouwen. Het opzetten van het systeem vereist doorzettingsvermogen en een beetje technische kennis. Als je de technische kennis in het begin nog niet hebt, zul je die aan het eind wel hebben.

Alle informatie die je nodig hebt kun je vinden in de iAPS documentatie die online beschikbaar is, en van anderen die het al gedaan hebben - ondersteuning is beschikbaar via de iAPS Facebook groep of andere fora zoals Discord.

Discord wordt voornamelijk gebruikt voor ontwikkelings- en bouwonderwerpen, terwijl Facebook meer wordt gebruikt voor hulp aan eindgebruikers. Beide kunnen parallel gebruikt worden, maar herhaal niet elk probleem of onderwerp in beide omgevingen tegelijk.

Zowel Facebook als Discord zijn zeer aan te bevelen platforms voor interactieve chat tussen iAPS en Nightscout gebruikers, ouders en ontwikkelaars. Er komen allerlei onderwerpen aan bod, van vragen van beginnende gebruikers tot meer technisch geavanceerde discussies over de werking van iAPS en het OpenAPS-algoritme. De voertaal is Engels.

<span class="mark">Veel mensen hebben iAPS met succes gebouwd en gebruiken het nu volledig veilig, maar het is essentieel dat iAPS-gebruikers:</span>

- Begrijpen hoe hun insulinepomp en glucosesensor werken.

- Het individuele doseringsalgoritme aanpassen met de hulp van zijn of haar diabetesteam.

- Het systeem onderhouden en controleren om er zeker van te zijn dat het goed werkt.

- Het systeem zelf bouwen zodat ze goed begrijpen hoe het werkt, of vertrouwen op een betrouwbare bron om de iAPS App van Testflight te downloaden en te gebruiken. Testflight Apps hebben een geldigheid van 90 dagen, omdat deze iOS omgeving door Apple wordt ondersteund voor het testen van nieuwe Apps.

Om iAPS te gebruiken heb je een compatibele iPhone nodig die draait op iOS 16 of nieuwer. De minimale vereisten voor je apparaten vind je in de iAPS-documentatie.

Voor het bouwen heb je een jaarlijks verlengbare Apple Developer licentie nodig, die 99 US dollar per jaar kost. Zodra deze licentie is geactiveerd, kun je het bouwproces op 2 verschillende manieren starten.

- <span class="mark">Je kunt de procedure "Build iAPS with Script" volgen, waarbij je een Mac-computer met Xcode iAPS build gebruikt. Voor deze methode moet je eerst je iPhone en Apple Watch, indien van toepassing, in de ontwikkelaarsmodus zetten. Op je apparaat, kan je dit inschakelen via Instellingen en Privacy & Beveiliging.</span>

- Of je kunt de procedure "Build iAPS with GitHub" volgen, die ook wel de "browser build" wordt genoemd, omdat je hiervoor elke computer kunt gebruiken (iAPS browser build). Nadat je deze methode hebt voltooid, kun je de iAPS-app op je iPhone downloaden via Testflight. Het grote voordeel van deze methode is dat het een makkelijkere methode is om je iAPS app te bouwen en te updaten.

<span class="mark">Sommige mensen bouwen de iAPS app niet zelf, maar worden uitgenodigd via een TestFlight uitnodiging. Sommige zorgverleners vinden het prima om de app te delen. Als jouw zorgverlener je de app verstrekt, heb je geen Apple Developer-licentie nodig.</span>

<span class="mark">Misschien vind je andere gebruikers in de iAPS-community die ook bereid zijn om hun TestFlight build te delen.</span>

### 2.8 Software updates

<span class="mark">Regelmatige software-updates zijn cruciaal voor het behoud van optimale prestaties en toegang tot de nieuwste functies van iAPS. Het iAPS-team brengt regelmatig nieuwe versies uit. Deze updates bevatten vaak bugfixes en verbeteringen om de functionaliteit van het systeem te verbeteren.</span>

<span class="mark">De versie van iAPS wordt bovenaan het scherm Instellingen vermeld, en eronder welke "tak" van de ontwikkeling wordt gebruikt. Als er een recentere "hoofdversie" is, wordt de meest recente versie vermeld onder de "tak" om aan te geven dat er "nieuwere" versies beschikbaar zijn.</span>

<span class="mark">Eens in de 3 maanden moet je je iAPS-app bijwerken. Volg deze stappen om iAPS bij te werken:</span>

- <span class="mark">Het is een goede gewoonte om de instellingen van je iPhone bij te werken naar iCloud. Op deze manier hebben al je instellingen van de iAPS een back-up op iCloud. Je kunt een back-up maken van je iPhone via de instellingen.</span>

- <span class="mark">Houd bij het bouwen dezelfde tokensleutels aan als bij de vorige installatie.</span>

- <span class="mark">Als je de methode "Build iAPS with script" gebruikt, gebruik Xcode om de code te verversen naar de nieuwe versie, terwijl je iPhone en Apple Watch verbonden zijn en stroom hebben.</span>

- <span class="mark">In het geval van de "Browser build"-methode moet de nieuwe versie na succesvolle uitvoering van het bouwproces worden geïnstalleerd via een Testflight-download.</span>

<span class="mark">Als je problemen ondervindt, blijf dan rustig en zoek ondersteuning in de iAPS-community en documentatie. Vergeet niet dat het oplossen van problemen een normaal onderdeel is van het gebruik van software en dat je met geduld alle problemen kunt oplossen.</span>

Kortom, geïnformeerd en proactief blijven met iAPS is de sleutel tot het optimaliseren van je diabetesbeheer. Door software-updates bij te houden, zorgrichtlijnen te volgen en eventuele problemen direct aan te pakken, kun je zorgen voor een soepele en effectieve ervaring. Geef prioriteit aan veiligheid, houd je gegevens nauwkeurig bij en maak gebruik van de beschikbare bronnen voor ondersteuning. Omarm de mogelijkheden die iAPS biedt om je gezondheid en welzijn te verbeteren.
