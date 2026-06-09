<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q_PD_A2tOqTiWCx9oozwkHq&index=3" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>4. Fonctionnement de l'AndroidAPS</u>**

Bienvenue dans cette vidéo sur les fonctionnalités de l'AndroidAPS.

La gestion de l'administration d'insuline avec l’AndroidAPS s'effectue via l'application AndroidAPS sur un smartphone Android. Pour utiliser pleinement ses fonctionnalités, les utilisateurs doivent d'abord remplir 10 objectifs imposés. L'application propose quatre modes de fonctionnement différents : Closed Loop, ou mode automatique, Boucle ouverte et Suspension en cas de glycémie basse. La boucle peut également être désactivée, ce qui donne une sorte de mode manuel. En boucle fermée ou en mode automatique, Android APS ajuste automatiquement l'administration d'insuline toutes les 5 minutes en fonction des relevés de glycémie du capteur en temps réel. En boucle ouverte, les suggestions d'ajustement de l'insuline basale doivent être confirmées manuellement. Dans cette capsule vidéo, nous allons découvrir les fonctionnalités de l'application Android APS en général, la complétion des 10 objectifs, et explorer comment vous pouvez utiliser l'application Android APS à la fois en mode automatique et en mode manuel.

### 4.1 Application AndroidAPS

Lorsque vous ouvrez l'application AndroidAPS, vous vous trouverez à l'écran d'accueil. Passons en revue les différentes sections de l'écran d'accueil de A à H.

- Dans le coin supérieur gauche, vous trouverez l'icône du menu qui vous permettra d'accéder à divers paramètres et options ;

- À côté du menu hamburger, vous trouverez les onglets correspondant aux différentes sections de l'application.

- À l'extrême droite, un autre icône de menu à trois points permet d'accéder aux paramètres avancés, aux traitements, à l'historique, à l'assistant de configuration, aux statistiques, et aux informations sur la version de l'application.

- Dans la section B de l'écran d'accueil de l'application AndroidAPS, vous trouverez les boîtes de profil et de cible :

- La boîte de profil est située sur le côté gauche. Elle affiche le nom de votre profil actuel ou le nombre d'unités d'insuline basale, en fonction de votre configuration. ▪ Une pression prolongée sur la boîte de profil vous permet de changer de profil ou d'ajuster le pourcentage de votre profil actuel. ▪ L'ajustement du pourcentage dans votre profil n'affecte pas seulement votre insuline basale, mais ajuste également votre ratio de glucides et votre facteur de sensibilité à l'insuline.

- La case de la cible est située sur le côté droit. Elle affiche la valeur cible actuelle ou l'intervalle cible pour les taux de glucose. ▪ En appuyant sur la case cible, vous pouvez définir une valeur cible temporaire, qui peut être utilisée pour moduler l'administration d'insuline. ▪ Vous pouvez également activer des objectifs temporaires prédéfinis pour des situations spécifiques telles que Repas Imminent, Activité, ou Hypo. ▪ Si la fonction Autosens est activée et qu'il est permis d'ajuster la valeur cible, le bouton de la valeur cible devient vert pour indiquer les ajustements de la valeur cible.

- La section du capteur de glycémie affiche les valeurs actuelles de votre glycémie. La couleur des valeurs indique si elles se situent dans la plage cible ou non.

- Les triangles rouges et jaunes indiquent des problèmes d'importation de données de capteurs.

- Un triangle rouge indique un problème critique où des valeurs de capteur en double sont reçues, par exemple à la fois du xDrip et de Nightscout. Ce problème doit être résolu avant que la fonctionnalité de boucle fermée puisse être réactivée.

- Un triangle jaune est un avertissement signifiant que certaines valeurs du capteur sont manquantes. Cela peut se produire lors de l'utilisation d'un capteur Libre en combinaison avec d'autres problèmes liés au capteur. À moins qu'il ne se produise en même temps que d'autres problèmes importants, cet avertissement peut généralement être ignoré.

- L'indicateur

d'état de la boucle à droite représente le mode de

fonctionnement actuel du système automatisé d'administration d'insuline. Voici les différents états et leurs couleurs. Appuyer sur l'icône d'état de la boucle vous permet de modifier manuellement le mode si nécessaire.

- La section suivante indique l'insuline embarquée, les glucides embarqués, glucides demandés, le taux d'insuline basal et l'état d’Autosens.

- En appuyant sur les valeurs, vous obtiendrez des informations plus détaillées sur la répartition de l'insuline et des glucides à bord.

- Notez que la valeur IOB, ou Insulin On Board - Insuline embarquée, est divisée entre l'insuline basale et l'insuline de bolus. L'insuline basale embarquée peut être négative si l'algorithme a réduit le débit d'insuline basal prédéfini. Si l'insuline embarquée est souvent négative, cela peut indiquer que le débit d'insuline basale est trop élevé et qu'il doit être ajusté.

- L'icône Autosens affiche des flèches si elle est active, et une croix si elle est inactive. Lorsqu'elle est activée, les ajustements en pourcentage du taux d'insuline basal et de la sensibilité à l'insuline sont affichés sous l'icône. Lorsque la sensibilité dynamique est sélectionnée, les réglages ISF actuels s'affichent également.

