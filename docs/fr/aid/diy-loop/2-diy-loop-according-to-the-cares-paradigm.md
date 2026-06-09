<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q9c0-2zGWG6eC3O-C-am44m&index=1" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. La Boucle Fermée DIY selon le paradigme CARES</u>**

Dans cette vidéo, nous étudierons les aspects de la boucle fermée DIY selon le paradigme CARES. Nous verrons comment DIY Loop calcule et ajuste l'administration automatisée d'insuline, quand il repasse en mode manuel, quels sont les conseils d'éducation spécifiques et les problèmes liés aux capteurs, et comment il partage les données. Ensuite, nous passerons en revue les indications de DIY Loop et les mises à jour du logiciel. C'est parti !

### 2.1 La Boucle Fermée DIY selon CARES

#1 Calculate La boucle DIY ajuste le débit d'insuline basal prédéfini en fonction des prévisions des taux de glucose pour la durée d'activité de l'insuline définie, qui est fixée à 6 heures par défaut. Ces prévisions sont calculées à l'aide de plusieurs facteurs :

- Le facteur [Carbs On Board], ou des glucides embarqués, estime l'effet des glucides sur le taux de glucose à l'aide d'un modèle dynamique d'absorption des glucides.

- Le facteur [Insulin On Board], ou d’insuline embarquée, prend en compte l'impact de l'insuline déjà présente dans le corps sur les futurs taux de glucose.

- La trajectoire du glucose est observée dans l’évolution du taux de glucose entre la lecture actuelle et la lecture d'il y a 15 à 30 minutes, indiquant la rapidité de l'augmentation ou de la diminution du glucose.

- Enfin, la prédiction de correction rétrospective prend en compte la différence entre les taux de glucose prédits et réels au cours des 30 dernières minutes, en intégrant cette différence dans les valeurs prédites. La boucle DIY calcule le besoin en insuline en déduisant le glucose cible du glucose prédit, avec le taux de glucose cible et en divisant la différence par le facteur de sensibilité à l'insuline. Ce besoin en insuline est utilisé pour ajuster le débit d'insuline basal prédéfini. Dans le logiciel Loop, les utilisateurs peuvent choisir entre "Temp Basal Only" et "Automatic Bolus" pour leur stratégie de dosage de l'insuline.

- En mode [Temp Basal Only], l'application calcule des débits de base temporaires toutes les 5 minutes pendant les 30 minutes suivantes en fonction des taux de glucose prévus. Cela permet d'ajuster en permanence le débit de base.

- En mode [Automatic Bolus], l'application calcule des ajustements de dose automatiques toutes les 5 minutes. Si l'application prévoit une augmentation des besoins en insuline, cette augmentation est fournie sous la forme de 40 % du bolus recommandé au lieu d'une augmentation de la dose de base temporaire. Cela permet une administration plus rapide de l'insuline. Certains utilisateurs recommandent de commencer par le mode [Temp Basal Only] et de passer au mode [Automatic Bolus] une fois que les réglages ont été testés et que la glycémie est stable. Cela permet de s'habituer à l'utilisation de la boucle fermée DIY et à ses ajustements du débit de base, du rapport glucidique et de la réactivité à l'insuline, avant de passer à une approche plus agressive de l'administration d'insuline. Si le taux de glucose est inférieur au seuil de sécurité, l'administration d'insuline basale est interrompue. Ce seuil peut être réglé entre 67 et 110 mg/dl ou 3.7 et 6.0 mmol/l. S'il est prévu que la glycémie tombe en dessous du seuil de sécurité glycémique au cours des 3 prochaines heures, Loop ne recommandera pas l'administration d'insuline basale ou de bolus. La valeur cible de la glycémie, appelée la Correction Range ou la plage de correction dans dans l’application Loop, peut être personnalisée par tranche de 30 minutes. Elle peut être comprise entre 87 et 180 mg/dl ou 4.8 et 10 mmol/l.

#2 Adjust Dans DIY Loop, les utilisateurs de ont la possibilité d'ajuster différents paramètres pour personnaliser l'administration d'insuline et la gestion du glucose. Ces paramètres sont les suivants :

