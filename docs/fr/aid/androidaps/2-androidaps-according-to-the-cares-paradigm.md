<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/videoseries?list=PLHLpqGaC-3q_PD_A2tOqTiWCx9oozwkHq&index=1" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. L’AndroidAPS selon CARES</u>**

Bienvenue dans cette vidéo, où nous étudierons l’AndroidAPS selon le paradigme
CARES.
Nous verrons comment AndroidAPS calcule et ajuste l'administration automatisée
d'insuline, dans quelles situations il retourne en mode manuel, des conseils
d'éducation spécifiques et des problèmes de capteurs, et comment il partage les
données. Ensuite, nous aborderons les indications de l'Android APS et les mises à
jour du logiciel. C'est parti !
2.1 AndroidAPS selon le paradigme CARES
#1 Calcul
Dans AndroidAPS, le taux basal d'insuline prédéfini est ajusté en fonction de la
glycémie prévue pour les 5 à 9 heures à venir. Voici comment fonctionne
AndroidAPS :
-​ L’AndroidAPS réuni différentes prévisions de glycémie, ou [BG] Blood
Glucose en anglais, pour calculer la glycémie minimale prévue :

o​ L'AndroidAPS fait un premier calcul une glycémie prédite par les
glucides, qui est une prédiction basée sur les glucides à bord;
o​ Une glycémie prédite par l'insuline, qui est une prédiction basée sur
l'insuline à bord ;
o​ Une glycémie prédite par un repas non annoncé, qui est une prédiction
en cas de consommation de glucides non annoncée ; et
o​ Une glycémie prédite à température zéro, qui est un scénario
catastrophe, dans le cas où l'insuline n'est soudainement plus
administrée ou que les glucides ne sont plus absorbés.
-​ L’AndroidAPS considère des erreurs de prédiction car celle-ci est ajustée en
fonction de l'écart entre la glycémie actuelle et la glycémie prédite. Ce
facteur d’écart s’apelle BGI ou Blood Glucose Impact, l’impact du glucose.
L'algorithme observe également la tendance glycémique en calculant le
facteur delta, ou la différence entre la glycémie actuelle et la glycémie
passée. Il tient également compte de l'élan glycémique à court terme et à
long terme, c'est-à-dire de la différence entre la glycémie actuelle et la
glycémie d'il y a 15 et 40 minutes.
-​ Le besoin en insuline ou InsulReq est calculé en soustrayant la glycémie cible
de la glycémie minimale prévue et en divisant cette différence par la
sensibilité à l'insuline ou ISF. Ce besoin en insuline déterminera s'il faut
augmenter ou diminuer l'insuline basale préréglée manuellement.
-​ Si une hypoglycémie est prévue, l'insuline basale sera arrêtée et des
résucrages pourront être recommandés.
L’AndroidAPS propose deux options pour l'administration d'insuline : l’OpenAPS
Advanced Meal Assist, ou AMA, et l’OpenAPS SuperMicroBolus, ou SMB.
-​ Avec l'AMA, l'insuline nécessaire est administrée sous forme d'un débit basal
temporaire d’une durée spécifié.
-​ Dans le cas du SMB, la moitié des débits basaux temporaires calculés est
administrée sous forme de microbolus permettant de délivrer la même dose d'insuline plus rapidement, suivie d'une pause temporaire dans
l'administration de l'insuline basale. Ces doses de base temporaires, ou
supermicrobolus, sont recalculées toutes les 5 minutes et peuvent être
ajustées dans le cadre de paramètres de sécurité prédéfinis.

