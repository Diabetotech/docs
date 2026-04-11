<!-- Dutch video to be added -->

## **<u>4. Hoe AndroidAPS werkt</u>**

Welkom bij deze video over de functionaliteit van AndroidAPS.

Het regelen van je insulinetoediening met AndroidAPS gebeurt via de  AndroidAPS app op je Android gsm. Om de functionaliteiten volledig te benutten, moeten gebruikers eerst 10 doelen voltooien.

<span class="mark">De app biedt vier verschillende modi: de automodus of Closed Loop, Open Loop en Low Glucose Suspend. Closed Loop kan ook worden uitgeschakeld, wat resulteert in een soort manuele modus. In Closed Loop of automodus past AndroidAPS elke 5 minuten automatisch de insulinetoediening aan op basis van real-time sensorglucosewaarden. In Open Loop geeft AndroidAPS suggesties voor het aanpassen van de basale insuline, die handmatig moeten worden bevestigd.</span>

In deze video zullen we ons verdiepen in de functionaliteit van de AndroidAPS app in het algemeen, hoe je de 10 doelstellingen kunt voltooien en vervolgens onderzoeken hoe je de AndroidAPS app kunt gebruiken in zowel de automodus als de manuelemodus.

4.1 AndroidAPS-app

Wanneer je de AndroidAPS-app opent, kom je op  het startscherm, dat meestal wordt geopend op het tabblad Overzicht. Laten we de verschillende secties van het startscherm doorlopen van A tot H:

- In de linkerbovenhoek vind je een hamburgermenu waar je verschillende instellingen en opties kunt openen.

- Naast het hamburgermenu zie je de tabbladen voor verschillende onderdelen van de app.

- Helemaal rechts is er een menu met drie puntjes dat toegang geeft tot geavanceerde instellingen, behandelingen, geschiedenis, installatiewizard, statistieken en informatie over de versie van de app.

- <span class="mark">In sectie B van het beginscherm van de AndroidAPS app vind je de profiel- en streefwaarde vakken:</span>

- Het profielvak bevindt zich aan de linkerkant. Het toont de huidige profielnaam of de basale insulinesnelheid, afhankelijk van de instelling.

- Als je op het profielvak tikt, krijg je de details van je profiel te zien en als je het profielvak lang ingedrukt houdt, kun je van profiel wisselen of het percentage van je huidige profiel aanpassen.

- Het aanpassen van het percentage in je profiel heeft niet alleen invloed op je basale insuline, maar past ook je koolhydraatratio en insulinegevoeligheidsfactor aan.

- Het streefwaardevak bevindt zich aan de rechterkant. Het toont je huidige streefwaarde of streefbereik voor glucosewaarden.

- Door op het streefwaardevak te drukken, kun je een tijdelijke streefwaarde instellen, die kan worden gebruikt om de insulinetoediening te moduleren.

- Je kunt ook vooraf ingestelde tijdelijke streefwaardenactiveren voor specifieke situaties zoals “Eating Soon”, Activiteit of Hypo.

- Als de Autosens-functie is ingeschakeld en het is toegestaan om de streefwaarde aan te passen, wordt de knop voor de streefwaarde groen, om aanpassingen in de streefwaarde aan te geven.

- Het gedeelte over sensorglycemie geeft je huidige glucosewaarden weer. De kleur van de metingen geeft aan of ze binnen het doelbereik liggen of niet.

- Rode en gele driehoeken duiden op problemen met het importeren van sensorgegevens.

- Een rode driehoek geeft een kritiek probleem aan waarbij dubbele sensorwaarden worden ontvangen, zoals van zowel xDrip als Nightscout. Dit moet worden opgelost voordat de Closed Loop functionaliteit weer kan worden ingeschakeld.

- Een gele driehoek is een waarschuwing dat sommige sensorwaarden ontbreken. Dit kan voorkomen bij het gebruik van een Libre-sensor in combinatie met andere sensor-gerelateerde problemen. Tenzij het samen met andere belangrijke problemen optreedt, kan deze waarschuwing over het algemeen worden genegeerd.

- De Loopmodusindicator rechts geeft de huidige modus van het closed-loop systeemweer. Dit zijn de verschillende statussen en hun kleuren. Door op het pictogram voor de Loopmodus te tikken, kun je de modus indien nodig handmatig wijzigen.

- Het volgende gedeelte toont insuline aan boord, koolhydraten aan boord, gevraagde koolhydraten, basale insulinesnelheid en Autosens status.

- Als je op de waarden tikt, krijg je meer gedetailleerde informatie over de verdeling van insuline en koolhydraten aan boord.

- Let op: de insuline aan boord waarde is verdeeld in basale en bolus insuline. De basale insuline aan boord kan negatief zijn als het algoritme de ingestelde basale insulinesnelheid heeft verlaagd. Als je vaak negatieve insuline aan boord hebt, kan dit erop wijzen dat je basale insulinesnelheid te hoog is ingesteld, en moet worden aangepast.

