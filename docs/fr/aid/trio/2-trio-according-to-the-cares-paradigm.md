<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q88IzpWnOtFjKyWOSDZDnph&index=1" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. Trio selon le paradigme CARES</u>**

Dans cette vidéo, nous aborderons le Trio selon le paradigme CARES. Nous discuterons de la manière dont Trio calcule et ajuste l'administration automatisée d'insuline, de sa reprise du mode manuel, de conseils spécifiques en matière d'éducation et des spécificités du capteur, ainsi que de la manière dont le suivi des données se fait. Nous passerons ensuite en revue les indications de Trio et les mises à jour logicielles. C'est parti !

### 1) Trio selon le paradigme CARES

### 2.1 Calcul

Avec Trio, l'algorithme par défaut ajuste uniquement le débit basal. Le débit prédéfini est ajusté en fonction de la glycémie prévue pour les 5 à 9 heures suivantes. Voici un aperçu du fonctionnement de Trio :

- Trio réunit différentes prévisions de glycémie ou « BG » pour calculer la glycémie prévue de l'utilisateur à la fin de la durée d'action complète de l'insuline actuellement administrée, ou DIA : - Une glycémie prévue à partir des glucides, qui est une prévision basée sur les glucides présents dans l'organisme ;

- Une glycémie prédite par l'insuline, qui est une prédiction basée sur l'insuline active ;

- Une glycémie prédite par un repas imprévu, qui est une prédiction en cas de consommation imprévue de glucides ou d'autres conditions entraînant un changement inattendu des besoins en insuline ; et

- Une glycémie avec temp basal à zéro, ce qui correspond au pire scénario, au cas où l'insuline ne serait soudainement plus administrée et où les glucides restants ne seraient plus absorbés.

- Trio prend en compte les erreurs de prédiction, car la prédiction BG éventuelle est ajustée en fonction de l'écart entre la glycémie actuelle et la glycémie prédite, également appelé impact glycémique. L'algorithme prend également en compte la tendance glycémique en calculant le delta, ou la différence entre la glycémie actuelle et passée. Il tient également compte de la dynamique glycémique à court et à long terme, qui correspond à la variation entre la glycémie actuelle et celle d'il y a 15 et 40 minutes.

- Le besoin en insuline ou InsulReq est calculé en soustrayant la glycémie cible de la glycémie minimale prévue, puis en divisant cette différence par la sensibilité à l'insuline, ou ISF. Ce besoin en insuline déterminera s'il faut augmenter ou diminuer le débit basal préréglé manuellement.

- Si une hypoglycémie est prévue, l'insuline basale sera arrêtée et la prise de glucides de secours pourra être recommandée. Ce seuil de sécurité minimum est déterminé par la glycémie cible, mais peut être dépassé jusqu'à 120 mg/dl ou 6.7 mmol/l.

En conclusion, l'administration d'insuline, y compris la dose basale de base, sera augmentée ou diminuée en fonction des besoins calculés en insuline. Cela apparaît dans l'application sous la forme d'une dose basale temporaire ou temporaire avec un débit et une durée d'insuline spécifiés ou d'un microbolus, et ces doses basales temporaires sont recalculées toutes les 5 minutes. Un nouveau calcul de Trio est également appelé “cycle en boucle”. Dans Trio, il est possible de choisir entre l'administration de l'insuline calculée sous forme de super microbolus ou sous forme de débit basal temporaire traditionnelle. Lorsqu'elle est administrée sous forme de microbolus, la même dose d'insuline est délivrée plus rapidement, suivie d'une pause temporaire ou d'une réduction de l'administration d'insuline basale. Le mode de calcul de ces super microbolus, ou SMB, à partir des débits basaux temporaires peut être ajusté dans le cadre de paramètres de sécurité prédéfinis. Trio utilise également une fonction d'autosensibilité qui augmente ou diminue l'administration d'insuline en fonction d'une comparaison de la sensibilité à l'insuline de l'utilisateur au cours des 8 et 24 dernières heures.

- Il calcule un pourcentage qui indique la différence entre la sensibilité à l'insuline au cours des dernières heures et la sensibilité actuellement définie, puis utilise ce pourcentage pour ajuster votre sensibilité à l'insuline et votre débit basal d'insuline.

