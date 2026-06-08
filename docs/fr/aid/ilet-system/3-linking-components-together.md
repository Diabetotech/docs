<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q9CFwVnMvv8NC_3kgSz3lTY&index=2" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. L'algorithme de dosage des repas détermine automatiquement les doses de</u>**

repas en réponse aux saisies de repas de l'utilisateur, en tenant compte du type de
repas (soit le petit-déjeuner, le déjeuner ou le dîner) et de la portion du repas (qui
peut être "habituel ", "supérieur" ou "inférieur").
Les algorithmes de base et de bolus visent à orienter le taux de glucose vers
l'objectif glycémique actuel, pour lequel il existe trois options : "habituel" qui vise un
objectif glycémique de 120 mg/dl ou 6,7 mmol/l, "inférieur" qui vise un objectif
glycémique de 110 mg/dl ou 6,1 mmol/l, ou "supérieur" qui vise un objectif
glycémique de 130 mg/dl ou 7,2 mmol/l. Un objectif secondaire peut également
être défini pour des périodes spécifiques.
Le système adapte la sensibilité du dosage de l'insuline en fonction des niveaux et
des tendances de la glycémie. Les doses de base et de bolus s'adaptent en

permanence, tandis que les doses de repas s'adaptent séparément pour le
petit-déjeuner, le déjeuner et le dîner.
Les doses repas sont ajustées au fil du temps, sur la base des besoins en insuline
de bolus postprandial de 4 heures des annonces de repas passées. Elles visent à
fournir 75 % de l'insuline nécessaire pour un repas. Toute insuline supplémentaire
nécessaire pour le repas sera fournie par le contrôleur correctif. La dose d'insuline
pour un repas "Inférieur" est de 50 % de celle d'un repas "Habituel", tandis que la
dose d'insuline pour un repas "Supérieur" est de 150 % de celle d'un repas
"Habituel".
Voici un exemple de la façon dont le système iLet ajuste les doses d'insuline pour
les petits déjeuners quotidiens. Lorsque l'hyperglycémie postprandiale se produit, le
système augmente progressivement les doses d'insuline pour le même type de
repas, ce qui permet de mieux contrôler la glycémie postprandiale.
L'adaptation de la dose de repas ne se produit que si aucune annonce de repas n'a
eu lieu dans la fenêtre d'adaptation de 4 heures et si les niveaux de glucose au
début et à la fin de cette fenêtre de 4 heures sont inférieurs à 80 mg/dl ou 4,4
mmol/l au-dessus de l'objectif de glucose.
Lorsque la valeur de la glycémie mesurée par le capteur est inférieure à 60 mg/dl, l'algorithme de bolus suspend l'administration d'insuline pour corriger
l'hyperglycémie pendant une heure, avec des doses réduites pendant 30 minutes
pour éviter une surcorrection.
Le système iLet apprend et s'adapte aux besoins individuels en insuline au fil du
temps, en commençant de manière conservatrice en fonction du poids saisi. Les
utilisateurs sont encouragés à suivre leur routine habituelle au début pour une
adaptation optimale, et à espacer leurs repas d'au moins 4 heures pour faciliter
l'apprentissage des doses de repas par le système.
1.2 Ajustement
Les utilisateurs ont un contrôle limité sur les paramètres du système iLet puisqu'ils
ne peuvent ajuster que la valeur cible de la glycémie et le poids de l’utilisateur.

