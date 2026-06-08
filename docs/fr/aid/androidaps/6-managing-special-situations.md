<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q_PD_A2tOqTiWCx9oozwkHq&index=5" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>6. Leçon 6</u>**

6.1 Hypoglycémie
Avec un système en boucle fermée comme AndroidAPS, vous avez souvent besoin
de moins de glucides pour traiter l'hypoglycémie par rapport à la gestion
traditionnelle du diabète, en particulier lorsque vous avez peu d'insuline à bord.
AndroidAPS vous permet de voir votre insuline sur l'écran d'accueil, et vous pouvez
également voir un graphique supplémentaire de l'activité de l'insuline. Si vous
n'avez pas reçu d'insuline au cours des dernières heures, une petite dose de
glucides est généralement suffisante.
Il est recommandé de saisir les glucides que vous consommez pour traiter ou
prévenir l'hypoglycémie dans l'algorithme à l'aide du bouton [Glucides]. Cela permet
à l'algorithme de prendre en compte les glucides lors du calcul des besoins en
insuline, et vous ne recevrez généralement de l'insuline qu'en cas de besoin.
Pour éviter d'autres épisodes d'hypoglycémie, vous pouvez effectuer des
ajustements dans le système AndroidAPS afin de réduire l'administration d'insuline.
Pour ce faire, une première option serait d’utiliser la valeur cible temporaire pour
l'activité ou pour l'hypoglycémie. Le réglage par défaut de la cible Activité est de

140 mg/dl ou 7,8 mmol/l pendant 90 minutes, et le réglage par défaut de la cible
Hypo est de 160 mg/dl ou 8,9 mmol/l pendant 60 minutes.
Vous pouvez également choisir de réduire le pourcentage de libération d'insuline
dans votre profil. N'oubliez pas que si vous réduisez votre profil de 50 % par
exemple, cela ne réduira pas seulement votre débit d'insuline basal, mais rendra
également votre rapport glucidique et votre réactivité à l'insuline 50 % moins
agressifs.
Il est important de noter que dans certains cas, l'algorithme peut augmenter
l'insuline basale même lorsque le taux de glucose est bas. Cela peut être nécessaire
si le taux de glucose prédit est plus élevé que la valeur cible. Dans la majorité des
cas, AndroidAPS est précis dans ses prédictions.
6.2 Hyperglycémie
En cas d'hyperglycémie légère, il est généralement recommandé de faire confiance
à AndroidAPS et de laisser fonctionner le système. Toutefois, vous pouvez
envisager d'administrer un bolus de correction manuel à l'aide du calculateur de
bolus sans saisir de glucides.
Pour remédier à l'hyperglycémie, vous pouvez aussi augmenter le pourcentage
d'administration d'insuline dans votre profil ou fixer temporairement une valeur
cible plus basse.
En cas d'hyperglycémie sévère et prolongée, il faut considérer la possibilité d'un
problème avec le dispositif de perfusion. En cas de doute, il est conseillé de changer
de dispositif de perfusion ou de pod. Le mantra est le suivant : "En cas de doute,
changez-le".
Il faut s'assurer que l’on dispose de suffisamment de matériel pour effectuer toutes
les substitutions et tous les remplacements nécessaires. Il est essentiel de disposer
des fournitures nécessaires pour gérer efficacement l'hyperglycémie et maintenir le
bon fonctionnement de votre système AndroidAPS.
6.3 Repas riches en graisses
Lorsque vous consommez un repas riche en graisses pendant l'utilisation
d'AndroidAPS, plusieurs approches sont recommandées :

1. Ne saisissez que 70 % de la portion de glucides, ce qui permet à l'algorithme de
prendre en compte la portion restante. Une autre approche consiste à définir un
profil temporaire plus élevé, par exemple 130 % pendant 2 à 3 heures afin de tenir
compte d’un repas qui est absorbé plus lentement.
2. Une autre option consiste à administrer le bolus en deux parties. Par exemple,
vous pouvez administrer 50 % de la dose d'insuline avant le repas et les 50 %
restants 2 heures plus tard. Dans AndroidAPS, vous avez le choix de programmer
des bolus à l'avenir en utilisant l’assistant bolus ou l’écran [Carb].
Si vous utilisez l’assistant bolus, vous pouvez spécifier l'heure à laquelle vous
souhaitez que votre bolus de repas soit administré. Vous pouvez également utiliser
l’écran [Carb] pour entrer les glucides et l'heure à laquelle vous souhaitez que
l'algorithme prenne en compte ces glucides. Si vous utilisez l’écran [Carbs],
AndroidAPS n'administrera de l'insuline que si nécessaire.
3. En outre, lorsque vous saisissez des glucides à l'aide du raccourci [Carbs], vous
pouvez la possibilité de sélectionner un temps d'absorption plus long pour ces
glucides. Si vous utilisez cette fonction d'allongement de la durée d'absorption des
glucides, vous pourrez voir les glucides futurs dans l'écran d’accueil.
Il est important de noter que les réactions individuelles aux repas riches en graisses
peuvent varier. Il peut donc être utile d'expérimenter différentes approches et de
surveiller étroitement votre glycémie afin de trouver la stratégie la plus efficace
pour gérer votre taux de sucre dans le sang au cours de ces repas.
6.4 Exercice
Lorsque vous participez à des activités physiques avec AndroidAPS, il est conseillé
de mettre en œuvre les stratégies suivantes :
1. Fixer une cible temporaire plus élevée pendant l'exercice pour réduire le risque
d'hypoglycémie. Comme indiqué dans le module général sur les systèmes
automatisés d'administration d'insuline, la réduction du bolus du repas peut
également être bénéfique.