- Les utilisateurs peuvent définir leur valeur cible ou leur plage de correction par tranches de 30 minutes, allant de 87 à 180 ou de 4.8 à 10 mmol/l.

- Elle est généralement comprise entre 100 et 115 mg/dl ou 5.6 et 6.3 mmol/l.

- Lors de la définition de la cible de correction, les utilisateurs peuvent choisir soit une valeur cible unique, soit une plage. Si vous optez pour une plage, il est généralement recommandé de choisir une plage étroite avec une différence de 5 à 15 mg/dl ou 0.3 à 0.8 mmol/l.

- Le débit d'insuline basal peut être réglé par intervalles de 30 minutes.

- Les utilisateurs peuvent définir le rapport glucidique qui détermine la quantité d'insuline nécessaire pour couvrir une quantité spécifique de glucides consommés.

- Et le facteur de sensibilité à l'insuline. Ce paramètre définit dans quelle mesure une unité d'insuline est censée réduire la glycémie.

- Le seuil de sécurité du glucose peut également être ajusté. Il s'agit du niveau de glucose minimum à partir duquel l'administration d'insuline basale est interrompue pour éviter l'hypoglycémie. Il peut être réglé entre 67 et 110 mg/dl ou 3.7 et 6.0 mmol/l, et il est recommandé de le fixer autour de 74 et 80 mg/dl ou 4.2 et 4.4 mmol/l.

- La plage préprandiale est un paramètre facultatif qui définit la plage cible avant les repas et fonctionne comme un prébolus, car elle fournit une petite quantité d'insuline pour aider à contrôler les pics de glucose postprandiaux. L'intervalle préprandial reste actif pendant une heure, jusqu'à ce que des glucides soient saisis ou jusqu'à ce qu'il soit annulé manuellement. selon ce qui se produit en premier. Elle peut être réglée entre le seuil de sécurité glycémique et une valeur maximale de 130 mg/dl ou 7.2 mmol/l.

Elle est généralement réglée entre le seuil de sécurité glycémique et 106 mg/dl ou 5.9 mmol/l, par exemple à 80 mg/dl ou 4,4 mmol/l.

- Les utilisateurs peuvent également utiliser des dérogations pour ajuster temporairement la plage de correction ou spécifier un pourcentage de libération d'insuline, ce qui ajustera l'administration basale, la sensibilité et le rapport glucidique en fonction du pourcentage défini. En outre, si vous utilisez les pods Omnipod DASH, il existe une option de débit basal temporaire manuel, qui vous permet de définir un débit basal temporaire spécifique.

- Lors de la configuration initiale, les utilisateurs peuvent choisir entre les modes "Temp Basal Only" et "Automatic Bolus". Ils doivent également définir le débit basal maximum, qui est généralement fixé à 4 fois le débit basal le plus élevé par heure, ainsi qu'une limite maximale de bolus, qui doit être basée sur des besoins réalistes en bolus pour des repas plus copieux. De plus, les utilisateurs ont la possibilité de choisir un modèle d'insuline adapté à l'utilisation d'insulines à action rapide ou ultra-rapide.

