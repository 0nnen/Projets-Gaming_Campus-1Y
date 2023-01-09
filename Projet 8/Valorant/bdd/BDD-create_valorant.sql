-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 05 jan. 2023 à 23:41
-- Version du serveur : 5.7.11
-- Version de PHP : 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `valorant`
--

CREATE DATABASE IF NOT EXISTS Valorant;

USE Valorant;

-- --------------------------------------------------------

--
-- Structure de la table `arme`
--

CREATE TABLE `arme` (
  `Id_Arme` int(11) NOT NULL,
  `nom_a` varchar(50) DEFAULT NULL,
  `categorie_a` varchar(50) DEFAULT NULL,
  `type_a` varchar(50) DEFAULT NULL,
  `description_a` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `arme`
--

INSERT INTO `arme` (`Id_Arme`, `nom_a`, `categorie_a`, `type_a`, `description_a`) VALUES
(1, 'Vandal', 'Principale', 'Fusil', 'Le Vandal est un fusil automatique coûteux. L\'une des meilleures armes polyvalentes de VALORANT , elle est la plus efficace pour éliminer des cibles individuelles à des distances plus longues car elle n\'a pas d\'atténuation, ce qui lui permet de tuer n\'importe quel ennemi d\'un seul tir à la tête à toutes les distances.'),
(2, 'Phantom', 'Principale', 'Fusil', 'Le Phantom est un fusil automatique coûteux. L\'une des meilleures armes polyvalentes de VALORANT , elle est plus efficace à courte et moyenne portée où elle est capable de pulvériser plusieurs ennemis à la fois en raison de sa cadence de tir élevée. Il est également équipé d\'un silencieux, ce qui lui permet d\'être utilisé pour spammer à travers les bloqueurs de vision sans trop de risques pour le nombre de munitions ou le positionnement du joueur.'),
(3, 'Guardian', 'Principale', 'Fusil', 'Le Guardian est un fusil semi-automatique à prix modéré. Il est plus efficace dans les combats à longue distance entre les mains de joueurs confiants dans leur capacité à frapper des tirs à la tête à de telles distances, étant plus précis qu\'un Vandal . La forte pénétration du Guardian le rend également utile pour tuer en wallbangs. Cependant, dans les combats à courte et moyenne portée, le Guardian ne peut pas rivaliser avec le Phantom ou le Vandal en raison de leurs cadences de tir plus élevées.'),
(4, 'Bulldog', 'Principale', 'Fusil', 'Le Bulldog est un fusil à prix modéré. Il dispose de deux modes de tir, un tir principal automatique standard à une seule balle et un tir alternatif semi-automatique en mode rafale qui tire trois balles en une rafale précise à environ un cinquième de sa cadence de tir habituelle.'),
(5, 'Bucky', 'Principale', 'Fusil à Pompe', 'Le Bucky est un fusil de chasse à faible coût et l\'arme principale la moins chère du jeu. Il dispose de deux modes de tir, un tir principal standard à un seul obus et un tir alternatif à cartouche qui permet à l\'obus de parcourir une courte distance avant de pulvériser ses plombs au lieu de pulvériser immédiatement depuis le canon du pistolet, permettant à l\'utilisateur d\'infliger des dégâts à cibles à moyenne portée. Cependant, les obus tirés à l\'aide du tir alternatif ne produisent qu\'une quantité réduite de plombs, et les ennemis touchés par la cartouche avant qu\'elle n\'atteigne la distance requise pour exploser ne subiront que 1 plomb de dégâts.'),
(6, 'Judge', 'Principale', 'Fusil à Pompe', 'Le Judge est un fusil de chasse automatique à prix modéré. Il est préférable de l\'utiliser dans des situations qui placent l\'utilisateur à courte portée contre plusieurs ennemis, en étant capable de les anéantir rapidement s\'ils risquent de ne pas nettoyer ces petites zones au préalable. Comme avec tous les fusils de chasse, le Judge a une propagation des plombs qui peut être réduite en s\'accroupissant, bien que la propagation le rende toujours effectivement inutile à longue distance, quoi qu\'il arrive. Contrairement aux autres fusils de chasse cependant, le Judge n\'a pas de limite de distance sur ses plombs et peut toucher des ennemis au-delà de 50 mètres.'),
(7, 'Marshal', 'Principale', 'Sniper', 'Le Marshal est un fusil de sniper à bas prix. En tant que tireur d\'élite, il dispose d\'une lunette avec un seul réglage de zoom sur son mode de tir alternatif qui a une précision parfaite lorsqu\'il est immobile. Bien que les fusils de sniper soient généralement extrêmement imprécis lorsqu\'ils sont utilisés en mode de tir principal, le Marshal est étonnamment précis dans ce cas, ce qui signifie qu\'il peut être utilisé pour affronter plusieurs ennemis à la fois tant que l\'utilisateur peut frapper ses coups.'),
(8, 'Operateur', 'Principale', 'Sniper', 'L\'Operateur est un fusil de sniper coûteux et l\'arme la plus chère du jeu. En tant que tireur d\'élite, il dispose d\'une lunette avec deux réglages de zoom sur son mode de tir alternatif qui a une précision parfaite lorsqu\'il est immobile. La précision du tir principal de l\'Operateur, quant à elle, est extrêmement imprécise.'),
(9, 'Spectre', 'Principale', 'SMG', 'Le Spectre est un SMG à prix modéré. Équipé d\'un grand chargeur et d\'un silencieux, il peut être utilisé pour spammer à travers les bloqueurs de vision sans trop de risques pour le nombre de munitions ou le positionnement du joueur.'),
(10, 'Stinger', 'Principale', 'SMG', 'Le Stinger est un SMG à bas prix. Il dispose de deux modes de tir, un tir principal automatique standard à une seule balle et un tir alternatif semi-automatique en mode rafale qui tire quatre balles en rafale à environ un huitième de sa cadence de tir habituelle. Le tir alternatif augmente également la distance à laquelle les dégâts de chute commencent à se produire.'),
(11, 'Odin', 'Principale', 'Mitrailleuse', 'L\'Odin est une mitrailleuse coûteuse. Lors de l\'utilisation du tir principal, la cadence de tir de l\'Odin augmentera au cours de la durée de tir de l\'arme jusqu\'à un montant maximum, mais l\'utilisation du tir alternatif permettra à l\'utilisateur de tirer immédiatement à cette cadence de tir maximale.'),
(12, 'Ares', 'Principale', 'Mitrailleuse', 'L\'Ares est une mitrailleuse de prix moyen. Contrairement à la plupart des autres armes à feu qui deviennent moins précises à mesure que vous tirez continuellement plus de balles, l\'Ares est la seule arme du jeu qui devient plus précise car elle est tirée en continu. En tant que mitrailleuse, elle est plus efficace comme outil défensif pour tenir un site ou lorsqu\'elle est utilisée pour tuer en wallbangs en raison de sa pénétration élevée, de sa cadence de tir et de sa capacité de chargeur. Leur mobilité réduite et leurs vitesses d\'équipement plus élevées les rendent cependant moins adaptés pour jeter un coup d\'oeil ou entrer dans des sites, ce qui est mieux servi à un tel prix par les SMG.'),
(13, 'Sheriff', 'Secondaire', 'Poing', 'Le Sheriff est un revolver semi-automatique et l\'arme de poing la plus chère du jeu. Capable de tuer des ennemis avec une seule balle dans la tête à la plupart des portées et des totaux de santé, il peut être utilisé pour défier même les ennemis qui ont tout acheté. Sa pénétration élevée et son chargeur de réserve supplémentaire le rendent également utile pour le spam pour les wallbangs lors de coups de pistolet ou d\'éco. Cependant, avec un chargeur de faible capacité et une faible cadence de tir, même un seul coup manqué peut finir par être punitif. Le recul et la propagation élevés du shérif favorisent également un contrôle et une précision exceptionnels afin de l\'utiliser lors de la lutte contre plusieurs ennemis.'),
(14, 'Ghost', 'Secondaire', 'Poing', 'Le Ghost est un pistolet semi-automatique à bas prix. Équipé d\'un grand chargeur et d\'un silencieux, il peut être utilisé pour spammer à travers les bloqueurs de vision sans trop de risques pour le nombre de munitions ou le positionnement du joueur.'),
(15, 'Frenzy', 'Secondaire', 'Poing', 'Le Frenzy est un pistolet automatique à bas prix. En tant qu\'équivalent d\'arme de poing d\'un SMG, il n\'est pas trop pénible de l\'utiliser en déplacement à courte distance, ce qui le rend plus efficace à cette distance et la meilleure arme de poing à utiliser dans de tels scénarios, bien que défier les ennemis qui ont acheté des tirs à la tête sera être très probablement nécessaire.'),
(16, 'Shorty', 'Secondaire', 'Poing', 'Le Shorty est l\'arme la moins chère du jeu. En tant qu\'équivalent d\'arme de poing d\'un fusil de chasse, il est plus efficace à courte portée pour surprendre instantanément un ennemi. Avec de bons dégâts et de bonnes fonctionnalités malgré son faible prix, il peut même être utilisé pour attraper un ennemi entièrement acheté lors de tours écologiques, permettant au joueur d\'obtenir une mise à niveau d\'arme puissante pour très peu d\'investissement.'),
(17, 'Classique', 'Secondaire', 'Poing', 'Le Classique est un pistolet que tous les joueurs reçoivent lors de leur apparition. Il dispose de deux modes de tir, un tir principal semi-automatique standard à une seule balle et un tir alternatif de fusil de chasse semi-automatique qui tire trois balles instantanément mais seulement à environ un tiers de sa cadence de tir habituelle.');

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `Id_Equipe` int(11) NOT NULL,
  `equipe_sel_e` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`Id_Equipe`, `equipe_sel_e`) VALUES
