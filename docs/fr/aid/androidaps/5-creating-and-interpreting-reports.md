<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q_PD_A2tOqTiWCx9oozwkHq&index=4" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>5. Création et interprétation des rapports</u>**

Dans cette vidéo, nous allons explorer la création et l'interprétation des rapports sur Nightscout utilisé en conjonction avec AndroidAPS. Les vidéos précédentes ont couvert les étapes pour créer un site Nightscout et y connecter votre application AndroidAPS pour la transmission de données toutes les 5 minutes. Nous allons maintenant nous pencher sur les caractéristiques et les fonctionnalités de l'interface Nightscout et des rapports pour vous aider à comprendre et à exploiter les informations précieuses qu'ils fournissent pour la gestion de votre diabète.

### 5.1 Interface de Nightscout

Dans l'interface de Nightscout, le site web est généralement noir et peut être personnalisé en fonction de vos préférences. Voici les différentes sections d'un site Nightscout :

- La barre de titre affiche le nom de votre site sur la gauche et comprend des boutons sur la droite, tels que le bouton de menu avec diverses options de paramétrage. Vous pouvez également trouver des icônes d'édition et d'audio, qui sont rarement utilisées. En fonction de votre statut d'authentification, vous verrez également un signe plus, qui vous permettra de vous connecter aux traitements.

- La section des informations sur le système affiche les informations actuelles de tous les systèmes connectés à Nightscout. Elle peut inclure des boîtes grises ou des plugins, fournissant des détails supplémentaires lorsqu'ils sont survolés. Ceux-ci sont ce que l’on appelle des pilules sur Nightscout.

- La section des informations sur l'utilisateur et le traitement affiche des informations sur vous et vos traitements en cours. Vous y trouverez des pilules ou des abréviations qui seront expliquées plus en détail dans la section des paramètres.

- La section consacrée à l'insuline basale indique la libération d'insuline basale.

- La section des traitements et du glucose affiche les mesures du glucose du capteur, les traitements à base de glucides ou d'insuline, ainsi que les prédictions d'AndroidAPS.

- La section de l'historique des données affiche les informations dégagées au cours des 48 dernières heures. Dans Nightscout, vous pouvez accéder à différents paramètres par le biais du menu situé en haut de l'écran. Quelques options disponibles sont les suivantes :

- L’onglet Rapports permet de générer des rapports.

- Les éditeurs du profil et de l’alimentation vous permettent de modifier les paramètres, même si ceux-ci ne sont pas nativement utilisés par AndroidAPS.

- Les outils d'administrateur vous permettent de créer des jetons d'accès pour partager des données avec des professionnels médicaux ou des membres de la famille.

- Les paramètres du compte permettent d'ajuster les réglages d’affichage, tels que les unités de mesure, le format de l'heure, la langue, etc. Vous pouvez également personnaliser l'apparence de votre compte Nightscout, y compris l'affichage des plugins ou des pilules. Cette section explique également les abréviations utilisées dans l'interface. Les modifications peuvent être sauvegardées si vous entrez votre mot de passe API. En dessous, vous pouvez voir l'état de l'authentification. En explorant ces paramètres et en effectuant les ajustements appropriés, vous pouvez personnaliser votre expérience Nightscout en fonction de vos besoins.

### 5.2 Types de rapports

Lorsque vous utilisez AndroidAPS, vous pouvez accéder aux rapports via votre site web Nightscout depuis le menu en haut à droite. Voici certains des principaux rapports auxquels vous pouvez accéder :

- Les rapports quotidiens montrent comment l'algorithme ajuste l'insuline basale et fournit des informations sur l'administration des microbolus.

- Le rapport de distribution affiche le temps dans et en dessous de la cible, ainsi que l'estimation de l'HbA1c. Le coefficient de variation peut être calculé en divisant l'écart type par la glycémie moyenne, puis en multipliant le résultat par 100.

- Le rapport de graphique des percentiles offre une image de type profil de glycémie ambulatoire pour analyser les tendances de la glycémie.

- Le rapport sur les profils permet d'examiner et d'enregistrer les paramètres d'insuline, tels que la durée de l'action, le rapport glucidique, la réactivité à l'insuline, le débit d'insuline basal, et la valeur cible.