Pour les objectifs glycémiques, les utilisateurs peuvent choisir entre les options
"habituel", "inférieur" et "supérieur", avec la possibilité de définir jusqu'à deux
objectifs par jour pour adapter la gestion de leur diabète.
Vous définissez votre poids à l'initialisation de votre appareil iLet. Tous les trois
mois, l'iLet vous rappellera de confirmer votre poids. Il est recommandé de le faire si
votre poids varie de plus de 15 %. Vous pouvez saisir un poids d’au maximum 255
kg ou 561 livres.
Les utilisateurs ne peuvent pas programmer de paramètres d'insuline tels que le
débit basal, le rapport glucidique, la sensibilité à l'insuline, la durée d'action de
l'insuline, ou le seuil d'hypoglycémie. Le système automatise l'administration
d'insuline intégrale, l'utilisateur n'ayant plus qu'à annoncer ses repas. Une approche
non interventionniste est nécessaire lors de l'utilisation de ce système et une
certaine patience est requise pour que l'iLet s'adapte à l'évolution des besoins en
insuline et identifie les doses de bolus efficaces pour les repas.
1.3 Reprise
En cas de perte de connexion avec le capteur de glucose, l'iLet passe du mode CGM
(ou mode surveillance continue de glucose), au mode BG Run, ou “Glycémie
capillaire”. Dans ce mode, l'administration d'insuline basale se poursuit sur la base
des taux appris précédemment au cours des 7 derniers jours, ce qui nécessite la
saisie manuelle des valeurs de glucose obtenu par un prélèvement capillaire.
-​ Si une valeur de glycémie basse est saisie, l'iLet suspend l'insuline basale
pendant une heure ou jusqu'à la saisie d’une valeur de glycémie qui ne soit
pas précaire. Inversement, si une valeur de glycémie élevée est saisie, l'iLet
peut administrer de l'insuline de correction.
-​ Il est toujours possible de saisir les repas, l'iLet administrant de l'insuline en
fonction du type et de la portion du repas, sur la base des doses adaptées à
partir des données des capteurs précédents.
Si le mode BG-run est lancé dans les 7 jours suivant le démarrage de l'iLet, les
alarmes demanderont une saisie de la glycémie toutes les heures jusqu'à ce que le
SCG soit rétabli. L'absence de saisie de la glycémie dans l'heure qui suit entraîne

l'arrêt de l'administration d'insuline. Après 48 heures consécutives sans capteur de
glucose, le mode BG-run prend fin et l'administration d'insuline s'arrête.
Si le mode BG-run commence plus de 7 jours après l'initiation de l'iLet, les alarmes
demandent la saisie du BG toutes les 4 heures jusqu'à ce que le SCG soit rétabli. Le
non-respect du délai de 4 heures entraîne l'arrêt de l'administration d'insuline.
Après 72 heures consécutives sans SCG, le mode BG-run se termine et
l'administration d'insuline est interrompue.
L'administration d'insuline reprend dès que les valeurs du capteur de glucose sont à
nouveau reçues. Si l'accès au capteur n'est pas possible, les utilisateurs doivent se
retourner aux stylos à insuline avec de l'insuline basale et de l'insuline de bolus.
Les utilisateurs doivent s'efforcer de prévenir l'arrêt de l'insuline en assurant un
accès continu aux capteurs de glucose, en acquittant rapidement les alarmes et en
saisissant les valeurs de glycémie en mode BG-Run. Il est essentiel de disposer
d'un plan de secours au cas où les capteurs de remplacement ne seraient pas
disponibles. Si possible, il est préférable de passer au plan d'insulinothérapie de
secours le matin ou le soir, à l'heure habituelle de prise d'insuline à action
prolongée.
Vu que l'iLet ne dispose pas de réglages programmés pour la pompe, tels que les
débits basaux ou les ratios de glucides, le mode manuel n'est pas disponible.
Cependant, des informations récentes sur les doses d'insuline, y compris la dose
quotidienne totale d'insuline, la dose quotidienne totale de base et les doses pour
les repas, sont fournies à des fins de référence et de calcul si les utilisateurs doivent
passer aux injections d'insuline pour une raison quelconque.
1.4 Éducation
Lorsque l'on commence à utiliser un système automatisé d'administration d'insuline
comme le système iLet, il est important de connaître les points de formation
généraux et les points de formation spécifiques à ce système.
Les points d'éducation générale abordés sont les suivants
- Consommer moins de glucides pour rectifier l'hypoglycémie.

