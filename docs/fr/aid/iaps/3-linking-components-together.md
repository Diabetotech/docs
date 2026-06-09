<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q_2l50E2kufXA0mSwDbwu9r&index=2" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Mise en route des composants</u>**

Dans cette capsule vidéo, nous vous guiderons dans la mise en œuvre des composants du système iAPS. Ces composants assurent une communication et un échange de données sans faille. L’écosystème iAPS fonctionne de la manière suivante :

- La glycémie est mesurée toutes les 1 à 5 minutes à l'aide d'un capteur de glucose, tel que le Dexcom G6 ou G7, le Dexcom ONE Plus, le FreeStyle Libre 2, ou FreeStyle Libre 2 Plus.

- Après le démarrage du capteur avec l’application Dexcom ou LibreLink, le capteur envoie les mesures de glucose directement à votre iAPS, sauf pour le Dexcom G7 et le Dexcom ONE Plus sur lesuqles l'application Dexcom doit rester active.

- L'iAPS calcule la dose d'insuline nécessaire et l'envoie à la pompe à insuline, telle que l’Omnipod DASH, Dana-I, TouchCare Nano, l’Omnipod Eros, DanaRS (micrologiciel 3 uniquement) ou les anciennes pompes Medtronic.

- La pompe administre l'insuline nécessaire et transmet les données de la pompe à l'application iAPS.

- L’iAPS partage les données de glycémie et d'insuline avec Nightscout qui sert de programme de lecture. L’iAPS partage également ces informations avec Apple Health, et les applications Dexcom et LibreLink envoient les données de glycémie à Dexcom Clarity et LIbreView respectivement.

- L'application iAPS propose un logiciel Apple Watch qui peut être intégrée lors de la construction et de l’installation de l’iAPS. Cela vous permet de visualiser vos valeurs glycémiques, administrer un bolus, et même d'activer des profils prédéfinis en temps réel directement à partir de votre Apple Watch, ce qui ajoute à la commodité de votre gestion du diabète.

- La prise en charge des montres Garmin a récemment été ajoutée.

- iAPS fournit également des événements de calendrier. Associé à Apple Carplay, il permet le suivi visuel de la valeur et de l'évolution du carb dans la fenêtre Carplay pendant la conduite. Dans cette vidéo, nous allons vous guider dans la création des différents liens dans le système automatisé d'administration d'insuline iAPS. Plus précisément, nous couvrirons :

- La connexion du capteur de glucose à l’application iAPS;

- L’appariement de l’Omnipod DASH à l’iAPS;

- La création d'un compte Nightscout servant de banque de données de l’iAPS;

- La synchronisation de l’iAPS et le profil Nightscout pour assurer un transfert fluide des données relatives à la glycémie et à l'insuline; et

- La configuration de l’iAPS sur l’Apple Watch. En suivant ces étapes, vous serez en mesure d'établir les liens nécessaires au sein du système iAPS, ce qui permettra une administration automatisée et efficace de l'insuline pour la gestion du diabète.

### 3.1 Capteur + Application iAPS