- La fonction Autosens peut également être appliquée à la valeur cible, en l'ajustant en fonction du rapport de sensibilité calculé.

- Les ratios maximal et minimal d'Autosens sont respectivement fixés à 120 % et 70 %. Ils déterminent les pourcentages d'ajustement maximal et minimal en fonction de la fonction Autosens. Cela signifie que les valeurs, et donc l'insuline administrée, peuvent être ajustées de 120 % au maximum et de 70 % au minimum à l'aide d'Autosens.

- Si vous activez la fonction « Repas non annoncé », l'algorithme détectera les augmentations rapides de glucose causées par les glucides, l'adrénaline, etc., et tentera de les ajuster à l'aide de SMB. Cela fonctionne également dans le sens inverse : en cas de baisse rapide du glucose, il peut arrêter les SMB plus tôt. De plus, Trio propose la fonction Dynamic ISF, ou facteur de sensibilité à l’insuline dynamique, qui permet d'ajuster votre sensibilité à l'insuline de manière plus agressive.

- Si vous activez la fonction Dynamic ISF, celle-ci remplace le calcul du pourcentage Autosens.

- Il ajuste votre ISF, mais de manière dynamique, en fonction de votre glycémie actuelle. Il existe un ajustement inverse de l'ISF ; plus votre glycémie est élevée, plus votre ISF est faible, et vice versa.

- La formule par défaut pour l'ISF dynamique utilise une échelle logarithmique pour déterminer le rapport d'ajustement de l'ISF.

- Ce calcul combine l'insuline quotidienne totale des deux dernières heures et des dix derniers jours, la glycémie actuelle et le type d'insuline utilisé afin de déterminer la sensibilité actuelle à l'insuline pour ce cycle de boucle. Cette méthode est vue comme la plus précise sur le plan physiologique pour déterminer la sensibilité à l'insuline à partir des mesures de glycémie.

- L’indicateur ISF logarithmique dynamique doit d'abord être réglé manuellement au moment où il est activé. Le facteur d'ajustement logarithmique doit commencer à environ

### 0.02 x votre dose quotidienne totale moyenne d'insuline.

Le facteur d'ajustement est une valeur très individuelle et sera différent pour chaque personne.

- L'agressivité logarithmique peut être ajustée à l'aide des paramètres Autosens Maximum et Minimum. Le facteur d'ajustement logarithmique ne doit pas être utilisé pour modifier l'agressivité.

- La deuxième option pour Dynamic ISF utilise une formule sigmoïde.

- Cette formule est plus simple et contient moins de variables, mais elle est moins précise sur le plan physiologique. Sigmoid n'utilise pas votre insuline quotidienne totale, mais se base uniquement sur l'écart entre votre glycémie actuelle et votre objectif. Avec Sigmoid, Dynamic ISF utilise le profil ISF lorsque vous atteignez votre objectif glycémique.

- L'agressivité de Sigmoid peut être ajustée à l'aide de 3 paramètres : le facteur d'ajustement Sigmoid, Autosens Maximum et Autosens Minimum. Dans Sigmoid, le facteur d'ajustement ne doit jamais être supérieur à 100 % et doit rester autour de 50 % pour la plupart des utilisateurs. Une valeur inférieure à 50 % entraînera une réponse plus lente, tandis qu'une valeur supérieure à 50 % entraînera une réponse plus rapide.

- Si un utilisateur n'est pas en mesure de régler ses paramètres logarithmiques, l'option Sigmoïde est recommandée. L'option Sigmoïde est également idéale pour les utilisateurs dont la sensibilité à l'insuline varie rapidement, comme les femmes qui présentent des variations au cours de leur cycle menstruel. La valeur cible de glycémie du Trio peut être réglée entre 72 et 180 mg/dl ou entre 4 et 10 mmol/l. Trio accorde une grande importance à la sécurité et intègre divers paramètres et limites de sécurité afin d'éviter toute administration d'insuline potentiellement dangereuse. Afin de garantir une configuration correcte du système par les utilisateurs, la communauté d'utilisateurs propose des paramètres défensifs et a désactivé la fonction Dynamic ISF pendant les 7 premiers jours d'utilisation en boucle fermée. Au cours des semaines suivantes, vous pouvez progressivement passer à des paramètres plus agressifs.

