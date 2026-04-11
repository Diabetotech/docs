<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/9OvzhNi8OOI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. DBLG1 Systeem met Kaleido volgens het CARES-paradigma (18 min)</u>**

<span class="mark">Welkom bij deze video waarin we het DBLG1-systeem met Kaleido onderzoeken op basis van het CARES-paradigma.</span>

We bespreken hoe het DBLG1-algoritme de automatische insulinetoediening berekent en aanpast, wanneer het terugschakelt naar de manuele modus, specifieke educatietips en sensorproblemen en hoe het systeem zijn gegevens deelt. Daarna bespreken we de officiële indicaties en software-updates van het DBLG1-systeem met Kaleido.

### 2.1 Hoe het DBLG1 systeem werkt op basis van het CARES-paradigma

#### 1.1 Calculate

<span class="mark">Het DBLG1-systeem met Kaleido werkt met een uniek berekeningsalgoritme dat rekening houdt met verschillende factoren om de insulinetoediening te bepalen. Dit zijn de belangrijkste aspecten van het berekeningsproces:</span>

- Het systeem dient elke 5 minuten  microbolussen insuline toe op basis van de huidige en voorspelde glucosespiegels en de totale dagelijkse insulinedosis, om de glucosespiegels zo dicht mogelijk bij de gedefinieerde streefglucose te houden. Er wordt ook rekening gehouden met aangekondigde lichamelijke activiteit en maaltijden.

- Tijdens de initialisatie wordt de helft van de vooraf ingestelde totale dagelijkse dosis insuline toegewezen aan basale insuline, terwijl de andere helft wordt toegewezen aan maaltijdinsuline.

- <span class="mark">Het doelbereik voor glucose kan worden ingesteld tussen 100 en 130 mg/dL of 5,6 en 7,2 mmol/l.</span>

- Autocorrectiebolussen worden om de 5 minuten toegediend als de glucosespiegel naar verwachting hoger wordt dan 180 mg/dL of 10 mmol/L. Als wordt voorspeld dat de glucosespiegel onder de hypoglycemische drempel zal dalen, wordt basale insuline gepauzeerd en worden reddingskoolhydraten aanbevolen.

- Het systeem bevat zowel korte-termijn als lange-termijn leeralgoritmen. Het zelflerende kortetermijnalgoritme analyseert trends van de afgelopen 2 tot 3 dagen, terwijl het langetermijnalgoritme trends van de afgelopen 3 tot 6 weken in beschouwing neemt.

Het DBLG1-algoritme bevat ook een uniek algoritme voor maaltijdbeheer, dat aanbevelingen bevat voor het toedienen van de maaltijdbolus. Dit zijn de belangrijkste aspecten van het algoritme voor maaltijdbeheer:

- In sommige gevallen verdeelt het systeem de maaltijdbolus in twee toedieningen op basis van sensorglucosewaarden en het type maaltijd.

- Bij normale glucosewaarden wordt het eerste deel van de bolus direct toegediend en het tweede deel na 30 minuten. Bij vetrijke maaltijden wordt het tweede deel na 60 minuten toegediend. Het algoritme voor beheer na de maaltijd kan bovendien correctiebolussen toedienen tussen het eerste en tweede deel van de maaltijdbolus. In dit geval wordt het tweede deel van de bolus vervolgens aangepast om rekening te houden met de actieve insuline.

- <span class="mark">Als hypoglycemie wordt voorspeld, kan het tweede deel van de bolus tot 90 minuten worden uitgesteld of zelfs worden geannuleerd.</span>

- <span class="mark">Als hyperglycemie wordt gedetecteerd aan het begin van de maaltijd, kan het systeem de bolus in één keer toedienen. Indien nodig kunnen extra autocorrectiebolussen worden toegediend.</span>

- Na een maaltijd kan de basale insuline worden vervangen door auocorrectiebolussen, die meestal maximaal 3 uur aanhouden.

#### 1.2 Adjust

Met het DBLG1 algoritme heb je de mogelijkheid om verschillende parameters aan te passen om je insulinetoediening te personaliseren. Dit zijn de parameters die je kunt aanpassen:

