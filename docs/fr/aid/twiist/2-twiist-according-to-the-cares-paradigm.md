<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q_gnTca_00i3QZ0FxhjjBe-&index=1" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. Le système twiist AID selon le paradigme CARES</u>**

Dans cette partie du module, nous examinerons le système twiist AID selon le
paradigme CARES.
Nous aborderons la manière dont twiist calcule et ajuste l'administration
automatisée d'insuline, que faire si le système reprend le mode manuel, les points
d’éducation importants à retenir, la manière dont le système interagit avec son
capteur compatible, et la façon dont les données peuvent être suivies par votre
équipe soignante. Enfin, nous passerons en revue ses indications officielles et la
manière dont les mises à jour sont gérées. C'est parti !

2.1 twiist AID selon le paradigme CARES
#1 Calcul
L'algorithme twiist Loop ajuste le débit basal d'insuline prédéfini toutes les 5
minutes, en fonction des prévisions glycémiques pour les 6 heures à venir. Ces
prévisions sont calculées à partir de plusieurs facteurs :
-​ La prédiction [Carbs On Board] (ou glucides actifs) estime l'effet des glucides
consommés sur le taux de glucose à l'aide d'un modèle dynamique
d'absorption des glucides ;
-​ La prédiction [Insulin On Board] (ou insuline active) tient compte de l'impact
de l'insuline déjà présente dans l'organisme ;
-​ La prédiction du momentum glycémique tient compte du taux moyen de
variation des taux de glucose entre la mesure actuelle et celle effectuée il y a
15 à 30 minutes ; et
-​ La prédiction de correction rétrospective tient compte de la différence entre
les niveaux de glucose prédits et réels au cours des 30 dernières minutes.
-​
Toutes les 5 minutes, l'algorithme twiist Loop calcule les besoins en insuline en
comparant le taux de glucose prévu avec le taux de glucose cible, puis divise la
différence par le facteur de sensibilité à l'insuline. Ces besoins en insuline sont
utilisés pour calculer un débit basal temporaire pour les 30 minutes suivantes et
permettent d'ajuster en continu le débit basal.
Dans l'application twiist, la valeur cible de glycémie, appelée « plage de correction »,
peut être personnalisée pour chaque tranche horaire de 30 minutes et réglée entre
87 et 180 mg/dL, soit 4,8 et 10 mmol/L.
Si le taux de glucose devrait descendre en dessous de la limite de sécurité au cours
des 3 prochaines heures, l'administration d'insuline basale est suspendue afin de
prévenir l'hypoglycémie. Cette limite de sécurité peut être réglée entre 67 et 110
mg/dl ou 3,7 et 6,1 mmol/l.
#2 Ajustement
Avec twiist, les utilisateurs et leurs professionnels médicaux peuvent personnaliser
une large gamme de paramètres, notamment :

●​ La plage de correction – il est recommandé de commencer avec une plage de
correction comprise entre 100 et 115 mg/dl ou 5,6 et 6,4 mmol/ll
- Un préréglage pré-repas et un préréglage entraînement, qui seront abordés
prochainement.
- Les débits basaux – réglables par intervalles de 30 minutes
- Les ratios glucidiques et facteurs de sensibilité à l'insuline – adaptés à vos
besoins spécifiques.
- Le modèle d’insuline - bien que la durée d'action de l'insuline soit fixée à 6
heures, il est possible de choisir un modèle d'insuline qui détermine le
moment où l'action de l'insuline atteint son pic.
- La limite de sécurité du glucose peut également être personnalisée.
Cependant, il est recommandé de la fixer à 75 mg/dl ou 4,2 mmol/l pour les
adultes et à 80 mg/dl ou 4,4 mmol/l pour les enfants.
- Les limites d’administration, en particulier le débit basal maximal, constituent
un levier important pour l'agressivité de l'algorithme Twiist Loop. Il est
recommandé de commencer avec un débit basal maximal correspondant à 3
ou 4 fois le débit basal programmé le plus élevé, puis de l'ajuster selon les
besoins.
Le système twiist AID propose également deux cibles glycémiques dédiées :
-​ Le préréglage d'entraînement avec une plage cible de glycémie plus élevée
pour prévenir l'hypoglycémie pendant l'exercice. Il est recommandé de le
régler entre 150 et 170 mg/dl ou 8,3 et 9,4 mmol/l.
-​ Le préréglage pré-repas avec une plage cible de glycémie plus basse est
utilisé pour prévenir l'hyperglycémie post-prandiale. Il est recommandé de le
régler entre 80 et 100 mg/dl ou 4,4 et 5,6 mmol/l.
De plus, vous avez toujours la possibilité de désactiver Loop et d'utiliser un débit
basal temporaire pour ajuster votre administration d'insuline à vos besoins.
Ces réglages vous offrent une certaine flexibilité tout en garantissant que twiist
continue à fonctionner en arrière-plan en toute sécurité.
#3 Revenir
Loop s'éteindra ou repasse en mode manuel s'il n'y a pas de connexion avec le
capteur pendant plus de 15 minutes. Cela se produit également lorsque le capteur
est en phase de préchauffage. L'icône Loop deviendra rouge et votre administration