### 2.2 Ajustement

Dans Trio, vous pouvez ajuster divers paramètres afin de personnaliser votre traitement.

- Vous pouvez définir une valeur cible unique pour le glucose par tranche de 30 minutes comprise entre 72 et 180 mg/dl (4 et 10 mmol/l). Les directives internationales recommandent de commencer avec une valeur cible comprise entre 110 et 120 mg/dl (ou 6 et 6.5 mmol/l). De nombreux utilisateurs optent pour une valeur cible de 100 mg/dl (ou 5.6 mmol/l) pendant la journée et encore plus basse pendant la nuit, par exemple 90 mg/dl (ou 5 mmol/l). Cela peut être envisagé si cela ne provoque pas d'hypoglycémie significative. Le ratio glucidique, la sensibilité à l'insuline, et le pic d'insuline peuvent être ajustés en fonction de vos besoins spécifiques.
- La durée d'action de l'insuline dans les systèmes en boucle fermée open source est généralement plus longue que dans les modèles traditionnels, en raison de la prise en compte de l'effet prolongé de l'insuline et de l'impact que cela aura sur le modèle de décroissance de l'insuline. Trio utilise une durée d'action de l'insuline de 10 heures, car la formule interne utilisée pour la décroissance de l'insuline correspond le mieux à la décroissance rapportée par les fabricants d'insuline.

- Trio vous permet de sélectionner le type d'insuline que vous utilisez. Vous pouvez choisir parmi plusieurs options, telles que Apidra, Humalog, Novorapid ou NovoLog, Fiasp et Lyumjev. En fonction du type d'insuline sélectionné, Trio vous fournira un profil correspondant. De plus, bien que la durée d'action de l'insuline ne doive pas être ajustée, le pic d'action de l'insuline peut varier d'une personne à l'autre et ce paramètre peut être ajusté si nécessaire. Trio comporte de nombreux autres paramètres réglables, mais nous nous intéresserons ici aux principaux : options SMB, pourcentage de bolus recommandé, options Autosens, ISF dynamique, et limites d'administration.

- Lorsque vous commencez à utiliser Trio en « boucle fermée », il est recommandé d'utiliser les supermicrobolus uniquement après avoir consommé des glucides. Si cela vous convient, vous pouvez choisir d'activer les SMB à d'autres moments également. Si des options SMB sont activées, la fonction repas non annoncé doit également être activé. Vous pouvez rendre les SMB plus ou moins agressifs en ajustant le nombre maximal de minutes basales SMB.

- Dans Trio, vous pouvez modifier la quantité d'insuline suggérée par le calculateur de bolus en modifiant le pourcentage de bolus recommandé. Trio calcule d'abord une dose d'insuline à l'aide du calculateur de bolus intégré, qui sera ensuite multipliée par votre « pourcentage de bolus recommandé » afin d'afficher la dose d'insuline suggérée. Trio administrera le reste de l'insuline via des SMB lorsque la glycémie commencera à augmenter. Vous pouvez consulter les détails du calcul du bolus en appuyant sur l'« icône d'information » à côté de la recommandation.

- Trio ajuste automatiquement votre sensibilité à l'insuline grâce à la fonction Autosens. Vous pouvez activer Autosens pour ajuster également votre plage cible de glycémie. Vous pouvez définir le pourcentage maximal et minimal auquel votre ISF peut être adapté. Et vous pouvez autoriser Autosens à ajuster votre ISF lorsque vous définissez une plage cible temporaire.

- La fonction Dynamic ISF peut être activée via les paramètres dynamiques après 7 jours de boucle fermée réussie. Le réglage de l'agressivité de la fonction Dynamic ISF dépend de la formule utilisée. Une fois le facteur d'ajustement logarithmique approprié défini, la fonction Logarithmic Dynamic ISF peut être réglée à l'aide des paramètres Autosens Maximum et/ou Minimum. La fonction Sigmoid Dynamic ISF peut être réglée à l'aide des paramètres Sigmoid Adjustment Factor, Autosens Maximum et/ou Autosens Minimum.