- Het streefniveau voor glucose. De standaardwaarde is ingesteld op 110 mg/dl of 6,1 mmol/l, maar je kunt deze waarde aanpassen tussen de 100 en 130 mg/dl of 5,6 en 7,2 mmol/l.

- <span class="mark">De agressiviteit bij maaltijden bepaalt de hoeveelheid insuline die tijdens de maaltijd wordt toegediend. De standaardwaarde is 100% en je kunt deze instellen tussen 50% en 200%. Door deze parameter aan te passen, kun je meer of minder insuline voor maaltijden gebruiken, vergelijkbaar met het aanpassen van de koolhydraatratio in andere closed-loop systemen.</span>

- De agressiviteit bij hyperglycemie regelt de reactie op hoge glucoseniveaus. De standaardwaarde is 100% en kan worden aangepast tussen 43% en 186%. Het verhogen of verlagen van deze parameter beïnvloedt de insulinedoses van de autocorrectiebolussen.

- De agressiviteit bij normoglykemie moduleert de basale insulinetoediening tijdens normale glucoseniveaus. De standaardwaarde is 100% en je kunt deze aanpassen tussen 59% en 147%. Het aanpassen van deze parameter maakt de modulatie van basale insuline meer of minder agressief.

- De drempel voor hypoglycemie bepaalt het glucoseniveau waarbij het systeem koolhydraten als reddingsmiddel aanbeveelt en de toediening van basale insuline aanpast. De standaardwaarde is 70 mg/dl of 3,9 mmol/l, maar kan worden ingesteld tussen 60 en 85 mg/dl of 3,3 en 4,7 mmol/l.

- <span class="mark">De totale dagelijkse dosis insuline is de belangrijkste instelling om het algehele glucosemanagement door het systeem nauwkeurig af te stellen. Deze moet worden verlaagd in het geval van te frequente koolhydraatreddingen en hypoglycemie, of juist worden verhoogd in het geval van te frequente hyperglycemie (postprandiaal of nuchter). Merk op dat, hoewel je de totale dagelijkse dosis insuline tussen 8 en 90 eenheden per dag kunt aanpassen, frequente aanpassingen de automatische lopname van het systeem kunnen beïnvloeden, dus het wordt aanbevolen om frequente veranderingen te vermijden en aanpassingen te maken in stappen van niet meer dan 10%.</span>

Naast de eerder genoemde parameters biedt het DBLG1 algoritme extra modi voor specifieke situaties:

- <span class="mark">De modus Fysieke activiteit is ontworpen voor fysieke inspanning, zoals sporten, intensief tuinieren, huishoudelijk werk enzovoort. Er kan een fysieke activiteit worden opgegeven voor de huidige dag of voor de volgende dag. Als dit is ingeschakeld, worden de streefwaarde voor het glucosegehalte en de drempel voor hypoglycemie aangepast om beter aan de eisen van de activiteiten te voldoen. De streefwaarde en drempels worden verhoogd met 70 mg/dl of 3,9 mmol/l. Indien nodig worden eerder reddingskoolhydraten aanbevolen. De duur van deze modus is instelbaar binnen een bereik van 0 tot 24 uur. Na de activiteit verlaagt het DBLG1-algoritme de doelwaarde langzaam terug naar het normale glucoseniveau. De type en intensiteit van de fysieke activiteit beïnvloedt de mate van agressiviteitsvermindering rond de fysieke activiteit.</span>

- <span class="mark">De Zen-modus kan worden geactiveerd als je hypoglycemie wilt vermijden en zo min mogelijk last wilt hebben van de noodzaak om reddende koolhydraten te eten. Tijdens de Zen-modus kan de streefwaarde worden verhoogd met 10 tot 40 mg/dl of 0,6 tot 2,2 mmol/l. De duur van de Zen-modus kan worden aangepast wiin een bereik van 1 tot 8 uur via de instellingen.</span>

Als je begint met het DBLG1-systeem, moet je uw totale insulinedosis, gewicht en het gemiddelde aantal gram koolhydraten dat je per standaardmaaltijd consumeert invoeren je kunt drie standaardmaaltijden invoeren voor ontbijt, lunch en diner. Deze parameters kunnen later worden aangepast indien nodig.

