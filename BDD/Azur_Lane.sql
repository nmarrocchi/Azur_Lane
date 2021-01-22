-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 05 jan. 2021 à 00:32
-- Version du serveur :  10.1.47-MariaDB-0+deb9u1
-- Version de PHP : 7.0.33-0+deb9u10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Azur_Lane`
--

-- --------------------------------------------------------

--
-- Structure de la table `Affiliations`
--

CREATE TABLE `Affiliations` (
  `Affiliation_ID` int(30) NOT NULL,
  `Affiliation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Affiliations`
--

INSERT INTO `Affiliations` (`Affiliation_ID`, `Affiliation`) VALUES
(5, 'Dragon Empery'),
(2, 'Eagle Union'),
(7, 'Iris Libre'),
(4, 'Iron Blood'),
(6, 'Northern Parliament'),
(3, 'Royal Navy'),
(1, 'Sakura Empire'),
(9, 'Sardegna Empire'),
(8, 'Vichiya Dominion');

-- --------------------------------------------------------

--
-- Structure de la table `Rarity`
--

CREATE TABLE `Rarity` (
  `Rarity_ID` varchar(30) NOT NULL,
  `Rarity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Rarity`
--

INSERT INTO `Rarity` (`Rarity_ID`, `Rarity`) VALUES
('1', 'Common'),
('3', 'Elite'),
('2', 'Rare'),
('4', 'Super Rare'),
('5', 'Ultra Rare');

-- --------------------------------------------------------

--
-- Structure de la table `Ships`
--

CREATE TABLE `Ships` (
  `Ship_ID` int(11) NOT NULL,
  `Ship_Name` varchar(30) DEFAULT NULL,
  `Ship_Rarity` varchar(30) DEFAULT NULL,
  `Ship_Affiliation` varchar(30) DEFAULT NULL,
  `Ship_Type` varchar(30) DEFAULT NULL,
  `Ship_Timer` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Ships`
--

INSERT INTO `Ships` (`Ship_ID`, `Ship_Name`, `Ship_Rarity`, `Ship_Affiliation`, `Ship_Type`, `Ship_Timer`) VALUES
(5, 'Cassin', 'Common', 'Eagle Union', 'Destroyer', NULL),
(6, 'Downes', 'Common', 'Eagle Union', 'Destroyer', NULL),
(8, 'Craven', 'Common', 'Eagle Union', 'Destroyer', NULL),
(15, 'Aulick', 'Common', 'Eagle Union', 'Destroyer', NULL),
(16, 'Foote', 'Common', 'Eagle Union', 'Destroyer', NULL),
(71, 'Bogue', 'Common', 'Eagle Union', 'Light Aircraft Carrier', NULL),
(86, 'Beagle', 'Common', 'Royal Navy', 'Destroyer', NULL),
(87, 'Bulldog', 'Common', 'Royal Navy', 'Destroyer', NULL),
(88, 'Comet', 'Common', 'Royal Navy', 'Destroyer', NULL),
(89, 'Crescent', 'Common', 'Royal Navy', 'Destroyer', NULL),
(90, 'Cygnet', 'Common', 'Royal Navy', 'Destroyer', NULL),
(91, 'Foxhound', 'Common', 'Royal Navy', 'Destroyer', NULL),
(140, 'Hermes', 'Common', 'Royal Navy', 'Light Aircraft Carrier', NULL),
(187, 'Abukuma', 'Common', 'Sakura Empire', 'Light Cruiser', 'Drop Only'),
(190, 'Furutaka', 'Common', 'Sakura Empire', 'Heavy Cruiser', NULL),
(191, 'Kako', 'Common', 'Sakura Empire', 'Heavy Cruiser', NULL),
(192, 'Aoba', 'Common', 'Sakura Empire', 'Heavy Cruiser', NULL),
(193, 'Kinugasa', 'Common', 'Sakura Empire', 'Heavy Cruiser', NULL),
(239, 'Karlsruhe', 'Common', 'Iron Blood', 'Light Cruiser', NULL),
(240, 'Köln', 'Common', 'Iron Blood', 'Light Cruiser', NULL),
(272, 'Kisaragi', 'Common', 'Sakura Empire', 'Destroyer', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Type`
--

CREATE TABLE `Type` (
  `Type_ID` int(30) NOT NULL,
  `Type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Type`
--

INSERT INTO `Type` (`Type_ID`, `Type`) VALUES
(1, 'Aircraft Carrier'),
(2, 'Aviation Battleship'),
(3, 'Battlecruiser'),
(4, 'Battleship'),
(5, 'Destroyer'),
(6, 'Heavy Cruiser'),
(7, 'Large Cruiser'),
(8, 'Light Aircraft Carrier'),
(9, 'Light Cruiser'),
(10, 'Monitor'),
(11, 'Munition Ship'),
(12, 'Repair Ship'),
(14, 'Submarine'),
(13, 'Submarine Carrier');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Affiliations`
--
ALTER TABLE `Affiliations`
  ADD PRIMARY KEY (`Affiliation_ID`),
  ADD UNIQUE KEY `Affiliation` (`Affiliation`);

--
-- Index pour la table `Rarity`
--
ALTER TABLE `Rarity`
  ADD PRIMARY KEY (`Rarity_ID`),
  ADD UNIQUE KEY `Rarity` (`Rarity`);

--
-- Index pour la table `Ships`
--
ALTER TABLE `Ships`
  ADD PRIMARY KEY (`Ship_ID`),
  ADD KEY `Ship_Rarity` (`Ship_Rarity`,`Ship_Affiliation`,`Ship_Type`,`Ship_Timer`),
  ADD KEY `Ship_Affiliation` (`Ship_Affiliation`),
  ADD KEY `Ship_Type` (`Ship_Type`);

--
-- Index pour la table `Type`
--
ALTER TABLE `Type`
  ADD PRIMARY KEY (`Type_ID`),
  ADD UNIQUE KEY `Type` (`Type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Affiliations`
--
ALTER TABLE `Affiliations`
  MODIFY `Affiliation_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `Ships`
--
ALTER TABLE `Ships`
  MODIFY `Ship_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT pour la table `Type`
--
ALTER TABLE `Type`
  MODIFY `Type_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Ships`
--
ALTER TABLE `Ships`
  ADD CONSTRAINT `Ships_ibfk_1` FOREIGN KEY (`Ship_Rarity`) REFERENCES `Rarity` (`Rarity`),
  ADD CONSTRAINT `Ships_ibfk_2` FOREIGN KEY (`Ship_Affiliation`) REFERENCES `Affiliations` (`Affiliation`),
  ADD CONSTRAINT `Ships_ibfk_3` FOREIGN KEY (`Ship_Type`) REFERENCES `Type` (`Type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