- De plus, Trio impose des limites de livraison qui peuvent être ajustées dans une plage sûre en fonction de l'âge et du type d'utilisateur. - Vous pouvez définir votre insuline maximale à bord, votre bolus maximal, votre débit basal maximal, vos glucides maximaux à bord, et un seuil de sécurité minimal. L'insuline maximale à active, ou IOB correspond à la quantité totale d'insuline basale et bolus pouvant être active simultanément. Elle sert de plafond de sécurité sur la quantité d'insuline que Trio peut administrer au-delà de vos débits basaux programmés. Dans Trio, cette valeur est définie par défaut sur 0 pour des raisons de sécurité et doit être augmentée manuellement avant que l'administration automatisée d'insuline ne commence. Pour les adultes, il est recommandé de régler le débit basal maximal à 3 à 5 fois le débit basal le plus élevé.

- Le facteur de sécurité quotidien maximal et le multiplicateur de sécurité basal actuel sont des limites supplémentaires pour le débit basal maximal d'insuline, et il est conseillé de ne pas les modifier au départ. Le multiplicateur quotidien maximal est réglé par défaut à 300 %, ce qui permet d'atteindre au maximum 3 fois le débit basal maximal réglé manuellement. Le multiplicateur du mode basal actuel est réglé à 400 %, ce qui permet d'atteindre au maximum 4 fois le débit basal réglé manuellement. Ces valeurs peuvent être augmentées en toute sécurité jusqu'à 500 % si vos débits basaux sont faibles par rapport à vos besoins globaux en insuline pour les glucides. N'oubliez pas que tous les réglages et paramètres doivent être ajustés en consultation avec votre professionnel de santé, en tenant compte de vos besoins individuels et de ses recommandations médicales.

### 2.3 Reprise du mode manuel

Dans Trio, s'il n'y a pas de connexion au capteur ou à la pompe pendant plus de 15 minutes, le système repasse en mode manuel. Si déconnectée, la pompe continue à administrer le dernier débit basal temporaire défini. Après un maximum de 120 minutes pour les débits avec temp basal à zéro ou de 30 minutes pour les débits basaux temporaires augmenté, elle passe en mode manuel. En mode manuel, ou boucle ouverte, l'administration d'insuline basale est réglée sur le débit basal prédéfini sans fonction de suspension avant hypoglycémie. Actuellement, la boucle ouverte n'est pas recommandée pour les utilisateurs de Trio. Si vous souhaitez utiliser votre pompe en mode manuel, il est préférable de régler l'insuline maximale active (ou Max IOB) sur 0 et de régler les valeurs maximale et minimale d'Autosens sur 100 %. Vous bénéficierez ainsi d'une fonction de suspension avant hypoglycémie sans aucune fonction Autosens ou dynamique. Une fois la connexion à la pompe ou au capteur rétablie, le système reprendra automatiquement le mode automatique, ou « boucle fermée » dans Trio. Il faudra 2 à 3 lectures consécutives après une déconnexion du capteur pour que Trio reprenne automatiquement la boucle fermée.

### 2.4 Éducation

Une formation adéquate est essentielle avant de commencer à utiliser un système automatisé d'administration d'insuline. Pour les points généraux relatifs à la formation, consultez le module générique. Les points généraux abordés étaient les suivants :

- Consommer un volume de glucides moins important pour corriger l'hypoglycémie.

- Envisager des problèmes liés au kit de perfusion si le taux de glycémie reste élevé sans raison apparente.

- Se fier au système automatisé d'administration d'insuline et éviter les interventions manuelles inutiles.

- Programmer les bolus de repas 15 minutes avant les repas.

- Passer en mode Exercice 1 à 2 heures avant l'activité physique.

- Arrêter l'administration d'insuline si la pompe est déconnectée pendant plus de 15 minutes.

- Répondre aux alarmes et être attentif aux mises à jour automatiques sur les téléphones mobiles. Les mises à jour automatiques iOS doivent être désactivées, car les nouvelles versions iOS peuvent ne pas prendre immédiatement en charge Trio ; la compatibilité doit toujours être vérifiée au préalable.