Er zijn echter bepaalde parameters die het algoritme berekent en die niet kunnen worden aangepast.

- Deze omvatten de basale insulinesnelheid, de koolhydraatratio, de insulinegevoeligheid en de duur van de insulinewerking.

- <span class="mark">Tijdens het instellen moet ueen veilig basaalprofiel in de DBLG-handset invoeren, maar dit wordt alleen gebruikt in de manuele modus of open-loop.</span>

- <span class="mark">De drempel voor hyperglycemie is vastgesteld op 180 mg/dl of 10 mmol/l. In de DBLG1-handset kun je de drempel voor hyperglycemie wijzigen, maar dit heeft geen invloed op het algoritme. Dit is alleen van invloed als de glucosewaarde op je DBLG1-handset oranje wordt weergegeven.</span>

#### 1.3 Revert

<span class="mark">Als de verbinding met de insulinepomp of glucosesensor langer dan 30 minuten wegvalt, inclusief tijdens de opwarmperiode van de sensor, keert het DBLG1-systeem terug naar de manuele modus of Open Loop. Je kunt de verbindingsstatus controleren in het systeemstatusscherm. Als "signaalverlies" of "wachtende pomp" wordt weergegeven, betekent dit dat de verbinding niet tot stand is gebracht.</span>

Hoewel de verbinding theoretisch binnen een bereik van 2 meter of 3,3 feet moet worden behouden, is het aanbevolen om je handset zo dicht mogelijk bij de sensor en de Kaleido-pomp te houden voor een betrouwbare communicatie.

In de manuele modus is er geen 'stop-voor-laag' functie beschikbaar. De basale insuline die wordt toegediend in de manuele modus wordt het basale veiligheidsprofiel genoemd, en je kunt dit direct vanaf je handset aanpassen. Daarnaast kun je, als je handset nog verbonden is met de pomp, deze gebruiken om een insuline bolus toe te dienen of een tijdelijke basale hoeveelheid in te stellen.

<span class="mark">Zodra de verbinding met de pomp of sensor is hersteld, zal het systeem automatisch de automodus of Closed Loop modus hervatten.</span>

#### 1.4 Educate

<span class="mark">Bij het starten van een closed-loop systeem zoals het DBLG1 systeem, zijn er algemene educatiepunten die van toepassing zijn op alle closed-loop systemen, maar ook specifieke educatiepunten die specifiek zijn voor het DBLG1-systeem. Laten we ze doornemen:</span>

<span class="mark">Voor algemene scholing in closed-loop systemen verwijzen we naar de generieke module. Deze omvatten de volgende belangrijke punten:</span>

- Gebruik minder koolhydraten om hypoglycemie te corrigeren.

- Overweeg een probleem met het infusieset als de bloedglucosewaarden gedurende langere tijd hoog blijven zonder duidelijke reden. "If in doubt, change it out."

- <span class="mark">Vertrouw op het closed-loop systeem en laat het zijn werk doen.</span>

- Geef ongeveer 15 minuten voor het eten een maaltijdbolus.

- <span class="mark">Activeer de activiteitsmodus 1 tot 2 uur voordat je gaat sporten.</span>

- Stop de insulinetoediening tijdelijk als je de pomp langer dan 15 minuten loskoppelt.

- Reageer onmiddellijk op systeemalarmen.

- Schakel automatische updates op je mobiele telefoon uit om onderbrekingen te voorkomen.

- Zoek steun bij lotgenoten voor extra begeleiding en inzichten.

Laten we ons nu richten op de specifieke educatiepunten voor het DBLG1 systeem:

- Tijdens de initialisatie wordt de helft van de totale dagelijkse dosis insuline toegewezen aan basale insuline, terwijl de andere helft wordt toegewezen aan maaltijdinsuline. Als deze toewijzing niet goed overeenkomt met je werkelijke insulinebehoefte, wordt aanbevolen om de totale dagelijkse dosis insuline dienovereenkomstig aan te passen. Als je normaal gesproken een kleinere hoeveelheid bolus-insuline gebruikt dan basale insuline (bijvoorbeeld 30 over 70% als je een koolhydraatarm dieet volgt), kan het gunstig zijn om de totale dagelijkse dosis insuline bij aanvang met 5 tot 10% te verhogen. Aan de andere kant, als je gewoonlijk een grotere hoeveelheid bolus insuline gebruikt dan basale insuline (bijvoorbeeld 70 over 30% als je een grotere hoeveelheid koolhydraten consumeert), kan een verlaging van de totale dagelijkse dosis insuline met 5 tot 10% bij de initialisatie worden overwogen.