L’AndroidAPS offre des fonctions optionnelles, telles que Autosens, et
Unannounced Meal detection.
-​ Autosens est une fonction de l'AndroidAPS qui augmente ou diminue
l'administration d'insuline en fonction de la sensibilité à l'insuline de
l'utilisateur au cours des 4, 8, ou 24 dernières heures.
o​ Il calcule un pourcentage qui reflète l'écart entre la sensibilité à
l'insuline des dernières heures et la sensibilité actuellement définie. Il
utilise ce pourcentage pour ajuster la sensibilité à l'insuline et le débit
d'insuline basal.
o​ La fonction Autosens peut également être appliquée à la valeur cible,
en l'ajustant sur la base du rapport de sensibilité calculé.
o​ Autosens n'intègre pas dans son calcul la période lors de laquelle les
glucides sont à bord. Si vous utilisez la fonction Autosens, il faut saisir
tous les glucides consommés. Sinon, les écarts liés aux glucides
seront identifiés à tort comme un changement de sensibilité. D'autre
part, si vous consommez continuellement des glucides pendant une
période prolongée, l'efficacité d'Autosens sera réduite pendant cette
période.
o​ Le changement d'un pod de perfusion ou d'un profil réinitialisera le
ratio Autosens à 100 %.
-​ L'utilisation de la fonction Repas non annoncés permet à l'algorithme du
SMB de reconnaître les repas non annoncés. Cette fonction est utile si vous
oubliez d'indiquer vos glucides à Android APS, ou si vous estimez mal vos
glucides et que la quantité de glucides saisie est erronée, ou si un repas
contenant beaucoup de graisses et de protéines dure plus longtemps que
prévu. Sans aucune entrée de glucides, l'UAM peut reconnaître les
augmentations rapides de glucose causées par les glucides, l'adrénaline, etc.,
Cela fonctionne également dans le sens inverse : en cas de diminution rapide
du glucose, l'UAM peut arrêter les SMB plus tôt.
La valeur cible de la glycémie peut être ajustée entre 80 et 200 mg/dl ou 4,4 et 11
mmol/l.
L’AndroidAPS accorde une grande importance à la sécurité et intègre divers
paramètres et limites de sécurité afin d'éviter une administration d'insuline
potentiellement dangereuse.

Pour vérifier que les utilisateurs configurent correctement le système et
comprennent ses fonctionnalités, AndroidAPS comprend une série d'objectifs.
-​ Ces objectifs servent de guide étape par étape, aidant les utilisateurs à
configurer correctement le système, y compris les réglages de la pompe à
insuline, et à acquérir une compréhension complète de son fonctionnement.
-​ Il faudrait environ deux mois pour compléter ces objectifs, et il est essentiel
de les terminer avec succès avant d'utiliser pleinement la fonctionnalité
d'administration automatisée de l'insuline.
#2 Ajustement
Dans AndroidAPS, vous pouvez ajuster différents paramètres pour personnaliser votre
traitement.

-​ Vous pouvez définir la valeur cible de la glycémie par tranche de 60 minutes
entre 80 et 200 mg/dl (ou 4,4 et 11 mmol/l).
-​ Il est recommandé de régler une valeur cible unique plutôt qu'une fourchette
pour de meilleures performances avec l’AndroidAPS. Les directives
internationales suggèrent de commencer par une valeur cible de 110 à 120
mg/dl (ou 6,1 à 6,5 mmol/l). De nombreux utilisateurs optent pour une valeur
cible de 100 mg/dl (ou 5,6 mmol/l) pendant la journée, et une valeur encore
plus basse pendant la nuit - par exemple 90 mg/dl (ou 5 mmol/l). Cette
solution peut être envisagée si elle ne provoque pas d'hypoglycémie
importante.
-​ L’AndroidAPS vous permet de définir différents profils d'insuline basaux en
fonction de vos besoins individuels.
-​ Vous pouvez également définir une valeur cible temporaire ou un
pourcentage d'administration d'insuline dans une fourchette de sécurité.
-​ L’AndroidAPS propose 3 cibles temporaires par défaut : [Repas imminent],
[Activité], et [Hypo] :
o​ Repas imminent fixe une cible temporaire de 90 mg/dl ou 5 mmol/l
pendant 45 minutes ;
o​ Activité règle une cible temporaire de 140 mg/dl ou 7,8 mmol/l
pendant 90 minutes ; et
o​ Hypoglycémie fixe une cible temporaire de 160 mg/dl ou 8,9 mmol/l
pendant 60 minutes.
Ces paramètres par défaut peuvent être modifiés dans le menu Préférences

Le rapport glucidique, la sensibilité à l'insuline et la durée de l'action de l'insuline
peuvent être ajustés en fonction de vos besoins spécifiques.
-​ Avec l’AndroidAPS, la durée d'action de l'insuline peut être réglée entre 5 et 8
heures, ce qui est généralement plus long que dans les modèles d'insuline
traditionnels en raison de la prise en compte de l'effet de longue traîne de l'insuline.
La plupart des utilisateurs préfèrent une durée de 6 à 7 heures. Si vous avez besoin
d'une durée plus longue, vérifiez vos paramètres ISF car ils peuvent être trop
agressifs. En général, la durée réelle de l'action de l'insuline ne varie pas beaucoup
d'un utilisateur à l'autre.

