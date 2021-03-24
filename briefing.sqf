/* Briefing au format sqf */

//Crédits
player createDiaryRecord ["Diary", ["Crédits", "

<font color='#ff0505'>Le pétrole de Daryiah</font color><br/><br/>

Auteur : tanin69<br/><br/>

Une mission de canards, avec LUCY et PLUTO et diverses coquineries.<br/><br/>

<font color='#ff9605'>Merci à Mystery, Sparfell, Shinriel pour les bibliothèques de GDC_Lib https://github.com/GdC-Framework/GdC_lib/

"]];


//Insertion et fin de mission
player createDiaryRecord ["Diary", ["Insertion et fin de mission", "

<font color='#82ff05'>Insertion</font color><br/>
Insertion séparée pour les deux équipes. Au début au moins, vous devriez conserver un contact radio. A vous de voir pour la suite.<br/><br/>

<font color='#82ff05'>Fin de mission</font color><br/>
Tirez-vous de là vite fait ! Une extraction héliportée peut être sollicitée, en particulier pour les KSK. (voir GDC EXTRA)<br/>

"]];


//Equipement
player createDiaryRecord ["Diary", ["Equipement", "

=====<br/>
 KSK<br/>
=====<br/><br/>

<font color='#ff8205'>Armement</font color><br/>
> HK416 avec optique x3 et silencieux pour l'équipe d'assaut<br/>
> HK417 (cal. 7.62) avec AN/PVS-10 NVS (x8 avec vision noctune) pour le tireur de précision<br/>
<font color='#ff8205'>Observation et navigation</font color><br/>
> Vector 21 nite pour le CdO et l'observateur<br/>
> MicroDAGR pour le CdO, le TP et l'observateur<br/>
<font color='#ff8205'>Communications</font color><br/>
> 148 pour le CdO, le TP et l'observateur<br/>
> 343 pour tous les autres<br/>
<font color='#ff8205'>Caisse de matériel</font color><br/>
> Du matériel de destruction supplémentaire<br/>
> Des AT M136 (on n'est jamais trop prudent)<br/>
> Du matériel médical<br/>
> Des munitions supplémentaires<br/><br/>

=====<br/>
Méca<br/>
=====<br/><br/>

<font color='#ff8205'>Véhicule de combat d'infanterie</font color><br/>
Vous disposez de deux GTK Boxer, fierté de la Bundeswehr.<br/>
Ils sont équipés d'un cal. 50 (M2) et d'une visée conforme à ce qu'on peut attendre d'un équipement de dernière génération : camera avec visée nocture et modes thermiques, 3 niveaux de grossissement, télémètre intégré. Avec ça, la portée utile est autour de 1,2 km quand même.<br/>
Bon, à part ça, on nous a livré des exemplaires mals finis, le poste de commandement est absolument inutile.<br/>
Et plus grave : les boxers n'ont pas la capacité de grimper des pentes abruptes... Probablement à cause du sable, mais la Deutsch Quality semble en perdition. 

<font color='#ff8205'>Armement de l'infanterie</font color><br/>
> Vector et 148 pour le commandant et les TL<br/>
> G36 (+ optique x4) et PRC 343 pour tous les fantassins, le commandant et les TL<br/>
> Pour l'équipe d'appui : MG3 pour le MG, AT Lourd Carl Gustav et HK 417 (cal. 7.62) avec optique x4 pour le tireur de précision<br/>

<font color='#ff8205'>Matériel embarqué</font color><br/>
> Du matériel de destruction supplémentaire<br/>
> Des munitions pour l'AT et pour la MG<br/>
> Du matériel médical<br/>
> Diverses babioles<br/><br/>

<br/>

"]];

//Intel
player createDiaryRecord ["Diary", ["Renseignements", "

Un observateur du KSK est sur place depuis plusieurs jours. Nous disposons donc de renseignements très précis.<br/><br/>

<font color='#ff0505'>Installation pétrolière</font color><br/>
Sur l'installation elle-même, on compte entre 20 et 25 personnels. Il y a un bunker avec probablement une position fixe <marker name ='mrkFWPetrolStation_1_290'>à l'entrée est</marker> de l'installation<br/><br/>

Notre observateur a également repéré 3 tours de guet : une située <marker name ='marker_2'>au sud de l'installation</marker>, l'autre <marker name ='marker_1'>à l'est</marker> et la troisième <marker name ='marker_0'>à l'ouest</marker>.<br/>
Cette dernière, positionnée sur des vestiges des croisades chrétiennes, héberge une arme lourde (Kord).<br/>
Notre observateur nous apprend que les sentinelles sont équipées pour la vision de nuit et la vision de loin. Méfiance donc, vous pouvez être aperçus de loin et mettre l'opération par terre. A vous de définir la conduite à tenir par rapport à ces postes.<br/><br/>

Pour finir, il a aperçu de petites patrouilles faisant la navette entre le camp et la station pétrolière.<br/><br/>

EN DEHORS DE CELA ET DE LA PROXIMITE IMMEDIATE DES OBJECTIFS, IL N'Y AUCUNE PATROUILLE HOSTILE TRAINANT DANS LA PAMPA.<br/><br/>

<font color='#ff0505'>Camp</font color><br/>
> <marker name ='marker_campOpfor'>Le camp </marker> est gardé par 20 à 30 hommes au plus.<br/>
> Il y a <marker name ='marker_35'>un D-30 à l'entrée est du camp</marker>.<br/>
> Il y a également <marker name='mrkFWCamp_235'>une arme lourde de type Kord</marker>, également dans la partie est du camp.<br/>
> Enfin, il y a un poste Metis, mais celui-ci étant mobile, notre observateur ne peut pas nous indiquer où il se trouvera lorsque nous serons sur l'objectif.<br/>
> Il y a 2 M113 sur ce camp. Si les KSK sont grillés, ils risquent fort de se porter à leur rencontre.<br/><br/>

<font color='#ff0505'>Aérien</font color><br/>
Complètement au nord-est se trouve <marker name ='marker_airport'>un aéroport militaire</marker>. A priori, les hostiles ne disposent pas d'hélicoptère de combat sur zone, mais il est par contre fort probable qu'un UH-1 'Huey' (avec des M60 embarquées) soit disponible. A partir de l'alerte, il sera sur zone en quelques minutes.<br/><br/>


"]];

//Mission
player createDiaryRecord ["Diary", ["Mission", "

Objectif principal des KSK : détruire l'installation pétrolière se trouvant <marker name ='marker_objective'>à l'est du village</marker> Bir Al Huffay.<br/><br/>

Objectif de l'infanterie mécanisée : neutraliser les troupes sur <marker name ='marker_campOpfor'>le camp</marker> se trouvant à deux petits kilomètres au nord de l'installation pétrolière, puis faire sauter les réserves de pétrole<br/><br/>

Les commandants de deux groupes ont le même grade : débrouillez-vous pour établir la chaine de commandement.<br/><br/>

Nos spécialistes en explosifs nous informent que quelques charges bien placées devraient déclencher une belle réaction en chaîne :<br/>
> Pour les KSK, deux sacoches explosives au pied de la tour pétrolière suffiront à la faire tomber. Vu la vétusté des installations, l'incendie devrait faire le reste<br/>
> Pour les mécas, une sacoche au pied de la <marker name='marker_39'>tour de ravitaillement</marker>, une charge près d'une des cuves situées à proximité et une charge ou une sacoche sur les Ural devraient suffire à déclencher un beau feu d'artifice 

"]];

//Situation
player createDiaryRecord ["Diary", ["Situation", "

<font color='#ff0505'>Une heure et quinze minutes</font color> : c'est le temps dont vous disposez pour accomplir vos objectifs et déguerpir.<br/><br/>

En effet, une colonne de 5 T-72 fonce vers notre objectif pour se ravitailler. Ils arriveront du Nord-Est d'ici 1h15 à 1h30, donc. Et à ce moment, vaudrait mieux que vous ayez mis vos miches à l'abri...<br/><br/>

C'est le petit matin, une petite heure avant le lever du soleil, mais sous cette latitude, on y voit déjà assez bien. La météo est assez imprévisible, avec parfois des brumes de sable, parfois une clarté limpide. Le seul truc que vous savez, c'est qu'il ne va pas pleuvoir et qu'on va creuver de chaud dès que le soleil sera levé.<br/><br/>

Note : un officier du QG vous a glissé à l'oreille que si vous trouvez un moyen de tendre une embuscade aux T-72, il s'arrangera pour accélérer votre avancement. Mais sachez que ce type est une tête brûlée notoire (bien que planqué au QG) et qu'aucun ordre écrit ne vous a été donné en ce sens : si vous crevez comme des merdes, vous ne pourrez vous en prendre qu'à vous même et espérer que les pensions de vos veuves ne se perdent pas dnas la bureaucratie...

"]]; 

//Contexte
player createDiaryRecord ["Diary", ["Contexte", "

Une grande puissance du (pas si) proche orient a des visées expansionnistes. Elle occupe un territoire étranger riche en pétrole pour financer une guerre sanglante contre son propre peuple.<br/><br/>

Les puissances européennes ont décidé d'agir dans la plus grande discrétion. Cette fois-ci, c'est l'Allemagne qui s'y colle, alignant ses redoutables Kommando Spezialkräfte (KSK) face à une armée régulière au matériel ancien, mais bien entretenu.

"]];