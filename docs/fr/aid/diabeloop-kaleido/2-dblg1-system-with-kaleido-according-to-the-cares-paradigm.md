<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q_bq0l9D2nIO_v6kKXSiona&index=1" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. Le système DBLG1 avec Kaleido selon le paradigme CARES</u>**

Bienvenue dans cette vidéo où nous allons explorer le système DBLG1 avec Kaleido selon le paradigme CARES. Nous verrons comment l'algorithme du DBLG1 calcule et ajuste l'administration automatisée d'insuline, à quel moment il repasse en mode manuel, quels sont les conseils d'éducation spécifiques et les problèmes liés aux capteurs, et comment le système partage ses données. Nous passerons ensuite en revue les indications officielles et les mises à jour logicielles du système DBLG1 avec Kaleido.

### 2.1 Le fonctionnement du système DBLG1 selon le paradigme CARES

### 1.1 Calculer

Le système DBLG1 avec Kaleido operatesur un algorithme de calcul unique qui prend en compte différents facteurs pour déterminer l'administration d'insuline. Voici les principaux aspects du processus de calcul :

- Le système délivre des microbolus d'insuline toutes les 5 minutes en fonction des niveaux de glucose actuels et prévus, et de la dose totale d'insuline quotidienne pour maintenir les niveaux de glucose aussi proches que possible de la glycémie cible définie. Il prend également en compte l'activité physique annoncée et les repas.

- Lors de l'initialisation, la moitié de la dose quotidienne totale d'insuline prédéfinie est allouée à l'insuline basale, tandis que l'autre moitié est allouée à l'insuline de repas.

- La plage de glycémie cible peut être ajustée entre 100 et 130 mg/dL ou 5.6 et 7.2 mmol/l.

- Des bolus d'autocorrection sont administrés toutes les 5 minutes lorsqu'il est prévu que le taux de glucose dépasse 180 mg/dL ou 10 mmol/L. Si l'on prévoit que le taux de glucose tombe en dessous du seuil d'hypoglycémie, le débit basal est interrompu et des glucides de secours sont recommandés.

- Le système intègre des algorithmes d'apprentissage à court et à long terme. L'algorithme d'auto-apprentissage à court terme analyse les tendances des 2 à 3 derniers jours, tandis que l'algorithme à long terme prend en compte les tendances des 3 à 6 dernières semaines. L'algorithme DBLG1 comporte également un algorithme unique de gestion des repas, qui comprend des recommandations pour l'administration du bol alimentaire. Voici les principaux aspects de l'algorithme de gestion des repas :

- Dans certains cas, le système divise le bolus alimentaire en deux administrations en fonction des niveaux de glucose du capteur et du type de repas.

- Dans le cas de niveaux de glucose normaux, la première partie du bolus est administrée immédiatement, et la seconde partie est administrée après 30 minutes. Pour les repas riches en graisses, la deuxième partie est administrée après 60 minutes. L'algorithme de gestion post-prandiale peut en outre délivrer des micro bolus correctifs entre la première et la deuxième partie du bolus. Dans ce cas, la deuxième partie du bolus est ensuite modifiée pour tenir compte de l'insuline active.

- Si une hypoglycémie est prévue, la deuxième partie du bolus peut être retardée jusqu'à 90 minutes ou peut même être annulée.

- Si une hyperglycémie est détectée au début du repas, le système peut administrer le bolus en une seule fois. Des bolus d'autocorrection supplémentaires peuvent être administrés si nécessaire.

- Après un repas, l'insuline basale peut être remplacée par des bolus d'autocorrection, qui durent généralement 3 heures au maximum.

### 1.2 Ajuster

Avec l'algorithme DBLG1, vous pouvez ajuster différents paramètres pour personnaliser votre administration d'insuline. Voici les paramètres que vous pouvez modifier :

- La cible glycémique. La valeur par défaut est fixée à 110 mg/dl ou 6.1 mmol/l, mais vous pouvez l'ajuster entre 100 et 130 mg/dl ou 5.6 et 7.2 mmol/l.

- La sensibilité aux repas détermine la quantité d'insuline administrée au moment des repas. La valeur par défaut est de 100 %, et vous pouvez la régler entre 50 % et 200 %. Le réglage de ce paramètre vous permet d'avoir plus ou moins d'insuline pour les repas, de manière similaire au réglage du rapport glucidique dans d'autres systèmes d'administration automatisée d'insuline.

- La sensibilité en cas d'hyperglycémie contrôle la réponse à des niveaux élevés de glucose. La valeur par défaut est de 100 %, et elle peut être ajustée entre 43 % et 186 %. L'augmentation ou la diminution de ce paramètre affecte les doses d'insuline des bolus d'autocorrection.