Les capteurs les plus utilisés avec l’iAPS sont le FreeStyle Libre 2, 2 Plus, les Dexcom G6 et G7, et ONE Plus. Pour les capteurs européens FreeStyle Libre 2 ou 2 Plus, l'étape initiale consiste à démarrer le capteur via l'application LibreLink. Après la période d'échauffement d'une heure, vous pouvez établir la connexion entre votre capteur et iAPS. Dans iAPS, accédez aux [Réglages], sélectionnez [CGM], puis choisissez le capteur Libre. Appuyez sur l'option de configuration pour sélectionner Libre 2 Direct. Ici, vous pouvez démarrer l'appairage et scanner votre capteur. Cela permet à iAPS de recevoir directement les données de votre capteur FreeStyle Libre 2 ou 2 Plus. Une fois scanné, les informations relatives à votre capteur s'afficheront à l'écran, et votre glycémie actuelle sera visible sur l'écran d'accueil de l'iAPS. Au bout de 14 jours, le capteur FreeStyle Libre 2 ou 2 Plus cessera de fonctionner. Vous pouvez démarrer un nouveau capteur via le LibreLink et l'application iAPS. Pour s'assurer que iAPS capte le bon signal du capteur, il est conseillé de redémarrer votre iPhone et d’en distancer l'ancien capteur. Si vous souhaitez obtenir des valeurs de glucose ininterrompues, vous pouvez changer de capteur dans l'application LibreLink d'abord, puis dans l'application iAPS après la période d'échauffement. Il est utile de savoir que la durée de vie des capteurs FreeStyle Libre 2 dans l'application iAPS est 12 heures plus longue que dans l'application LibreLink. Pour les capteurs Dexcom G6, démarrez tout d'abord le capteur à l'aide de l'application Dexcom G6. Ensuite, connectez votre capteur Dexcom G6 à l'application iAPS en sélectionnant Dexcom G6 et en saisissant le numéro de série de l'émetteur. Après un échauffement de deux heures, vous recevrez vos relevés de glucose. Pour le capteur Dexcom G7 et Dexcom ONE Plus, démarrez le capteur à l'aide de l'application Dexcom G7 ou Dexcom ONE Plus, de préférence après la période de préchauffage d'au moins 30 minutes pour permettre le chevauchement des capteurs. Dans iAPS, sélectionnez Dexcom G7 pour les deux types de capteurs. iAPS devrait détecter automatiquement le signal du capteur. Vous pouvez choisir de recevoir les alertes du capteur à partir de l'application LibreLink, Dexcom, ou via l'application iAPS par le biais des Notifications dans les Réglages. L'application iAPS ne propose que des alertes d'hyperglycémie et d'hypoglycémie, offrant ainsi des types d'alertes minimes. Si vous avez besoin de plus d'options d'alerte, envisagez d'utiliser l'application native de votre capteur, ou une application open-source comme xDrip4iOS.

### 3.2 Pompe à insuline + Application iAPS

L’iAPS est souvent utilisé avec la pompe à insuline Omnipod DASH. Si vous souhaitez utiliser l’Omnipod Eros, ou bien une pompe Medtronic plus ancienne, ceci devrait se faire avec un appareil Rileylink. Nous allons ainsi vous montrer comment relier un Omnipod DASH.

- Accédez d'abord aux [Paramètres] et choisissez l’Omnipod DASH.

- Vous serez demandé de définir un rappel de péremption du pod, une alerte de réservoir faible, et le type d'insuline que vous utilisez.

- Vous pouvez ensuite appuyer sur [Omnipod DASH] pour accéder à l'écran de la pompe, où vous sélectionnez [Pair Pod]. L'application vous guidera dans les différentes étapes, comme le fait l'Omnipod DASH PDM.

- Remplissez d'abord votre Pod avec de l'insuline.

- Ensuite, reliez le pod sur l’application.

- Retirez la protection de la canule avant de placer le Pod sur le site d’insertion.

- Enfin, procédez à l'insertion de la canule sur l’application. Une fois votre Pod apparié, vous verrez apparaître une fenêtre contextuelle dédiée au DASH dans l'interface de l'iAPS. Si vous appuyez dessus, vous accéderez à l'écran de la pompe où vous pouvez accéder à des informations sur votre pompe Omnipod DASH et contrôler ses fonctions. Les touches sont intuitives et remplacent les fonctions exécutées par le PDM de l'Omnipod. Bien que le PDM ne soit pas nécessaire si vous utilisez iAPS, il est recommandé de le conserver comme dispositif de secours. Pour les utilisateurs d'autres pompes à insuline, l'interface de l'application affichera différentes options correspondant à votre type de pompe. Ces fonctionnalités vous permettent de gérer et de contrôler efficacement l'administration d'insuline par votre pompe connectée à l'aide de l'application iAPS.

### 3.3 Création d'un site Nightscout