#3 Reprise du mode manuel La boucle DIY repasse en mode manuel s'il n'y a pas de connexion au capteur ou à la pompe pendant plus de 15 minutes. Cela peut se produire lorsque le capteur se réchauffe, lorsque le smartphone est hors de portée, ou à cause d’une batterie faible. Lors du fonctionnement normal de la boucle DIY, un cercle vert s’affiche sur l'écran d'accueil de l'application Loop. L'icône de la boucle devient jaune ou rouge si la boucle n'a pas terminé un cycle pendant 15 minutes ou plus. Appuyer sur l'icône de la boucle vous indique la dernière fois qu’un cycle s'est terminé, mais vous devez consulter l'icône de l'état de la pompe et l'icône de l'état du glucose pour plus d'informations. Par exemple, lorsque la dernière lecture glycémique date de plus de 15 minutes, l'icône Glucose affiche 3 bandes, tandis que lorsque la pompe a un problème de communication, l'icône [No Data] est affiché. Lorsque la connexion est perdue, le système passe d'abord au dernier débit basal temporaire réglé. Après un maximum de 30 minutes sans connexion, la boucle DIY passe en mode manuel dans lequel l'administration d'insuline basale suit les réglages prédéfinis. Il est important de noter qu'en mode manuel, il n'y a pas de fonction de suspension avant hypo pour éviter l'hypoglycémie. Il est possible de saisir une valeur de glucose provenant d'une glycémie capillaire dans l'application Loop. Elle utilisera cette valeur pour calculer l'administration automatisée d'insuline. Une fois la connexion avec la pompe ou le capteur rétablie, la boucle DIY reprend automatiquement le mode automatique et poursuit l'administration automatisée d'insuline.

#4 Éducation Une formation adéquate est cruciale lors de la mise en place d'un système en boucle fermée. Pour des informations générales, consultez le module général. Les points de formation générale abordés sont les suivants :

- Consommer moins de glucides pour corriger l'hypoglycémie.

- Considérer des problèmes avec le dispositif de perfusion si la glycémie reste élevée sans raison apparente.

- Faire confiance au système en boucle fermée et éviter les interventions manuelles inutiles.

- Prévoir des bolus avant les repas.

- Passer en mode exercice 1 à 2 heures avant l'activité.

- Suspendre l'administration d'insuline si la pompe est déconnectée pendant plus de 15 minutes.

- Réagir aux alarmes et être attentif aux mises à jour automatiques sur les téléphones portables.

- Rechercher le soutien par les pairs pour obtenir des conseils et partager des expériences Maintenant, quelques points de formation supplémentaires spécifiques à l'utilisation de la boucle DIY :

- Gardez votre smartphone doté de l'application Loop bien chargé et près de votre corps pour une communication optimale entre les appareils. Il est conseillé d'emporter une batterie portable.

- Considérez d’avoir un appareil de rechange également doté de l’application DIY Loop à portée de main pour les urgences ou comme appareil de secours.

- N'utilisez les paramètres avancés, tels que le bolus automatique, que lorsque vous maîtrisez bien les principes de base et que votre glycémie est stable.

- Tirez parti de la fonction de plage préprandiale avant les repas.

- Configurez à l'avance plusieurs dérogations pour ajuster facilement l'administration d'insuline en fonction de vos activités quotidiennes.

- Veillez à ce que votre professionnel de santé ait accès à vos rapports Nightscout pour un suivi et un soutien efficaces.

- Apprenez à utiliser vos propres rapports NightScout. En étant conscients de ces points de formation généraux et spécifiques, les utilisateurs peuvent optimiser leur expérience avec la boucle DIY et améliorer leur compréhension des systèmes automatisés d'administration d'insuline.

#5 Sensor La boucle DIY est compatible avec plusieurs capteurs, y compris tous les capteurs Dexcom et certains capteurs FreeStyle Libre. Les capteurs Dexcom G5, Dexcom ONE, et Enlite de Medtronic sont aussi compatibles avec la boucle DIY, mais ne sont malheureusement plus disponibles sur le marché. Si vous avez des doutes quant à l'exactitude des résultats de votre capteur ou si vous avez l'impression qu'ils ne reflètent pas votre état, effectuez une piqûre au doigt pour confirmation. Si vous constatez un écart important - par exemple une différence de plus de 20 % entre les résultats du capteur et ceux de la piqûre du doigt, même lorsque votre glycémie est stable dans l'intervalle cible - il est conseillé de désactiver le mode automatique jusqu'à ce que le problème soit résolu. Le problème peut être lié à la configuration du capteur de glucose, au capteur lui-même ou au site d'insertion. Le cas échéant, le remplacement du capteur de glucose peut s'avérer nécessaire pour corriger le problème. Certains capteurs peuvent être étalonnés à l'aide d'une piqûre au doigt. Cela ne doit être fait que si les valeurs de votre capteur sont stables et comprises dans l'intervalle.