- Het Autosens-pictogram toont pijlen als het actief is en een kruis als het inactief is. Wanneer ingeschakeld, worden de procentuele aanpassingen voor de basale insulinesnelheid en insulinegevoeligheid onder het pictogram weergegeven. Wanneer Dynamische gevoeligheid is geselecteerd, worden ook de huidige ISF-aanpassingen weergegeven.

- Het volgende gedeelte toont statuspictogrammen met betrekking tot je insulinepomp en glucosesensor, zoals de tijd sinds de laatste infusieset of Pod-verandering, resterende insuline in je pomp, en de leeftijd van de sensor.

- De sensorgrafiek toont je glucosewaarden in de loop van de tijd, waarbij de groene zone het doelbereik aangeeft.

- De schaal van de grafiek en aanvullende grafiekopties kunnen worden aangepast met de pijl boven links en rechts.

- De gele lijn geeft de insulineactiviteit weer en de blauwe driehoekjes geven de microbolussen aan.

- Het volgende gedeelte toont aanvullende door de gebruiker selecteerbare grafieken, zoals absolute insuline, insuline aan boord, koolhydraten aan boord, afwijkingen en gevoeligheid.

- Je kunt kiezen welke grafieken je wilt zien via de pijl rechtsboven in de sensorgrafiek.

- Met de actieknoppen in het laatste gedeelte kun je verschillende acties uitvoeren met betrekking tot insuline en koolhydraten.

- De insuline actieknop maakt handmatige bolustoediening mogelijk of het registreren van een bolus die met een insulinepen wordt toegediend.

- Met de koolhydraatactieknop kun je koolhydraten invoeren zonder bolussen. Met duur kun je de opnamesnelheid van die koolhydraten optioneel aangeven. 1 uur voor snelle suikers, 2 uur voor suikers met een gemiddelde opname en 3 uur voor iets als pizza.

- De knop Boluscalculator of Boluswizard berekent een insulinebolus op basis van het aantal koolhydraten en het huidige glucoseniveau.

- Je hebt de optie om slechts een percentage van de berekende bolus toe te dienen en te kiezen of je de glycemische trend wel of niet in aanmerking neemt.

- Je kunt de gedetailleerde berekening bekijken en zien met welke factoren de bolus wizard rekening houdt.

- Onder “Carb Time” kun je aangeven of je van plan bent de koolhydraten later te eten, of dat je al gegeten hebt. Je kunt een herinneringsalarm instellen voor het geplande eetmoment.

- In de geavanceerde overzichtsinstellingen is er een Super Bolus functie. Wanneer deze is ingeschakeld, verschijnt deze optie in de boluswizard. Het combineert de geplande basale insuline voor de komende 2 uur met de bolus tijdens de maaltijd. Gedurende de volgende 2 uur wordt geen basale insuline toegediend. Het doel is om meer insuline toe te dienen in een kortere tijd om hyperglycemie na de maaltijd te minimaliseren. Voorzichtigheid is echter geboden omdat dit het risico op hypoglycemie kan verhogen.

Naast het beginscherm zijn er andere tabbladen beschikbaar in de app, waaronder Acties, Insulinemodel,  Insulinepomp, Loop, APS-modus, Profiel, Automatisering, NSClient en uw BG-bron. Deze tabbladen bieden toegang tot specifieke informatie en functionaliteiten met betrekking tot AndroidAPS. Je kan kiezen welke tabbladen hier worden weergegeven via de configurator in het hamburgermenu.

Door door deze tabbladen en secties te navigeren, kun je je diabetes effectief beheren met de AndroidAPS app. Via de menuoptie Behandelingen via de drie puntjes kunt u de behandelingen en acties van AndroidAPS in meer detail volgen.

4.2 De 10 doelstellingen voltooien

Om AndroidAPS in Closed Loop of automodus te gebruiken, moet je 10 doelstellingen voltooien. Deze doelstellingen helpen je om vertrouwd te raken met de app en geleidelijk over te gaan op automatische insulinetoediening.

Het duurt meestal ongeveer 2 maanden om alle doelen te bereiken.

Als je deze doelen doorloopt, leer je het AndroidAPS-algoritme kennen en kun je geleidelijk je instellingen optimaliseren. Het vereist geduld en de bereidheid om te experimenteren en te leren van de online community. Het is belangrijk om deze eerste periode te gebruiken om je basale insuline, koolhydraatratio en insulinegevoeligheid te verfijnen.

Zodra je de doelstellingen hebt behaald en de instellingen hebt geoptimaliseerd, heb je een stabieler closed-loop systeemdat minder aanpassingen nodig heeft. In het begin is het een ingewikkeld proces, maar het biedt mogelijkheden voor een beter diabetesbeheer zonder de constante noodzaak voor handmatige interventie.

Houd er rekening mee dat het van het grootste belang is dat gebruikers regelmatig back-ups maken van de AndroidAPS-instellingen via het app-onderhoudsmenu en een kopie van recente instellingsexporten op een veilige plaats bewaren. Het exportbestand bevat niet alleen alle instellingen, maar ook de doelstellingen die nodig zijn om in de automatische modus te komen. In geval van nood is het exportbestand de enige manier om AndroidAPS te herstellen en de normale werking voort te zetten.

