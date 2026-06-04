<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q9c0-2zGWG6eC3O-C-am44m&index=2" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Mise en route des composants</u>**

Dans cette capsule vidéo, nous vous guiderons à travers l’interconnexion des
composants de la boucle DIY.
Voici un résumé du fonctionnement de la boucle DIY avec un capteur Dexcom et une
pompe à insuline Omnipod DASH :

-​ La glycémie est mesurée toutes les 5 minutes à l'aide d'un capteur Dexcom
et envoyée à l'application native Dexcom.
-​ L'application Dexcom transmet les valeurs à Apple Health, qui à son tour
envoie les données à l'application DIY Loop sur un smartphone.
-​ DIY Loop calcule le besoin en insuline en fonction des lectures de la glycémie
par le capteur.
-​ Le besoin en insuline calculé est envoyé à un pod Omnipod DASH.
-​ Le pod Omnipod DASH délivre l'insuline nécessaire et envoie les données à
l'application DIY Loop.
-​ L'application DIY Loop transmet les données de glycémie et d'insuline à
Nightscout, qui sert de logiciel de lecture pour la boucle DIY.
Si vous avez installé l'application Dexcom G6 ou Dexcom G7 sur votre iPhone, les
soignants peuvent surveiller à distance vos taux de glucose à l'aide de l'application
Dexcom Follow. En outre, les soignants peuvent également créer une application
personnalisée Loop Follow ou Loop Caregiver pour suivre vos données
glycémiques, recevoir des notifications en temps réel et même donner des ordres à
distance. Ces outils de suivi offrent commodité et tranquillité d'esprit à la fois pour
vous et pour vos soignants.
Nous découvrirons les étapes nécessaires à la création des liens entre les différents
composants de la boucle DIY, notamment :
-​ Relier le capteur à l'application DIY Loop.
-​ Relier le pod Omnipod DASH à l’application DIY Loop.
-​ Créer un compte Nightscout.
-​ Connecter l'application DIY Loop à Nightscout.
-​ Intégrer l'application DIY Loop à une Apple Watch.
En suivant les instructions fournies dans la vidéo, vous pourrez établir les
connexions nécessaires au bon fonctionnement de la boucle DIY.
3.1 Capteur + Application Loop
DIY Loop est compatible avec plusieurs capteurs, notamment les Dexcom et
FreeStyle Libre. Voici un guide sur la façon de relier ces capteurs à l'application DIY
Loop :

3.1.1 Dexcom G6
-​ Installez l'application officielle Dexcom G6 sur un iPhone.
-​ Suivez les instructions de l'application pour démarrer le capteur et l’émetteur
Dexcom.
-​ Dans l'application Loop, allez dans [Add CGM] et sélectionnez le Dexcom G6.
-​ Saisissez le numéro de série de l’émetteur Dexcom G6 dans l'écran du
capteur.
-​ Une fois que le capteur a terminé son temps de préchauffage, l'application
Loop reçoit les valeurs de glucose du capteur.
-​ Vous pouvez changer le capteur et l'émetteur à l'aide de l'application
officielle Dexcom G6.
-​ Lors du remplacement de l'émetteur, supprimez l'émetteur usé dans l'écran
des capteurs de l'application Loop avant d’en associer un nouveau.
-​ Si vous vous déconnectez d'un émetteur, supprimez-le également de vos
paramètres Bluetooth.
-​ Si vous souhaitez utiliser la fonction Dexcom Share, vous devrez le faire
depuis l'application Dexcom G6, et non depuis l'application Loop.
3.1.2 Dexcom G7 ou Dexcom ONE Plus
-​ Démarrez votre capteur et votre transmetteur Dexcom G7 ou ONE Plus à
l'aide de l'application officielle Dexcom G7 ou ONE Plus.
-​ Connectez l'émetteur Dexcom G7 ou ONE Plus à l'application Loop en
saisissant le code d'appairage.
-​ Si vous souhaitez utiliser la fonction Dexcom Share, vous devrez le faire
depuis l'application Dexcom G7 ou ONE Plus, et non depuis l'application
Loop.
Capteur FreeStyle Libre 1
-​ L'ancien capteur FreeStyle Libre peut être connecté au DIY Loop si vous
utilisez un lien NFC vers Bluetooth comme le MiaoMiao ou l'émetteur Bubble.
-​ L'application DIY Loop peut capter le signal Bluetooth sans application tierce,
si vous sélectionnez le capteur FreeStyle Libre dans les options du capteur.
Cela vous permettra également de scanner et de démarrer le capteur depuis
l'application DIY Loop.
Capteur européen FreeStyle Libre 2

-​ Le capteur européen FreeStyle Libre 2 peut être connecté à DIY Loop sans
nécessiter d'émetteur.
-​