-​ AndroidAPS vous permet de sélectionner le type d'insuline que vous utilisez.
-​ Vous pouvez choisir des options telles que des profils à action rapide pour
Novorapid ou Humalog, un profil ultra-rapide pour Fiasp, un profil séparé
pour Lyumjev, ou un profil avec un pic d'action réglable pour les insulines
non répertoriées ou les mélanges.
-​ En fonction du type d'insuline sélectionné, AndroidAPS fournira un profil
correspondant.
Dans AndroidAPS, il existe de nombreux autres paramètres ajustables, et nous
allons nous pencher sur les principaux : le type d'algorithme, la fonction de repas
non saisi, l’Autosens, et les seuils d’administration.
-​ Au démarrage d'AndroidAPS, vous pouvez choisir entre l'algorithme
OpenAPS AMA ou OpenAPS SMB.
-​ Dans un premier temps, il est recommandé d'utiliser les supermicrobolus
uniquement après avoir consommé des glucides. Vous pouvez choisir
d'activer les SMB à d'autres moments. Cette option n'est possible qu'avec
des sources fiables de données glycémiques, comme la plupart des capteurs
Dexcom et FreeStyle Libre.
-​ Dynamic ISF est un algorithme expérimental disponible dans AndroidAPS en
plus d'OpenAPS AMA et SMB. Avec Dynamic ISF, la sensibilité à l'insuline
est calculée dynamiquement en fonction de la dose quotidienne totale
d'insuline et des valeurs actuelles et prévues de la glycémie. Cet algorithme
tient compte de la résistance à l'insuline qui se produit lorsque la glycémie
est plus élevée que lorsqu'elle est plus basse. En utilisant l'ISF dynamique, le
système détermine votre sensibilité à l'insuline indépendamment des valeurs
définies par l'utilisateur.

-​ La fonction de détection des repas non saisis aide l'algorithme à interpréter
des augmentations glycémiques significatives, comme des repas non saisis.
-​ Il est important de noter que l'utilisation de cette fonction n'est
recommandée que si le contrôle de la glycémie et les valeurs du capteur de
glucose sont relativement stables. Si votre contrôle glycémique est médiocre,
l'activation de l'UAM peut introduire une variabilité supplémentaire. Il en va
de même si les valeurs de votre capteur sont instables, par exemple le
premier jour suivant un changement de capteur.
-​ Autosens est l'une des fonctions uniques les plus importantes d'AndroidAPS.
Il analyse votre réponse à l'insuline au cours des 4, 8 ou 24 dernières heures
et ajuste la sensibilité à l'insuline et le débit d'insuline basal en conséquence.
Vous pouvez autoriser Autosens à modifier votre valeur cible. Sachez que
votre diabète peut varier, et qu’il est recommandé d'évaluer l'utilisation des
résultats d'Autosens avant de l'activer de façon permanente.
-​ La sensibilité de la fonction Autosens peut être sélectionnée, et l'option
Oref1 est recommandée pour les utilisateurs d'OpenAPS SMB et de l’UAM.
-​ Il est préférable de ne pas modifier les paramètres avancés d'Autosens dans
AndroidAPS. Il s'agit notamment de :
o​ La valeur min_5min_carbimpact détermine la vitesse à laquelle les
glucides sont supposés être dégradés lorsque la glycémie n'augmente
pas. La valeur standard pour l’AMA est de 5 mg/dl/5 minutes, tandis
qu’elle est de 8 mg/dl/5 minutes pour le SMB.
o​ La durée maximale d'absorption du repas est la durée après laquelle
on considère que tous les glucides ont été absorbés. Par défaut, elle
est fixée à 6 heures.
o​ Les ratios maximum et minimum d’Autosens sont respectivement fixés
à 1,2 et 0,8. Ils déterminent les pourcentages d'ajustement maximum
et minimum basés sur la fonction Autosens. Cela signifie que les
valeurs peuvent être ajustées d'un maximum de 120 % et d'un
minimum de 80 % à l'aide d'Autosens.
-​ Enfin, AndroidAPS comporte également des paramètres de sécurité et des
limites qui peuvent être ajustés dans une fourchette de sécurité en fonction
de l'âge et du type de l'utilisateur.
-​ Ces paramètres sont les suivants
o​ Débit basal maximum : Pour les adultes, il est recommandé de fixer
cette limite à 3-5 fois le réglage basal le plus élevé.