- La sensibilité en normoglycémie module l'administration d'insuline basale en cas de glycémie normale. La valeur par défaut est de 100 % et vous pouvez l'ajuster entre 59 % et 147 %. La modification de ce paramètre rend la modulation de l'insuline basale plus ou moins agressive.

- Le seuil d'hypoglycémie détermine le taux de glucose à partir duquel le système recommande des glucides de secours et ajuste l'administration d'insuline basale. La valeur par défaut est de 70 mg/dl ou 3.9 mmol/l, mais elle peut être réglée entre 60 et 85 mg/dl ou 3.3 et 4.7 mmol/l.

- La dose quotidienne totale d'insuline est le principal paramètre permettant d'affiner la gestion globale du glucose par le système. Elle doit être réduite en cas de recommandations trop fréquentes de glucides de secours et d'hypoglycémie, ou au contraire, elle peut être augmentée en cas d'hyperglycémie trop fréquente (postprandiale ou à jeun). Notez que si vous pouvez modifier la dose quotidienne totale d'insuline entre 8 et 90 unités par jour, des ajustements fréquents peuvent affecter l'auto learning du système, il est donc recommandé d'éviter les changements fréquents et d'effectuer les ajustements par paliers de 10 % maximum. En plus des paramètres mentionnés précédemment, l'algorithme DBLG1 offre des modes supplémentaires pour répondre à des situations spécifiques :

- Le mode [Sport] est conçu pour l'activité physique, tel que le sport, le jardinage intensif, les travaux ménagers, etc. Une activité physique peut être déclarée le jour même ou le lendemain. Lorsqu'elle est activée, la valeur cible de la glycémie et le seuil d'hypoglycémie sont ajustés pour mieux répondre aux exigences des activités. La valeur cible et les seuils sont augmentés de 70 mg/dl ou 3.9 mmol/l.

Si nécessaire, des glucides de secours seront recommandés plus tôt. La durée de ce mode est réglable dans une plage de 0 à 24 heures. Après l'activité, l'algorithme DBLG1 abaissera lentement la valeur cible jusqu'au niveau de glucose cible normal. Le type et l'intensité de l'activité physique ont un impact sur le degré de réduction de l'agressivité autour de l'activité physique.

- Le mode [Zen] peut être activé si vous souhaitez éviter l'hypoglycémie et être gêné le moins possible par la nécessité de manger des glucides de secours. En mode Zen, la valeur cible peut être augmentée de 10 à 40 mg/dl ou de 0.6 à 2.2 mmol/l.

La durée du mode Zen peut être ajustée dans une fourchette de 1 à 8 heures via les réglages. Lorsque vous commencez à utiliser le système DBLG1, vous devez saisir votre dose totale d'insuline, votre poids, et le nombre moyen de grammes d'hydrates de carbone que vous consommez par repas standard. Vous pouvez saisir trois repas standard pour le petit-déjeuner, le déjeuner et le dîner. Ces paramètres peuvent être modifiés ultérieurement si nécessaire. Cependant, certains paramètres sont calculés par l'algorithme et ne peuvent pas être ajustés.

- Il s'agit notamment du taux d'insuline basale, du rapport glucidique, de la sensibilité à l'insuline, et de la durée de l'action de l'insuline.

- Lors de la configuration, il vous est demandé d'entrer un profil basal de sécurité dans l'appareil DBLG, mais celui-ci n'est utilisé qu'en mode manuel ou en boucle ouverte.

- Le seuil d'hyperglycémie est fixé à 180 mg/dl ou 10 mmol/l. Dans l'appareil DBLG1, vous pouvez modifier le seuil d'hyperglycémie, mais cela n'a pas d'incidence sur l'algorithme. Cela n'affectera que l'affichage en orange de la valeur du glucose sur votre DBLG1.

### 1.3 Retour

Si la connexion avec la pompe à insuline ou le capteur de glucose est perdue pendant plus de 30 minutes, y compris pendant la période de préchauffage du capteur, le système DBLG1 repasse en mode manuel. Vous pouvez vérifier l'état de la connexion sur l'écran d'état du système. Si l'écran affiche "perte de signal" ou "pompe en attente", cela signifie que la connexion n'est pas établie. La connexion doit être maintenue dans un rayon de 2 mètres ou

### 3.3 pieds.

Or, il est recommandé de garder l’appareil aussi près que possible du capteur et de la pompe Kaleido pour assurer une communication fiable. En mode manuel, aucune fonction de [suspension sur glucose faible] n’est disponible. L'insuline basale administrée en mode manuel est appelée [Profil de sécurité basal] et vous pouvez l'ajuster directement à partir de votre appareil. En outre, si votre appareil est toujours connecté à la pompe, vous pouvez l'utiliser pour administrer un bolus d'insuline ou définir un débit de base temporaire. Une fois la connexion à la pompe ou au capteur rétablie, le système reprend automatiquement le mode automatique ou le mode boucle fermée.

