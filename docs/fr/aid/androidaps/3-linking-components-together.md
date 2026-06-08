<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q_PD_A2tOqTiWCx9oozwkHq&index=2" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Mise en route des composants</u>**

Dans cette capsule vidéo, nous vous guiderons dans la liaison des articles
nécessaires au sein du système en boucle fermée AndroidAPS. Ces liens établissent
des connexions entre les différents composants afin d'assurer une communication
et un échange de données transparents.
AndroidAPS fonctionne de la manière suivante :
1.​ La glycémie est mesurée toutes les 5 minutes à l'aide d'un capteur de
glucose, tel que Dexcom ou FreeStyle Libre.
2.​ Le capteur envoie les mesures de glucose à une application dédiée au
capteur sur un smartphone qui ensuite transmet les données à l'application
AndroidAPS.
3.​ AndroidAPS calcule la dose d'insuline nécessaire et le communique à une
pompe à insuline, telle que la pompe Accu-Chek Combo ou Insight, la pompe
Dana, Omnipod DASH, TouchCare Nano Pump, ou les anciennes pompes
Medtronic.
4.​ La pompe à insuline délivre l'insuline nécessaire et renvoie les données du
pod à l'application AndroidAPS.

5.​ AndroidAPS partage les données de glycémie et d'insuline avec Nightscout
ou Tidepool, qui sert de logiciel de lecture.
6.​ Si vous transmettez les données de glycémie à xDrip sur un smartphone, les
soignants peuvent suivre les données à distance via leur propre application
xDrip.
7.​ L'application AndroidAPS ou xDrip peut transmettre les données de votre
capteur et de votre insuline à des smartwatches compatibles. Certaines
smartwatches permettent également d'administrer des bolus d'insuline
directement depuis la montre, ce qui facilite la gestion du diabète et permet
de connaître son état glycémique sans avoir à sortir son smartphone.
Dans cette capsule vidéo, nous allons vous guider à travers la liaison de différents
éléments du système AndroidAPS. Plus précisément, nous aborderons les étapes
suivantes :
-​ La connexion d’un capteur à une application dédiée, ce qui permet la
transmission des données du capteur à votre application AndroidAPS ;
-​ Le couplage de la pompe à insuline avec l’application AndroidAPS pour une
communication transparente ;
-​ La création d'un compte Nightscout qui sert de banque de données pour
AndroidAPS ;
-​ La connexion de l'application AndroidAPS au Nightscout pour assurer un
transfert des données de glycémie et d'insuline ; et
-​ L’appairage de l’application AndroidAPS à une smartwatch.
En suivant ces étapes, vous serez en mesure d'établir les liens nécessaires au
système AndroidAPS, permettant ainsi une fonctionnalité efficace d'administration
automatisée d'insuline pour la gestion du diabète.
3.1 Relier le capteur à l'application Android APS
Lorsqu'il s'agit de relier les capteurs à l'application Android APS, il existe différentes
options en fonction du capteur que vous utilisez.
Comme AndroidAPS ne peut pas se connecter directement aux applications de
capteurs natives telles que Dexcom ou LibreLink, une application de capteur
open-source supplémentaire est nécessaire pour combler le fossé et transmettre les
données du capteur à AndroidAPS. Il peut s'agir de xDrip+ ou de Juggluco, selon le
type de capteur utilisé.

-​ xDrip+ est une application puissante qui peut être utilisée pour différents
capteurs. Elle peut également se connecter à d'autres plateformes, telles que
Nightscout, Tidepool, aux smartwatches, et à d'autres appareils.