o​ Quantité maximale d'insuline embarquée : Cette limite correspond à la
quantité maximale combinée d'insuline basale et de bolus autorisée
en une seule fois.
-​ Il existe également plusieurs paramètres de sécurité avancés qu'il est
recommandé de ne pas modifier :
o​ AndroidAPS propose l'option de toujours utiliser la différence
moyenne courte au lieu de s'appuyer uniquement sur la glycémie la
plus récente du capteur. Ceci est particulièrement utile lors de
l'utilisation de capteurs de glycémie avec plus de bruit, tels que les
données des capteurs xDrip et Libre. La différence moyenne courte
prend en compte la glycémie moyenne du capteur des 15 dernières
minutes ou des 3 dernières valeurs du capteur.
o​ Le multiplicateur de sécurité quotidien maximum et le multiplicateur
de sécurité basal actuel sont des limites supplémentaires pour le débit
d'insuline basal maximum, et il est généralement préférable de les
laisser inchangées. Le multiplicateur quotidien maximum est réglé par
défaut sur 3, ce qui permet d'atteindre un maximum de 3 fois le débit
basal le plus élevé réglé manuellement. Le multiplicateur du mode
basal actuel est fixé à 4, ce qui permet un maximum de 4 fois le débit
basal défini manuellement.
o​ Dans OpenAPS AMA, il existe un autre paramètre de sécurité
spécifique, à savoir le [Bolus snooze dia divider]. Cela détermine la
durée d'administration d'insuline supplémentaire après un bolus de
repas. Par défaut, il est fixé à la moitié de la durée de l'action de
l'insuline.
o​ Enfin, dans OpenAPS SMB, il existe également des paramètres de
sécurité supplémentaires liés aux supermicroboles. Il s'agit par
exemple du nombre maximal de minutes de base pour limiter les
supermicroboles, qui est fixé par défaut à 30 minutes.
N'oubliez pas que ces réglages et paramètres doivent être ajustés en concertation
avec un professionnel de santé, en tenant compte de vos besoins individuels et de
vos conseils médicaux.

#3 Reprise du mode manuel
Dans AndroidAPS, s'il n'y a pas de connexion au capteur ou à la pompe pendant
plus de 15 minutes, le système passe en mode manuel.
Lorsque la connexion est perdue, la pompe passe d'abord à la dernière valeur du
débit basal temporaire réglé. Après 120 minutes, elle passe en mode manuel.
En mode manuel, l'administration d'insuline basale est réglée sur le débit prédéfini
sans la fonction d’[Arrêt Glycémie Basse]. Vous pouvez activer manuellement la
fonction de suspension avant baisse, mais cela ne sera possible que si le capteur et
la pompe sont connectés.
Une fois la connexion à la pompe ou au capteur rétablie, le système repasse
automatiquement en mode Auto, appelé administration automatisée d'insuline dans
AndroidAPS. Dans ce mode d'administration automatisé de l'insuline, le système
calcule et administre une dose de base temporaire toutes les 5 minutes.
Il convient de noter que dans AndroidAPS, le terme "Open-Loop" ne correspond pas
au mode manuel. Au lieu de cela, le mode [Boucle ouverte] indique que les valeurs
temporaires apparaissent uniquement sous forme de notifications et nécessitent
votre confirmation manuellement. Ce mode boucle ouverte est recommandé aux utilisateurs qui découvrent Android APS et
qui souhaitent observer le

fonctionnement de l'algorithme avant de s'y fier totalement.
#4 Éducation
Une formation adéquate est cruciale lors de la mise en place d'un système en
boucle fermée. Pour des informations générales, consultez le module général sur
les systèmes en boucle fermée.
Les points d'éducation générale abordés sont les suivants :
- Utiliser moins d'hydrates de carbone pour corriger l'hypoglycémie.
- Envisager des problèmes avec le dispositif de perfusion si la glycémie reste
élevée sans raison apparente
- Faire confiance au système automatisé d'administration d'insuline et éviter
les interventions manuelles inutiles
- En programmant les bolus de repas 15 minutes avant les repas.
- Utiliser le mode exercice 1 à 2 heures avant l'activité.