(1, 'Rouge'),
(2, 'Bleu');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `Id_Joueur` int(11) NOT NULL,
  `nom_uti_j` varchar(50) DEFAULT NULL,
  `tue_j` smallint(6) DEFAULT NULL,
  `mort_j` smallint(6) DEFAULT NULL,
  `assist_j` varchar(50) DEFAULT NULL,
  `Id_Equipe` int(11) NOT NULL,
  `Id_Arme` int(11) NOT NULL,
  `Id_Personnage` int(11) NOT NULL,
  `Id_Rang` int(11) NOT NULL,
  `Id_Match_game` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `map`
--

CREATE TABLE `map` (
  `Id_Map` int(11) NOT NULL,
  `nom_m` varchar(50) DEFAULT NULL,
  `description_m` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `map`
--

INSERT INTO `map` (`Id_Map`, `nom_m`, `description_m`) VALUES
(1, 'Bind', 'La caractéristique «unique» de Bind est qu\'il ne contient pas de section médiane, mais qu\'il a à la place deux téléporteurs à sens unique. L\'un emmène les joueurs de A Short à B Short et l\'autre emmène les joueurs de B Long à A Lobby.'),
(2, 'Haven', 'Les caractéristiques uniques de Haven incluent un troisième site de pointe supplémentaire. Cela n\'affecte pas le nombre d\'orbes ultimes sur la carte ; Les deux orbes ultimes de Haven sont présentes dans A Long et C Long (Dragon).'),
(3, 'Split', 'Split a été la première carte à utiliser des ascendeurs.'),
(4, 'Ascent', 'Ascent est une carte située en Italie qui présente une grande zone centrale ouverte sur laquelle les deux équipes peuvent s\'affronter. Mid est un terrain de jeu pour une utilisation diversifiée des capacités et le contrôle réussi de la zone ouvre des voies supplémentaires pour les attaquants vers les deux sites Spike.'),
(5, 'Fracture', 'La conception unique de Fracture divise la carte en quatre quadrants neutres, quatre zones centrales entre les quadrants qui contiennent les sites et les apparitions des attaquants, et une zone centrale où les défenseurs apparaissent. Au début du tour, les défenseurs peuvent accéder aux sites, qui se trouvent sur les côtés opposés de la carte. Les attaquants apparaissent tous dans une zone, mais peuvent atteindre l\'autre côté en utilisant les tyroliennes inter-cartes qui les emmènent sous Defender Spawn. Pendant la phase d\'achat, les défenseurs ne peuvent pas entendre les attaquants utiliser les tyroliennes.'),
(6, 'Pearl', 'Pearl est une carte à trois voies à deux sites. Suite à la sortie de cartes plus complexes sur le plan stratégique comme Icebox , Breeze et Fracture , Pearl est conçue comme une carte plus traditionnelle. En conséquence, Pearl est la première carte à être publiée qui ne contient aucun élément dynamique ni accroche mécanique pour le gameplay.'),
(7, 'IceBox', 'Icebox est la première carte à introduire des tyroliennes horizontales, vue sur le site A. Chaque site Icebox est un espace de combat complexe qui offre beaucoup de couverture et de verticalité. Cette carte met l\'accent sur les escarmouches, la visée précise et le jeu adaptatif.'),
(8, 'Breeze', 'Les caractéristiques «uniques» de Breeze sont présentes sur le côté A de la carte, principalement en rapport avec A Hall. Il y a des cordes pour amener les joueurs dans A Hall. Du côté défenseur, les joueurs peuvent utiliser la corde à l\'arrière du site A pour accéder au pont et au hall, et du côté attaquant, les joueurs peuvent utiliser la corde du hall A pour entrer dans le hall.');

-- --------------------------------------------------------

--
-- Structure de la table `match_game`
--

CREATE TABLE `match_game` (
  `Id_Match_game` int(11) NOT NULL,
  `date_heure_m` datetime DEFAULT NULL,
  `Id_Map` int(11) NOT NULL,
  `Id_Resultat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `Id_Personnage` int(11) NOT NULL,
  `nom_p` varchar(50) DEFAULT NULL,
  `description_p` text,
  `capacite_p` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`Id_Personnage`, `nom_p`, `description_p`, `capacite_p`) VALUES
(1, 'Sage', 'Véritable pilier originaire de Chine, Sage assure sa sécurité et celle de son équipe où qu\'elle aille. Elle peut réanimer ses alliés tombés au combat et repousser les assauts ennemis pour offrir des oasis de tranquillité sur un champ de bataille infernal', 'A - ORBE DE LENTEUR, E - ORBE DE SOIN, C - OBRE BARRIÉRE, X - RÉSURRECTION'),
(2, 'Jett', 'Représentante de sa patrie, la Corée du Sud, Jett dispose d\'un style de combat basé sur l\'agilité et l\'esquive, qui lui permet de prendre des risques qu\'elle seule peut se permettre de prendre. Elle tourne autour des affrontements et découpe ses ennemis avant même qu\'ils ne s\'en rendent compte', 'A - COURANT ASCENDANT, E - VENT ARRIÈRE, C - AVERSE, X - TEMPÊTE DE LAMES'),
(3, 'Raze', 'Armée de sa personnalité et de sa grosse artillerie, Raze fait une entrée explosive depuis le Brésil. Grâce à sa force brute, elle excelle à débusquer les ennemis retranchés et à faire le ménage dans les espaces étroits, le tout avec une bonne dose de « boum »', 'A - PACK EXPLOSIF, E - GRENADE GIGOGNE, C - BOUM BOT, X - BOUQUET FINAL'),
(4, 'Breach', 'Breach, le Suédois bionique, tire de puissantes décharges cinétiques pour ouvrir un chemin en territoire ennemi. Grâce aux dégâts et aux diversions ainsi provoqués, aucun combat n\'est jamais en sa défaveur.', 'A - POINT D\'IGNITION, E - LIGNE DE FRACTURE, C - RÉPLIQUE, X - ONDE SISMIQUE'),
(5, 'Omen', 'Véritable fantôme d\'un souvenir, Omen chasse dans les ténèbres. Il aveugle les ennemis, se téléporte d\'un bout à l\'autre du champ de bataille et laisse la peur se répandre parmi ses adversaires qui se demandent qui sera sa prochaine victime.', 'A - PARANOÏA, E - VOILE SOMBRE'),
(6, 'Brimstone', 'Tout droit venu des États-Unis d\'Amérique, Brimstone possède un arsenal orbital qui permet à son escouade de toujours avoir l\'avantage. La précision et la portée de ses compétences utilitaires font de lui un commandant sans égal sur le terrain.', ' A - BOMBE INCENDIAIRE, E - FRAPPE FUMIGÈNE, C - BALISE STIMULANTE, X - RAYON ORBITAL'),
(7, 'Phoenix', 'En provenance du Royaume-Uni, Phoenix illumine le champ de bataille avec ses pouvoirs astraux et son style de combat flamboyant. Peu importe que les renforts arrivent ou non, il fonce au combat quand il le décide.', 'A - BALLE COURBE, E - MAINS BRÛLANTES, C - BRASIER, X - REVANCHE'),
(8, 'Sova', 'Né dans l\'hiver éternel de la toundra russe, Sova traque, trouve et élimine ses ennemis avec une efficacité et une précision redoutables. Ses incroyables talents d\'éclaireur et son arc personnalisé lui garantissent que sa cible ne fuira jamais très longtemps.', 'A - ÉLECTROFLÈCHE, E - FLÈCHE DE RECONNAISSANCE, C - DRONE RAPACE, X - FUREUR DU CHASSEUR'),
(9, 'Viper', 'Viper est une chimiste américaine qui déploie un arsenal d\'appareils toxiques pour contrôler le champ de bataille et handicaper la vision des ennemis. Si les toxines ne suffisent pas à abattre sa proie, ses machinations finiront le travail.', 'A - NUAGE DE POISON, E - ÉCRAN TOXIQUE, C - MORSURE DU SERPENT, X - NID DE VIPÈRES'),
(10, 'Cypher', 'Informateur originaire du Maroc, Cypher est un véritable réseau de surveillance à lui tout seul. Il révèle tous les secrets. Il détecte toutes les manœuvres. Rien n\'échappe à Cypher.', 'A - CYBERCAGE, E - CAMÉRA ESPIONNE, C - FIL DE DÉTENTE, X - VOL NEURAL'),
(11, 'Reyna', 'Originaire du cœur du Mexique, Reyna est une experte des combats singuliers qui se renforce à chaque élimination qu\'elle réussit. Son efficacité n\'est limitée que par son habileté, ce qui la rend très dépendante de ses propres performances.', 'A - DÉVORATION, E - REBUFFADE, C - ŒILLADE, X - IMPÉRATRICE'),
(12, 'Killjoy', 'Le génie à l\'allemande. Killjoy assure le contrôle facile du terrain grâce à son armée d\'inventions. Si son équipement ne suffit pas à arrêter l\'ennemi, ce sont les entraves de ses robots qui en feront du menu fretin', 'A - BOT-ALARME, E- TOURELLE, C - ESSAIM DE NANITES, X - CONFINEMENT'),
(13, 'Skye', 'Originaire d\'Australie, Skye et sa bande de bêtes sauvages ouvrent la voie à travers les territoires hostiles. Grâce à ses créations qui entravent l\'ennemi et à sa faculté à soigner les autres, l\'équipe est plus forte et plus en sécurité quand elle compte Skye dans ses rangs.', 'A - ÉCLAIREUR, E - GUIDE ÉCLATANT, C - REVITALISATION , X - TRAQUEURS'),
(14, 'Yoru', 'Le Japonais Yoru perce des trous dans la réalité pour s\'infiltrer derrière les lignes ennemies sans se faire repérer. En faisant preuve d\'autant de ruse que d\'agressivité, il prend ses cibles par surprise avant qu\'elles n\'aient le temps de se retourner.', 'A - ANGLE MORT, E - VISITE SURPRISE, C - FEINTE , X - TRANSFERT DIMENSIONNEL'),
(15, 'Astra', 'L\'agent ghanéen Astra canalise les énergies du cosmos pour façonner le champ de bataille à sa convenance. Avec une maîtrise complète de sa forme astrale et un talent pour la planification stratégique, elle a toujours une large avance sur ses ennemis.', 'A - IMPULSION NOVA, E - NÉBULEUSE, C - PUITS DE GRAVITÉ, X - FORME ASTRALE / DIVISION COSMIQUE'),
(16, 'Kay/O', 'KAY/O est une machine de guerre conçue dans un but précis : neutraliser les radiants. La neutralisation des compétences ennemies réduit les possibilités de riposte des adversaires, ce qui confère un avantage décisif à son équipe.', 'A - MÉMOIRE/FLASH, E - POINT/ZÉRO, C - FRAG/MENT, X - CMD/NULL'),
(17, 'Chamber', 'Aussi classe que bien équipé, le concepteur d\'armes Chamber repousse les assaillants avec une précision mortelle. Il met à profit son arsenal bien particulier pour tenir sa position et éliminer les ennemis de loin en prévoyant une solution aux défis posés par chaque stratégie.', 'A- CHASSEUR DE TÊTES, E- RENDEZ-VOUS , C- MARQUE DÉPOSÉE , X - TOUR DE FORCE'),
(18, 'Neon', 'L\'agent philippin, Neon, s\'élance vers l\'avant à une vitesse fulgurante, libérant de grosses décharges de radiance biomagnétique générées frénétiquement par son corps. Elle se lance à la poursuite des ennemis qui n\'ont pas le temps de s\'y préparer et les élimine aussi vite que l\'éclair.', 'A - ÉCLAIR RELAIS, E - VITESSE SUPÉRIEURE, C - VOIE RAPIDE, X - ULTRA-VITESSE'),
(19, 'Fade', 'Originaire de Turquie, la chasseuse de primes Fade utilise le pouvoir des cauchemars pour s\'emparer des secrets ennemis. Elle traque ses cibles et révèle leurs plus grandes peurs pour mieux les briser dans l\'obscurité', 'A - CAPTURE, E - HANTEUR, C - RÔDEUR, X - NUIT TOMBANTE'),
(20, 'Harbor', 'Venu de la côte indienne, Harbor déferle sur le terrain grâce à une technologie antique qui lui permet de contrôler l\'eau. Il déchaîne des torrents bouillonnants et de terribles lames d\'eau pour protéger ses alliés et noyer ses adversaires', 'E - MARÉE HAUTE, A - DÔME AQUEUX, C - CASCADE ,X - GEYSERS DILUVIENS');

-- --------------------------------------------------------

--
-- Structure de la table `rang`
--

CREATE TABLE `rang` (
  `Id_Rang` int(11) NOT NULL,
  `rang_r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rang`
--

INSERT INTO `rang` (`Id_Rang`, `rang_r`) VALUES
(1, 'Fer'),
(2, 'Bronze'),
(3, 'Argent'),
(4, 'Or'),
(5, 'Platine'),
(6, 'Diamant'),
(7, 'Ascendant'),
(8, 'Immortel'),
(9, 'Radiant');

-- --------------------------------------------------------

--
-- Structure de la table `resultat`
--

CREATE TABLE `resultat` (
  `Id_Resultat` int(11) NOT NULL,
  `resultat_r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `resultat`
--

INSERT INTO `resultat` (`Id_Resultat`, `resultat_r`) VALUES
(1, 'Victoire'),
(2, 'Defaite');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `arme`
--
ALTER TABLE `arme`
  ADD PRIMARY KEY (`Id_Arme`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`Id_Equipe`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`Id_Joueur`),
  ADD KEY `Id_Equipe` (`Id_Equipe`),
  ADD KEY `Id_Arme` (`Id_Arme`),
  ADD KEY `Id_Personnage` (`Id_Personnage`),
  ADD KEY `Id_Rang` (`Id_Rang`),
  ADD KEY `Id_Match_Game` (`Id_Match_game`);

--
-- Index pour la table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`Id_Map`);

--
-- Index pour la table `match_game`
--
ALTER TABLE `match_game`
  ADD PRIMARY KEY (`Id_Match_game`),
  ADD KEY `Id_Map` (`Id_Map`),
  ADD KEY `Id_Resultat` (`Id_Resultat`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`Id_Personnage`);

--
-- Index pour la table `rang`
--
ALTER TABLE `rang`
  ADD PRIMARY KEY (`Id_Rang`);

--
-- Index pour la table `resultat`
--
ALTER TABLE `resultat`
  ADD PRIMARY KEY (`Id_Resultat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `arme`
--
ALTER TABLE `arme`
  MODIFY `Id_Arme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `Id_Equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `Id_Joueur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `map`
--
ALTER TABLE `map`
  MODIFY `Id_Map` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `match_game`
--
ALTER TABLE `match_game`
  MODIFY `Id_Match_game` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `Id_Personnage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `rang`
--
ALTER TABLE `rang`
  MODIFY `Id_Rang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `resultat`
--
ALTER TABLE `resultat`
  MODIFY `Id_Resultat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `joueur_ibfk_1` FOREIGN KEY (`Id_Equipe`) REFERENCES `equipe` (`Id_Equipe`),
  ADD CONSTRAINT `joueur_ibfk_2` FOREIGN KEY (`Id_Personnage`) REFERENCES `personnage` (`Id_Personnage`),
  ADD CONSTRAINT `joueur_ibfk_3` FOREIGN KEY (`Id_Arme`) REFERENCES `arme` (`Id_Arme`),
  ADD CONSTRAINT `joueur_ibfk_4` FOREIGN KEY (`Id_Rang`) REFERENCES `rang` (`Id_Rang`),
  ADD CONSTRAINT `joueur_ibfk_5` FOREIGN KEY (`Id_Match_game`) REFERENCES `match_game` (`Id_Match_game`);

--
-- Contraintes pour la table `match_game`
--
ALTER TABLE `match_game`
  ADD CONSTRAINT `match_game_ibfk_1` FOREIGN KEY (`Id_Map`) REFERENCES `map` (`Id_Map`),
  ADD CONSTRAINT `match_game_ibfk_2` FOREIGN KEY (`Id_Resultat`) REFERENCES `resultat` (`Id_Resultat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