d'insuline basale reviendra à votre débit basal programmé jusqu'à ce que les
valeurs CGM soient disponibles ou qu'une glycémie capillaire soit saisie
manuellement.
Lorsque Loop est désactivé ou en « mode manuel », vous disposez toujours de
nombreuses fonctionnalités de la pompe.
-​ Votre insuline basale est administrée selon votre débit basal programmé, ou
vous pouvez définir un débit basal temporaire.
-​ Vous pouvez administrer un bolus d'insuline à l'aide du calculateur de bolus
intégré.
-​ Et vous pouvez utiliser le bouton bolus sur la pompe pour administrer un
bolus d'insuline si cette fonction est activée.
Lorsque la pompe twiist et l'application ne sont pas connectées ou que votre iPhone
est éteint, les fonctionnalités suivantes restent disponibles :
-​ Lorsque la fonction Loop est activée, le système twiist AID continue d'ajuster
l'administration basale en fonction des informations fournies par votre CGM.
-​ Lorsque la boucle est désactivée, le système twiist AID continue à
administrer l'insuline basale programmée.
-​ Les bolus à un seul bouton peuvent également toujours être administrés
(lorsque cette option est activée dans les paramètres).
#4 Éducation
Une formation adéquate est essentielle avant de commencer à utiliser un système
automatisé d'administration d'insuline. Pour obtenir des informations générales,
veuillez vous reporter au module générique.
Les conseils généraux abordés étaient les suivants :
- Consommez moins de glucides pour corriger l'hypoglycémie.
- Considérez des problèmes liés au kit de perfusion si le taux de glycémie reste
élevé sans raison apparente.
- Fiez-vous au système AID et évitez les interventions manuelles inutiles.
- Prévoyez les bolus repas avant les repas.
- Passez en mode Exercice 1 à 2 heures avant l'activité physique.
- Arrêtez l'administration d'insuline si la pompe est déconnectée pendant plus
de 15 minutes.
- Réagissez aux alarmes.

●​ Et recherchez le soutien de vos pairs pour obtenir des conseils et partager
vos expériences.
Voici quelques points supplémentaires spécifiques à l'utilisation du système twiist
AID :
- Portez votre pompe et votre CGM du même côté de votre corps afin de
minimiser les erreurs de communication. Le logo twiist sur la pompe doit être
tourné vers l'extérieur.
- Veillez à ce que votre iPhone soit toujours chargé et à portée Bluetooth de
votre pompe.
- Activez les notifications et les alertes critiques dans les paramètres de votre
iPhone afin de recevoir les notifications de l'application twiist.
- Ne fermez pas l'application twiist et laissez-la ouverte en arrière-plan. Si
l'application twiist est fermée, l'administration d'insuline se poursuit, mais
vous ne recevrez plus d'alertes ni de mises à jour de statut.
- Profitez du préréglage « Pré-repas » avant les repas.
- N'utilisez pas la pompe lorsque vous nagez ou prenez un bain. L'immersion
de la pompe dans l'eau peut entraîner son dysfonctionnement.
Pour les personnes habituées à une boucle fermée à faire soi-même (ou DIY Loop)
et qui passent au système twiist AID, il est important de savoir que l'algorithme
twiist Loop est une version antérieure de l'algorithme DIY Loop :
-​ Il ne propose pas de fonctions de remplacement, de profils, de bolus
automatique, de personnalisations ni d'expérimentations algorithmiques.
-​ Il n'y a pas de connexion à Nightscout; il est donc impossible pour le soignant
de suivre les alarmes ou de donner des commandes à distance.
Cependant, contrairement aux systèmes DIY, twiist est approuvé par la FDA, fournit
des mises à jour automatiques, et bénéficie d'une assistance certifiée par des
formateurs et d'un service client disponible 24h/24 et 7j/7, vous garantissant ainsi
une aide en cas de difficulté.