- Rechercher du soutien par les pairs pour obtenir des conseils et partager des expériences. Trio est un outil puissant pour gérer le diabète, mais il ne faut pas oublier qu'il ne s'agit pas d'un système entièrement automatisé que vous pouvez « configurer et oublier ». Il nécessite une surveillance active et une bonne compréhension de son fonctionnement. Voici quelques informations supplémentaires spécifiques à l'utilisation de Trio :

- Surveillance active : Trio contrôle votre administration d'insuline, il est donc essentiel de le surveiller de près et de comprendre son fonctionnement. Soyez attentif à toute erreur potentielle ou tout comportement inattendu et apprenez à interpréter les actions du système.

- Utilisation du smartphone : une fois couplé, le smartphone peut commander à la pompe d'effectuer diverses actions. Votre smartphone équipé de Trio doit être considéré comme un dispositif médical et manipulé en conséquence. Évitez d'installer des applications ou des jeux inutiles qui pourraient introduire des logiciels malveillants et potentiellement interférer avec le fonctionnement du système.

- Mesures de sécurité : installez toutes les mises à jour de sécurité fournies par Apple afin de protéger votre appareil. Cela permet de vous prémunir contre d'éventuelles failles de sécurité. N'activez pas les options « Mises à jour automatiques » ou « Mises à jour bêta » dans les paramètres de mise à jour logicielle de votre iPhone. Vérifiez d'abord la prise en charge d'une version iOS spécifique dans la communauté Trio avant de mettre à niveau le système d'exploitation de votre iPhone.

- Proximité avec la pompe et le CGM : gardez votre smartphone à proximité de votre pompe à insuline et de votre CGM. Il doit se trouver à une distance recommandée (généralement moins de 5 mètres or 15 pieds pour le CGM) afin de maintenir une connexion fiable.

- Mots de passe et sauvegardes : conservez une trace de tous les mots de passe utilisés et sauvegardez votre application dans iCloud. L'exportation régulière de vos paramètres vers iCloud simplifie le processus de réinstallation et évite la réinitialisation de vos paramètres personnalisés.

- Appareil de secours : il est conseillé d'avoir un smartphone de secours sur lequel sont installées l'application Trio et les applications CGM, en cas d'urgence. Vous disposez ainsi d'un appareil de secours en cas de problème technique avec votre téléphone principal.

- Vérifiez d'abord les paramètres de base : il est recommandé de fermer la boucle et d'utiliser les 7 premiers jours sans accès à l'ISF dynamique pour vérifier tous vos paramètres de base tels que le débit basal, le ratio glucidique, et la sensibilité à l'insuline. a. Les résultats du système Trio dépendent en grande partie de l'exactitude de ces paramètres de base, qui doivent donc être précis. b. Augmentez ensuite lentement le « maximum d'insuline à bord » afin de permettre à Trio de doser automatiquement l'insuline. Cette valeur est réglée par défaut sur 0 et peut être augmentée progressivement jusqu'à atteindre la somme de votre bolus moyen par repas plus 3 fois votre débit basal le plus élevé. c. Ensuite, vous pouvez activer plusieurs options SMB individuelles ou SMB Systématiques.

- Paramètres avancés : n'utilisez les paramètres avancés, tels que les minutes basales SMB maximales et l'ISF dynamique, qu'après avoir bien compris les principes de base et atteint un contrôle glycémique stable. Ces fonctionnalités peuvent fonctionner de différents degrés d’optimisation selon l'utilisateur.

- Accès pour professionnels de santé : assurez-vous que votre professionnel de santé a accès à vos rapports générés par Nightscout ou Tidepool. Cela lui permet de rester informé de la gestion de votre diabète et de prendre des décisions éclairées lors de vos consultations médicales.

- Maîtrise de l'utilisation de la pompe à insuline et du capteur : assurez-vous également de savoir utiliser correctement votre pompe à insuline et votre capteur. En suivant ces directives et en adoptant une approche proactive dans l'utilisation de Trio, vous pouvez optimiser l'efficacité du système et garantir une administration automatisée de l'insuline sûre et fiable.

### 2.5 Sensibilité aux capteurs

