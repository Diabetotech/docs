<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q88IzpWnOtFjKyWOSDZDnph&index=4" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>5. Création et analyse de rapports</u>**

Dans cette vidéo, nous allons explorer la création et l’analyse des rapports dans Nightscout, qui est utilisé conjointement avec Trio. Les vidéos précédentes ont présenté les étapes à suivre pour créer un site Web Nightscout et connecter votre application Trio à Nightscout afin de transmettre les données toutes les 5 minutes. Nous allons donc nous pencher sur les caractéristiques et les fonctionnalités de l'interface et des rapports Nightscout, afin de vous aider à comprendre et à exploiter les précieuses informations qu'ils fournissent pour votre gestion du diabète.

### 5.1 L’Interface Nightscout

Dans l'interface Nightscout, le site web est généralement noir et peut être personnalisé en fonction de vos préférences. Voici les différentes sections d'un site web Nightscout :

- La barre de titre affiche le nom de votre site à gauche et comprend des boutons à droite, tels que le bouton de menu avec diverses options de paramétrage. Vous pouvez également trouver des icônes d'édition et d'audio, qui sont rarement utilisées. En fonction de votre statut d'authentification, vous verrez également un signe plus, où vous pouvez enregistrer les traitements.

- Les Informations système : la section Informations du système affiche les données actuelles de tous les systèmes connectés à Nightscout. Elle peut inclure des encadrés gris ou des plugins qui affichent des détails supplémentaires lorsque vous passez la souris dessus. Dans Nightscout, nous appelons ces encadrés des « pills » ou pilules.

- Informations sur l'utilisateur et le traitement : la section Informations sur l'utilisateur et le traitement affiche des informations concernant le patient et sa thérapie. Vous y trouverez des pilules ou des abréviations, dont la nature sera explorée davantage dans la section Paramètres.

- Insuline basale : cette section indique votre sécrétion d'insuline basale.

- Glycémie et traitements : la section Glycémie et traitements affiche vos mesures de glycémie, vos traitements en glucides et en insuline, ainsi que les prévisions de Trio.

- Historique des données : cette section affiche les données des dernières 48 heures. Dans Nightscout, vous pouvez accéder à divers paramètres via le menu à trois lignes en haut de l'écran. Voici un aperçu des options disponibles :

- [Rapports] vous permet de générer des rapports.

- Via [Profil et Éditeur alimentaire], vous pouvez modifier les paramètres, bien que ceux-ci soient généralement gérés via l'application Trio plutôt que Nightscout.