- Le rapport Loopalyzer permet de visualiser les ajustements moyens de l'insuline basale sur une période de 24 heures dans un laps de temps donné. Cela peut aider à identifier des modèles et des tendances dans les ajustements d'insuline basale effectués par l'algorithme. Les rapports de Nightscout peuvent également être visualisés à l'aide du logiciel Nightscout Reporter. Cette plateforme gratuite offre une interface plus conviviale et vous permet de sélectionner les rapports souhaités, de définir la période de temps couverte, et de générer un document PDF à transmettre à votre professionnel de santé. Parmi les rapports intéressants disponibles, citons l'analyse, les profils, le graphique des percentiles de glucose et les rapports quotidiens. Il y a trois façons de discuter de ces rapports avec votre prestataire de soins :

- Vous pouvez fournir à votre prestataire de soins l'URL de Nightscout et un jeton sécurisé que vous avez créé. Cela lui permet d'accéder aux rapports et de les consulter directement.

- Bien que vous ne puissiez pas générer directement un PDF à partir de Nightscout, vous pouvez sauvegarder les rapports en tant que fichiers PDF. Il suffit d'ouvrir le rapport désiré, d'appuyer sur " Ctrl+P " (ou Command+P sur un ordinateur Mac), et de sélectionner " Enregistrer en PDF " comme option d'impression. Vous obtiendrez ainsi un fichier PDF que vous pourrez enregistrer et envoyer par courrier électronique à votre prestataire de soins si nécessaire.

- Une autre option consiste à utiliser Nightscout Reporter pour créer des rapports plus attrayants sur le plan visuel, qui peuvent être facilement transmis à votre prestataire de soins de santé. En utilisant efficacement Nightscout et Nightscout Reporter, vous pouvez fournir à votre soignant des rapports complets qui mettent en évidence les performances et les tendances de votre gestion du diabète avec AndroidAPS.

### 5.3 Interprétation des rapports

Dans AndroidAPS, les principaux paramètres qui peuvent être ajustés sont la valeur cible, le débit d'insuline basal, le rapport glucidique, et la réactivité à l'insuline. Pour ce faire, RDV dans l'onglet Profil de l'application AndroidAPS en cliquant sur l'un des sous-onglets. Il est important de suivre une approche structurée pour interpréter les rapports et procéder à des ajustements. Voici un guide détaillé : 1. Évaluer l'information glycémique. Vérifiez sur le rapport de distribution si les objectifs du traitement, en particulier le temps passé dans la cible et le temps passé en dessous de la cible, ont été atteints au cours des 2 à 4 dernières semaines. Conformément aux directives internationales, le temps passé dans la cible doit être supérieur à 70 % tandis que le temps passé en dessous de la cible doit être inférieur à 4 %. Si vous avez accès au rapport d'analyse de Nightscout Reporter, notez la fréquence des bolus qui devrait être en moyenne de 3 fois par jour. 2. Optimiser les paramètres du système en boucle fermée. Analysez le profil glycémique ambulatoire pour identifier les tendances à l'hypoglycémie ou à l'hyperglycémie. Si vous repérez des tendances, essayez de découvrir dans les rapports quotidiens si elles sont liées aux bolus.

- Pour les tendances liées aux bolus de repas, évaluer des facteurs, tels que le timing des bolus et le comptage des glucides, et envisager d'ajuster le rapport glucidique.

- Si l'hyperglycémie postprandiale est un problème, envisagez également d'utiliser la cible temporaire [Repas Imminent] avant les repas.

- Considérez également des options d'insuline à action plus rapide comme Fiasp ou Lyumjev.

- Pour les tendances après les bolus de correction manuelle ou après une hyperglycémie, modifier la sensibilité à l'insuline ou la durée de l'action de l'insuline afin d'ajuster l'agressivité de l'algorithme.

- Vous pouvez également contrôler l'agressivité de l'administration d'insuline de l'algorithme AndroidAPS en ajustant les paramètres du débit basal maximum et Max IOB.

- La diminution de ces seuils peut contribuer à éviter une administration excessive d'insuline, notamment en cas d'hypoglycémie fréquente.