2.

Dans Android APS, vous avez la possibilité de désactiver le SMB

(supermicrobolus) lors de l'utilisation d'une valeur cible plus élevée. Cela permet
une administration d'insuline plus conservatrice pendant l'exercice.
3. Vous pouvez également créer dans AndroidAPS un profil basal spécialement
conçu pour le sport. Ce profil doit intégrer des débits d'insuline basaux plus faibles
et une réactivité accrue à l'insuline pour tenir compte de l'impact de l'activité
physique.
4. Profitez des capacités d'intégration d'AndroidAPS en connectant votre
application de capteur dédiée à une smartwatch ou à un compteur de vélo. Cela
permet de surveiller facilement les taux de glucose et les données de tendance
pendant l'exercice.
Il est important de se rappeler que ces recommandations servent de point de départ
et que des ajustements peuvent être nécessaires en fonction des réponses
individuelles à l'exercice. Un suivi régulier, un bon sens d’auto-observation, et une
collaboration avec les professionnels de santé aideront à affiner le dosage de
l'insuline et à atteindre une gestion optimale de la glycémie pendant l'activité
physique avec AndroidAPS.
6.5 Maladie
Il est généralement recommandé de laisser AndroidAPS en mode Auto ou en mode
Boucle en cas de maladie, sauf avis contraire d’un professionnel médical.
Veuillez vous référer aux directives relatives à la maladie présentées dans le
module général sur les systèmes automatisés d'administration d'insuline.
6.6 Alcool
Lorsque l'on consomme de l'alcool tout en utilisant AndroidAPS, il est important de prendre certaines précautions pour éviter l'hypoglycémie. Voici quelques
recommandations :
Vous pouvez ajuster votre valeur cible à un niveau plus élevé que d'habitude, ou
définir un % plus bas de votre profil d'insuline , lorsque vous consommez de l'alcool.
Cela permet d'éviter que le système n'administre trop d'insuline en réponse à une
augmentation du taux de glucose.

Il convient de noter que le simple fait de consommer davantage de glucides n'est
pas une stratégie efficace pour prévenir l'hypoglycémie, étant donné que le système
compensera toute hausse de la glycémie en augmentant l'administration d'insuline.
Surveillez toujours votre glycémie de près lorsque vous consommez de l'alcool et
soyez prêt à procéder à d'autres ajustements si nécessaire.
6.7 Voyages
Lorsque vous voyagez avec AndroidAPS, il est important d'être préparé et de
prendre en compte certains facteurs spécifiques. Voici quelques considérations pour
les voyages :
1. Assurez-vous d'avoir suffisamment de fournitures pour votre traitement du
diabète, notamment de l'insuline, des sets de perfusion, des capteurs, des
bandelettes réactives, et des dispositifs de secours pour toute la durée de votre
voyage. Il est toujours préférable d'avoir du matériel supplémentaire en cas
d'imprévu.
2. Lorsque vous voyagez en avion, vous devrez peut-être faire quelques
ajustements. N’oubliez pas les points suivants :
-​ Les connexions Bluetooth de votre smartphone, de votre pompe, et de votre
émetteur peuvent généralement rester activées lors du vol. Toutefois,
certaines compagnies aériennes exigent que les passagers mettent leur
smartphone en mode avion pendant le décollage et l'atterrissage.
Lorsque le smartphone est en mode avion, la pompe passe au débit
d'insuline basal préréglé. N'oubliez pas de désactiver le mode avion une fois
qu'il est autorisé afin de rétablir le fonctionnement normal de l'application et
du système en boucle fermée.
-​ Pendant le vol, la connectivité du Wi-Fi et du réseau 4G de la carte SIM ne
sera pas disponible. Cela ne devrait pas affecter le fonctionnement de
l'application AndroidAPS car elle continuera à fonctionner parfaitement avec
sa connexion Bluetooth. Cependant, les données ne seront pas transmises à
Nightscout tant que vous n'aurez pas retrouvé une connexion internet stable.

-​ L'application AndroidAPS détecte les changements de fuseau horaire
automatiquement et ajuste l'heure en conséquence, bien qu'en fonction de la
pompe et de la configuration du SGC, les sauts dans le temps peuvent
entraîner des problèmes.
-​ Il est conseillé de vérifier les réglages de l'heure dans l'application après être
arrivé à destination afin de garantir l'exactitude des données enregistrées.

N'oubliez pas de toujours respecter les règlements et directives des compagnies
aériennes concernant l'utilisation d'appareils électroniques, et d'informer le
personnel de la compagnie aérienne que vous portez un dispositif médical tel
qu'une pompe à insuline.
En prenant les précautions nécessaires et en planifiant suffisamment à l'avance,
vous pouvez profiter de votre voyage tout en assurant le fonctionnement continu de
votre système AndroidAPS.
Dans cette vidéo, nous avons discuté de la manière de gérer des situations
particulières telles que l'hypo et l’hyperglycémie, les repas riches en graisses,
l'exercice, la maladie, l'alcool et les voyages avec AndroidAPS. Nous avons donné
des recommandations et des stratégies pour faire face à ces situations de manière
efficace. Vous vous en sortez ! N'oubliez pas que les réactions individuelles peuvent
varier, c'est pourquoi l'expérimentation et le suivi sont essentiels. La recherche de
soutien auprès de la communauté Android APS et des prestataires de soins de
santé est également utile.
En maximisant l'AndroidAPS et en se connectant avec des pairs, les individus
peuvent naviguer dans ces situations et améliorer leur gestion du diabète de
manière efficace.