Trio peut être connecté aux capteurs Dexcom G5, G6, G7 et One Plus, aux capteurs européens FreeStyle Libre 2 et Libre 2 Plus, ainsi qu'aux capteurs Medtronic Enlite via les anciennes pompes Medtronic. Étant donné que Trio peut se connecter directement aux capteurs européens FreeStyle Libre 2 et Libre 2 Plus, l'application LibreLink n'est nécessaire que pour démarrer un nouveau capteur dans ces cas-là. Pour les capteurs Dexcom, vous devez avoir l'application Dexcom associée installée sur votre iPhone afin que Trio puisse récupérer votre taux de glucose. Trio accepte également d'autres applications open source telles que Nightscout comme CGM ou xDrip4iOS. Ces applications peuvent être utilisées pour transmettre les données du capteur à Trio via une connexion Internet, bien que les connexions natives à CGM soient plus stables. Certains utilisateurs optent pour des applications open source pour bénéficier de meilleures alarmes et d'une meilleure connexion à d'autres appareils. Dans un système AID, il est essentiel que les valeurs du capteur soient continues et précises pour garantir un dosage correct de l'insuline. Si la lecture glycémique du capteur est instable ou bruyante, cela peut entraîner un dosage incorrect de l'insuline, ce qui se traduit par des taux de glycémie élevés ou bas. Dans ce cas, il est important de désactiver le mode automatique jusqu'à ce que le problème soit résolu. Le problème peut être lié à la configuration du capteur ou à des problèmes avec le capteur ou le site. Si nécessaire, il peut être nécessaire de remplacer le capteur de glucose pour résoudre le problème. Si vous constatez des valeurs de capteur instables ou bruitées, vous pouvez essayer d'activer la fonction « Valeur de glucose lissée » dans les paramètres de l'appareil CGM. Si votre capteur n'affiche pas de chiffre ou de flèche, ou si vos résultats ne correspondent pas à vos symptômes, utilisez votre glucomètre pour prendre des décisions concernant le traitement du diabète. En cas de doute, sortez le glucomètre. Si vous constatez une différence significative entre la valeur mesurée par votre capteur et celle obtenue par ponction capillaire, alors que votre glycémie est stable et dans les limites normales, vous pouvez essayer de calibrer votre capteur. Pour ce faire, rendez-vous dans les paramètres Trio, dans le menu CGM ou directement dans l'application du capteur.

### 2.6 Suivi

Dans Trio, le partage des données glycémiques avec les professionnels de santé et les membres de la famille est possible via Nightscout, Tidepool, Apple Health et via Dexcom Share ou LibreView. Le partage des données glycémiques et insuliniques n'est possible que via Nightscout et Tidepool, Nightscout étant l'option préférée. Nightscout est la seule plateforme qui prend en charge l'ensemble des données Trio et les commandes à distance ; Tidepool ne prend pas en charge le dosage à distance et nécessite des téléchargements manuels. Pour utiliser Nightscout, vous devez créer un site Web Nightscout personnel. Trio peut envoyer les données au site Web Nightscout, permettant ainsi à votre prestataire de soins de santé d'accéder à vos rapports et de les consulter en temps réel. Les soignants peuvent accéder aux données du site Web personnel Nightscout via l'application Loop Follow et Nightscout. Cela leur permet de consulter et de suivre vos informations relatives à l'insuline et au glucose, et de rester informés de la gestion de votre diabète. Les soignants peuvent même administrer un bolus d'insuline, saisir les glucides, et modifier le profil d'insuline à distance, grâce à Loop Follow. Pour ce faire, Nightscout doit être configuré pour utiliser les commandes à distance, et les soins à distance doivent être activés dans l'application Trio. Dans les paramètres Trio, plusieurs raccourcis iOS sont disponibles, mais les raccourcis iOS Bolus doivent être activés en « Autorisant le bolus avec les raccourcis ». Cela pourrait également aider les parents à aider leurs jeunes enfants à distance. Les utilisateurs peuvent télécharger des rapports depuis Nightscout et Tidepool ou utiliser des outils tels que Nightscout Reporter pour générer des rapports complets pouvant être partagés avec les prestataires de soins de santé à des fins d'analyse et d'évaluation approfondies. En tirant parti de ces fonctionnalités de partage, les utilisateurs de Trio peuvent faciliter une communication et une collaboration efficaces avec leur équipe soignante et leurs proches, favorisant ainsi un environnement propice à la gestion du diabète et à la prise de décisions éclairées.

### 2.7 Indications

