<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/BAEtamH96eo" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>5. Rapporten maken en interpreteren (11 min)</u>**

In deze video verkennen we het proces van rapporten maken en interpreteren in Nightscout, dat wordt gebruikt in combinatie met AndroidAPS.

In eerdere video's hebben we de stappen behandeld om een Nightscout website te maken en je AndroidAPS app te verbinden met Nightscout om elke 5 minuten gegevens door te sturen.

Nu gaan we dieper in op de mogelijkheden en functionaliteit van de interface en rapporten van Nightscout, om je te helpen de waardevolle informatie die ze bieden voor het beheren van je diabetes te begrijpen en te benutten.

### 5.1 Nightscout interface

De interface van Nightscout is meestal zwart en kan worden aangepast aan jouw voorkeuren. Hieronder zie je de verschillende onderdelen van een Nightscout website:

- <span class="mark">De titelbalk toont de naam van je site aan de linkerkant en bevat knoppen aan de rechterkant, zoals de menuknop met verschillende instellingsopties. Je vindt er ook bewerkings- en audiopictogrammen, die zelden worden gebruikt.  Afhankelijk van je verificatiestatus, zie je ook een plusteken, waar je behandelingen kunt invoeren.</span>

- <span class="mark">Het onderdeel systeeminformatie toont de actuele informatie van alle systemen die verbonden zijn met Nightscout. Het kan grijze vakjes of plugins bevatten, die extra details geven als je er met de muis overheen gaat. In Nightscout noemen we deze “pillen”.</span>

- <span class="mark">De gebruikers- en behandelingsinformatie geeft informatie weer over jezelf en jouw behandelingen. Je vindt er pillen of afkortingen die verder worden uitgelegd in het instellingengedeelte.</span>

- <span class="mark">Het gedeelte over basale insuline laat je basale insulineafgifte zien.</span>

- <span class="mark">De sensor glucose en behandelingen sectie toont jouw sensor glucose metingen, koolhydraten en / of insuline behandelingen, evenals voorspellingen van AndroidAPS..</span>

- <span class="mark">In dit gedeelte van de gegevensgeschiedenis worden de laatste 48 uur gegevens getoond.</span>

In Nightscout heb je toegang tot verschillende instellingen via het hamburgermenu bovenaan. Hier vind je een overzicht van de beschikbare opties:

- Rapporten: Hiermee kun je rapporten genereren.

- <span class="mark">Via de Profiel- en Voedingseditor kun je instellingen wijzigen, hoewel de instellingen niet gebruikt worden door AndroidAPS.</span>

- <span class="mark">Met de beheertools kun je toegangscodes maken om gegevens te delen met zorgverleners of familieleden.</span>

- <span class="mark">Accountinstellingen bieden opties om eenheden, tijdformaat, taal en meer aan te passen. Je kan ook het uiterlijk van je Nightscout account aanpassen, inclusief de weergave van plugins of pillen. Verder vind je in deze sectie uitleg over de afkortingen die gebruikt worden in de interface.</span>

- <span class="mark">Wijzigingen kunnen worden opgeslagen als je je API-wachtwoord invoert.  Daaronder zie je de verificatiestatus.</span>

<span class="mark">Door deze instellingen te verkennen en de juiste aanpassingen te maken, kun je je Nightscout-ervaring aanpassen aan jouw behoeften.</span>

### 5.2 Soorten rapporten

<span class="mark">Als je AndroidAPS gebruikt, kun je rapporten opvragen via je Nightscout website via het menu rechtsboven.</span>

Enkele van de belangrijkste rapporten waartoe je toegang hebt, zijn:

- <span class="mark">Rapporten van dag tot dag: Deze laten zien hoe het algoritme de basale insuline aanpast en geven inzicht in de microbolustoediening.</span>

- <span class="mark">Distributierapport: Dit rapport geeft Time In Range, Time Below Range en het geschatte HbA1c weer. De variatiecoëfficiënt kan worden berekend door de standaarddeviatie te delen door het gemiddelde glucoseniveau, en dit met 100 te vermenigvuldigen.</span>

- <span class="mark">Het Percentielgrafiekrapport biedt een soort AGP profiel om glucosetrends te analyseren.</span>