#5 Capteur
Au moment de la création de ce cours, le système twiist AID n'est compatible
qu'avec le capteur FreeStyle Libre 3 Plus.
Le capteur FreeStyle Libre 3 Plus ne peut être utilisé qu'avec l'application twiist, et
non avec l'application FreeStyle Libre 3 ou le capteur Libre 3. Cela signifie que les
valeurs ne seront pas transmises à LibreView et ne pourront pas être partagées via
LibreLinkUp.
Si vous avez des doutes quant à la précision des mesures de votre capteur ou si
vous estimez qu'elles ne sont pas indicatives de votre état, effectuez un test par
ponction capillaire pour confirmer. Si vous constatez un écart important, par
exemple une différence de plus de 20 % entre les mesures du capteur et celles
obtenues par prélèvement capillaire, même lorsque votre glycémie est stable dans
la plage cible, il est conseillé de désactiver la boucle jusqu'à ce que le problème soit
résolu. Si nécessaire, remplacez le capteur pour résoudre le problème.
#6 Suivi
Les données provenant de twiist peuvent être téléchargées en toute simplicité vers
Tidepool, où vous et votre équipe soignante pouvez suivre des rapports sur
l'administration d'insuline, les tendances glycémiques, les glucides et les
paramètres.
Votre famille et vos proches peuvent utiliser l'application insiight pour vous suivre
en temps réel. Cependant, au moment où nous rédigeons ce cours, l'application
insiight ne propose pas d'alertes, ce qui peut constituer un inconvénient majeur pour
les soignants.
2.2 Indications
Le système twiist AID est approuvé par la FDA pour les personnes diabétiques
âgées de 6 ans et plus qui ont besoin d'insuline. Il est destiné à un usage
domestique par un seul patient et nécessite une ordonnance.
Le système est compatible avec les insulines Humalog, Novolog ou Novorapid
U100. Certaines personnes utilisent Fiasp ou Lyumjev sans complication malgré
l’absence d’autorisation.

Notez que le système twiist AID ne dispose pas actuellement du marquage CE et
qu'il n'est pas indiqué pour les femmes enceintes, les personnes sous dialyse ou les
personnes gravement malades.
Le système twiist AID dépend entièrement d'un iPhone (avec iOS 18 ou supérieur).
Une version Android et une version sur récepteur pourraient être disponibles dans
le futur.
2.3 Mises à jour logicielles
Contrairement aux systèmes AID open source qui nécessitent des reconstructions
manuelles, twiist bénéficie automatiquement des mises à jour via l'App Store et les
versions officielles du micrologiciel.
Il est recommandé d'activer les mises à jour automatiques sur votre iPhone afin de
toujours disposer de la dernière version du logiciel Apple. Lorsque des mises à jour
de l'application twiist sont disponibles, elles peuvent être installées directement sur
votre iPhone depuis l'App Store d'Apple.
Cela vous garantit de toujours bénéficier des dernières améliorations et
fonctionnalités en matière de sécurité, sans avoir à effectuer de travaux techniques.
Vous comprenez désormais comment fonctionne le système twiist AID dans le
cadre du paradigme CARES, ainsi que ses indications approuvées et ses mises à
jour logicielles automatiques qui le maintiennent à jour et sécurisé.
Dans la prochaine vidéo, nous nous appuierons sur ces bases pour vous montrer
comment relier tous les composants du système et utiliser le système twiist AID
dans des situations réelles.
