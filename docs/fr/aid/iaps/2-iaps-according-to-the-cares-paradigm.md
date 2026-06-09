<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q_2l50E2kufXA0mSwDbwu9r&index=1" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. L’iAPS selon CARES</u>**

Dans cette capsule vidéo, nous étudierons l'iAPS selon le paradigme CARES. Nous verrons comment l'iAPS calcule et ajuste l'administration automatisée d'insuline, dans quelles situations il repasse en mode manuel, les points d'éducation spécifiques, les problèmes liés aux capteurs, et le partage des données. Nous aborderons ensuite les indications de l'iAPS et les mises à jour du logiciel. C'est parti !

### 2) iAPS selon le paradigme CARES

### 2.1 Calcul

Dans l'iAPS, le débit basal d'insuline prédéfini est ajusté en fonction de la glycémie prévue pour les 5 à 9 heures suivantes, et cela se fait comme suit:

- L’iAPS combine différentes prédictions de glycémie pour calculer la glycémie minimale prévue :

- L'iAPS calcule la glycémie prédite en fonction des glucides présents à bord,

- Une lecture prédite par l'insuline, qui est une prédiction basée sur l'insuline embarquée;

- Une lecture prédite en cas de repas non annoncé, qui est une prédiction en cas de consommation non saisie de glucides; et

- Une lecture prévue à température zéro, qui représente le pire scénario où l'insuline ne serait soudainement plus administrée ou les glucides ne seraient plus absorbés.

- L'iAPS prend en compte les possibilités d’erreurs de prédiction, étant donné que la prédiction de la glycémie éventuelle est ajustée en fonction de l'écart entre la glycémie actuelle et la glycémie prédite, ou autrement dit l'impact de la glycémie. L'algorithme tient également compte de la tendance glycémique en calculant le delta, c'est-à-dire la différence entre la glycémie actuelle et la glycémie passée. Il tient également compte de l'évolution de la glycémie à court et à long terme, soit la différence entre la glycémie actuelle et la glycémie d'il y a 15 et 40 minutes.

- L’insuline requise, ou InsulReq est calculée en déduisant la glycémie cible de la glycémie minimale prévue, puis en divisant cette différence par le facteur de sensibilité à l'insuline, ou le FSI. Ce besoin en insuline déterminera s'il faut augmenter ou diminuer l'insuline basale pré réglée manuellement.

- Si une hypoglycémie est prévue, l'insuline basale sera arrêtée et des glucides de secours pourront être recommandés. En conclusion, le débit basal d'insuline prédéfini sera augmenté ou diminué en fonction des besoins en insuline calculés. Ceci est indiqué dans l'application sous la forme d'un débit basal temporaire avec un taux d'insuline et une durée spécifiés ou d'un microbolus, et ces basaux temporaires sont recalculés toutes les 5 minutes. Un nouveau calcul de l'iAPS s’appelle un loop cycle, ou un cycle de boucle. Dans l'iAPS, les doses de base temporelles sont généralement administrées sous forme de microbolus, délivrant la même dose d'insuline plus rapidement, suivi d'une pause temporaire dans l'administration de l'insuline basale. La manière dont ces supermicrobolus, ou SMB, sont calculés sur la base des doses de base temporelles peut être ajustée dans le cadre de paramètres de sécurité prédéfinis. L'iAPS utilise également la fonction Autosens qui augmente ou diminue l'administration d'insuline en fonction de la sensibilité à l'insuline de l'utilisateur au cours des 8 et 24 dernières heures.

- Autosens calcule un pourcentage qui correspond à l'écart entre la sensibilité à l'insuline des dernières heures et la sensibilité actuellement définie, et utilise ce pourcentage pour ajuster le facteur de sensibilité à l'insuline et le débit basal d'insuline. La fonction Autosens peut également être appliquée à la valeur cible, en l'ajustant sur la base du rapport de sensibilité calculé.