xDrip+ n’est non plus disponible directement depuis le Play Store ; vous devez
l'obtenir à partir du dépôt GitHub. Si vous tapez "xDrip" et "github" dans Google,
vous pourrez télécharger le fichier APK xDrip+ et l'installer sur votre appareil
mobile. Une fois installé, vous serez invité à choisir une source de données dans les
paramètres de l'application. Sélectionnez l'option appropriée en fonction de votre
type de capteur et suivez les instructions à l'écran pour relier l'émetteur et démarrer
le capteur.
Lorsque vous utilisez xDrip avec AndroidAPS, vous bénéficiez de fonctionnalités
supplémentaires, telles que le partage des données du capteur avec vos proches,
des alarmes personnalisables, d’un widget pour smartphone, la connexion
Bluetooth pour les systèmes audio des voitures, et l'intégration de Nightscout pour
une gestion complète des données.
Si vous n'avez accès qu'aux anciens capteurs FreeStyle Libre, vous aurez besoin
d'un pont NFC vers Bluetooth supplémentaire, tel qu'un MiaoMiao Reader, Bubble
ou Blucon Nightrider. Ces ponts NFC vers Bluetooth peuvent être reliés à des
applications open source spécifiques pour recevoir les valeurs de glucose sur votre
téléphone, après quoi elles peuvent être envoyées à AndroidAPS.
En utilisant des applications de capteurs open source, vous pouvez recevoir les
relevés des capteurs et les transmettre de manière transparente à l'application
AndroidAPS, ce qui permet une gestion efficace du diabète grâce au système en
boucle fermée.
3.2 Pompe à insuline à l'application AndroidAPS
Lorsque vous utilisez l'application AndroidAPS, vous pouvez la relier à votre pompe
à insuline. Au lancement de l'application, vous serez invité à sélectionner le type de
pompe que vous utilisez. Vous pouvez également modifier ce paramètre
ultérieurement à l'aide du configurateur.

Si vous avez choisi l'Omnipod DASH comme pompe, vous verrez un onglet DASH
dédié en haut de l'interface de l'application.
-​ Dans cet onglet, vous pouvez accéder à des informations sur votre pompe
Omnipod DASH et contrôler ses fonctions.
-​ Le bouton d'actualisation permet à AndroidAPS d'établir une connexion avec
l'Omnipod et de récupérer son état. Cela peut être utile pour désactiver
certaines alarmes de l'Omnipod.
-​ Dans la section gestion de la pompe, vous trouverez quatre options
spécifiques à l'Omnipod DASH :
o​ Activate Pod (Activer la dosette) : Cette option vous guide à travers les
étapes de remplissage d'une dosette avec de l'insuline, de son
insertion et de sa mise en marche.
o​ Désactiver la dosette : Cette option vous permet de désactiver une
dosette active.
o​ Jouer le signal sonore du test : Cette option permet de contrôler les
alertes auditives sur l'Omnipod DASH.
o​ Pod History (Historique du pod) : Cette option vous permet d'accéder à
l'historique de vos pods Omnipod DASH.
-​ Dans certaines situations, un troisième bouton peut apparaître dans l'onglet
DASH. Il peut s'agir du bouton Resume Delivery (Reprendre l'administration),
ou du bouton Silence Alerts (Faire taire les alertes), selon les circonstances.
Le bouton Resume Delivery permet de rétablir l'administration d'insuline
après un changement de profil, tandis que le bouton Silence Alerts fait taire
les alarmes liées à l'expiration d'un pod ou à un réservoir d'insuline faible.
L'apparence de ces boutons offre des options spécifiques pour résoudre les
problèmes liés à la pompe.
-​ Ces boutons sont intuitifs et remplacent les fonctions du PDM de l'Omnipod.
Bien que le PDM ne soit pas nécessaire si vous utilisez AndroidAPS, il est
recommandé de le conserver comme dispositif de secours.
Pour les utilisateurs d'autres pompes à insuline, l'interface de l'application affichera
différentes options correspondant au type de pompe. Chaque type de pompe aura
son propre onglet en haut de l'écran. Les options et paramètres disponibles peuvent
varier en fonction du modèle de pompe.

Ces

paramètres vous permettent de gérer et de contrôler efficacement