- Het wordt aangeraden om de maaltijden minimaal 15 minuten voor de maaltijd in te voeren, hoewel de eigenlijke insulinebolus pas 6 minuten voor de maaltijd wordt toegediend. Vergeet niet om de insuline bolus op dat moment te valideren, anders wordt de insuline niet toegediend.

- Houd de handset dicht bij je lichaam of binnen handbereik, en laad hem 's nachts op.

- Zorg dat je reddingskoolhydraten bij de hand hebt en weet hoeveel koolhydraten deze bevatten. (Bijvoorbeeld 5, 10 of 15 gram) voor een snelle en gemakkelijke toediening.

- Het aanpassen van de totale dagelijkse insulinedosis is de meest effectieve parameter voor het fijn afstellen van het DBLG1-algoritme. Vermijd echter veelvuldige aanpassingen van deze totale dagelijkse insulinedosis, omdat dit het zelflerend algoritme reset.

- Je kunt koolhydraatinformatie invoeren via de boluscalculator of als reddingskoolhydraten. Als je voor de laatste optie kiest, geeft het systeem geen extra insuline voor de geconsumeerde koolhydraten.

- Je kunt eerdere en toekomstige maaltijden en lichamelijke activiteiten invoeren. Zelfs als je een maaltijd of activiteit bent vergeten in te voeren, is het nog steeds nuttig om het later in te voeren zodat het algoritme hier automatisch kan van leren.

- <span class="mark">Het DBLG1-systeem biedt twee extra modi: Zen-modus, die het risico op hypoglycemie vermindert, en Vertrouwelijke modus, die de gegevensoverdracht naar YourLoops tijdelijk verhindert.</span>

- <span class="mark">Na een maaltijd en tijdens autocorrectiebolussen daalt de basale insulinespiegel, volgens het unieke gedrag van het DBLG1 algoritme.</span>

- <span class="mark">In de YourLoops rapportages wordt de totale dagelijkse insulinedosis verdeeld in een percentage voor basale insuline en een percentage voor bolus insuline. De autocorrectiebolussen worden opgeteld bij het boluspercentage, waardoor in de rapportages vaak een relatief hoger boluspercentage wordt waargenomen.</span>

Door jezelf vertrouwd te maken met deze educatiepunten, zul je beter begrijpen hoe je het DBLG1 systeem kunt optimaliseren en je diabetes effectief kunt beheren.

#### 1.5 Sensor

Het DBLG1-systeem maakt gebruik van de Dexcom G6-sensor voor glucosemonitoring. Als je sensor geen getal of pijl weergeeft of als je meetwaarden niet overeenkomen met je symptomen, gebruik dan je vingerprikmeter om beslissingen te nemen over diabetesbehandeling. Haal bij twijfel je meter tevoorschijn.

<span class="mark">Als er een aanzienlijk verschil is tussen de sensorglucosewaarde en de vingerprikmeting, kun je overwegen de Dexcom G6-sensor te kalibreren via de DBLG1-handset. Het is echter belangrijk om alleen te kalibreren als je glucosewaarden de afgelopen paar minuten stabiel en binnen het doelbereik zijn geweest. Je hoeft niet te kalibreren, maar het kan wel.</span>

Als je met een nieuwe sensor begint, ontvang je geen G6-metingen of alarmen/waarschuwingen totdat de opwarmperiode van 2 uur is afgelopen. Gebruik tijdens deze periode je vingerprikmeter om beslissingen over de behandeling te nemen.

#### 1.6 Share

Met het DBLG1-systeem heb je de mogelijkheid om insuline- en glucosegegevens te delen met je zorgverlener en familieleden via YourLoops en Dexcom Follow. Real-time controle van glucosewaarden is voor beide partijen mogelijk.