- Les ratios maximal et minimal d’Autosens sont respectivement fixés à 1.2 et 0,7, et ils déterminent les pourcentages d'ajustement maximum et minimum. Cela signifie que les valeurs peuvent être ajustées d'un maximum de 120 % et d'un minimum de 70 % à l'aide d'Autosens.
- Si vous activez la fonction UAM - unannounced meals en anglais, ou repas non saisis, l'algorithme détectera les augmentations rapides de glucose causées par les glucides, l'adrénaline, etc. et tentera de les ajuster à l'aide des supermicrobolus. Cela fonctionne également dans le sens inverse : en cas de baisse rapide du glucose, il peut arrêter les supermicrobolus précocement. Il faut noter que l'utilisation de la fonction UAM n'est recommandée que si le contrôle de la glycémie et les valeurs du capteur de glucose sont relativement stables. Si votre contrôle glycémique est médiocre, l'activation de la fonction UAM peut introduire davantage de variabilité. Idem si les valeurs de votre capteur sont instables, comme au premier jour après un changement de capteur. L’iAPS offre 3fonctions dynamiques qui peuvent être activées dans l'application : le FSI Dynamique, le Ratio Glucidique Dynamique et Auto ISF (pour les utilisateurs avancés).

- Si vous activez la fonction FSI Dynamique, elle remplace l’algorithme Autosens.

- La formule par défaut pour l'ISF dynamique utilise une échelle logarithmique pour déterminer le rapport d'ajustement de l'ISF.

- Il ajuste votre FSI mais de manière dynamique en fonction de votre valeur glycémique actuelle et prévue, et de la dose totale d'insuline quotidienne.

- Comme vous êtes plus résistant à l'insuline si votre taux de glucose est plus élevé, c'est une façon plus agressive d'ajuster votre sensibilité à l'insuline.

- L'agressivité du Dynamic ISF peut être modifiée à l'aide de plusieurs paramètres, tels que le facteur d'ajustement, le poids de la dose quotidienne totale d'insuline des dernières 24 heures par rapport aux deux dernières semaines, et les pourcentages maximal et minimal Autosens.