●​ Envisager des problèmes avec le dispositif de perfusion si la glycémie reste
élevée pendant une période prolongée sans raison claire. "En cas de doute,
remplacez-le.
- Se fier au Système de délivrance automatisée d’insuline et éviter les
interventions manuelles anodines.
- Programmer les bolus alimentaire 15 minutes avant les repas.
- Utiliser le mode activité physique 1 à 2 heures avant l'activité - bien que cela
ne soit pas pertinent pour le système iLet.
- Interrompre l'administration d'insuline si la pompe est déconnectée pendant
plus de 15 minutes.
- Répondre aux alarmes.
- Faire attention aux mises à jour automatiques sur les téléphones portables.
- Rechercher le soutien de pairs pour obtenir des conseils et partager des
expériences.
Examinons maintenant les points d'éducation spécifiques au système iLet :
-​ Le système iLet est conçu pour gérer automatiquement l'administration
d'insuline, l'utilisateur n'ayant plus qu'à saisir ses repas. Il n'intègre pas de
réglages de pompe ou d'options de bolus réglables par l'utilisateur. Il est
essentiel de ne pas intervenir, afin de permettre au système de s'adapter à
l'évolution des besoins en insuline et d'optimiser les doses de bolus des
repas.
-​ N'utilisez PAS les saisies de repas pour essayer d'obtenir plus d'insuline de
l'iLet en dehors des heures de repas ou pour corriger un taux de glucose
élevé. Cela perturberait l'adaptation du système et augmenterait le risque
d'hypoglycémie.
-​ Les annonces de repas doivent être faites juste avant le repas, en indiquant la
teneur en glucides du repas par rapport à la consommation habituelle de
l'utilisateur ("Habituel", "Supérieur" ou "Inférieur"). La plupart des repas
doivent être annoncés comme "Habituel". Chaque type de repas
(petit-déjeuner, déjeuner, dîner) est adapté indépendamment, ce qui signifie
que la quantité de glucides "habituelle" peut varier d'un repas à l'autre.
-​ Le choix du type de repas est basé sur les préférences de l'utilisateur, la taille
du repas étant déterminée par la teneur en glucides par rapport à l'apport
habituel. Les collations dont la teneur en glucides est similaire à celle des
repas doivent être repérées comme des repas.
-​ Lors de la première semaine d'utilisation de l'iLet, le fait d'espacer les repas
d'au moins 4 heures permet au système d'apprendre efficacement les doses
de repas.

-​ Ayez toujours sur vous un glucomètre pour saisir manuellement les valeurs
obtenues par prélèvement au doigt si le capteur tombe en panne de manière
inattendue.
-​ Veillez à ce que des capteurs de rechange soient facilement disponibles, car
le fait de ne pas remplacer un capteur dans les 2 à 3 jours entraîne l'arrêt de
l'administration d'insuline. Les utilisateurs doivent disposer d'un plan de
secours dans ce cas.
-​ Tous les trois mois, le système vous demandera de mettre à jour votre poids,
ce qui n'est nécessaire que si la différence est supérieure à 15 %.
-​ L'accès au Beta Bionics Cloud est limité aux Etats-Unis ; les utilisateurs
voyageant à l'étranger ne pourront pas télécharger de rapports.
En adhérant à ces directives éducatives, les utilisateurs peuvent optimiser les
avantages du système iLet pour une meilleure gestion du diabète. Faites confiance
aux capacités d'apprentissage continu du système et faites preuve de patience
pendant la période d'adaptation.
1.5 Spécificités du Capteur
La précision des valeurs du capteur est essentielle au bon fonctionnement d'un
système automatisé d'administration d'insuline. Si vous avez des doutes sur la
précision de la lecture de votre capteur, il est recommandé d'effectuer un test de
glycémie par prélèvement capillaire pour confirmation. Veillez à vous laver les
mains avant d'en effectuer. Si il y a un écart important entre la lecture du glucose
par le capteur et le résultat de votre prélèvement au doigt, vous pouvez envisager
de calibrer votre capteur Dexcom. Vous pouvez le faire via l'application Dexcom ou
via le dispositif iLet lui-même.
Cependant, il est important de procéder à l'étalonnage uniquement lorsque votre
glycémie est stable et se situe dans l'intervalle cible depuis quelques minutes.
L'étalonnage dans ces conditions permet d'obtenir des lectures plus précises du
capteur et d'améliorer les performances globales du système automatisé
d'administration d'insuline.
Les capteurs FreeStyle Libre 3 Plus sont étalonnés en usine et un étalonnage
manuel n'est pas nécessaire.
1.6 Suivi
Avec le système iLet, il est possible de partager les données d'insuline et de
glucose avec les prestataires de soins de santé et les membres de la famille.
L'application iLet Mobile se synchronise automatiquement avec l'iLet Cloud, et la