### 1.4 Éduquer

Lors de la mise en place d'un système automatisé d'administration d'insuline tel que le DBLG1, il existe des points de formation généraux applicables à tous les systèmes automatisés d'administration d'insuline, ainsi que des points de formation spécifiques au système DBLG1. Passons-les en revue : Pour une formation générale sur les systèmes automatisés d'administration d'insuline, veuillez vous référer au module générique. Il s'agit notamment des points clés suivants :

- Consommer moins de glucides de carbone pour corriger l'hypoglycémie.

- Considérer un problème avec le dispositif de perfusion si la glycémie reste élevée pendant une période prolongée sans raison apparente : "En cas de doute, il faut le remplacer”.

- Se reposer sur le système automatisé d'administration d'insuline et laissez-le faire son travail.

- Administrer un bolus alimentaires environ 15 minutes avant de manger.

- Activer la mode [Sport] 1 à 2 heures avant de faire de l'activité physique.

- Arrêter

temporairement l'administration d'insuline si vous débranchez la

pompe pendant plus de 15 minutes.

- Répondre rapidement aux alarmes du système.

- Désactiver les mises à jour automatiques sur votre smartphone pour éviter toute perturbation.

- Bénéficier du soutien des pairs pour obtenir des conseils et des informations supplémentaires. Concentrons-nous maintenant sur les points d'éducation spécifiques au système DBLG1 :

- A l'initialisation, la moitié de la dose quotidienne totale d'insuline est allouée à l'insuline basale, tandis que la seconde moitié est allouée à l'insuline de repas. Si cette répartition ne correspond pas à vos besoins réels en insuline, il est recommandé d'ajuster la dose quotidienne totale d'insuline en conséquence. Si vous utilisez généralement une plus petite am quantité d'insuline bolus par rapport au débit basal (par exemple, 30/70 % si vous suivez un régime pauvre en glucides), il peut être avantageux d'augmenter la dose quotidienne totale d'insuline de 5 à 10 % au moment de l'initialisation. En revanche, si vous utilisez généralement une dose de

bolus plus

importante par rapport à l'insuline basale (par exemple, 70/30 % si vous consommez une plus grande quantité de glucides), une réduction de la dose quotidienne totale d'insuline de 5 à 10 % lors de l'initialisation peut être envisagée.

- Il est conseillé de saisir vos repas au moins 15 minutes avant le repas, bien que le bolus d'insuline réel ne soit administré que 6 minutes avant le repas. N'oubliez pas de valider le bolus d'insuline à ce moment-là, sinon l'insuline ne sera pas administrée.

- Gardez l’appareil près de votre corps ou à portée de main, et chargez-le pendant la nuit.

- Ayez des glucides de secours à portée de main et maitrisez la quantité de glucides qu'ils contiennent (par exemple, 5, 10 ou 15 grammes) pour une administration rapide et facile.

- L'ajustement de la dose quotidienne totale d'insuline est le paramètre le plus efficace pour affiner l'algorithme DBLG1. Toutefois, évitez les ajustements fréquents, ce qui réinitialise l'apprentissage automatique.

- Vous pouvez saisir les informations relatives aux glucides soit par le biais du calculateur de bolus, soit comme glucides de secours. Si vous choisissez cette dernière option, le système ne fournira pas d'insuline supplémentaire pour les glucides consommés.

- Vous pouvez saisir des repas et des activités physiques passés et futurs. En cas d’oubli d’un repas ou d’une activité, il est toujours utile de le saisirfaire plus tard pour que l'algorithme l'apprenne automatiquement.

- Le système DBLG1 offre deux modes supplémentaires : Le mode Zen, qui réduit le risque d'hypoglycémie, et le mode Confidentiel, qui empêche temporairement la transmission des données à YourLoops.

- Après un repas et pendant les bolus d'autocorrection, le niveau d'insuline basale diminue, conformément au comportement unique de l'algorithme DBLG1.

- Dans les rapports YourLoops, la dose quotidienne totale d'insuline est divisée en un pourcentage pour l'insuline basale et un pourcentage pour l'insuline de bolus. Les bolus d'autocorrection sont ajoutés au pourcentage de bolus, ce qui signifie qu'un pourcentage de bolus relativement élevé est fréquemment observé dans les rapports. Connaitre ces points d'éducation, c’est mieux comprendre l’optimisation du système DBLG1 et gérer efficacement son diabète.

### 1.5 Capteur