Nightscout n'est pas une plateforme à laquelle on se connecte, mais un site web que l'on construit ou que l'on fait construire. Ce dernier entraîne des coûts supplémentaires. Un compte Nightscout se compose d'une adresse URL, ou le “nom” du compte, et d'un mot de passe permettant d'accéder au site. Les comptes Nightscout sont créés en tant qu’accès d'utilisateurs individuels. Il n'existe pas de plateforme Nightscout unique aux professionnels médicaux. Nightscout permet de suivre en temps réel les données de votre capteur et de votre insuline, ce qui vous permet de les partager avec vos proches et à votre professionnel de santé. Nightscout est aussi la méthode exclusive pour générer des rapports à partir de votre système iAPS. Nightscout est plus qu'un simple site web pour les données iAPS ; il peut également se connecter à divers appareils. Nightscout agit comme un hub central, recevant les données des capteurs et les distribuant à de multiples appareils, tels que les smartphones, les smartwatches, les ordinateurs, et d'autres dispositifs de surveillance. Il offre diverses options d'accès et d'affichage des informations sur le glucose, notamment par le biais de smartwatches, de widgets de bureau, d'appareils muraux, et d'une intégration avec des assistants vocaux tels qu'Alexa. Il y a plusieurs façons de créer un site Nightscout; Nightscout est un logiciel libre. Vous pouvez trouver toutes les informations pertinentes au Nightscout sur github.nightscout.io.

- Vous pouvez l'installer vous-même à l'aide des plans étape par étape disponibles en ligne.

- Il existe également des sociétés qui proposent des prestations d'installation de Nightscout, comme T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy et Opensource.clinic.

- Nightscout et ses services associés ne sont pas approuvés par la FDA, à l'exception du service T1Pals.

- Il n'y a pas d'approbation de la part des autorités européennes, son utilisation est donc à vos risques et périls.

- Nightscout semble être conforme au GDPR et à l'HIPAA, mais ne revendique pas de conformité officielle en raison de l'absence d'auditeurs.

- Il est essentiel de traiter les données des capteurs de glycémie en toute sécurité et de protéger l'URL de Nightscout par un mot de passe.

- Si vous souhaitez partager votre site Web Nightscout avec un proche ou avec un professionnel médical, il est recommandé de leur créer un accès distinct. En suivant ces étapes, vous pouvez créer un compte Nightscout facilement et en toute sécurité, ce qui vous permettra de suivre et de partager efficacement vos données sur le diabète.

### 3.4 Application iAPS + Nightscout

Pour connecter vos données iAPS à votre site web Nightscout, il vous suffit d'aller dans [Réglages], puis dans [Nightscout] avant de saisir votre URL et votre mot de passe Nightscout. Une fois connecté, vos données iAPS s'afficheront sur votre site Nightscout. Cela vous permet, ainsi qu'à votre famille et à votre médecin, d'obtenir des informations en temps réel sur la façon dont vous gérez votre diabète. Si vous activez la fonction du [Contrôle à distance], des personnes ayant accès à votre compte Nightscout peuvent faire des actions telles que vous administrer de l'insuline, saisir des glucides, ou ajuster vos paramètres d'insuline à l'aide de leur identifiant Nightscout.

### 3.5 Application iAPS + Apple Watch

L'utilisation d'une Apple Watch vous permettra non seulement de suivre votre glycémie et votre insuline depuis votre poignet, mais aussi d'ajouter des glucides, d’administrer un bolus, et de sélectionner/activer/arrêter un profil à partir de votre montre. L’iAPS sera automatiquement téléchargé sur votre Apple Watch connectée. Sur votre Apple Watch, vous pouvez définir une complication iAPS via un cadran de montre modulaire. Si vous appuyez sur la complication iAPS du cadran de votre Apple Watch, vous verrez apparaître un écran iAPS où vous pourrez voir vos données de glycémie et de boucle, votre insuline embarquée, ainsi que 3 boutons d'action. D’ici, vous pouvez

administrer un bolus selon les glucides que vous consommez, sélectionner/activer/arrêter un profil, voire donner un bolus d'insuline manuel. Dans cette vidéo, nous venons d'explorer les différentes intégrations possibles avec l’iAPS. Des capteurs de glucose, des pompes à insuline, et enfin avec le compte Nightscout, ces dispositifs permettent une communication transparente pour une gestion efficace du diabète. En mettant en route ces composants, les utilisateurs peuvent maximiser les capacités de l'iAPS et prendre un meilleur contrôle de leur diabète.