Le capteur lui-même ou le site d'insertion. Le cas échéant, le

remplacement du capteur de glucose peut s'avérer nécessaire pour résoudre le problème.

#6 Suivi Avec la boucle DIY, les utilisateurs peuvent partager leurs données d'insuline et de glycémie avec leur professionnel de santé et les membres de leur famille via plusieurs applications et plateformes. La plateforme la plus utilisée pour cela est Nightscout. Voici comment faire.

- Les données relatives à l'insuline et à la glycémie peuvent être transmises à un site web Nightscout que l'utilisateur doit créer lui-même au préalable.

- Les professionnels de santé et les membres de la famille peuvent consulter les données en temps réel sur le site web de Nightscout à l'aide d'un jeton d’accès. En outre, Nightscout offre des fonctionnalités au-delà de la visualisation des données. Il permet également aux soignants autorisés d'administrer à distance des ajustements thérapeutiques tels que des bolus d'insuline, d'entrer des informations sur les glucides, ou d'appliquer des dérogations. Cette fonction est particulièrement utile pour les parents qui peuvent ajuster les taux d'insuline pour la sécurité de leur enfant même en étant physiquement absents. Tidepool est une autre plateforme où vous pouvez télécharger et partager des données. Il existe encore d’autres applications de suivi :

- Si l’on utilise un capteur Dexcom, des soignants peuvent suivre les données de l'utilisateur grâce à l'application Dexcom Follow.

- Si l'utilisateur dispose de Tidepool, les soignants peuvent le surveiller sur l'application Tidepool Mobile.

- Il existe deux applications open-source qui permettent un suivi à distance, à savoir l'application Loop Follow, qui propose de nombreuses alarmes et alertes, et l'application Loop Caregiver, qui permet aux soignants d’effectuer des actions à distance. En partageant leurs données glycémiques, les utilisateurs peuvent bénéficier du soutien de leurs professionnels de santé et tenir leurs proches informés de leurs taux de glucose et de leur gestion de l'insuline en temps réel.

### 2.2 Indications

DIY Loop est une application open-source qui n'a pas d'indications officielles approuvées par la FDA ou les autorités européennes. Elle peut être utilisée avec tous les types d'insuline à action rapide. Les utilisateurs doivent construire l'application eux-mêmes et assumer la responsabilité des risques encourus. Les informations nécessaires à la construction de l'application sont dans la documentation Loopkit disponible en ligne, et font le sujet de discussions avec des utilisateurs expérimentés dans des groupes Facebook ou d'autres forums. Bien que de nombreuses personnes aient réussi à construire et à utiliser DIY Loop en toute sécurité, il est essentiel que chaque utilisateur :

- Comprenne parfaitement le fonctionnement de l'application ;

- Collabore avec l'équipe soignante du diabète pour personnaliser les paramètres de la thérapie ;

- Assure le suivi et l’entretien du système afin d'en garantir le bon fonctionnement ; et enfin

- Connaisse le fonctionnement de sa pompe à insuline et de son capteur de glucose. Pour construire et utiliser DIY Loop, les utilisateurs ont besoin d'un iPhone et d'un ordinateur compatibles. La configuration minimale requise est indiquée dans la documentation de Loopkit. Votre iPhone doit être au minimum de la version 15.1. La création de l'application consiste à suivre les instructions pas à pas fournies dans la documentation de Loopkit. Les utilisateurs peuvent choisir de créer l'application avec un Mac, ou un ordinateur Windows. Pour les utilisateurs de Mac, une version minimale du système de

### 12.5 ou plus est requise. Une reconstruction est nécessaire tous les quelques mois en fonction de la façon dont vous avez construit l'application Loop. Avec la version

### 3.4 de Loop, la