●​ Arrêter l'administration d'insuline si la pompe est déconnectée pendant plus
de 15 minutes.
- Répondre aux alarmes et en faisant attention aux mises à jour automatiques
sur les téléphones portables
- Rechercher le soutien de pairs pour obtenir des conseils et partager des
expériences.
AndroidAPS est un outil puissant pour gérer le diabète, mais il est important de se
rappeler qu'il ne s'agit pas d'un système entièrement automatisé que l'on peut
régler puis oublier. Il nécessite une surveillance active et une compréhension de ses
actions. Voici quelques points d'éducation supplémentaires spécifiques à l'utilisation
d'AndroidAPS :
1.​ Surveillance active : AndroidAPS contrôle l'administration de l'insuline.
AndroidAPS contrôle l'administration de l'insuline. Il est donc essentiel de le
surveiller de près et de comprendre son fonctionnement. Soyez attentif à
toute erreur potentielle ou à tout comportement inattendu et apprenez à
interpréter les actions du système.
2.​ Utilisation du téléphone. Une fois couplé, le smartphone peut demander à la
pompe d'effectuer diverses actions. Votre appareil équipé d'AndroidAPS doit
être considéré comme un dispositif médical et être manipulé en conséquence.
N'utilisez le smartphone que pour AndroidAPS et les communications
essentielles. Envisagez de commencer par des téléphones distincts pour
AndroidAPS et l'utilisation quotidienne du smartphone. Évitez d'installer des
applications ou des jeux inutiles qui pourraient introduire des logiciels
malveillants et potentiellement interférer avec le fonctionnement du
système.
3.​ Protéger son smartphone. Installez toutes les mises à jour de sécurité
fournies par le fabricant de votre smartphone et par Google pour protéger
votre appareil. Cela permet de se prémunir contre d'éventuelles failles de
sécurité.

4.​ Proximité de la pompe et du CGM. Gardez votre téléphone portable à
proximité de votre pompe à insuline et de votre CGM afin de maintenir une
connexion fiable.
5.​ Mots de passe et sauvegardes. Conservez un enregistrement de tous les
mots de passe utilisés et stockez une copie de sauvegarde de votre
application dans le nuage. L'exportation régulière de vos paramètres vers le
nuage simplifie le processus de réinstallation et évite de devoir refaire tous
vos objectifs.
6.​ Préparer un appareil de secours. Il est conseillé de disposer d'un téléphone
portable de réserve pour les cas d'urgence. Cela permet de s'assurer que
dispose d'un appareil de secours en cas de problème technique avec le
téléphone principal.
7.​ Paramètres avancés. N'utilisez les paramètres avancés, tels que Open APS
SMB, qu'une fois que vous avez bien compris les principes de base et que
vous avez obtenu un contrôle stable de votre glycémie. Notez que des
fonctions telles que la fonction Repas non annoncés et Autotune peuvent ne
pas fonctionner de manière optimale pour tout le monde.
8.​ "Manger bientôt" Cible Temp. Si vous souffrez d'hyperglycémie après les
repas, vous pouvez utiliser l'objectif temporaire "Eating Soon". Cette fonction
vous aide à gérer de manière proactive les niveaux élevés de sucre dans le
sang en préparation des repas à venir.
9.​ Accès des prestataires de soins de santé. Veillez à ce que votre soignant ait
accès aux rapports générés par Nightscout ou Tidepool, ce qui lui permet de
rester informé sur la gestion de votre diabète et de prendre des décisions
éclairées lors de vos consultations médicales.
10.​ Maîtriser l'utilisation de la pompe à insuline et du capteur. Assurez-vous
que vous êtes en mesure d'utiliser correctement votre pompe à insuline et
votre capteur.
En suivant ces consignes et en adoptant une approche proactive de l'utilisation
d'AndroidAPS, vous pouvez optimiser l'efficacité du système et garantir une
expérience d'administration automatisée d'insuline sûre et fiable.

