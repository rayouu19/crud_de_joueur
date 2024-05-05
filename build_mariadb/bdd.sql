-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : dim. 05 mai 2024 à 16:13
-- Version du serveur : 11.3.2-MariaDB-1:11.3.2+maria~ubu2204
-- Version de PHP : 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `crudd`
--
CREATE DATABASE IF NOT EXISTS `crudd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crudd`;

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `poste` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`id`, `nom`, `prenom`, `poste`, `age`) VALUES
(66, 'Mandrea', 'Anthony ', 'Gardien', 30),
(67, 'Aït-Nouri', 'Rayan', 'Défenseur', 22),
(68, 'Bensebaini', 'Ramy', 'Défenseur', 27),
(69, 'Mandi', 'Aissa', 'Défenseur', 29),
(70, 'Atal', 'Youcef', 'Défenseur', 25),
(71, 'Mahrez', 'Riyad', 'Milieu', 30),
(72, 'Feghouli', 'Sofiane', 'Milieu', 32),
(73, 'Bentaleb', 'Nabil', 'Milieu', 27),
(74, 'Chaibi', 'Farès', 'Milieu', 24),
(75, 'Slimani', 'Islam', 'Attaquant', 33),
(76, 'Gouiri', 'Amine', 'Attaquant', 22);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `pseudo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mdp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `role` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`pseudo`, `mdp`, `role`) VALUES
('rayaan', '$2y$10$AlgoIo2xi1R2.zV3cdGrZ.vNoeZAUyvw8XBr9kHD2Ao/EYyQFzWJS', 'user'),
('rayan', '$2y$10$cveCPMaVn.3clrmR1O.nRedF7eUNnpKlAN28LA/sSq2HmJdJsJ6GG', 'user'),
('rayou', '$2y$10$ObOCE0oGlBHuHTmnsc0XpuzYJSz.MlDYjhn6f.wM.SVG6yXY/tszG', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`pseudo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