surveillance en temps réel pour un maximum de 10 membres de la famille et
soignants est disponible via l'application Bionic Circle.
Les professionnels de santé peuvent accéder aux données en se connectant au
portail Beta Bionics avec leur compte personnel.
Les membres de la famille peuvent également surveiller à distance les niveaux de
glucose grâce à l'application Dexcom Follow, à condition que l'utilisateur ait
également installé l'application Dexcom G6 ou G7.
Cette capacité à partager des données facilite une communication et une
collaboration efficaces entre les utilisateurs, les prestataires de soins de santé et les
membres de la famille, ce qui permet d'obtenir de meilleurs résultats en matière de
gestion du diabète.
2. Indications
Le pancréas bionique iLet, qui se compose de la pompe ACE iLet et du logiciel de
décision de dosage iLet, est autorisé par la FDA à être utilisé chez les personnes
atteintes de diabète de type 1 âgées d'au moins 6 ans. Une ordonnance est
nécessaire pour en procurer. Le système iLet est conçu pour être utilisé par un seul
patient et ne doit pas être partagé.
Le système est approuvé pour une utilisation avec Novolog et Humalog 100 U/ml et
avec les PumpCarts Fiasp.
Au moment de la création de ce module, le pancréas bionique iLet n'a pas été
approuvé en Europe.
Veuillez noter que l'utilisation du pancréas bionique iLet n'est autorisée ni en cas de
grossesse ni chez les personnes nécessitant une dialyse.
3. Mises à jour du logiciel
Les mises à jour du logiciel iLet peuvent être téléchargées sur l'application
smartphone iLet Mobile et transmises à l'iLet via une liaison Bluetooth.
La version du logiciel du dispositif iLet peut être vérifiée dans les réglages, lorsque
vous sélectionnez "À propos d'iLet".

En conclusion, le système iLet est un puissant système automatisé d'administration
d'insuline. Avec les bonnes attentes et une éducation claire, les utilisateurs peuvent
bénéficier d'un meilleur contrôle de la glycémie et acquérir une plus grande
confiance dans la gestion de leur diabète.
Il ne faut pas oublier qu'il faut un certain temps pour s'habituer à un système en
boucle fermée, comme le système iLet. Ne vous découragez pas si vous rencontrez
des difficultés ou des revers au début. Avec le temps et la persévérance, vous
parviendrez à utiliser le système de manière plus efficace.

3. Interconnecter les composants
Bienvenue dans cette vidéo d'instruction où nous allons explorer l’interconnection
des différents composants du système iLet. Allons-y !
Regardons d’abord comment le système iLet fonctionne :
- Toutes les 5 minutes, le capteur FreeStyle Libre 3 Plus, Dexcom G6 ou G7
mesure votre glycémie.
- Le capteur transmet ces valeurs de glucose au dispositif iLet. L'algorithme de
la pompe calcule la dose d'insuline appropriée et ajuste automatiquement
l'administration d'insuline en conséquence.
- Pour accéder aux données de la pompe, vous pouvez installer l'application
iLet Mobile sur votre smartphone, qui synchronisera automatiquement les
données avec le Beta Bionics Cloud.
- L'application Bionic Circle permet à la famille et aux soignants de suivre
l'utilisateur en temps réel.
- De plus, en installant l'application Dexcom G6 ou G7 sur votre smartphone,
vous pouvez facilement envoyer vos données à Dexcom Clarity et Dexcom
Share. Cela permet aux soignants de surveiller votre glycémie à l'aide de
l'application Dexcom Follow.
Dans cette vidéo, nous vous guiderons dans le processus d'établissement de ces
liens cruciaux. Plus précisément, nous aborderons les points suivants.
1.​ Connecter le capteur de glucose à l'appareil iLet.
2.​ Associer l'application mobile iLet à l'appareil iLet.