#5 Sensibilité aux capteurs
L’AndroidAPS peut être relié aux capteurs Dexcom, à certains FreeStyle Libre,
Eversense, Enlite, POCTech, Sibionics, Ottai, Syai Tag et CareSens Air et Glunovo
capteurs.
Seuls les capteurs Dexcom et FreeStyle Libre sont considérés comme des sources
fiables de données glycémiques, car ils ont été approuvés par les autorités
réglementaires pour être utilisés dans les systèmes en boucle fermée commerciaux.
Les sources fiables de données glycémiques permettent l'administration de SMB à
tout moment, tandis que les autres sources de données ne l’autorisent qu'après la
consommation de glucides.
Étant donné qu'AndroidAPS ne peut pas se connecter directement aux applications
de capteurs natives comme l'application Dexcom ou LibreLink, une application de
capteur open-source supplémentaire (telle que xDrip+ ou Juggluco) est nécessaire
pour réduire l’écart et pouvoir transmettre les données du capteur à AndroidAPS.
Si vous avez des doutes quant à l'exactitude des données de votre capteur ou si
vous pensez qu'elles ne reflètent pas votre état, effectuez un test de piqûre au doigt
pour confirmation. Si vous constatez un écart important, par exemple une différence
de plus de 20 % entre les résultats du capteur et ceux de la piqûre du doigt, même
lorsque votre glycémie est stable dans l'intervalle cible, il est conseillé de désactiver
le mode automatique ou de remplacer le capteur.
Certains capteurs peuvent être étalonnés à l'aide d'une piqûre au doigt. Cette
opération ne doit être effectuée que si les valeurs de votre capteur sont stables et
comprises dans l'intervalle.
#6 Suivi

Dans AndroidAPS, le partage des données relatives à l'insuline et à la glycémie
avec les professionnels de santé et les membres de la famille est possible par
différents moyens :
Pour permettre à votre prestataire de soins de santé de surveiller vos données, il est
essentiel de configurer un site Web Nightscout ou de créer un compte sur Tidepool.
AndroidAPS peut envoyer les données au site Web Nightscout ou au nuage
Tidepool, ce qui permet à votre prestataire de soins de santé d'accéder aux

informations et de les examiner en temps réel. Les utilisateurs peuvent télécharger
des rapports depuis Tidepool ou Nightscout, ou utiliser des outils tels que
Nightscout Reporter pour générer des rapports complets qui peuvent être partagés
avec les prestataires de soins de santé pour une analyse et une évaluation
approfondies.
1.​ Il est important de comprendre que Tidepool ne sert qu'à établir des
rapports. Il ne s'agit pas d'une application de suivi en temps réel. Si vous
avez besoin de suivre d'autres personnes que le téléphone principal Android
APS, vous devez également configurer Nightscout sur Les soignants peuvent
accéder aux données sur le site Web personnel de Nightscout, soit avec un
jeton, soit par d'autres moyens autorisés. Cela leur permet de visualiser et de
suivre les informations relatives à votre insuline et à votre glycémie et de se
tenir au courant de la gestion de votre diabète. Pour les soins à distance en
dehors de Nightscout, les soignants peuvent utiliser l'application NSClient ,
dans laquelle ils peuvent ajuster les cibles, importer des glucides et d'autres
paramètres. Tout sauf donner un bolus.
2.​ Les membres de la famille peuvent également surveiller vos données à
distance en utilisant l'application Dexcom Follow si vous avez un compte
Dexcom Share, ou en utilisant xDrip ou ses variantes. Ces applications leur
permettent d'accéder en temps réel aux informations relatives à la glycémie
et à l'insuline, ce qui constitue un niveau supplémentaire de soutien et de
sensibilisation.
En maximisant ces capacités de partage, les utilisateurs d'AndroidAPS peuvent
faciliter une communication et une collaboration efficaces avec leur équipe de soins
de santé et leurs proches, favorisant ainsi un environnement de gestion du diabète
favorable et informé.
2.2. Indications
AndroidAPS est une application open-source qui n'a pas d'indications officielles
approuvées par la FDA ou les autorités européennes. Elle peut être utilisée avec
toute cartouche d'insuline à action rapide.
L'application AndroidAPS ne peut pas être téléchargée à partir des boutiques
d'applications. Les utilisateurs sont tenus de constituer eux-mêmes l'application, à

leurs risques et périls. La mise en place du système nécessite de la détermination et
des connaissances techniques. Si vous n'avez pas les connaissances techniques au
début, vous les aurez à la fin.
Toutes les informations dont vous avez besoin peuvent être trouvées dans la
documentation Android APS disponible en ligne, et auprès d'autres personnes qui
l'ont déjà fait - vous pouvez leur demander dans les groupes Facebook ou dans d'autres forums comme Discord.
Discord est une plateforme hautement