- <span class="mark">Met het Profielenrapport kun je insuline-instellingen bekijken, zoals duur van insulineactie, koolhydraatratio, insulinegevoeligheid, basale insulinesnelheid en streefwaarde.</span>

- <span class="mark">Het Loopalyzer-rapport biedt tenslotte visualisaties van de gemiddelde basale aanpassingen over een periode van 24 uur, binnen een gespecificeerd tijdsbestek. Dit kan helpen bij het identificeren van patronen en trends in de basale insulineaanpassingen door het algoritme.</span>

<span class="mark">Je kan rapporten uit Nightscout ook visualiseren met de software Nightscout Reporter. Dit gratis webgebaseerde platform biedt een gebruiksvriendelijkere interface en stelt je in staat om de gewenste rapporten te selecteren, de tijdsperiode in te stellen, en een PDF-document te genereren om door te sturen naar je zorgverlener. Interessante beschikbare rapporten zijn onder andere analyses, profielen, een glucosepercentielgrafiek en dagelijkse rapporten.</span>

<span class="mark">Er zijn drie manieren om deze rapporten met je zorgverlener te bespreken:</span>

- Je kan je zorgverlener je Nightscout URL geven en een beveiligde token die je hebt aangemaakt. Zo kan hij of zij direct toegang krijgen tot de rapporten en ze bekijken.

- Hoewel je vanuit Nightscout niet direct een PDF kunt genereren, kun je de rapporten wel opslaan als PDF-bestanden. Open gewoon het gewenste rapport, druk op "Ctrl+P" (of Command+P op Mac) en selecteer "Opslaan als PDF" als printeroptie. Er wordt dan een PDF-bestand gemaakt dat je kan opslaan en indien nodig kunt e-mailen naar je zorgverlener.

- <span class="mark">Een andere optie is om Nightscout Reporter te gebruiken om visueel aantrekkelijkere rapporten te maken die gemakkelijk kunnen worden doorgestuurd naar je zorgverlener.</span>

<span class="mark">Door Nightscout en Nightscout Reporter effectief te gebruiken, kun je jouw zorgverlener voorzien van uitgebreide rapporten die de prestaties en trends van je diabetesbeheer met AndroidAPS belichten.</span>

### 5.3 Rapporten interpreteren

<span class="mark">In AndroidAPS zijn de belangrijkste parameters die kunnen worden aangepast de streefwaarde, basale insulinesnelheid, koolhydraatratio en insulinegevoeligheid.  Dit kan worden gedaan op het tabblad Profiel in de AndroidAPS app als je op een van de subtabs tikt.</span>

Het is belangrijk om een gestructureerde aanpak te volgen bij het interpreteren van rapporten en het maken van aanpassingen. Hier is een gedetailleerde handleiding:

1. Beoordeel de glycemische informatie:

- Controleer op het distributierapport of de behandeldoelen, met name de Time In Range en de Time Below Range, de afgelopen 2 tot 4 weken zijn gehaald. Volgens internationale richtlijnen moet de Time In Range meer dan 70% zijn, en de Time Below Range minder dan 4%.

- Als je toegang hebt tot het analyserapport van Nightscout Reporter, noteer dan de frequentie van de maaltijdbolussen, naar verwachting gemiddeld 3 keer per dag.

2. Optimaliseer de closed-loop-instellingen:

- Analyseer het AGP profiel om trends van hypo- of hyperglycemie te identificeren. Als je trends ziet, probeer dan in de dagelijkse rapporten te achterhalen of deze verband houden met maaltijdbolussen.

- Voor trends met betrekking tot maaltijdbolussen: beoordeel factoren zoals timing, koolhydraattelling en overweeg aanpassing van de koolhydraatratio.

- <span class="mark">Als postprandiale hyperglycemie een probleem is, overweeg dan ook de Eating Soon-streefwaarde voor de maaltijd te gebruiken.</span>

- Je kunt ook de optie van sneller werkende insulines onderzoeken, zoals Fiasp of Lyumjev.

- <span class="mark">Voor trends na manuele correctiebolussen of na hyperglycemie: wijzig de insulinegevoeligheid of de duur van de insulineactie om de agressiviteit van het algoritme aan te passen.</span>