Le système DBLG1 utilise le capteur Dexcom G6 pour la surveillance du glucose. Si votre capteur n'affiche pas de chiffre ou de flèche, ou si vos relevés ne correspondent pas à vos symptômes, effectuez un prélèvement capillaire pour prendre des décisions concernant le traitement du diabète. En cas de doute, sortez votre glucomètre. S'il existe un écart important entre la lecture du glucose par le capteur et la mesure d’un prélèvement, vous pouvez envisager de calibrer le capteur Dexcom G6 à l'aide de l’appareil DBLG1. Or, il est important de ne procéder à l'étalonnage que lorsque votre glycémie est stable et se situe dans la plage cible depuis quelques minutes. Vous n'êtes pas obligé de calibrer, mais vous pouvez le faire. Lorsque vous commencez avec un nouveau capteur, vous ne recevrez aucun relevé G6 ni aucune alarme/alerte avant la fin de la période d'échauffement de deux heures. Pendant cette période, faire un prélèvement capillaire avec votre glucomètre pour prendre des décisions de traitement.

### 1.6 Partage

Avec le système DBLG1, vous pouvez partager vos données d'insuline et de glucose avec votre professionnel de santé et les membres de votre famille via YourLoops et Dexcom Follow. La surveillance en temps réel des valeurs de glucose est possible pour les deux parties. L'appareil DBLG1 reste connecté en permanence à YourLoops grâce à sa carte SIM intégrée, ce qui élimine la nécessité de récupérer manuellement les données. La transmission des données de l'appareil au nuage YourLoops a lieu toutes les 5 minutes via la 4G fournie par la carte SIM. Si votre connexion cellulaire est mauvaise ou inexistante (par exemple, si vous êtes en mer, dans une zone montagneuse ou dans une région sans connexion), la transmission des données vers YourLoops peut être affectée. Si la couverture 4G n'est pas disponible, par exemple pendant un vol, aucune lecture ne sera transmise. Cependant, vous pouvez toujours consulter vos données via l'onglet Historique, qui stocke 3 mois de données, et utiliser l'appareil, qui ne nécessite que le Bluetooth pour la connexion à la pompe et au capteur. Il faut noter que la carte SIM n'offre une couverture que dans certains pays d'Europe. Par conséquent, si vous voyagez en dehors des pays mentionnés, la carte SIM ne sera pas connectée et les données ne seront pas transférées à YourLoops. Si la carte SIM a été déconnectée pendant une période prolongée, il se peut qu'elle ne redémarre pas immédiatement. Il redémarrera le premier jour du mois suivant lorsqu'il sera à nouveau dans la portée de la carte SIM. Les professionnels de santé peuvent accéder à YourLoops grâce à leurs accès respectifs, tandis que les membres de la famille peuvent surveiller à distance les niveaux de glucose à l'aide de l'application Dexcom Follow, sous réserve que l'utilisateur dispose également de l'application Dexcom G6. Le système DBLG1 offre une fonction unique dite Mode confidentiel, qui permet aux utilisateurs de choisir de ne pas partager leurs données pendant une période de 3 heures, 1 jour ou 3 jours. Il est important de noter que lorsque le mode confidentiel est activé, les données ne pourront plus par conséquent être récupérées dans YourLoops.

### 2.2 Indications

L'algorithme DBLG1 est labellisé [Conformité Européenne] pour une utilisation chez les personnes atteintes de diabète de type 1, âgées d'au moins 18 ans. Il convient aux personnes dont les besoins quotidiens en insuline sont compris entre 8 et 90 unités par jour. Le système n'est compatible qu'avec les insulines rapides NovoRapid et Humalog 100 U/ml, et est destiné à être utilisé par un seul patient. Notez que le système DBLG1 n'a pas encore de label FDA et qu'il n'est pas autorisé pour une utilisation pendant la grossesse et la dialyse.

### 2.3 Mises à jour du logiciel

Vous pouvez vérifier la présence de mises à jour logicielles dans le menu du smartphone. Si une mise à jour est disponible, appuyez sur télécharger.

- Si votre appareil DBLG1 dispose d'une batterie suffisante, vous pouvez choisir d'installer la mise à jour immédiatement ou de laisser l'heure de mise à jour à l'heure par défaut définie par le système.

- Vous pouvez modifier l'heure de mise à jour, mais pas la nuit.

- Pendant une mise à jour, vérifiez vous avez suffisamment de batterie et n'éteignez PAS votre DBLG1. Votre appareil peut redémarrer automatiquement une fois l'installation terminée. En conclusion, le système DBLG1 avec Kaleido intègre différents composants pour assurer l'administration automatisée d'insuline. Grâce à son algorithme avancé et à ses paramètres ajustables, le système DBLG1 offre la flexibilité nécessaire pour répondre aux besoins individuels. Si vous avez des questions ou des inquiétudes, vous pouvez demander de l'aide à votre professionnel médical, au groupe Facebook dédié ou contacter le service à la clientèle de ViCentra. N'oubliez pas que vous n'êtes pas seul dans votre parcours de gestion du diabète et qu'il existe des ressources disponibles pour vous soutenir à chaque étape.