recommandée pour les discussions interactives entre les utilisateurs, les parents, et
les développeurs d'AndroidAPS et de Nightscout. Il couvre un large éventail de
sujets, depuis les questions posées par les premiers utilisateurs jusqu'aux
discussions plus techniques sur le fonctionnement interne d'AndroidAPS et de
l'algorithme OpenAPS. Petite note : la langue principale utilisée sur Discord est
l'anglais.
De nombreuses personnes ont réussi à construire Android APS et l'utilisent
maintenant en toute sécurité, mais il est essentiel que chaque utilisateur :
-​ Constituer lui-même le système afin d'en comprendre au maximum son
fonctionnement.
-​ Calibrer son algorithme de dosage individuel avec l'aide de son équipe de
diabétologie.
-​ Entretenir et surveiller le système pour garantir son fonctionnement continu.
-​ Comprendre les fonctionnements de sa pompe à insuline et de son capteur
de glucose.
Pour construire et utiliser AndroidAPS, vous aurez besoin d'un smartphone. Les
conditions du système minimales

pour les appareils sont détaillées dans la

documentation d'AndroidAPS. La documentation fournit également une liste de
smartphones spécifiques qui ont été testés et se sont avérés compatibles avec
AndroidAPS. La vérification des conditions minimales et de la compatibilité garantit
que vos appareils sont capables d'exécuter l'application de manière efficace.
La constitution de l’application peut être effectuée à l'aide d'un ordinateur équipé
d'Android Studio ou depuis votre smartphone à l'aide des actions GitHub. Un guide
étape par étape est disponible dans la documentation AndroidAPS. Vous devrez
aller suivre les différentes étapes pour générer le fichier APK. Il est important de
stocker les mots de passe nécessaires et le fichier de stockage des clés en toute

sécurité pour les futures mises à jour. Une fois le fichier APK généré, il peut être
sauvegardé dans le nuage et installé sur un smartphone.
Après avoir installé l'application AndroidAPS, vous devrez compléter 10 objectifs
sur une période d'environ 2 mois. Ces objectifs vous guident à travers des
fonctionnalités et des paramètres importants, en veillant à ce que vous configuriez
correctement votre système et que vous compreniez son fonctionnement. En
complétant les objectifs, vous gagnerez en confiance dans le système AndroidAPS,
ce qui vous permettra de gérer efficacement votre diabète.
En conclusion, AndroidAPS exige des utilisateurs qu'ils jouent un rôle actif dans la
compréhension et la construction du système, tout en respectant les précautions de
sécurité et les conseils médicaux.
2.3 Mises à jour du logiciel
Des mises à jour régulières du logiciel sont essentielles pour maintenir des
performances optimales et accéder aux dernières fonctionnalités d'AndroidAPS.
L'équipe d'AndroidAPS publie de nouvelles versions périodiquement, avec des
mises à jour majeures chaque année et des mises à jour mineures entre les deux.
Ces mises à jour comprennent souvent des corrections de bogues et des
améliorations visant à renforcer les fonctionnalités du système.
Les notifications de l'application AndroidAPS vous informeront de la disponibilité
d'une nouvelle version. Il est obligatoire de mettre à jour dans les 60 jours pour
continuer à utiliser AndroidAPS.
Pour mettre à jour AndroidAPS, suivez les étapes suivantes :
-​ Exportez vos paramètres AndroidAPS actuels et sauvegardez-les en lieu sûr.
-​ Utilisez Android Studio ou GitHub pour actualiser le code vers la nouvelle
version.
-​ Créez un nouveau fichier APK avec la même clé de signature que
l'installation précédente.
-​ Transférez le nouveau fichier APK sur votre téléphone et mettez à jour
l'installation actuelle.

-​ Vérifiez le fonctionnement et les paramètres d'AndroidAPS après la mise à
jour.
Si vous rencontrez des problèmes, restez calme et demandez de l'aide à la
communauté AndroidAPS et à la documentation. Rappelez-vous que le dépannage
est une partie normale de l'utilisation d'un logiciel et qu'avec de la patience, vous
pouvez surmonter tous les défis qui se présentent.
En conclusion, rester informé et proactif avec AndroidAPS est essentiel pour
optimiser la gestion de votre diabète. En vous tenant au courant des mises à jour du
logiciel, en suivant les directives de soins et en réglant rapidement tout problème,
vous pouvez vous assurer d'une expérience fluide et efficace. Donnez la priorité à la
sécurité, tenez des registres précis et utilisez les ressources disponibles pour
obtenir de l'aide. Profitez des possibilités offertes par AndroidAPS pour améliorer
votre santé et votre bien-être.
