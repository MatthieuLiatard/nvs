-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 09 juil. 2023 à 19:26
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nvs`
--

-- --------------------------------------------------------

--
-- Structure de la table `objet`
--

DROP TABLE IF EXISTS `objet`;
CREATE TABLE IF NOT EXISTS `objet` (
  `id_objet` int(11) NOT NULL AUTO_INCREMENT,
  `nom_objet` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `portee_objet` int(11) NOT NULL DEFAULT '0',
  `bonusPerception_objet` int(11) NOT NULL DEFAULT '0',
  `bonusRecup_objet` int(11) NOT NULL DEFAULT '0',
  `bonusPv_objet` int(11) NOT NULL DEFAULT '0',
  `bonusPm_objet` int(11) NOT NULL DEFAULT '0',
  `bonusDefense_objet` int(11) NOT NULL DEFAULT '0',
  `bonusPrecisionCac_objet` int(11) NOT NULL DEFAULT '0',
  `bonusPrecisionDist_objet` int(11) NOT NULL DEFAULT '0',
  `bonusPA_objet` int(11) NOT NULL DEFAULT '0',
  `coutPa_objet` int(11) NOT NULL DEFAULT '0',
  `coutOr_objet` int(11) NOT NULL DEFAULT '0',
  `poids_objet` decimal(10,1) NOT NULL DEFAULT '0.0',
  `description_objet` text NOT NULL,
  `type_objet` varchar(3) NOT NULL DEFAULT 'N',
  `contient_alcool` tinyint(4) NOT NULL DEFAULT '0',
  `echangeable` tinyint(4) NOT NULL DEFAULT '1',
  `deposable` tinyint(4) NOT NULL DEFAULT '1',
  `Perte_Proba` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'valeur entiere de 0 (jamais perdue) a 100 (perdue avec certitude), representant la probabilite de perdre cet objet en cas de rip',
  PRIMARY KEY (`id_objet`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `objet`
--

INSERT INTO `objet` (`id_objet`, `nom_objet`, `portee_objet`, `bonusPerception_objet`, `bonusRecup_objet`, `bonusPv_objet`, `bonusPm_objet`, `bonusDefense_objet`, `bonusPrecisionCac_objet`, `bonusPrecisionDist_objet`, `bonusPA_objet`, `coutPa_objet`, `coutOr_objet`, `poids_objet`, `description_objet`, `type_objet`, `contient_alcool`, `echangeable`, `deposable`, `Perte_Proba`) VALUES
(1, 'Ticket de train', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, '0.0', 'Un ticket de train permettant de monter dans un train pour aller vers une gare', 'T', 0, 1, 1, 0),
(2, 'Gourde d\'eau bien fraiche', 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 3, '0.5', 'Une gourde d\'eau bien fraiche permettant d\'augmenter sa récupération (Bonus Récup +30)', 'N', 0, 1, 1, 0),
(3, 'Whisky', 0, -3, 50, 0, 0, 0, 0, 0, 0, 0, 3, '0.5', 'Whisky, augmente la récupération mais attention aux effets secondaires ! (Bonus Récup +50, Bonus Perception -3)', 'N', 0, 1, 1, 0),
(4, 'Trousse de soin', 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 50, '2.0', 'Une trousse de soin, permet de récupérer plus rapidement de ses blessures (Bonus Récup +60)', 'N', 0, 1, 1, 0),
(5, 'Bottes légères', 0, 0, 0, 0, 1, -5, 0, 0, 0, 0, 50, '2.5', 'Des bottes légères pour monter plus rapidement au front mais dont la protection proposée est plus faible (Bonus PM +1, Bonus Defense -5)', 'E', 0, 1, 1, 0),
(6, 'Longue vue', 0, 2, 0, 0, 0, 0, 0, 0, -1, 0, 200, '0.2', 'Une longue vue permettant daugmenter la perception de celui qui lutilise (Bonus Perception +2, Bonus PA -1)', 'E', 0, 1, 1, 0),
(7, 'Lunette de visée', 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 200, '0.2', 'Une lunette de tir pour augmenter la précision des tirs à courte et longue distance (Coût attaque à distance +2, Bonus Précision à distance +15)', 'E', 0, 1, 1, 0),
(8, 'Etendard des armées du nord', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9.0', 'L\'étendard de l\'union', 'E', 0, 0, 1, 100),
(9, 'Etendard des armées du sud', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9.0', 'L\'étendard des armées du sud', 'E', 0, 0, 1, 100),
(11, 'Pépite d\'or', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '3.5', 'Une pépite d\'or sacrément grosse!', 'RP', 0, 0, 1, 100),
(12, 'Étendard de compagnie [recup]', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9.0', 'L\'étendard de la compagnie, qui doit être protégé à tout prix pour sauvegarder l\'honneur de la compagnie. Celui-ci donne un bonus de récuperation aux unités proches.', 'E', 0, 0, 1, 100),
(13, 'Étendard de compagnie [esquive]', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9.0', 'L\'étendard de la compagnie, qui doit être protégé à tout prix pour sauvegarder l\'honneur de la compagnie. Celui-ci donne un bonus d\'esquive aux unités proches.', 'E', 0, 0, 1, 100);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