3.​ Créer un compte Beta Bionics et télécharger les données du capteur et de la
pompe, et
4.​ Utiliser l'application Bionic Circle en lien avec le système iLet.
Commençons donc par apprendre à établir ces connexions importantes au sein du
système iLet.
3.1 Connecter le capteur à l’appareil iLet
Avec l'appareil iLet, il est facile de relier le capteur à la pompe. Voici comment
procéder :
1. Accédez au menu de la pompe et sélectionnez "Dexcom sensor". Vous pouvez
facilement changer de type de capteur en appuyant sur Changer de capteur.
2. Choisissez "Démarrer le capteur" et suivez les instructions.
-​ Pour les capteurs FreeStyle Libre 3 Plus, vous devrez scanner le capteur avec
l'application iLet Mobile pour le démarrer. Veillez à ce que votre appareil iLet
soit d'abord couplé à l'application iLet Mobile.
-​ Pour les capteurs Dexcom G6, vous devrez relier l'émetteur Dexcom G6 à
l'aide du numéro de série de l'émetteur, et démarrer le capteur Dexcom G6 à
l'aide du code d'appairage du capteur.
-​ Les capteurs Dexcom G7 sont activés dès que vous les placez sur votre
corps. Il vous suffit de saisir le code d'appairage pour les connecter à votre
appareil iLet.
Si vous utilisez un capteur Dexcom, vous pouvez également le connecter à une
application Dexcom sur votre téléphone. Si vous avez déjà démarré le capteur avec
l'application Dexcom G6 sur votre téléphone, l'iLet Device récupérera les données
du capteur sans demander de code. Le Dexcom G7 nécessite la saisie du code.
En suivant ces étapes, vous pouvez relier avec succès le capteur Dexcom à l'appareil
iLet.
3.2 Associer l'application iLet Mobile à l'appareil iLet ?
L'application iLet Mobile est utilisée pour synchroniser vos données avec le Cloud
de Beta Bionics et permet les mises à jour logicielles de votre appareil iLet.

Voici les étapes à suivre pour coupler votre appareil iLet avec l'application iLet
Mobile sur votre téléphone :
-​ Téléchargez d'abord l'application iLet Mobile sur votre smartphone
compatible. Vous pouvez scanner le code QR sur le site web de Beta Bionics
ou rechercher l'application iLet Mobile dans votre Google Play Store ou
Apple App Store. Il faut noter que l'application n'est disponible qu'aux
États-Unis et pour les appareils et versions logicielles compatibles. Une liste
des appareils et des versions logicielles compatibles est disponible sur le site
Web de Beta Bionics ou en appelant le service d'assistance à la clientèle de
Beta Bionics.
-​ A l'ouverture de l'application, il vous sera demandé de créer un compte sur le
portail utilisateur de Beta Bionics. Suivez les instructions et entrez le code de
vérification envoyé à votre courriel.
-​ Ensuite, appuyez sur pour vous connecter à votre appareil iLet dans
l'application. Vous serez invité à saisir le code de couplage de votre appareil
iLet et l'application vous guidera tout au long du processus.
Une fois l'appairage réussi, vous verrez votre dispositif iLet lié dans votre
application iLet Mobile. Depuis l'appre, vous pouvez voir le niveau d'insuline et de
batterie de l'iLet, votre glycémie actuelle et sa tendance, ainsi que les dernières
heures de SCG et de dosage d'insuline. L'application télécharge aussi
automatiquement les données vers le Beta Bionics Cloud si l'application est ouverte
en arrière-plan.
Les cliniques peuvent utiliser un téléphone ou une tablette avec une application iLet
Mobile installée pour les utilisateurs qui n'ont pas de téléphone compatible afin de
télécharger les données de glucose et d'insuline et d'effectuer les mises à jour du
logiciel.
3.3 Créer un compte Beta Bionics et télécharger les données du capteur et de la
pompe
En tant qu'utilisateur, il vous sera demandé de créer un compte personnel sur le
portail utilisateur Beta Bionics lors de l'initialisation de l'application iLet Mobile.
En tant que prestataire de soins ou soignant, vous pouvez créer un compte
personnel sur le portail utilisateur Beta Bionics sur votre ordinateur. Ensuite, vous