4.3 Closed Loop of automodus

AndroidAPS automodus starten

In de AndroidAPS-app kun je de automodus activeren door op het Loop-pictogram op het beginscherm te klikken. Voordat je de automodus inschakelt, is het echter belangrijk om ervoor te zorgen dat de pomp en de sensor goed zijn gekoppeld en dat alle vereiste doelstellingen zijn voltooid.

Zodra de automodus actief is, zie je de modusindicator op het beginscherm groen worden, wat aangeeft dat het systeem bezig is met het automatisch aanpassen van de basale insuline. Je kunt deze aanpassingen ook volgen op het beginscherm. Als je de berekening achter de aanpassingen wilt controleren, kun je naar het tabblad Loop of OpenAPS gaan.

Gebruik een vooraf ingestelde tijdelijke streefwaarde

In AndroidAPS heb je toegang tot vooraf ingestelde tijdelijke streefwaarden door op het streefwaardevak in de app te drukken. Hiermee kun je kiezen uit opties zoals "Eating Soon", "Activiteit" of "Hypo". Deze vooraf ingestelde doelen kunnen worden aangepast aan je individuele behoeften en voorkeuren.

Parameters aanpassen

In AndroidAPS heb je de flexibiliteit om je insulineprofiel te wijzigen door het profielvakje op het beginscherm vast te houden, of het tabblad Profiel te openen. Hier kun je verschillende parameters wijzigen, zoals duur van de insulinewerking, koolhydratenratio, insulinegevoeligheidsfactor, basale insulinesnelheid en streefwaarde.

Om van profiel te wisselen of het insulinetoedieningspercentage aan te passen, ga je gewoon naar het tabblad Profiel in het beginscherm.

- Als je het percentage in je profiel verandert, vergeet dan niet dat dit niet alleen invloed heeft op de basale insuline, maar ook op je koolhydraatratio en insulinegevoeligheid.

Om je streefwaarde te wijzigen, kun je op het streefwaardevak klikken. Hier heb je de optie om je streefwaarde voor een specifieke duur in te stellen.

De configurator in het menu biedt extra aanpassingsopties. Je kunt het type algoritme kiezen, namelijk OpenAPS AMA of OpenAPS SMB, specifieke instellingen configureren voor de Super Micro Bolussen, Autosens en/of Unannounced Meal functies inschakelen, en meer.

Bovendien kun je met AndroidAPS specifieke automatiseringen instellen op basis van verschillende omstandigheden, zoals glucosewaarden, insulinetoediening, insuline aan boord, koolhydraten aan boord, locatie en andere apps. Dit zorgt voor een gepersonaliseerde en dynamische controle van je diabetesbeheer.

Een insuline bolus geven

Voor maaltijdbolussen heb je verschillende opties:

- De boluswizard berekent de insulinedosis op basis van het aantal koolhydraten dat je van plan bent te eten.

- Met de insuline knop kun je direct het aantal eenheden insuline invoeren dat je wilt toedienen.

- Met de knop Koolhydraten kun je het aantal gram koolhydraten invoeren waarmee het algoritme rekening houdt in zijn berekeningen.

Insuline stopzetten

<span class="mark">Als je de insulinetoediening tijdelijk moet stoppen, kun je op het pictogram Loop in het beginscherm klikken. Van daaruit kun je de optie "Pomp loskoppelen" kiezen voor een duur variërend van 30 minuten tot 3 uur. Hierdoor wordt de insulinetoediening van de pomp tijdelijk onderbroken.</span>

<span class="mark">4.4 Manuele modus</span>

In bepaalde situaties kan het nodig zijn om over te schakelen naar de manuelemodus in AndroidAPS, bijvoorbeeld wanneer de automatische insulinetoediening niet voldoet aan de huidige insulinebehoefte (bijvoorbeeld tijdens ziekte). De Closed Loop-modus uitschakelen kan eenvoudig worden gedaan met de knop Loop op het startscherm.

In de manuele modus werkt AndroidAPS op dezelfde manier als in de automodus:

- Je kunt de basale insulinesnelheid, koolhydraatratio, insulinegevoeligheid en duur van de insulinewerking aanpassen in de profielinstellingen.

- Je kunt een tijdelijke basale hoeveelheid instellen door lang op de profielknop te drukken en de nodige aanpassingen te maken.

- Je kunt handmatig een bolus toedienen met de insuline actieknop, of de bolus wizard actieknop gebruiken, als je liever de boluscalculator gebruikt.

<span class="mark">Om de AndroidAPS app te gebruiken is het dus nodig om de specifieke doelen te behalen,  en te begrijpen hoe AndroidAPS werkt in de automodus en in de manuele modus. Hoewel het misschien ontmoedigend lijkt om het systeem zelf te bouwen en te configureren, is het belangrijk om te onthouden dat je niet de enige bent op deze reis.</span>

De AndroidAPS gemeenschap is er om je bij elke stap te ondersteunen. Dus, heb vertrouwen, vraag hulp wanneer dat nodig is, en raadpleeg de uitgebreide documentatie als je werkt aan het bereiken van een optimale glycemische controle met AndroidAPS.