De DBLG1 handset blijft continu verbonden met YourLoops via de ingebouwde SIM-kaart, waardoor het handmatig ophalen van gegevens niet meer nodig is. De gegevensoverdracht van de handset naar de YourLoops cloud vindt elke 5 minuten plaats via 4G op de SIM-kaart. Als je mobiele verbinding slecht of onbestaande is (bijvoorbeeld als je op zee bent, in een bergachtig gebied of in een regio zonder verbinding), kan de overdracht van gegevens naar YourLoops worden beïnvloed.

Als 4G-dekking niet beschikbaar is, zoals tijdens een vlucht, worden de gegevens niet doorgestuurd. Je kunt echter nog steeds je gegevens bekijken via het tabblad Geschiedenis, omdat hier 3 maanden aan gegevens worden opgeslagen. Je kan ook nog steeds de handset gebruiken omdat deze alleen Bluetooth nodig heeft voor verbinding met de pomp en de sensor.

Het is belangrijk om te weten dat de SIM kaart alleen dekking biedt binnen bepaalde landen in Europa, dus als je buiten deze landen reist, zal de SIM kaart niet worden aangesloten en zullen de gegevens niet worden overgedragen aan YourLoops. Als de SIM kaart voor een langere periode niet is aangesloten, is het mogelijk dat deze niet direct opnieuw opstart. Het toestel wordt dan opnieuw opgestart op de eerste dag van de volgende maand, wanneer het weer binnen SIM-bereik is.

Zorgverleners hebben toegang tot YourLoops via hun respectievelijke inloggegevens, terwijl familieleden de glucosespiegels op afstand kunnen controleren met de Dexcom Follow app, op voorwaarde dat de gebruiker ook de Dexcom G6 app heeft geïnstalleerd.

Het DBLG1-systeem biedt een unieke functie genaamd Vertrouwelijke modus, waarmee gebruikers ervoor kunnen kiezen hun gegevens niet te delen gedurende een specifieke periode van 3 uur, 1 dag of 3 dagen. Het is belangrijk om te weten dat wanneer de Vertrouwelijke Modus geactiveerd is, de gegevens daarna niet meer hersteld kunnen worden in YourLoops.

### 2.2 Indicaties

Het DBLG1-algoritme van Diabeloop heeft een CE-label voor gebruik bij personen met type 1-diabetes die ten minste 18 jaar oud zijn. Het is geschikt voor personen met een dagelijkse insulinebehoefte variërend van 8 tot 90 eenheden per dag. Het systeem is alleen compatibel met NovoRapid en Humalog 100 E/ml snelwerkende insuline, en is bedoeld voor gebruik bij een enkele patiënt.

Houd er rekening mee dat het DBLG1-systeem op dit moment geen FDA-label heeft en dat het niet is goedgekeurd voor gebruik tijdens zwangerschap en dialyse.

### 2.3 Software-updates

Via het handsetmenu kun je controleren of er software-updates zijn. Als er een update beschikbaar is, tik dan op downloaden.

- Als je DBLG1 handset genoeg batterij heeft, kun je ervoor kiezen om de update meteen te installeren of de updatetijd te laten staan op de standaard tijd die door het systeem is ingesteld.

- Je kunt de updatetijd wijzigen, maar het kan niet 's nachts worden ingesteld.

- Zorg tijdens een update voor voldoende batterijstroom en schakel je DBLG1 NIET uit. Je apparaat kan automatisch opnieuw opstarten nadat de installatie is voltooid.

Samenvattend: het DBLG1-systeem met Kaleido integreert verschillende componenten voor het automatisch toedienen van insuline. Met zijn geavanceerde algoritme en instelbare parameters biedt het DBLG1-systeem flexibiliteit om aan individuele behoeften te voldoen. Als je vragen of zorgen hebt, kunt je hulp vragen aan je zorgverlener, de speciale Facebook-groep of contact opnemen met de klantenservice van ViCentra. Onthoud dat je er niet alleen voor staat tijdens je diabetesbeheer en dat er hulpbronnen beschikbaar zijn om je bij elke stap te ondersteunen.