- Il est également possible d'utiliser une échelle sigmoïde pour une approche plus agressive. Contrairement aux autres méthodes, l'échelle sigmoïde ne fait pas référence à l'insuline quotidienne totale ; elle détermine plutôt les ajustements en se basant exclusivement sur l'écart entre la lecture actuelle du glucose et la valeur cible. Avec Sigmoid, Dynamic ISF utilise le profil ISF lorsque vous atteignez votre glycémie cible. L'agressivité de Sigmoid peut être ajustée à l'aide de 3 paramètres : Sigmoid Adjustment Factor (facteur d'ajustement sigmoïde), Autosens Maximum (autosens maximum) et Autosens Minimum (autosens minimum). Sigmoid est également une excellente option pour les utilisateurs dont la sensibilité à l'insuline varie rapidement.

- Si vous activez la fonction du Ratio glucidique dynamique, votre apport glucidique sera modifié à chaque cycle de la boucle en fonction de votre glycémie actuelle et de votre dose quotidienne totale d'insuline. Cette fonction est, de la même façon que le FSI dynamique, basé sur le principe qu’un rapport de glucides plus agressif est engendré lorsque la glycémie est plus élevée.

- Une autre fonctionnalité plus expérimentale, Auto ISF, peut être configurée pour les utilisateurs avancés afin d'activer un mode en boucle fermée complet sans bolus repas ni saisie de glucides. L'utilisation correcte de cette fonctionnalité nécessite une compréhension approfondie des limites ISF et des paramètres d'accélération du glucose. L'algorithme est documenté à l'adresse https://github.com/bernie4375/FCL-potential-autoISF La cible glycémique de l'iAPS peut être réglée entre 72 et 180 mg/dl, ou entre 4 et 10 mmol/l. L'iAPS accorde une grande importance à la sécurité et intègre divers paramètres et seuils de sécurité afin d'éviter une administration d'insuline potentiellement dangereuse. Pour s'assurer que les utilisateurs configurent correctement le système, la communauté d’utilisateurs propose des réglages défensifs et de démarrer le système sans aucune caractéristique dynamique. Au cours de plusieurs semaines, vous pouvez progressivement passer à un iAPS dynamique et à des réglages plus agressifs. Pour la fonction Auto ISF, les utilisateurs expérimentés d'iAPS recommandent de ne pas l'activer avant d'avoir au moins trois mois d'expérience avec iAPS dynamique et d'obtenir des résultats quotidiens stables et constants.

### 2.2 Ajustement

Dans iAPS, on peut ajuster différents paramètres pour personnaliser son traitement.

- Vous pouvez définir une valeur cible de glucose par tranche de 30 minutes entre 72 et 180 mg/dl (ou 4 et 10 mmol/l). Les recommandations internationales suggèrent de commencer par une valeur cible de 110 à 120 mg/dl (ou 6 à 6.5 mmol/l).

De nombreux utilisateurs optent pour une valeur cible de 100 mg/dl (ou 6 mmol/l) pendant la journée, et encore plus basse pendant la nuit - par exemple 90 mg/dl (ou 5 mmol/l). Cette solution peut être envisagée si elle ne provoque pas d'hypoglycémie importante.

- L’iAPS vous permet de régler différents profils basaux d'insuline en fonction de vos besoins individuels. Le profil par défaut est le [Profil normal]. Vous pouvez enregistrer des itérations de ce profil normal avec un pourcentage d'administration d'insuline modifié, une valeur de glycémie cible, ainsi que des fonctions supermicrobolus et dynamiques. Les profils alternatifs créés peuvent être permanents ou avoir une durée spécifique (par exemple pour des activités sportives programmées). Le rapport glucidique, la sensibilité à l'insuline, et la durée de l'action de l'insuline peuvent être ajustés en fonction de vos besoins spécifiques.

- La durée de l'action de l'insuline dans les systèmes en boucle fermée à source ouverte est généralement plus longue que dans leurs homologues traditionnels en raison de l'effet de longue traîne de l'insuline. La plupart des utilisateurs préfèrent une durée de 6 à 7 heures. Si vous avez besoin d'une durée plus longue, vérifiez vos paramètres du FSI, étant donné qu’ils peuvent être trop agressifs. En général, la durée réelle de l'action de l'insuline ne varie pas beaucoup d'un utilisateur à l'autre.

- L’iAPS vous permet de sélectionner le type d'insuline que vous utilisez. Vous avez le choix entre Apidra, Humalog, Novorapid ou NovoLog, Fiasp, et Lyumjev. Selon le type d'insuline sélectionné, l’iAPS fournira un profil correspondant. Vous pouvez modifier votre courbe d'insuline ou définir un pic d'insuline personnalisé. L'iAPS comporte de nombreux autres paramètres réglables, et nous allons étudier les principaux d'entre eux : les options SMB, le pourcentage du bolus recommandé, les options Autosens, les caractéristiques dynamiques, les seuils d'administration, et la fonction Autotune.

- Lorsque vous commencez à utiliser l’iAPS en boucle fermée, il est recommandé de n'utiliser les supermicrobolus qu'après avoir consommé des glucides. Vous pouvez choisir d'activer ou de désactiver les SMB à tout moment. Vous pouvez rendre les SMB plus ou moins agressifs en ajustant le seuil Delta-BG maximum, la durée d’administration des SMB en minutes, le ratio des SMB, ainsi que l’intervalle d’administration. De plus, si vous activez la fonction UAM ou Repas Non Saisis, les SMB réagiront plus rapidement aux changements rapides de glucose afin de couvrir les repas non déclarés.

- Dans iAPS, vous pouvez modifier la quantité d'insuline suggérée par le calculateur de bolus en changeant le pourcentage de bolus recommandé. L’iAPS calcule d'abord une dose d'insuline d’après le calculateur de bolus intégré, qui sera ensuite multipliée par votre pourcentage de bolus recommandé pour afficher votre dose d'insuline suggérée. L’iAPS administre le reste de l'insuline en forme de SMB lorsque la glycémie commence à augmenter.

- L’iAPS ajuste automatiquement votre sensibilité à l'insuline sur la base d'une fonction Autosens. Vous pouvez activer Autosens pour ajuster également votre valeur glycémique cible. Vous pouvez définir les pourcentages maximum et minimum auxquels votre ISF peut être adapté. Vous pouvez également autoriser Autosens à ajuster votre FSI lorsque vous définissez un profil temporaire.

- Les fonctions dynamiques qui peuvent être activées sont le FSI dynamique et le ratio glucidique dynamique. L'agressivité du FSI dynamique peut être adaptée en modifiant l’apport maximum et minimum d’Autosens, le FSI du profil, le facteur d'ajustement, la moyenne pondérée de la dose quotidienne totale d'insuline des dernières 24 heures par rapport aux 2 dernières semaines, et en activant la fonction Sigmoïde.

- L’iAPS comporte aussi des seuils d’administration qui peuvent être ajustés dans une fourchette de sécurité selon l'âge et les particularités de l’utilisateur.

- Dans les réglages de la pompe, vous pouvez définir les seuils maximums du basal, du bolus, et des glucides. Pour les adultes, il est recommandé de régler la valeur basale maximale sur 3 à 5 fois la valeur basale la plus élevée.

- Dans les paramètres d'OpenAPS, vous pouvez définir les maximums d’insuline et des glucides embarqués. L'insuline maximale embarquée correspond au volume maximal combiné d'insuline basale et de bolus autorisée en une seule fois.

- Les facteurs de sécurité quotidien maximum et de sécurité basal actuel sont des seuils supplémentaires pour le débit basal d'insuline maximum, et il est généralement préférable de les laisser inchangées. Le facteur quotidien maximum est réglé par défaut sur 3, ce qui permet d'atteindre un maximum de 3 fois le débit basal le plus élevé réglé manuellement. Le facteur du mode basal actuel, quant à lui, est fixé à 4, ce qui permet de multiplier par 4 au maximum le débit basal défini manuellement.

- Dans les paramètres dynamiques, vous trouverez un paramètre de seuil qui fonctionne comme un seuil d'hypoglycémie. Si, à un moment donné, il est prévu que la glycémie passe en dessous de cette valeur, l’iAPS suspend toute administration d'insuline et attend que ses algorithmes détectent le passage en seuil idéal. Enfin, vous pouvez également choisir d'activer la fonction Autotune.

- Autotune fait des suggestions ou des ajustements aux débits basaux, au FSI, et au ratio de glucides sur la base de vos données des dernières 24 heures. Une option permet à Autotune d'ajuster uniquement les débits de base du profil. Autotune est systématiquement exécuté tous les soirs à minuit, mais vous pouvez également appuyer sur Exécuter maintenant pour effectuer un calcul instantané. Les ajustements effectués par Autotune sont minimes, avec un maximum de 10 % de modification du ratio glucidique et du FSI actuel, ou de 20 % de modification des débits basaux actuels par cycle. Or, il faut noter qu’ils s'additionnent au fil des jours.

- Autotune est conçu pour fonctionner à long terme afin d'améliorer au fur et à mesure la précision des débits basaux, du FIS, et du ratio glucidique prédéfinis. La sortie des formules d'Autotune produit un ratio similaire à celui d'Autosens. Ce rapport est également limité par les valeurs maximale et minimale d'Autosens.

- Il faut notez que Autotune nécessite des valeurs fixes pour le ratio glucidique et la sensibilité à l'insuline. Il ne sera donc pas efficace si vous utilisez les paramètres dynamiques complets dans iAPS et il n'est pas recommandé d'activer en permanence Autotune lorsque l'iAPS utilise Dynamic ISF et Dynamic Carb Ratio.

- L'autoréglage peut également ne pas fonctionner si Nightscout dispose de mesures de sécurité supplémentaires, comme un jeton. N'oubliez pas que tous les réglages et paramètres doivent être ajustés en consultation avec votre professionnel de santé en tenant compte de vos besoins individuels et de vos conseils médicaux. L'activation de la fonction Auto ISF nécessite des conseils médicaux supplémentaires.

### 2.3 Retour

Avec l'iAPS, en cas de déconnexion au capteur ou à la pompe pendant plus de 15 minutes, le système repassera en mode manuel. Lorsque la connexion est perdue, la pompe passe d'abord à la dernière plage cible temporelle de base réglée. Après un maximum de 120 minutes, elle passe en mode manuel. En mode manuel, l'administration d'insuline basale est réglée sur le débit basal prédéfini sans fonction d’arrêt avant hypoglycémie. Une fois la connexion avec la pompe ou le capteur rétablie, le système reprend automatiquement le mode automatique, soit le mode boucle fermée dans l'iAPS. Il convient de noter que dans iAPS, le terme [boucle ouverte] ne fait pas référence au mode manuel. Au contraire, le mode boucle ouverte indique que les bases temporaires n'apparaissent que sous forme de notifications et que vous pouvez les définir manuellement. Ce mode boucle ouverte est recommandé aux utilisateurs qui découvrent iAPS et souhaitent observer le fonctionnement de l'algorithme avant de s'y fier totalement.

### 2.4 Éducation

Une formation adéquate est cruciale lors de la mise en place d'un système automatisé d'administration d'insuline. Pour des informations générales, consultez le module principal. Les points d'éducation générale abordés sont les suivants :

- Consommer moins de glucides en réponse à l'hypoglycémie.

- Considérer des problèmes avec le dispositif de perfusion si la glycémie reste élevée sans raison apparente.

- Faire confiance au système automatisé d'administration d'insuline et éviter les interventions manuelles inutiles.

- Prévoir des bolus 15 minutes avant les repas.

- Passer en mode exercice 1 à 2 heures avant l'activité physique.

- Arrêter toute administration d'insuline si la pompe est déconnectée pendant plus de 15 minutes.

- Réagir correctement aux alarmes et être attentif aux mises à jour automatiques sur les smartphones.

- Rechercher le soutien de pairs pour obtenir des conseils et partager des expériences. L'iAPS est un outil puissant pour gérer le diabète, mais il est important de retenir qu'il ne s'agit pas d'un système entièrement automatisé de préréglage absolu. Il nécessite un suivi actif et une compréhension de ses opérations.

- Surveiller activement l'iAPS car il contrôle l'administration de l'insuline. Il est donc essentiel de le surveiller de près et de comprendre son fonctionnement. Soyez attentif à toute erreur potentielle ou à tout comportement inattendu et apprenez à interpréter les opérations du système.

- Utiliser le smartphone. Une fois couplé, le smartphone peut demander à la pompe d'effectuer diverses actions. Votre smartphone doté d’iAPS doit être considéré comme un dispositif médical et être manipulé en conséquence. Évitez d'installer des applications ou des jeux inutiles qui pourraient introduire des logiciels malveillants et potentiellement interférer avec le fonctionnement du système AID.

- Mettre en place des mesures de sécurité. Installez toutes les mises à jour de sécurité fournies par Apple pour protéger votre appareil. Cela permet de se prémunir contre d'éventuelles failles de sécurité. N'activez pas les options "Mises à jour automatiques" ou "Mises à jour bêta" dans les paramètres de mise à jour logicielle de votre iPhone. Vérifiez d'abord la compatibilitéd'une version iOS spécifique dans la communauté iAPS avant de la mettre à jour.

- Garder à proximité de chacun la pompe et le SGC. Ils doivent se trouver à la distance recommandée (qui est généralement de 5 mètres ou 15 pieds pour le capteur) pour maintenir une connexion fiable.

- Conservez des traces de tous les identifiants et des mots de passe utilisés, ainsi qu’une sauvegarde de votre application dans iCloud. L'exportation régulière de vos paramètres vers iCloud simplifie le processus d’une réinstallation possible et empêche la réinitialisation de vos paramètres personnalisés.

- Procurer un smartphone de réserve pour les cas d'urgence. Vous disposerez ainsi d'un appareil de secours en cas de problème technique avec votre smartphone principal.

- Une fonction supplémentaire dite [Partage] a été ajoutée à iAPS afin de sauvegarder vos paramètres personnels, par exemple, tous les comportements dynamiques ainsi que votre FSI, votre rapport glucidique, vos objectifs de glycémie, vos profils, etc.

Cela vous permet de restaurer les paramètres lors d'une réinstallation ou d'un transfert vers un autre appareil si nécessaire.

- Vérifier les paramètres de base. Il est recommandé de démarrer iAPS en boucle ouverte afin de configurer et de vérifier tous les paramètres de base, tels que le débit basal d'insuline, le ratio de glucides, et la sensibilité à l'insuline. a. La performance du système iAPS dépend largement de l'exactitude de ces paramètres de base, qui doivent donc être relativement précis. b. Ensuite, augmentez lentement la valeur maximale d’insuline embarquée pour permettre à l'iAPS de doser automatiquement l'insuline. Cette valeur est réglée par défaut sur 0 et peut être augmentée progressivement jusqu'à la somme de votre bolus de repas moyen et de trois fois votre débit de base le plus élevé. c. Enfin, vous pouvez activer les supermicrobolus et modifier le Seuil Max Delta-BG SMB de la valeur par défaut

### 0.2 à

### 0.3 pour permettre à

l'iAPS d'utiliser les SMB lorsque votre glycémie augmente rapidement.

- N'utiliser les paramètres avancés, tels que la fonction Repas non saisis, la durée maximale des SMB, l’Autotune, le FSI Dynamique, et le ratio glucidique dynamique, qu'une fois que les principes de base sont familiers et qu’un contrôle stable de la glycémie a été obtenu. Notez que ces fonctions peuvent ne pas fonctionner de manière optimale pour tout le monde.

- Accorder de l’accès au professionnel de santé aux rapports générés par Nightscout. Cela lui permet de rester informé sur la gestion de votre diabète et de prendre des décisions réfléchies lors de vos consultations médicales.

- Maîtriser l'utilisation de la pompe à insuline et du capteur. Assurez-vous que vous êtes en mesure d'utiliser correctement votre pompe à insuline et votre capteur. En suivant ces directives et en adoptant une approche proactive de l'utilisation de l'iAPS, vous pouvez optimiser l'efficacité du système et garantir une expérience d'administration automatisée de l'insuline sûre et fiable.

### 2.5 Sûreté

L’iAPS peut être relié aux capteurs Dexcom G5, G6, G7 et aux Dexcom One Plus, les capteurs européens FreeStyle Libre 2 et Libre 2 Plus, et aux capteurs Medtronic Enlite via les anciennes pompes Medtronic. Comme l’iAPS peut se connecter directement aux capteurs Dexcom G5, G6 et aux capteurs européens FreeStyle Libre 2 et Libre 2 Plus, l'application Dexcom ou LibreLink n'est nécessaire que pour démarrer un nouveau capteur dans ces cas. Pour les capteurs Dexcom G7 et One+, vous devez avoir l'application Dexcom associée sur votre iPhone pour permettre à iAPS de récupérer votre valeur de glucose.

Il est recommandé d'utiliser l'application Dexcom pour les alarmes de

connectivité Bluetooth. L'iAPS accepte également d'autres applications de capteurs open-source, telles que Glucose Direct ou xDrip4iOS. Ces applications peuvent être utilisées pour transmettre les données du capteur à l'iAPS, bien que les connexions natives au SCG soient plus stables. Certaines personnes choisissent d'utiliser ces applications open-source pour bénéficier de meilleures alarmes et d'une meilleure connexion à d'autres appareils. Dans un système automatisé d'administration d'insuline, des valeurs de capteur continues et précises sont essentielles pour un dosage correct de l'insuline. Si la glycémie de votre capteur est irrégulière ou bruyante, elle peut entraîner un dosage incorrect de l'insuline, ce qui se traduit par des taux de glucose élevés ou faibles. Dans ce cas, il est important de désactiver le mode automatique jusqu'à ce que le problème soit résolu. Le problème peut être lié à la configuration du capteur de glucose ou au site d’installation du capteur. Le cas échéant, le remplacement du capteur de glucose peut être nécessaire pour résoudre le problème. Si les valeurs du capteur sont irrégulières ou bruyantes, vous pouvez essayer d'activer la fonction [Smooth Glucose Value] dans les paramètres. Si votre capteur n'affiche pas de chiffre ou de flèche de tendance, ou si vos résultats ne correspondent pas à vos symptômes, utilisez votre glucomètre pour prendre des décisions concernant le traitement du diabète. En cas de doute, sortez votre glucomètre. Si vous constatez une différence significative entre la glycémie mesurée par le capteur et la valeur mesurée par la glycémie capillaire, alors que votre glycémie est stable et dans la cible, vous pouvez essayer de calibrer votre capteur. Vous pouvez le faire via les réglages iAPS via le menu SGC, ou directement dans l'application du capteur.

### 2.6 Suivi

Dans iAPS, le partage des données glycémiques avec les professionnels médicaux et la famille est possible via Nightscout, Apple Health et via Dexcom Share ou LibreView. Le partage des données de glycémie et d'insuline n'est possible que via Nightscout et Tidepool, Nightscout étant l'option préférée, étant donné que Tidepool nécessite des téléchargements manuels, ce qui prend du temps important. Pour utiliser Nightscout, vous devez créer un site web personnel à ce titre. L’iAPS peut envoyer les données au site web Nightscout, ce qui permet à votre professionnel médical d'accéder à vos rapports et de les examiner en temps réel. Les soignants peuvent accéder aux données sur le site web personnel de Nightscout, idéalement à l'aide d'un accès distinct. Ils peuvent ainsi consulter et suivre les informations relatives à votre insuline et à votre glycémie et rester informés de la gestion de votre diabète. Les soignants peuvent même administrer un bolus, saisir des glucides, et modifier le profil d'insuline à distance, tout via le site Web de Nightscout ou une application comme Nightscout X

ou Boucle Suivre. Pour pouvoir utiliser ces fonctions,

Nightscout doit être configuré pour utiliser les commandes à distance, et la télémédecine doit être activée dans l'application iAPS. Dans les paramètres du calculateur Bolus iAPS, les raccourcis Bolus iOS peuvent être activés avec une valeur maximale par "Raccourcis iOS". Cela pourrait également aider les parents à assister leurs jeunes enfants à distance. Les utilisateurs peuvent télécharger des rapports à partir de Nightscout ou utiliser des outils, tels que Nightscout Reporter, pour générer des rapports complets qui peuvent être partagés avec les professionnels de santé pour une analyse et une évaluation approfondies. En maximisant ces capacités de partage, les utilisateurs d'iAPS peuvent faciliter une communication et une collaboration efficaces avec leur équipe de soins de santé et leurs proches, favorisant ainsi un environnement de gestion du diabète favorable et informé.

### 2.7 Indications

L’iAPS est une application open-source qui n'a pas d'indications officielles approuvées par la FDA ou les autorités européennes. Elle peut être utilisée avec tous les analogues de l'insuline à action rapide. L'application iAPS ne peut pas être téléchargée à partir de l’App Store d’Apple. Les nouveaux utilisateurs doivent créer l’application eux-mêmes à leurs risques et périls. La mise en place du système nécessite de la détermination et quelques connaissances techniques. Si vous n'avez pas les compétences techniques au départ, vous les aurez à la fin de la création d’iAPS. Vous trouverez toutes les informations dont vous avez besoin dans la documentation iAPS disponible en ligne, et auprès d'autres utilisateurs qui ont remporté sa mise en œuvre. Un soutien est disponible via le groupe Facebook iAPS, ou sur d'autres forums tels que Discord. Discord est principalement utilisé pour les sujets de développement et de construction, tandis que Facebook est plus fréquenté pour l'aide aux utilisateurs. Les deux peuvent être utilisés en parallèle, mais il faut éviter de trouver des solutions au même problème ou sujet dans les deux environnements simultanément. Facebook et Discord sont des plateformes fortement recommandées pour les discussions interactives entre les utilisateurs d'iAPS et de Nightscout, les parents et les développeurs. Il couvre un large éventail de sujets, allant des questions posées par les premiers utilisateurs aux discussions plus techniques sur le fonctionnement interne d'iAPS et de l'algorithme OpenAPS. La langue principale est l'anglais. De nombreuses utilisateurs ont pu démarrer l’iAPS avec succès et l'utilisent maintenant en toute sécurité, mais il est essentiel que les utilisateurs d'iAPS :

- Comprennent le fonctionnement de leur pompe à insuline et de leur capteur de glucose.

- Sachent ajuster leurs paramètres d'insuline et d'algorithme avec l'aide de leur professionnel médical.

- Entretiennent et surveillent l'iAPS pour que ce dernier fonctionne correctement.

- Apprennent à construire eux-mêmes l'iAPS afin d'en comprendre parfaitement le fonctionnement, ou bien s'appuient sur une prestation fiable pour télécharger et utiliser l'application iAPS de Testflight. Les applications Testflight ont une validité de 90 jours, car cet environnement iOS est pris en charge par Apple pour tester les nouvelles applications. Pour utiliser iAPS, vous devez disposer d'un iPhone compatible fonctionnant sur iOS 16 ou une version plus récente. La configuration minimale requise pour vos appareils est indiquée dans la documentation iAPS. Pour la construction d’iAPS, vous aurez besoin d'une licence Apple Developer renouvelable annuellement, qui est de 99 dollars américains par an. Une fois cette licence activée, vous pouvez lancer le processus de construction de deux manières différentes.

- Vous pouvez suivre la procédure [Build iAPS with Script] à l’aide d’un ordinateur Mac avec Xcode (iAPS build). Pour cette méthode, vous devrez d'abord mettre votre iPhone et votre Apple Watch, le cas échéant, en mode développeur. Sur votre appareil, vous pouvez activer ce mode via [Paramètres], puis [Confidentialité et sécurité].

- Vous pouvez également suivre la procédure [Build iAPS with GitHub], également appelée browser build—construction sur fureteur, étant donné que cela peut se faire sur tout ordinateur (iAPS browser build). Une fois cette méthode terminée, vous pouvez télécharger l'application iAPS sur votre iPhone via Testflight. Le principal avantage de cette méthode est qu'elle facilite la création et la mise à jour de votre application iAPS. Certains utilisateurs ne créent pas eux-mêmes leurs iAPS, mais sont invités à l'utiliser via une invitation TestFlight. Certains professionnels de santé peuvent être disposés à partager l'application. Si votre professionnel de santé vous fournit l'application, vous n'aurez pas besoin d'une licence Apple Developer. Vous pourrez trouver d'autres utilisateurs prêts à partager leur version TestFlight dans la communauté d'assistance iAPS.

### 2.8 Mises à jour du logiciel

Des mises à jour régulières du logiciel sont essentielles pour maintenir des performances optimales et accéder aux dernières fonctionnalités de l'iAPS. L'équipe iAPS publie régulièrement de nouvelles versions. Ces mises à jour comprennent souvent des corrections de bogues et des améliorations visant à renforcer la fonctionnalité du système. La version d'iAPS actuelle est indiquée

en haut de l'écran des réglages, et en

dessous le branchement du développement actif. S'il existe une version principale plus récente, elle sera évoquées

en dessous du branchement pour signaler la

disponibilité d’une nouvelle version. Tous les trois mois, vous devez mettre à jour votre application iAPS. Pour ce faire :

- Il est conseillé de mettre à jour les réglages de votre iPhone sur iCloud. De cette manière, tous vos réglages de l'iAPS seront sauvegardés sur iCloud. Vous pouvez faire une sauvegarde de votre iPhone via le menu [Paramètres].

- Lors de la construction, conservez les mêmes clés de signature que pour l'installation précédente.

- Si vous utilisez la méthode [Build iAPS with script], vous devrez utiliser Xcode pour actualiser le code vers la nouvelle version, alors que votre iPhone et votre Apple Watch sont connectés et alimentés.

- Pour la méthode [Browser build], après l'exécution réussie du processus de construction, la nouvelle version doit être installée par le biais d'un téléchargement Testflight. Si vous rencontrez des problèmes, restez calme, et demandez de l'assistance à la communauté iAPS ou consultez la documentation. N’oubliez pas que la résolution des problèmes fait partie intégrante de l'utilisation d'un logiciel et qu'avec de la patience, vous pourrez surmonter les difficultés qui se présenteront. En conclusion, rester informé et proactif avec iAPS est essentiel pour optimiser la gestion de votre diabète. En restant au courant des mises à jour du logiciel, en suivant les directives de soins, et en réglant rapidement tout problème rencontré, vous pouvez vous assurer d'une expérience fluide et efficace. Donnez la priorité à la sécurité, tenez des registres précis et utilisez les ressources disponibles pour obtenir de l'aide. Profitez des possibilités offertes par iAPS pour améliorer votre santé et votre bien-être.