reconstruction ne sera plus nécessaire étant donné que des mises à jour automatiques seront incluses. Pour créer l'application Loop, les utilisateurs ont également besoin d'un abonnement Apple Developer, qui coûte de 99 $ par an. La demande d'abonnement prend généralement 1 à 2 jours pour être validée. Les autres logiciels nécessaires, tels que Xcode, TestFlight ou Github (pour les utilisateurs de PC non Mac), sont également disponibles. La plupart des gens choisissent de créer eux-mêmes l'application DIY Loop. Toutefois, certains prestataires de soins de santé ou entreprises proposent de créer l'application pour vous moyennant une rémunération. Tout au long de la création d'une application, il est utile d'avoir un mentor ou un utilisateur expérimenté pour obtenir des conseils et de l'aide. Les groupes Facebook, tels que “Looped” et “Loop and Learn”, sont des ressources utiles pour obtenir du soutien et des informations. En suivant les étapes nécessaires et en demandant de l'aide si besoin est, les utilisateurs peuvent installer l'application Loop sur leurs appareils mobiles. Bien que le processus demande du temps, de l'énergie et de la persévérance, il est tout à fait possible de réaliser et d'utiliser efficacement l'application Loop.

### 2.3 Mises à jour du logiciel

La boucle DIY est en constante évolution et de nouvelles versions sont publiées tous les quelques mois. Ces mises à jour apportent des améliorations, des corrections de bogues et de nouvelles fonctionnalités pour améliorer l'expérience de l'utilisateur. Cependant, la mise à jour de l'application Loop vers une version plus récente nécessite généralement un ordinateur. Pour déterminer la version actuelle de Loop installée sur votre appareil, appuyez sur l'icône Paramètres en bas de l'écran principal de l'application Loop. Les informations relatives à la version se trouvent dans le coin supérieur gauche. Vous pouvez également consulter la page de version de LoopKit sur GitHub pour obtenir des informations détaillées sur les versions et les mises à jour. Loop suit un système de branches avec deux branches principales : master et dev.

- La branche master représente la version stable et testée de l'application. Les mises à jour de la branche master interviennent lorsque de nouvelles fonctionnalités de la branche dev sont fusionnées avec elle, ce qui donne lieu à une nouvelle version.

- La branche dev est l'endroit où la prochaine version de Loop est développée et testée. Elle contient des développements et des ajustements continus qui font l'objet d'une amélioration permanente basée sur les commentaires et les tests des utilisateurs et des développeurs. Cependant, il est important de noter que la branche dev est un environnement qui évolue rapidement, et les utilisateurs doivent être conscients des attentes et rester informés des mises à jour et des changements. Pour rester informés de l'évolution du développement de Loop, les utilisateurs peuvent :

- S’abonner aux canaux de Zulipchat pour les mises à jour et les discussions ;

- Consulter la liste des problèmes et le Repo de Loop sur GitHub ;

- Rester actif dans les groupes Facebook de la Boucle ; et

- Se familiariser avec les sources d’informations et les endroits où vous pouvez trouver des renseignements supplémentaires. Il est important de maintenir un plan de sauvegarde pour garantir une utilisation ininterrompue du système en boucle fermée. En cas de perte, d'endommagement, ou de panne de l'iPhone, il est recommandé de disposer d'un second iPhone de rechange, ainsi que d'un lieu sûr, de préférence dans le nuage, pour les fichiers essentiels de l’application Loop. Ces fichiers comprennent l'application Loop elle-même, les mots de passe, et un fichier d'exportation contenant les derniers réglages et cibles. Prévoyez également un plan de secours en cas de défaillance de votre pompe à insuline. Vous devez toujours connaître la quantité d'insuline basale et de bolus dont vous avez besoin en moyenne, et être prêt à passer aux stylos à insuline en cas d'urgence. En cas de problème, il est essentiel de rester calme et de demander de l'aide à la communauté Loop et à la documentation. La résolution des problèmes fait partie intégrante de l'utilisation d'un logiciel et, avec de la patience et de l'aide, les difficultés peuvent être surmontées. En restant informés, en participant activement à la communauté Loop et en suivant les pratiques recommandées, les utilisateurs peuvent gérer efficacement les mises à jour logicielles et garantir une expérience fluide avec la boucle fermée DIY.