- La section suivante affiche des icônes d'état relatives à votre pompe à insuline et à votre capteur de glucose, telles que le temps depuis la dernière perfusion ou le dernier changement de Pod, les unités d'insuline restantes, et la durée de vie du capteur.

- Le graphique du CGM montre vos taux de glucose au fil du temps, la zone verte indiquant la plage cible.

- L'échelle du graphique et les options graphiques supplémentaires peuvent être ajustées à l'aide de la flèche située en haut à gauche et droite.

- La ligne jaune représente l'activité de l'insuline et les triangles bleus indiquent les microbolus.

- La sections suivante affiche des graphiques supplémentaires facultatifs, tels que l'insuline absolue, l'insuline embarquée, les glucides embarqués, les écarts et la réactivité.

- Vous pouvez choisir les graphiques à afficher à l'aide de la flèche située en haut à droite du graphique du capteur.

- Les boutons d'action de la dernière section vous permettent d'effectuer diverses actions liées à l'insuline et aux glucides.

- Le bouton d'action de l'insuline permet l'administration manuelle d'un bolus ou d’enregistrer un bolus administré à l'aide d'un stylo à insuline.

- Le bouton d'action des glucides vous permet d'entrer des glucides sans bolus. La durée permet facultativement d'indiquer la vitesse d'absorption de ces glucides. Par exemple, 1 heure pour les sucres rapides, 2 heures pour une absorption moyenne, et 3 heures pour un grand repas, comme une pizza.

- Le bouton Calculateur de bolus, ou Assistant bolus calcule un bolus d'insuline en fonction du nombre de glucides et du taux de glucose actuel.

- Vous pouvez administrer seulement un pourcentage du bolus calculé et choisir de prendre en compte ou non la tendance glycémique.

- Vous pouvez consulter le calcul détaillé et voir les facteurs pris en compte par l'assistant Bolus.

- Sous Carb Time, vous pouvez indiquer si vous comptez consommer des glucides plus tard, ou si vous avez eu un repas. Vous pouvez programmer une alarme de rappel pour l'heure de repas prévue.

- Dans les paramètres avancés, il existe une fonction Super Bolus qui apparaît dans l’Assistant Bolus lorsqu'elle est activée. Elle combine l'insuline basale prévue pour les 2 heures suivantes avec le bolus au moment du repas. Au cours des 2 heures suivantes, aucune insuline basale ne sera administrée. L'objectif est d’administrer plus d'insuline en moins de temps afin de minimiser l'hyperglycémie post-prandiale. Cependant, il convient d'être prudent car cela peut augmenter le risque d'hypoglycémie. Outre l'écran d'accueil, d'autres onglets sont disponibles dans l'application, notamment l’écran Actions, le type d'insuline utilisée, l’écran d’état de la pompe, l’écran LOOP, l’écran OpenAPS, le profil, l’automatisation, NSClient et votre source BG.. Ces onglets permettent d'accéder à des informations et fonctionnalités spécifiques liées à AndroidAPS. Vous pouvez choisir les onglets affichés ici via le configurateur dans le menu hamburger. En naviguant dans ces onglets et sections, vous pouvez gérer efficacement votre diabète à l'aide de l'application AndroidAPS. Via l'option de menu Traitements, accessible via l’icône de trois points, vous pouvez surveiller plus en détail les traitements et les actions d'AndroidAPS.

### 4.2 Complétion des 10 objectifs

Pour passer l’AndroidAPS en boucle fermée ou en mode automatique, un utilisateur doit compléter 10 objectifs. Ces objectifs aident à familiariser avec l'application et à passer progressivement à l'administration automatisée d'insuline. Il faut généralement environ deux mois pour atteindre tous les objectifs. La réalisation de ces objectifs vous permet de vous familiariser avec l'algorithme AndroidAPS et d'optimiser progressivement vos paramètres. Cela demande de la patience et une volonté d'expérimenter et d'apprendre de la communauté en ligne. Il est important de profiter de cette période initiale pour affiner votre insuline basale, votre ratio glucidique et votre facteur de réactivité à l'insuline. Une fois les objectifs atteints et les paramètres optimisés, vous disposerez d'un système automatisé d'administration d'insuline plus stable et nécessitant moins de réglages. Il s'agit d'un processus qui est complexe au départ, mais qui offre la possibilité d'améliorer la gestion du diabète sans avoir à recourir en permanence à une intervention manuelle. Il est impératif que les utilisateurs exportent régulièrement les paramètres d’AndroidAPS via le menu de maintenance de l'application et qu'ils stockent une copie des exportations récentes des paramètres en lieu sûr. Le fichier d'exportation contient non seulement tous les paramètres, mais aussi les objectifs nécessaires au fonctionnement en mode automatisé. En cas d'urgence, le fichier d'exportation est le seul moyen de restaurer AndroidAPS et de permettre la reprise d’un fonctionnement normal.