Trio est une application open source qui ne dispose pas d'indications officielles approuvées par la FDA ou les autorités européennes. Elle peut être utilisée avec tous les analogues d'insuline à action rapide et ultra-rapide. L'application Trio n'est pas disponible au téléchargement dans les boutiques d'applications. Les utilisateurs doivent créer eux-mêmes l'application, à leurs propres risques. La configuration du système nécessite de la détermination et la volonté de suivre les instructions et d'apprendre. Si vous ne disposez pas des connaissances techniques nécessaires au début, vous les aurez à la fin. Toutes les informations nécessaires se trouvent dans la documentation Trio disponible en ligne, ainsi qu'auprès d'autres utilisateurs de ce dispositif. Une assistance est également disponible via le groupe Facebook Trio, ou d'autres forums tels que Discord. Discord est principalement utilisé pour les sujets liés au développement et à la construction, tandis que Facebook est davantage utilisé pour l'aide aux utilisateurs finaux. Les deux peuvent être utilisés en parallèle ; or, évitez d’aborder des problèmes de façon redondante dans les deux environnements. Facebook et Discord sont deux plateformes fortement recommandées pour les discussions interactives entre les utilisateurs de Trio et Nightscout, les parents et les développeurs. Elles couvrent un large éventail de sujets, allant des questions des nouveaux utilisateurs aux discussions plus techniques sur le fonctionnement interne de Trio et l'algorithme OpenAPS. La langue principale est toutefois l'anglais. De nombreuses personnes diabétiques ont réussi à installer Trio et l'utilisent désormais en toute sécurité, mais il est essentiel pour les utilisateurs de Trio de :

- Comprendre le fonctionnement de leur pompe à insuline et de leur capteur de glucose.

- Ajuster son algorithme de dosage individuel avec l'aide de son équipe de soins du diabète.

- Entretenir et surveiller le système afin de s'assurer qu'il fonctionne correctement.

- Construire et configurer le système soi-même afin de bien comprendre son fonctionnement, ou faire appel à une source fiable pour télécharger et utiliser l'application Trio depuis Testflight. Les applications Testflight ont une validité de 90 jours, car cet environnement iOS est pris en charge par Apple pour tester de nouvelles applications. Pour utiliser Trio, vous aurez besoin d'un iPhone compatible fonctionnant sous iOS 17 ou une version plus récente. Les exigences minimales pour vos appareils sont indiquées dans la documentation Trio. Pour la création du système, vous aurez besoin d'une licence Apple Developer renouvelable chaque année, qui coûte 99 dollars américains par an. Une fois cet accès activé, vous pouvez démarrer le processus de création de deux manières différentes.

- Vous pouvez suivre la procédure « Créer un trio avec Script » à l'aide d'un ordinateur Mac équipé de Xcode Création d'un trio. Pour cette méthode, vous devrez d'abord mettre votre iPhone et votre Apple Watch, le cas échéant, en mode développeur. Sur votre appareil, vous pouvez activer cette fonction via Paramètres et Confidentialité et sécurité.

- Vous pouvez également suivre la procédure « Build Trio with GitHub », également appelée « browser build », car elle peut être effectuée depuis n'importe quel ordinateur. Une fois cette méthode terminée, vous pouvez télécharger l'application Trio sur votre iPhone via Testflight. Le principal avantage de cette méthode est qu'elle facilite la création et la mise à jour de votre application Trio. Certains utilisateurs ne créent pas eux-mêmes l'application Trio, mais sont invités à l'utiliser via une invitation TestFlight. Certains professionnels de santé peuvent être à l'aise avec le partage de l'application. Si votre professionnel de santé vous fournit l'application, vous n'aurez pas besoin d'une licence Apple Developer.

### 2.8 Mises à jour logicielles

Les mises à jour régulières du logiciel sont essentielles pour maintenir des performances optimales et accéder aux dernières fonctionnalités de Trio. L'équipe Trio publie régulièrement de nouvelles versions. Ces mises à jour comprennent souvent des corrections de bogues et des améliorations visant à optimiser les fonctionnalités du système. La version de Trio est indiquée en haut de l'écran Paramètres. Les versions « principales » et « dev » les plus récentes sont également mentionnées, afin d'indiquer les versions « plus récentes » disponibles. Une fois tous les trois mois, vous devrez mettre à jour votre application Trio. Pour mettre à jour Trio, procédez comme suit :