Il suffit de choisir FreeStyle Libre dans les options de capteur du menu et de
suivre les instructions à l'écran.

3.2 Pompe à insuline + Application DIY Loop
DIY Loop est compatible avec Omnipod DASH, Omnipod Eros les pompes Dana les

plus récentes, et certaines anciennes versions de Medtronic. Cependant, l'Omnipod
Eros et les anciennes versions de la pompe Medtronic sont généralement moins
disponibles et nécessitent un Riley Link supplémentaire pour la connectivité.
La pompe à insuline la plus couramment utilisée avec Loop est l'Omnipod DASH.
Pour coupler un Omnipod DASH avec votre application Loop, suivez les étapes
suivantes :
-​ Sur l'écran d'accueil, sélectionnez [Add Pump], puis choisissez l’Omnipod
DASH. Saisissez les préférences de configuration du pod, telles que le rappel
de la durée de vie et la notification d'insuline faible.
-​ L'application vous guidera dans la liaison du pod. Amorcez le nouveau pod
d'insuline jusqu'à ce que vous entendiez 2 bips, tout en conservant la
protection bleue de la canule en place.
-​ Appuyez sur [Pair Pod], et attendez que la pompe établisse la connexion.
Appuyez ensuite sur [Continue], puis retirez la protection bleue de la canule
avant de placer le pod sur le site souhaité.
-​ Appuyez sur [Insert Cannula] et vérifiez que la canule est correctement
insérée. Suivez les instructions qui s'affichent à l'écran et appuyez sur [Finish
Setup].
-​ Une icône de gousse jaune représentant l'insuline basale s’affiche sur l'écran
d'accueil, indiquant que l'appairage a réussi.
Si vous devez remplacer votre pod Omnipod DASH, allez sur l'écran d'accueil,
appuyez sur l'icône de la pompe, et sélectionnez [Replace Pod].
Il est recommandé de conserver le PDM, ou le Personal Diabetes Manager, comme
solution de secours, même lorsque l'on utilise la boucle DIY. Bien que Loop
fonctionne de manière autonome avec un smartphone, conserver le PDM constitue
une alternative fiable en cas de problèmes avec l'installation de Loop ou de
nécessité de revenir à un système de pompe à insuline traditionnel.

3.3 Création d'un site Web Nightscout
-​ Nightscout n'est pas une plateforme à laquelle on se connecte, mais un site
internet que l'on construit ou que l'on fait construire, ce dernier peut entraîner
des coûts supplémentaires.
-​ Un compte Nightscout se compose d'une adresse URL et d'un mot de passe
permettant d'accéder au site web.
-​ Les comptes Nightscout sont créés en tant que comptes d'utilisateurs
individuels. Il n'existe pas de plateforme Nightscout spécifiquement destinée
aux professionnels médicaux.
-​ Nightscout vous permet de suivre les données de votre capteur et de votre
insuline en temps réel et de les partager avec vos proches ou votre soignant.
Il est nécessaire de générer des rapports avec les données de glucose et
d'insuline de votre boucle DIY.
-​ Cependant, avec DIY Loop, vous pouvez également télécharger des données
vers Tidepool comme alternative à Nightscout.
-​ Nightscout est plus qu'un simple site web pour les données DIY Loop ; il peut
se connecter à différents appareils.
-​ Nightscout sert de hub central, recevant les données des capteurs et les
distribuant à de multiples appareils tels que les smartphones, les
smartwatches, les ordinateurs et d'autres dispositifs de suivi. Il offre diverses
options d'accès et d'affichage des informations sur le glucose, notamment via
les smartwatches, des widgets de bureau, d'appareils muraux et d'une
intégration avec des assistants vocaux tels qu'Alexa.
-​ Il y a plusieurs façons de créer un site web Nightscout
-​ Nightscout est un logiciel libre. Vous pouvez trouver toutes les informations
sur github.nightscout.io.
-​ Vous pouvez construire le site vous-même à l'aide de plans étape par étape
disponibles en ligne.
-​ Ou, Il existe également des prestataires qui proposent des services de mise
en route de Nightscout, comme T1Pal, NS10BE, Nightscout Pro, Serendipity
Bio, Nightscout4u, Nightscout-easy, et Opensource.clinic.
-​ Nightscout et ses prestations associées, à l'exception du service T1Pals, ne
sont pas approuvées par la FDA.
-​ Il n'y a pas d'approbation de la part des autorités européennes, son
utilisation se fait donc à vos propres risques.
-​ Nightscout semble être conforme au GDPR et à l'HIPAA, mais ne revendique
pas de conformité officielle en raison de l'absence d'auditeurs.

