-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- G&eacute;n&eacute;r&eacute; le :  Ven 15 Novembre 2019 à 22:06
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de donn&eacute;es :  `nvs`
--

-- --------------------------------------------------------

--
-- Contenu de la table `action`
--

INSERT INTO `action` (`id_action`, `nom_action`, `nb_points`, `description_action`, `portee_action`, `perceptionMin_action`, `perceptionMax_action`, `pvMin_action`, `pvMax_action`, `nb_des_action`, `valeur_des_action`, `recupMin_action`, `recupMax_action`, `pmMin_action`, `pmMax_action`, `DefMin_action`, `DefMax_action`, `coutPa_action`, `nbreTourMin`, `nbreTourMax`, `coutOr_action`, `coutBois_action`, `coutFer_action`, `reflexive_action`, `cible_action`, `case_action`, `pnj_action`, `passif_action`) VALUES
(1, 'sieste', 1, 'Permet de se reposer n\'importe ou et monter sa r&eacute;cup&eacute;ration pour le prochain tour - utilise la totalit&eacute; de ses PA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(4, 'Marche forc&eacute;e', 1, 'Permet de se d&eacute;passer afin de gagner un PM', 0, 0, 0, -10, -10, 0, 0, 0, 0, 1, 1, 0, 0, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(11, 'Soins', 1, 'Permet de se soigner ou de soigner une personne ayant des blessures', 1, 0, 0, 0, 0, 20, 6, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(33, 'Construire - Barricade', 1, 'Permet de construire une barricade qui occupe une case', 1, 0, 0, 100, 250, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(38, 'Construire - Pont', 1, 'Permet de construire un pont sur une case d\'eau. Le pont ne peut se construire qu\'à proximit&eacute; d\'une case de terre ou d\'une autre case de pont', 1, 0, 0, 750, 750, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(43, 'Construire - Tour de guet', 1, 'Permet de construire une tour de visu, occupe une case et peut contenir un perso', 1, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(54, 'Construire - Hopital', 1, 'Permet de construire un hôpital', 1, 0, 0, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(59, 'Construire - Fortin', 1, 'Permet de construire un fortin. Les persos peuvent respawn dedans', 1, 0, 0, 6000, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(64, 'Construire - Fort', 1, 'Permet de construire un fort. Les persos peuvent respawn dedans. Accessible seulement aux anims', 1, 0, 0, 10000, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(65, 'Entrainement', 1, 'Permet de s\'entrainer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(76, 'R&eacute;parer bâtiment', 1, 'Permet de r&eacute;parer un bâtiment dans lequel on se trouve ou à  port&eacute; de main (adjacent d\'une case)', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(87, 'Ami des animaux', 1, 'Permet d\'&eacute;viter de se faire attaquer par les pnjs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(104, 'Saboter', 1, 'permet de d&eacute;truire les routes et les ponts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(107, 'Marchandage', 1, 'Permet d\'avoir des prix sur les objets, armes et armures', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(108, 'Marchandage', 2, 'Permet d\'avoir des prix sur les objets, armes et armures', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(109, 'Marchandage', 3, 'Permet d\'avoir des prix sur les objets, armes et armures', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(110, 'Deposer objet', 1, 'Action permettant de d&eacute;poser un objet à terre', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(111, 'Ramasser objet', 1, 'Action permettant de ramasser des objets', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(139, 'Donner objet', 1, 'Action permettant de donner un objet à un perso au Corps à corps', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(140, 'Apaiser', 1, 'Permet de soigner les malus d\'une personne', 1, 0, 0, 0, 0, 2, 6, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(145, 'Bousculer', 1, 'Permet de bouculer quelqu\'un', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 'Construire - Gare', 1, 'Permet de construire une gare.', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(147, 'Construire - Rail', 1, 'Permet de construire une portion de rail.', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Contenu de la table `action_as_batiment`
--

INSERT INTO `action_as_batiment` (`id_action`, `id_batiment`, `contenance`) VALUES
(33, 1, 0),
(38, 5, 0),
(43, 2, 3),
(54, 7, 50),
(59, 8, 50),
(64, 9, 100),
(146, 11, 50);


-- --------------------------------------------------------

--
-- Contenu de la table `arme`
--

INSERT INTO `arme` (`id_arme`, `nom_arme`, `porteeMin_arme`, `porteeMax_arme`, `coutPa_arme`, `coutOr_arme`, `additionMin_degats`, `additionMax_degats`, `multiplicateurMin_degats`, `multiplicateurMax_degats`, `degatMin_arme`, `degatMax_arme`, `valeur_des_arme`, `precision_arme`, `degatZone_arme`, `bonusPM_arme`, `poids_arme`, `pvMax_arme`, `description_arme`, `qualite_arme`, `main`, `image_arme`) VALUES
(1, 'sabre', 1, 1, 4, 0, 0, 0, 0, 0, 20, 20, 6, 80, '0', 0, '1.2', 0, '', 0, 1, NULL),
(2, 'Sabre lourd', 1, 1, 5, 200, 0, 0, 0, 0, 25, 25, 6, 80, '0', 0, '1.5', 0, '', 0, 1, NULL),
(3, 'Cailloux', 1, 2, 3, 0, 0, 0, 0, 0, 5, 5, 6, 25, '0', 0, '0.0', 0, '', 0, 1, NULL),
(4, 'Pistolet', 1, 2, 3, 100, 0, 0, 0, 0, 15, 15, 6, 40, '0', 0, '1.2', 0, '', 0, 1, NULL),
(5, 'Pistolet Canon Long', 1, 3, 3, 200, 0, 0, 0, 0, 16, 16, 6, 45, '0', 0, '1.3', 0, '', 0, 1, NULL),
(6, 'Baïonette', 1, 1, 3, 50, 0, 0, 0, 0, 15, 15, 6, 60, '0', 0, '0.5', 0, '', 0, 1, NULL),
(7, 'Fusil ', 1, 3, 4, 0, 0, 0, 0, 0, 20, 20, 6, 70, '0', 0, '1.6', 0, '', 0, 1, NULL),
(8, 'Fusil Précision ', 1, 4, 5, 250, 0, 0, 0, 0, 20, 20, 6, 90, '0', 0, '1.6', 0, '', 0, 1, NULL),
(9, 'Canines', 1, 1, 10, 0, 0, 0, 0, 0, 15, 15, 4, 90, '0', 0, '0.0', 0, '', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Contenu de la table `arme_as_type_unite`
--

INSERT INTO `arme_as_type_unite` (`id_arme`, `id_type_unite`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 3),
(6, 4),
(7, 3),
(7, 4),
(8, 3),
(8, 4),
(9, 6);

-- --------------------------------------------------------

--
-- Contenu de la table `batiment`
--

INSERT INTO `batiment` (`id_batiment`, `nom_batiment`, `pvMax_batiment`, `description`) VALUES
(1, 'Barricade', 250, 'Une barricade permet de tenir des positions defensives'),
(2, 'Tour de guet', 250, 'Une tour de visu permet de mieux rep&eacute;rer le terrain et les positions ennemis'),
(5, 'Pont', 750, 'Un pont permet de traverser facilement des &eacute;tendues d\'eau'),
(6, 'Entrepot', 1000, 'Un entrepot permet de stocker et vendre du mat&eacute;riel'),
(7, 'Hopital', 1000, 'Un hopital de campagne permet de soigner des blessers'),
(8, 'Fortin', 6000, 'Un fortin permet de prendre position sur une partie de la carte'),
(9, 'Fort', 10000, 'Un fort, à defendre coute que coute'),
(10, 'Pénitencier', 15000, 'La prison est un batiment ou sont enferm&eacute;s les criminels')
(11, 'Gare', 5000, 'Une gare'),
(12, 'Train', 2500, 'Un train');

-- --------------------------------------------------------

--
-- Contenu de la table `competence`
--

INSERT INTO `competence` (`id_competence`, `nom_competence`, `niveau_competence`, `nbPoints_competence`, `description_competence`, `cout_competence`) VALUES
(1, 'Bon buveur', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences de bon buveur', 25),
(2, 'Endurance a l\'alcool', 1, 1, 'Enlève les malus li&eacute;s à la consommation d\'alcool', 25),
(3, 'Grand dormeur', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences de grand dormeur', 25),
(4, 'Dormir', 1, 3, 'Permet de se reposer n\'importe ou et monter sa r&eacute;cup&eacute;ration pour le prochain tour - utilise la totalit&eacute; de ses PA.', 25),
(5, 'Athlète', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences d\'athlète', 15),
(6, 'Marche forc&eacute;e', 1, 3, 'Permet de se d&eacute;passer afin de gagner un PM', 15),
(7, 'Courir', 1, 3, 'Permet de courir et de gagner des PM pendant 1 tour en consommant tout ses PA - permet de fuir...', 30),
(8, 'Sauter', 2, 1, 'Permet de sauter par dessus un autre perso. Utilise 1PM + cout PM case arriv&eacute;e. Coute 4PA', 50),
(11, 'Medecine', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences de m&eacute;decine', 20),
(12, 'Premiers soins', 1, 3, 'Permet de se soigner ou de soigner une personne ayant des blessures l&eacute;g&eacute;res (jusqu\'à 10% de PV en moins)', 20),
(13, 'Soins avanc&eacute;s', 2, 3, 'Permet de se soigner ou de soigner une personne ayant des blessures un peu plus graves (jusqu\'à 25% de PV en moins)', 25),
(14, 'Soins v&eacute;t&eacute;rinaire', 3, 5, 'Permet de soigner un de ses animaux de compagnie', 30),
(15, 'Chirurgie', 3, 3, 'Permet de se soigner ou de soigner une personne ayant des blessures graves (jusqu\'à 50% de PV en moins)', 40),
(16, 'Chirurgie de guerre', 4, 3, 'Permet de se soigner ou de soigner une personne ayant des blessures très graves (jusqu\'à 99% de PV en moins)', 50),
(17, 'Minage', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences de minage', 20),
(18, 'Couper du bois', 1, 3, 'Permet de couper du bois. Fais disparaitre la forêt qu\'on d&eacute;coupe', 25),
(19, 'Miner la montagne', 1, 1, 'Permet de miner une montagne à la recherche de fer', 40),
(20, 'Construction', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences de construction', 50),
(21, 'Construire - Route', 1, 1, 'Permet de construire une route. La route ne peut être construite adjacente à un QG (le fortin est consid&eacute;r&eacute; comme un QG), un hôpital, un entrepôt ou à une autre route', 20),
(22, 'Construire - Barricade', 1, 5, 'Permet de construire une barricade qui occupe une case', 20),
(23, 'Construire - Pont', 2, 5, 'Permet de construire un pont sur une case d\'eau. Le pont ne peut se construire qu\'à  proximit&eacute; d\'une case de terre ou d\'une autre case de pont', 25),
(24, 'Construire - Tour de visu', 3, 5, 'Permet de construire une tour de visu, occupe une case et peut contenir un perso', 30),
(25, 'Construire - Tour de gard', 4, 1, 'Permet de construire une tour de garde, occupe une case et peut contenir un perso. Le perso peut attaquer depuis la tour avec une arme de distance. +2 en perception', 50),
(26, 'Construire - Entrepot d\'armes', 4, 5, 'Permet de construire un entrepôt d\'arme, occupe une case et les persos à proximit&eacute; peuvent acheter objets, armes et armures', 50),
(27, 'Construire - Hopital', 4, 5, 'Permet de construire un hôpital', 60),
(28, 'Construire - Fortin', 5, 5, 'Permet de construire un fortin. Les persos peuvent respwan dedans', 100),
(29, 'Construire - Fort', 6, 1, 'Permet de construire un fort. Les persos peuvent respwan dedans. Accessible seulement aux anims', 0),
(30, 'Chanceux', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences de Chanceux', 60),
(31, 'Chance', 1, 10, 'Permet d\'avoir plus de chance', 10),
(32, 'Genie Civil', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences de G&eacute;nie Civil', 30),
(33, 'R&eacute;parer bâtiment', 1, 4, 'Permet de r&eacute;parer un bâtiment', 20),
(34, 'Upgrade bâtiment', 1, 3, 'Permet d\'upgader un bâtiment vers son niveau suivant', 20),
(35, 'Upgrade bâtiment Expert', 2, 3, 'Permet d\'upgrader un bâtiment directement vers son dernier niveau', 20),
(36, 'Amoureux de la nature', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences d\'amoureux de la nature', 10),
(37, 'Planter arbre', 1, 1, 'Permet de planter des arbres', 10),
(38, 'Ami des animaux', 1, 3, NULL, 10),
(39, 'Alchimiste', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences d\'Alchimiste', 30),
(40, 'M&eacute;langer ingr&eacute;dients', 1, 3, NULL, 25),
(41, 'Alchimie avanc&eacute;e', 2, 3, NULL, 10),
(42, 'Artiste', 0, 1, NULL, 10),
(43, 'Danser', 1, 2, NULL, 5),
(44, 'Chanter', 1, 2, NULL, 5),
(45, 'Peindre', 1, 2, NULL, 5),
(46, 'Sculpter', 1, 2, NULL, 5),
(47, 'Saboteur', 0, 1, 'Permet d\'avoir accès aux comp&eacute;tences de Saboteur', 35),
(48, 'Saboter', 1, 3, 'Permet de d&eacute;truire certaines installations comme les ponts et les routes.', 15),
(49, 'Marchand', 0, 1, NULL, 25),
(50, 'Marchandage', 1, 3, NULL, 15),
(51, 'Passionn&eacute;e d\'armes', 0, 1, 'Comp&eacute;tence permettant de d&eacute;bloquer les actions des passionn&eacute;s d\'armes', 50),
(52, 'Nettoyer arme', 1, 3, 'Il est recommander d\'entretenir ses armes r&eacute;gulièrement. Permet de redonner quelques pv à son arme en la nettoyant.', 20),
(53, 'R&eacute;parer arme', 2, 6, 'A force de manipuler des armes, vous avez appris comment les d&eacute;monter et les r&eacute;parer. Permet de redonner beaucoup de pv à son arme.', 30),
(54, 'Passionn&eacute; d\'armures', 0, 1, 'Permet de d&eacute;bloquer les actions des passionn&eacute;s d\'armures', 50),
(55, 'Netoyer armure', 1, 3, 'Il est recommand&eacute; d\'entretenir r&eacute;gulièrement ses armures. Permet de redonner quelques pv à ses armures.', 20),
(56, 'R&eacute;parer armure', 2, 6, 'A force de rafistoler vos armures, vous avez appris comment le faire efficacement. permet de redonner beaucoup de pv à ses armures.', 30),
(57, 'Defense d\'armure', 1, 8, 'Votre connaissance des armures vous permet d\'utiliser au mieux leurs capacit&eacute;s d&eacute;fensives. Augmente le pourcentage de chance d\'utiliser totalement son bonus d\'armure lors d\'un combat.', 10),
(58, 'Nudiste inv&eacute;t&eacute;r&eacute;', 1, 1, 'A force de vous balader nu en pleine nature, vous avez appris à recevoir des coup nu. Votre malus de d&eacute;fense du à votre nudit&eacute; disparait.', 25),
(59, 'Apaiser', 3, 3, 'Permet de soigner les malus d\'une personne', 26),
(60, 'Port armes lourdes', 1, 1, 'Permet de baisser les malus dues au port des armes lourdes', 20),
(61, 'Port armures lourdes', 1, 1, 'Permet de baisser les malus dues au port des armures lourdes', 36),
(62, 'Guerrier', 0, 1, 'Comp&eacute;tence permettant de d&eacute;bloquer les actions des comp&eacute;tences passives des guerriers', 50),
(63, 'Construire - Gare', 3, 1, 'Permet de construire des gares', 50),
(64, 'Construire - Rail', 1, 1, 'Permet de construire des rails', 50);

-- --------------------------------------------------------

--
-- Contenu de la table `competence_as_action`
--

INSERT INTO `competence_as_action` (`id_competence`, `id_action`) VALUES
(4, 1),
(6, 4),
(8, 10),
(12, 11),
(22, 33),
(23, 38),
(24, 43),
(27, 54),
(28, 59),
(29, 64),
(33, 76),
(38, 87),
(48, 104),
(50, 107),
(50, 108),
(50, 109),
(59, 140),
(63, 146),
(64, 147);

-- --------------------------------------------------------

--
-- Contenu de la table `competence_as_competence`
--

INSERT INTO `competence_as_competence` (`id_competence`, `id_competence_accessible`, `nb_points`, `besoin_multiple`) VALUES
(1, 2, 1, 0),
(3, 4, 1, 0),
(5, 6, 1, 0),
(5, 7, 1, 0),
(7, 8, 1, 0),
(9, 10, 1, 0),
(10, 26, 1, 1),
(11, 12, 1, 0),
(12, 13, 1, 0),
(13, 14, 1, 0),
(13, 15, 1, 0),
(15, 16, 1, 0),
(15, 27, 1, 1),
(17, 18, 1, 0),
(18, 19, 1, 0),
(20, 21, 1, 0),
(20, 22, 1, 0),
(22, 23, 1, 0),
(22, 24, 1, 0),
(24, 25, 2, 0),
(24, 26, 1, 1),
(24, 27, 1, 1),
(26, 28, 1, 0),
(30, 31, 1, 0),
(32, 33, 1, 0),
(32, 34, 1, 0),
(34, 35, 1, 0),
(36, 37, 1, 0),
(36, 38, 1, 0),
(39, 40, 1, 0),
(40, 41, 1, 0),
(42, 43, 1, 0),
(42, 44, 1, 0),
(42, 45, 1, 0),
(42, 46, 1, 0),
(47, 48, 1, 0),
(49, 50, 1, 0),
(51, 52, 1, 0),
(52, 53, 1, 0),
(54, 55, 1, 0),
(54, 57, 1, 0),
(55, 56, 1, 0),
(36, 58, 1, 0),
(13, 59, 1, 0),
(62, 60, 1, 0),
(62, 61, 1, 0);

-- --------------------------------------------------------

--
-- Contenu de la table `config_jeu`
--

INSERT INTO `config_jeu` (`disponible`) VALUES
(1);

--
-- Contenu de la table `grades`
--

INSERT INTO `grades` (`id_grade`, `nom_grade`, `pc_grade`, `point_armee_grade`) VALUES
(2, 'Caporal', 10, 1),
(3, 'Caporal Chef', 40, 1),
(4, 'Sergent', 80, 2),
(5, '1er Sergent Chef', 200, 2),
(6, 'Sergent Chef', 300, 3),
(7, 'Sergent Major', 400, 3),
(8, 'Adjudant', 550, 4),
(9, 'Adjudant Chef', 800, 5),
(10, 'Adjudant Major', 1100, 6),
(11, 'Sous-Lieutenant', 1500, 7),
(12, 'Lieutenant', 2200, 8),
(13, 'Capitaine', 3000, 9),
(14, 'Commandant', 4000, 10),
(15, 'Major', 5100, 11),
(16, 'Colonnel', 6300, 12),
(17, 'Lieutenant Colonnel', 7500, 13),
(18, 'Général de Brigade', 9000, 14),
(19, 'Général Major', 11000, 15),
(20, 'Lieutenant Général', 13000, 18),
(21, 'Général', 15000, 20),
(22, 'Général des armées', 999999999, 100),
(1, 'Grouillot 2nd classe', 0, 0),
(101, 'Grouillot 1ere classe', 0, 0),
(102, 'Grouillot d\'élite', 0, 0);

-- --------------------------------------------------------

--
-- Contenu de la table `type_unite`
--

INSERT INTO `type_unite` (`id_unite`, `nom_unite`, `description_unite`, `perception_unite`, `protection_unite`, `recup_unite`, `pv_unite`, `pa_unite`, `pm_unite`, `cout_pg`) VALUES
(1, 'Chef', 'Chef d\'unité, cavalier', 5, 3, 40, 850, 10, 10, 0),
(2, 'Cavalerie lourde', 'Cavalerie lourde', 5, 1, 30, 700, 10, 10, 4),
(3, 'Infanterie', 'Infanterie', 4, 1, 30, 500, 10, 5, 2),
(4, 'Soigneur', 'Soigneur', 4, 1, 30, 500, 10, 6, 3),
(5, 'Artillerie', 'Artillerie', 6, 1, 30, 500, 10, 3, 5),
(6, 'Toutou', 'Toutou', 5, 1, 20, 200, 10, 10, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