pouvez commencer à suivre un utilisateur en saisissant le numéro de série du
dispositif iLet, le prénom et le nom de l'utilisateur, votre relation avec l'utilisateur et
la date de naissance de l'utilisateur. Cela vous permettra d'accéder aux données et
aux rapports iLet du patient.
Il faut noter que les professionnels de santé et les soignants ne peuvent consulter
les données de l'appareil iLet que si l'utilisateur a téléchargé et lié l'application
mobile iLet, et qu'il garde l'application ouverte pour que les données soient
transférées dans le nuage.
3.4 Utiliser l'application Bionic Circle en lien avec le système iLet
Lorsque vous utilisez le système iLet, vous pouvezinviter des membres de votre
famille ou des soignants à suivre vos niveaux de glucose, vos alertes et plus encore
en temps réel.
-​ Allez dans Mon cercle sur l'application iLet Mobile et appuyez sur le bouton
Inviter pour ajouter quelqu'un.
Remplissez le nom et l'email de l'aidant et appuyez sur Envoyer l'invitation.
Dans le menu Mon cercle de votre application iLet Mobile, vous pouvez consulter
votre statut de partage actuel, interrompre le partage et gérer les personnes qui
vous suivent.
La création de liens entre les différents composants du système iLet est une étape
importante dans la mise en place du système automatisé d'administration
d'insuline. Même si le processus est généralement simple et fluide, il peut arriver
que vous rencontriez des difficultés ou des problèmes techniques. N'oubliez pas que
vous n'avez pas à traverser cette épreuve seul. Si vous rencontrez des difficultés ou
si vous avez besoin d'aide, n'hésitez pas à demander du soutien. Vous pouvez
rejoindre le groupe d'entraide Facebook des utilisateurs d'iLet ou entrer en contact
avec d'autres personnes qui utilisent le système. Ensemble, vous pouvez partager
vos expériences, demander des conseils et trouver des solutions. Rappelez-vous
que la résilience vient en cherchant de l'aide et en construisant une communauté de
soutien autour de vous.

4. Le fonctionnement du système iLet
Bienvenue dans cette vidéo qui explique le fonctionnement du système iLet.
Le système iLet a deux modes de fonctionnement principaux : Le mode CGM, ou
surveillance continue du glucose, et le mode BG-Run, ou mode “glycémie capillaire”.
Contrairement à d'autres systèmes à boucle fermée, l'iLet ne dispose d'aucun
réglage de pompe programmé, tel que les débits basaux, les ratios de glucides ou
les facteurs de correction. Il n'y a donc pas de mode manuel sur le système iLet.
-​ Le mode CGM est le mode automatique standard tel que nous le connaissons
avec d'autres systèmes à boucle fermée.
-​ Le mode BG-Run est une façon plus prudente d'automatiser l'administration
d'insuline, lorsque les valeurs du capteur ne sont pas disponibles. Il est basé
sur les valeurs de glycémie obtenues par prélèvement capillaire.
Examinons les deux modes en détail.