- Il est recommandé de mettre à jour les paramètres de votre iPhone vers iCloud. Ainsi, tous les paramètres de votre Trio seront sauvegardés sur iCloud. Vous pouvez sauvegarder votre iPhone via les paramètres.

- Lors de la construction, conservez les mêmes touches de signalisation que lors de l'installation précédente.

- Si vous utilisez la méthode « Créer un trio avec le script », vous utiliserez Xcode pour actualiser le code vers la nouvelle version, tandis que votre iPhone et votre Apple Watch sont connectés et alimentés.

- Dans le cas de la méthode « Browser build » ou version navigateur, une fois le processus de compilation terminé, la nouvelle version doit être installée via un téléchargement Testflight. Si vous rencontrez des problèmes, restez calme et demandez de l'aide à la communauté Trio et consultez la documentation. N'oubliez pas que le dépannage fait partie intégrante de l'utilisation d'un logiciel et qu'avec un peu de patience, vous pouvez surmonter toutes les difficultés qui se présentent. En conclusion, rester informé et proactif avec Trio est essentiel pour optimiser la gestion de votre diabète. En vous tenant au courant des mises à jour logicielles, en suivant les directives de soins et en traitant rapidement tout problème, vous pouvez garantir une expérience fluide et efficace. Privilégiez la sécurité, tenez des registres précis et utilisez les ressources disponibles pour obtenir de l'aide. Profitez des possibilités offertes par Trio pour améliorer votre santé et votre bien-être. 3. Interconnecter les composants Dans ce tutoriel vidéo, nous vous guiderons tout au long du processus de création des liens nécessaires au sein du système automatisé d'administration d'insuline Trio. Ces liens établissent des connexions entre divers composants afin d'assurer une communication et un échange de données fluides. Trio fonctionne de la manière suivante :

- Un capteur, tel que Dexcom G6, G7, Dexcom ONE Plus, FreeStyle Libre 2 ou FreeStyle Libre 2, mesure la glycémie toutes les 1 à 5 minutes.

- Après avoir démarré votre capteur Libre 2 ou 2 Plus européen avec votre application LibreLink, le capteur envoie les mesures de glycémie directement à votre application Trio. Avec les capteurs Dexcom, l'application Dexcom doit rester active.

- Trio calcule la dose d'insuline requise et l'envoie à votre pompe à insuline, telle que Omnipod DASH, Medtrum Nano, Dana RS, Dana-i, Omnipod Eros ou les anciennes pompes Medtronic.

- La pompe à insuline administre l'insuline nécessaire et transmet les données de la pompe à l'application Trio.

- Trio partage les données relatives à la glycémie et à l'insuline avec Nightscout, qui sert de programme de lecture. Trio partage également ces informations avec Apple Health et Tidepool, tandis que les applications Dexcom et LibreLink envoient les données relatives au glucose respectivement à Dexcom Clarity et LibreView.

- L'application Trio propose également une version Apple Watch qui s'installe au même moment que de compilation et d'installation. Cela vous permet de consulter vos valeurs glycémiques en temps réel sur votre Apple Watch, d'administrer un bolus d'insuline, voire de démarrer et d'arrêter des dérogations et des cibles temporaires directement depuis votre Apple Watch, ce qui facilite la gestion de votre diabète. Dans ce tutoriel vidéo, nous vous guiderons tout au long de la création de différents liens dans le système automatisé d'administration d'insuline Trio . Plus précisément, nous aborderons les étapes suivantes :

- La connexion du capteur à l’application Trio ;

- L’appairage de la pompe à insuline ;

- La création d'un compte Nightscout, qui sert de centre de données pour Trio ;

- L’établissement d’une connexion entre l'application Trio et Nightscout afin d'assurer le transfert fluide des données relatives à la glycémie et à l'insuline ; et

- La configuration de Trio sur votre Apple Watch. En suivant ces étapes, vous serez en mesure d'établir les liens nécessaires au sein du système Trio, permettant ainsi une fonctionnalité efficace d'administration automatisée d'insuline pour la gestion du diabète.