- <span class="mark">Je kan ook de agressiviteit van de insulinetoediening van het AndroidAPS-algoritme regelen door de instellingen voor maximaal basaal en maximale insuline aan boord aan te passen.</span>

- <span class="mark">Het verlagen van deze grenzen kan helpen om overmatige insulinetoediening te voorkomen, vooral in gevallen van frequente hypoglycemie.</span>

- <span class="mark">Aan de andere kant, als de maximale insuline aan boord-instelling het vermogen van het systeem om hoge bloedglucosewaarden effectief te corrigeren beperkt, moet deze mogelijk worden verhoogd. Dit moet voorzichtig gebeuren.</span>

- <span class="mark">Voor trends buiten maaltijden of bolussen, kun je de streefwaarde per tijdsblok aanpassen, of de basale insulinesnelheid van 1 uur voor en tijdens de overeenkomstige periode, met 10 tot 20% wijzigen.</span>

<span class="mark">Het is ook belangrijk om mogelijke correlaties met gemiste bolussen, lichaamsbeweging, alcohol of hypoglycemie te onderzoeken.</span>

<span class="mark">In AndroidAPS is het belangrijk om ervoor te zorgen dat de basale insulinesnelheid goed is ingesteld. Als je een consistent patroon van toenemende of afnemende basale insuline tijdens een specifieke periode van de dag opmerkt, dat niet kan worden verklaard door SMB of handmatig bolussen, bijvoorbeeld in de Dag tot dag rapporten, is het doel om de basale insulinesnelheid op dat moment aan te passen aan de eisen van de persoon.</span>

Als je een ervaren AndroidAPS gebruiker bent, en je wilt je profiel verder afstellen, dan kun je Autotune gebruiken. Dit is een webtool voor het berekenen van optimale instellingen voor basale insuline, insulinegevoeligheid en koolhydraatratio. Door je Nightscout URL in te voeren op de Autotune website, kun je het programma je ideale instellingen laten berekenen op basis van je sensorglucosewaarden. Als Autotune significante afwijkingen van je huidige instellingen aangeeft, kun je overwegen deze aan te passen.

- Let op: Autotune vereist vaste waarden voor koolhydraatratio en insulinegevoeligheid.

- En Autotune werkt mogelijk niet als Nightscout extra beveiligingsmaatregelen heeft zoals een token.

3. Geef gedragsaanbevelingen: Controleer het juiste gebruik van het closed-loop systeem in de dagelijkse rapporten:

- <span class="mark">De draagtijd van de sensor, de tijd in automodus en de timing van de bolus vóór de maaltijd kunnen het best worden gecontroleerd in de dagrapporten.</span>

- Je kunt ook het juiste gebruik van tijdelijke streefwaarden en profielwisselingen controleren, en evalueren op overcorrectie van hypo- of hyperglycemie.

- <span class="mark">Vraag ook naar de geschiktheid van alarminstellingen en herinneringen, om alarmmoeheid te voorkomen.</span>

4. Controleer pompinstellingen en noodplannen:

- Documenteer je pompinstellingen, waaronder in ieder geval je basale insulinesnelheid, koolhydraatratio, insulinegevoeligheid en streefwaarde.

- Stel een noodplan op en zorg dat je altijd insulinepennen bij je hebt voor het geval de pomp niet goed werkt of voor andere noodgevallen.

Als je veranderingen aanbrengt, is het aan te raden om één instelling per keer te wijzigen. Nadat je een wijziging hebt doorgevoerd, moet je de effecten over een periode van 1-2 weken nauwlettend in de gaten houden. Het is mogelijk dat je eerste aanpassing niet de gewenste resultaten oplevert. In dat geval kun je alternatieve opties onderzoeken en op basis daarvan verdere aanpassingen doen. Het belangrijkste is om je instellingen te verfijnen op basis van de feedback van je Nightscout-rapporten, zodat je AndroidAPS-systeem optimaal presteert.

<span class="mark">Door deze richtlijnen te volgen en rekening te houden met de verstrekte details, kan je rapporten effectief interpreteren, insuline-instellingen optimaliseren, en zorgen voor een correct gebruik van AndroidAPS voor een beter diabetesbeheer.</span>