### 4.3 Closed Loop (Mode Automatique)

Démarrage du Mode Automatique Dans l'application AndroidAPS, vous pouvez activer le mode automatique en appuyant sur l'icône de la boucle depuis l'écran d'accueil. Cependant, avant d'activer le mode automatique, il est important de s'assurer que la pompe et le capteur sont correctement appariés et que tous les objectifs nécessaires ont été atteints. Lorsque le mode automatique est activé, l'indicateur de mode sur l'écran d'accueil devient vert, ce qui indique que le système procède à des ajustements automatiques de l'insuline basale. Vous pouvez également suivre ces ajustements sur l'écran d'accueil. Si vous souhaitez vérifier les calculs à l'origine des ajustements, vous pouvez accéder aux onglets Loop ou OpenAPS. Cible prédéfinie Dans AndroidAPS, vous pouvez accéder à des cibles temporaires prédéfinies en appuyant sur la case de la cible dans l'application. Cela vous permet de choisir parmi des options telles que [Repas Imminent], [Activité], ou [Hypo]. Ces cibles prédéfinies peuvent être ajustées en fonction de vos besoins et de vos préférences. Réglage des paramètres AndroidAPS vous permet de modifier vos profils d'insuline en appuyant sur la boîte de profil sur l'écran d'accueil, ou en accédant à l'onglet Profil. Vous pouvez y modifier divers paramètres, tels que la durée de l'action de l'insuline, le rapport glucidique, le facteur de réactivité à l'insuline, le débit d'insuline basal, et la valeur cible. Pour changer de profil ou ajuster le pourcentage d'administration d'insuline, il suffit d'aller dans l'onglet Profil de l'écran d'accueil.

- Lorsque vous modifiez le pourcentage de votre profil, n'oubliez pas qu'il affecte non seulement l'insuline basale, mais aussi votre ratio glucidique et votre sensibilité à l'insuline. Pour modifier votre valeur cible, vous pouvez cliquer sur la case cible. Ici, vous pouvez fixer votre valeur cible pour une durée spécifique. Le configurateur dans le menu offre des options de personnalisation supplémentaires. Vous pouvez choisir le type d'algorithme, à savoir OpenAPS AMA ou OpenAPS SMB, configurer des paramètres spécifiques pour les Super Micro Bolus, activer les fonctions Autosens et Unannounced Meal, et bien plus encore. De plus, AndroidAPS vous permet également de mettre en place des automatisations spécifiques basées sur diverses conditions telles que les relevés de glycémie, l'administration d'insuline, l'insuline embarquée, les glucides embarqués, la localisation et d'autres applications. Cela permet un contrôle personnalisé et dynamique de la gestion du diabète. Administration d'un bolus Pour les bolus de repas, plusieurs options s'offrent à vous :

- Le bouton de l'assistant bolus calcule la dose d'insuline en fonction du volume de glucides que vous prévoyez de consommer.

- Le bouton insuline vous permet de saisir directement le nombre d'unités d'insuline que vous souhaitez administrer.

- Le bouton Glucides vous permet de saisir le nombre de grammes de glucides que l'algorithme devrait prendre en compte dans ses calculs. Suspension d'insuline Si vous devez interrompre temporairement l'administration d'insuline, vous pouvez cliquer sur l'icône Boucle de l'écran d'accueil. De là, vous pouvez choisir l'option [Déconnecter la pompe] pour une durée allant de 30 minutes à 3 heures. Cela suspend temporairement l'administration d'insuline par la pompe.

### 4.4 Mode manuel

Dans certaines situations, il peut être nécessaire de passer en mode manuel dans AndroidAPS, par exemple lorsque l'administration automatique d'insuline ne répond pas aux besoins actuels en insuline (par exemple, en cas de maladie). La désactivation du mode automatique peut se faire facilement en utilisant le bouton Boucle sur l'écran d'accueil. En mode manuel, AndroidAPS fonctionne de la même manière qu'en mode automatique :

- Vous pouvez ajuster le débit d'insuline basal, le rapport glucidique, la réactivité à l'insuline, et la durée de l'action de l'insuline dans les paramètres du profil.

- Vous pouvez régler un débit basal temporaire en appuyant longuement sur le bouton de profil et en effectuant les réglages nécessaires.

- Vous pouvez administrer un bolus manuellement à l'aide du bouton d'action de l'insuline ou utiliser le bouton d'action de l'assistant bolus si vous préférez utiliser le calculateur de bolus. En conclusion, l'utilisation de l'application AndroidAPS nécessite de remplir des objectifs spécifiques, de passer du fonctionnement manuel à l'administration automatisée, et de comprendre comment travailler à la fois en mode automatique et en mode manuel. Bien qu'il puisse sembler intimidant d'ajuster système soi-même, il est important de se rappeler que l'on n'est pas seul dans ce parcours. La communauté AndroidAPS est là pour vous soutenir à chaque étape. Alors, ayez confiance, demandez de l'aide si nécessaire et reportez-vous à la documentation complète pour atteindre un contrôle glycémique optimal avec AndroidAPS.