l'administration d'insuline par votre pompe connectée à l'aide de l'application
AndroidAPS.
3.3 Création d'un site Nightscout
-​ Nightscout n'est pas une plateforme à laquelle on se connecte, mais un site
web que l'on construit ou que l'on fait construire, ce qui peut entraîner des
coûts supplémentaires.
-​ Un compte Nightscout se compose d'une URL (nom) et d'un mot de passe
pour accéder au site.
-​ Les comptes Nightscout sont créés en tant que comptes d'utilisateurs
individuels. Il n'existe pas de plateforme Nightscout spécifiquement destinée
aux professionnels médicaux.
-​ Nightscout permet de suivre en temps réel les données de votre capteur et
de votre insuline, et de les partager avec vos proches ou votre soignant. De
plus, Nightscout est le moyen exclusif de générer des rapports à partir de
votre système en boucle fermée AndroidAPS.
-​ Nightscout est plus qu'un simple site web pour les données AndroidAPS ; il
peut se connecter à différents appareils.
-​ Nightscout agit comme un hub central, recevant les données des capteurs et
les distribuant à de multiples appareils tels que les téléphones portables, les
smartwatches, les ordinateurs et d'autres dispositifs de surveillance. Il offre
options d'accès et d'affichage des informations sur le glucose, notamment
par le biais de smartwatches, de widgets de bureau, d'appareils muraux et
d'une intégration avec des assistants vocaux tels qu'Alexa.
-​ Il y a plusieurs façons de créer un site web Nightscout. Nightscout est un
logiciel libre. -​ Vous pouvez trouver github.nightscout.io. toutes les informations sur le site web
-​ Vous pouvez l'installer vous-même à l'aide de plans étape par étape
disponibles en ligne.
-​ Il existe également des entreprises qui proposent des services d'installation
de Nightscout, comme T1Pal, NS10BE, Nightscout Pro, Serendipity Bio,
Nightscout4u, Nightscout-easy, et Opensource.clinic. Par ailleurs, Nightscout
et ses services associés ne sont pas réconnus par la FDA, à l'exception de la
prestation T1Pals. Il n'y a pas d'approbation de la part des autorités
européennes ; son utilisation est ainsi à vos risques et périls. Nightscout
semble être conforme au GDPR et à l'HIPAA, mais ne revendique pas de
conformité officielle en raison de l'absence d'auditeurs.
-​ Il est essentiel de traiter les données des capteurs de glycémie en toute
sécurité et de protéger l'URL de Nightscout par un mot de passe.
-​ Si vous souhaitez partager votre site Web Nightscout avec un proche ou un
fournisseur de soins, il est recommandé de créer un jeton distinct pour eux.
En suivant ces étapes, vous pouvez créer un site web Nightscout facilement et en
toute sécurité, ce qui vous permettra de suivre et de partager efficacement vos
données sur le diabète.
3.4 Lier l'application AndroidAPS à Nightscout
Lors de la configuration de l'application AndroidAPS, vous serez invité à saisir votre
URL et votre mot de passe Nightscout. Si vous ne l'avez pas fait lors de la
configuration initiale, vous pouvez également saisir ces informations ultérieurement
via le configurateur.
Une fois que vous avez saisi vos informations d'identification Nightscout, vous
pouvez naviguer vers l'onglet Nightscout dans l'application AndroidAPS. Dans cet
onglet, vous pouvez voir quelles données sont transmises à votre site web
Nightscout.

Lier AndroidAPS à Nightscout vous permet de transmettre de manière transparente
vos données de diabète à votre site Web Nightscout, où elles peuvent être
consultées et surveillées en temps réel. Cela permet non seulement à vous, mais
aussi à vos proches, et à votre professionnel médical d'obtenir des informations
précieuses sur la gestion de votre diabète.
3.5 Relier l'application Android APS à Smartwatch
Plusieurs options s'offrent à vous pour relier l'application Android APS à une
montre intelligente :
Si vous disposez d'une smartwatch fonctionnant avec le Wear OS, vous pouvez non
seulement consulter vos données AndroidAPS sur la montre, mais aussi effectuer
des actions telles que l'administration d'un bolus ou la définition d'une valeur cible
temporaire. Vous trouverez des informations sur les montres qui ont été testées et
sur la manière de les configurer dans la documentation AndroidAPS.
Une autre option consiste à transférer les données du capteur du xDrip+ vers votre
smartwatch. Cela vous permet de visualiser vos données de glycémie sur la montre,
mais vous n'aurez pas la possibilité de contrôler votre pompe à insuline ou de lui
communiquer des commandes. Les différents types de smartwatches peuvent avoir
des options spécifiques pour s'intégrer à xDrip+, vous pouvez trouver plus
d'informations dans la documentation xDrip.
Dans ce chapitre, nous avons exploré les différentes connexions disponibles dans
Android APS. Des capteurs CGM aux pompes à insuline en passant par Nightscout,
ces liens permettent une communication transparente pour une gestion efficace du
diabète. En établissant ces connexions, les utilisateurs peuvent exploiter pleinement
les capacités d'AndroidAPS et prendre le contrôle de leur diabète.