- En revanche, si le réglage du Max IOB limite la capacité du système à corriger efficacement les taux élevés de glucose, il peut être nécessaire de l'augmenter. Cela doit être fait avec prudence.

- Pour les tendances en dehors des repas ou des bolus, ajuster la valeur cible par bloc horaire ou modifier le débit d'insuline basal de 10 à 20 % une heure avant et pendant la période correspondante. Il est également important d'explorer les corrélations possibles avec les bolus oubliés, l'exercice, l'alcool ou l'hypoglycémie. Dans AndroidAPS, il faut s'assurer que le débit d'insuline basal est correctement réglé. Si vous remarquez un schéma constant d'augmentation ou de diminution de l'insuline basale au cours d'une période spécifique de la journée qui ne peut pas être expliqué par le SMB ou le bolus manuel, par exemple dans les Rapports journaliers, l'objectif est d'ajuster le débit d'insuline basale à ce moment-là pour s'aligner sur les exigences de l'algorithme. Si vous êtes un utilisateur expérimenté d'AndroidAPS et que vous souhaitez améliorer votre profil, vous pouvez envisager d'utiliser Autotune. Il s'agit d'un outil Web permettant de calculer les paramètres optimaux pour l'insuline basale, la réactivité à l'insuline, et le rapport glucidique. En saisissant l'URL de votre Nightscout sur le site Web d'Autotune, vous pouvez laisser le programme calculer vos paramètres idéaux sur la base des résultats de glycémie de votre capteur. Si Autotune suggère des écarts significatifs par rapport à vos réglages actuels, vous pouvez envisager de les ajuster.

- Notez qu'Autotune nécessite des valeurs fixes pour le rapport glucidique et la réactivité à l'insuline.

- De plus, Autotune peut ne pas fonctionner si Nightscout dispose de mesures de sécurité supplémentaires telles qu'un jeton. 3. Rédiger des recommandations comportementales. Veiller à l'utilisation correcte du système en boucle fermée dans les rapports quotidiens :

- La durée de port du capteur, le temps passé en mode automatique, et le respect du bolus préprandial peuvent être consultés dans les rapports quotidiens.

- Vous pouvez également vérifier l'utilisation correcte des cibles temporaires et des changements de profil, et évaluer des corrections excessives de l'hypoglycémie ou de l'hyperglycémie.

- Confirmez également si les réglages de l'alarme et les rappels sont appropriés afin d'éviter la fatigue de l'alarme. 4. Examiner le réglage des pompes et les plans d'urgence :

- Documentez les réglages de votre pompe, y compris le débit d'insuline basal, le rapport glucidique, la sensibilité à l'insuline, et la valeur cible.

- Établissez un plan d'urgence et munissez-vous toujours de stylos d'insuline en cas de dysfonctionnement de la pompe ou d'autres urgences. Lorsque vous effectuez des changements, il est recommandé de modifier un paramètre à chaque fois, puis de surveiller attentivement les effets de ce changement sur une période d'une à deux semaines. Il est possible que votre ajustement initial ne produise pas les résultats souhaités, auquel cas vous pouvez explorer d'autres options et procéder à d'autres ajustements en conséquence. L'essentiel est d'itérer et d'affiner vos paramètres en fonction des informations fournies par vos rapports Nightscout afin d'assurer une performance optimale de votre système AndroidAPS. Suivre ces conseils et tenir compte des détails fournis vous permet d’interpréter efficacement les rapports, d'optimiser les paramètres d'insuline, et de garantir une utilisation correcte d'AndroidAPS pour une meilleure gestion du diabète. 6. Gestion des situations particulières Dans cette capsule vidéo, nous partagerons des conseils et des recommandations spécifiques pour gérer des situations courantes dans la gestion du diabète en utilisant le système en boucle fermée AndroidAPS. Ces conseils s'ajoutent aux lignes directrices générales abordées dans le module général sur les systèmes en boucle fermée. Nous parlerons des stratégies de gestion de l'hypoglycémie et de l'hyperglycémie, les repas riches en graisses, la gestion du diabète pendant les activités physiques, de la maladie, l'alcool et les préparatifs de voyage. En appliquant ces conseils, vous pouvez optimiser votre contrôle glycémique et améliorer votre gestion globale du diabète avec Android APS.