-​ Il faut traiter les données de glycémie du capteur en toute sécurité et de
protéger votre URL Nightscout par un mot de passe.
-​ Si vous souhaitez partager votre site Web Nightscout avec un soignant ou un
professionnel de santé, il est recommandé de créer un accès distinct pour
eux.
En suivant ces étapes, vous pouvez créer un site web Nightscout facilement et en
toute sécurité, ce qui vous permettra de suivre et de partager efficacement vos
données sur le diabète.
3.4 Application DIY Loop + Site Nightscout
Pour connecter votre application Loop à votre site personnel Nightscout, suivez les
étapes suivantes :
-​ Dans l'application DIY Loop, accédez à l’écran [Add Device].
-​ Sélectionnez [Nightscout], puis entrez l'URL et le mot de passe de votre site
Nightscout.
-​ Une fois que le compte Nightscout est lié à votre application DIY Loop, l'état
affiche [OK].
-​ Connectez-vous à votre compte Nightscout pour visualiser non seulement
votre glycémie, mais aussi votre administration d'insuline et les glucides
saisis.
3.5 Application DIY Loop + Apple Watch
L'association de l'application DIY Loop à une Apple Watch permet aux utilisateurs
de saisir facilement les glucides et les bolus, de démarrer et d'arrêter les réglages
pré-prandiaux, ou d'annuler les réglages directement à partir de la smartwatch
même sans leur iPhone. Toutefois, il est important de noter que si l'iPhone est hors
de portée du Bluetooth, les actions demandées par la smartwatch ne seront pas
exécutées tant que l'iPhone ne se sera pas de nouveau connecté.
Pour relier une Apple Watch à une installation Loop existante, les utilisateurs
doivent coupler la montre à leur iPhone, puis reconstruire Loop pour permettre à
l'application DIY Loop d'être disponible.

Il est important de s'assurer de la compatibilité entre la montre et l'application
Loop. DIY Loop nécessite au minimum watchOS 8, la compatibilité variant en
fonction du modèle spécifique d'Apple Watch et de la version d'iOS.
L'application de smartwatch Loop se compose de deux écrans. Les utilisateurs
peuvent passer d'un écran à l'autre en glissant vers la gauche ou la droite.
-​ Le premier écran affiche l'état de la boucle, la glycémie actuelle, la flèche de
tendance, la glycémie éventuelle, et les icônes de saisie des glucides, de
saisie des bolus, de pré-repas, et de sélection de l'option prioritaire.
-​ Pour la saisie des glucides ou des bolus, les utilisateurs peuvent ajuster les
entrées à l'aide de la couronne numérique. L'écran de saisie des glucides de
la montre permet aux utilisateurs de sélectionner la quantité, le temps
d'absorption et l'heure à laquelle les glucides ont été ou seront consommés.
L'écran du bolus repas affiche le bolus recommandé, qui peut être augmenté
ou diminué à l'aide de la couronne numérique ou des icônes +/-.
-​ Pour confirmer un bolus, les utilisateurs doivent aligner deux triangles en
faisant tourner la couronne numérique. Si le bolus n'est pas confirmé ou
annulé, il ne sera pas délivré. Les utilisateurs peuvent enregistrer les glucides
saisis ou annuler la saisie sur la smartwatch.
-​ Le deuxième écran de la montre affiche un graphique des données
glycémiques récentes et des données glycémiques prévues. L'utilisateur peut
faire défiler l'écran à l'aide de son doigt ou de la couronne. Des informations
supplémentaires telles que l'insuline active, les glucides actifs, le débit basal
net, et les unités de réservoir peuvent être affichées.
On peut constater qu'en reliant l'application DIY Loop à une Apple Watch, les
utilisateurs peuvent facilement gérer l'entrée des glucides et des bolus, consulter
les données de glycémie et accéder à diverses fonctionnalités directement depuis
leur poignet.
Dans ce chapitre, nous avons exploré les différentes connexions disponibles pour la
boucle DIY. Des capteurs de glucose aux pompes à insuline en passant par
Nightscout, ces liens permettent une communication transparente pour une gestion
efficace du diabète. En établissant ces connexions, les utilisateurs peuvent exploiter
pleinement les capacités de la boucle DIY et prendre le contrôle de leur diabète.

4. Fonctionnement de la Boucle DIY
Bienvenue dans cette capsule vidéo sur le fonctionnement de la Boucle DIY.
La boucle DIY fonctionne grâce à l'application DIY Loop sur un iPhone. L'application
propose deux modes : le mode Automatique, ou Closed Loop, lorsque la boucle
fermée est activée dans les paramètres, et le mode Manuel, lorsque la boucle
fermée est désactivée dans les paramètres.
Dans cette vidéo, nous allons nous intéresser aux fonctionnalités de l'application
DIY Loop, en général, puis nous verrons comment vous pouvez l'utiliser en mode
automatique ou en boucle fermée, ainsi qu'en mode manuel.