- Les [outils d'administration] vous permettent de créer des jetons d'accès permettant le partage des données avec des professionnels de santé ou des membres de votre famille.

- Les [paramètres du compte] permettent de régler les unités, le format de l'heure, la langue, etc. Vous pouvez également personnaliser l'apparence de votre compte Nightscout, y compris l'affichage des plugins ou des pilules. De plus, cette section explique les abréviations utilisées dans l'interface.

- Sur [Enregistrement des paramètres], les modifications peuvent être enregistrées si vous saisissez votre mot de passe API. En dessous, vous pouvez voir l'état de l'authentification. En explorant ces paramètres et en effectuant les réglages appropriés, vous pouvez personnaliser votre expérience Nightscout en fonction de vos besoins.

### 5.2 Types de rapports

Lorsque vous utilisez Trio, vous pouvez accéder aux rapports via le menu en haut à droite de votre site Web Nightscout. Voici quelques-uns des principaux rapports auxquels vous pouvez accéder :

- Rapports quotidiens : ceux-ci montrent comment l'algorithme ajuste le débit basal d’insuline et fournissent des informations sur l'administration des microbolus.

- Rapport de distribution : ce rapport affiche le temps dans la plage, le temps en dessous de la plage et l'HbA1c estimée. Le coefficient de variation peut être calculé en divisant l'écart type par le taux de glucose moyen et en le multipliant par 100.

- Le rapport sous forme de graphique centile offre une image similaire à celle du profil glycémique ambulatoire afin d'analyser les tendances glycémiques.

- Le rapport Profils vous permet de consulter et d'enregistrer les paramètres d'insuline, tels que la durée d'action de l'insuline, le ratio glucidique, la sensibilité à l'insuline, le débit basal d'insuline et la valeur cible. Les paramètres de l'algorithme ne sont pas enregistrés.

- Le rapport Loopalyzer fournit des visualisations des ajustements basaux moyens sur une période de 24 heures dans un intervalle de temps spécifié. Cela peut aider à identifier les schémas et les tendances dans les ajustements basaux de l'insuline effectués par l'algorithme. Il est également possible de visualiser les rapports de Nightscout à l'aide du logiciel Nightscout Reporter. Cette plateforme web gratuite offre une interface plus conviviale et vous permet de sélectionner les rapports souhaités, de définir la période et de générer un document PDF à transmettre à votre professionnel de santé. Parmi les rapports intéressants disponibles, on trouve des analyses, des profils, un graphique des percentiles de glycémie et des rapports quotidiens. Il existe trois façons de discuter de ces rapports avec votre professionnel de santé :

- Tout d’abord, vous pouvez fournir à votre professionnel médical l'URL Nightscout et un jeton d’accès que vous avez créé. Cela lui permettra d'accéder directement aux rapports et de les consulter.

- Il n’est pas possible de générer directement un rapport en fichier PDF à partir de Nightscout ; vous pouvez toutefois enregistrer les rapports au format PDF. Pour ce faire, ouvrez le rapport souhaité, appuyez sur Commande+P sur Mac (ou « Ctrl+P » sur Windows), et sélectionnez « Enregistrer au format PDF » comme option d'impression. Cela créera un fichier PDF que vous pourrez enregistrer et envoyer par e-mail par la suite à votre professionnel médical.

- Une autre option consiste à utiliser Nightscout Reporter pour créer des rapports plus attrayants visuellement, qui peuvent être facilement transmis à votre prestataire de soins de santé. En utilisant efficacement Nightscout et Nightscout Reporter, vous pouvez fournir à votre professionnel de santé des rapports complets qui mettent en évidence les performances et les tendances de votre gestion du diabète avec Trio.

### 5.3 Analyse des rapports

Dans Trio, les principaux paramètres pouvant être ajustés sont la valeur cible de glycémie, le débit basal d'insuline, le ratio glucidique, la sensibilité à l'insuline, les limites d'administration, telles que le débit basal maximal et l'insuline maximale active, ainsi que les paramètres supermicrobolus, ou SMB. Cela peut être fait via les paramètres. Il est important de suivre une approche structurée lors de l'interprétation des rapports et de la réalisation des ajustements. Voici un guide détaillé : 1. Évaluer les informations glycémiques :

- Vérifiez dans le rapport de distribution si les objectifs thérapeutiques, en particulier les temps dans et en dessous de la plage cible, ont été atteints au cours des 2 à 4 dernières semaines. Conformément aux directives internationales, le temps dans la plage cible doit être supérieur à 70 %, tandis que le temps en dessous de la plage cible doit être inférieur à 4 %.

- Si vous avez accès au rapport d'analyse de Nightscout Reporter, notez la fréquence des bolus de repas, qui devrait être en moyenne de 3 fois par jour. 2. Optimiser les paramètres AID :

- Analysez le profil glycémique ambulatoire afin d'identifier les tendances d'hypoglycémie ou d'hyperglycémie. Si vous constatez des tendances, essayez de déterminer dans les rapports quotidiens si celles-ci sont liées aux bolus repas.

- Pour les tendances liées aux bolus repas : évaluez des facteurs tels que le moment de saisie et le comptage des glucides, et envisagez d'ajuster le ratio glucidique.

- Si l'hyperglycémie postprandiale est un problème, envisagez également d'utiliser une cible temporaire plus basse avant les repas.

- Vous pouvez également envisager l'utilisation d'insulines à action rapide telles que Fiasp ou Lyumjev.

- Pour les tendances après des bolus de correction manuels ou après une hyperglycémie : modifiez la sensibilité à l'insuline ou la durée d'action de l'insuline afin d'ajuster l'agressivité de l'algorithme.

- Pour les tendances en dehors des repas ou des bolus : vous pouvez ajuster la valeur cible de glycémie par tranche horaire ou modifier le débit d'insuline basale à partir d'une heure avant et pendant la période correspondante de 10 à 20 %.

- Il est également important d'étudier les corrélations possibles avec les bolus manqués, l'exercice physique, l'alcool ou l'hypoglycémie. Dans Trio, il est important de s'assurer que le débit basal d'insuline est correctement réglé. Si vous remarquez une tendance constante à la hausse ou à la baisse du débit basal pendant une période spécifique de la journée qui ne peut être expliquée par le SMB ou le bolus manuel, par exemple dans le rapport Loopalyzer, l'objectif est d'ajuster le débit basal à ce moment-là afin de l'aligner sur les exigences de l'algorithme. Si vous êtes un utilisateur expérimenté de Trio, vous pouvez contrôler l'agressivité de l'algorithme Trio en matière d'administration d'insuline de plusieurs façons.

- Vous pouvez régler les paramètres de débit basal maximal et d'IOB, ou l’insuline active maximale.

- L'abaissement de ces limites peut aider à prévenir l'administration excessive d'insuline, en particulier dans les cas d'hypoglycémie fréquente.

- En revanche, si le réglage maximal de l'IOB limite la capacité du système à corriger efficacement les taux glycémiques élevés, il peut être nécessaire de l'augmenter. Cette opération doit être effectuée avec prudence.

- Vous pouvez également ajuster les SMB en modifiant les paramètres « Max SMB Basal Minutes

- Si vous utilisez la fonction Logarithmic Dynamic ISF, vous pouvez modifier vos valeurs Autosens Maximum ou Autosens Minimum. Si le comportement n'est pas celui attendu, vérifiez que votre facteur d'ajustement est toujours égal à

### 0.02 x votre dose quotidienne totale d'insuline.

Il se peut que votre dose quotidienne totale d'insuline ait changé et que votre facteur d'ajustement doive également être modifié.

- Si vous utilisez Sigmoid Dynamic ISF, vous pouvez modifier votre facteur d'ajustement Sigmoid, Autosens Maximum ou Autosens Minimum. 3. Recommandations comportementales : Veiller à l'utilisation correcte du système automatisé d'administration d'insuline dans les rapports quotidiens :

- La durée d'utilisation du capteur, l'activation de la boucle fermée, et le respect des bolus pré-repas peuvent être vérifiés dans les rapports quotidiens.

- Vous pouvez également vérifier l'utilisation correcte des cibles temporaires et des dérogations, et évaluer s'il y a une correction excessive de l'hypoglycémie ou de l'hyperglycémie.

- Renseignez-vous également sur la pertinence des réglages d'alarme et des rappels, afin d'éviter la fatigue liée aux alarmes. 4. Vérifiez les réglages de la pompe et les plans d'urgence :

- Notez les réglages de votre pompe, notamment votre débit basal d'insuline, votre ratio glucidique, votre sensibilité à l'insuline et votre glycémie cible.

- Établissez un plan d'urgence et ayez toujours des stylos à insuline avec vous, en cas de dysfonctionnement de la pompe ou d'autres urgences. Lorsque vous apportez des modifications, il est important de ne modifier qu'un seul paramètre à la fois. Après avoir mis en œuvre une modification, surveillez attentivement ses effets pendant une période de 1 à 2 semaines. Votre ajustement initial peut ne pas donner les résultats escomptés. Dans ce cas, vous pouvez explorer d'autres options et procéder à des ajustements supplémentaires en conséquence. La clé est d'itérer et d'affiner vos paramètres en fonction des commentaires fournis par vos rapports Nightscout, afin de garantir des performances optimales de votre système Trio. En suivant ces directives et en tenant compte des informations fournies, vous pouvez interpréter efficacement les rapports, optimiser les réglages d'insuline, et garantir une utilisation correcte de Trio pour une meilleure gestion du diabète.
