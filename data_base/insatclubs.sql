-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 12 juin 2021 à 23:55
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `insatclubs`
--

-- --------------------------------------------------------

--
-- Structure de la table `compteclub`
--

CREATE TABLE `compteclub` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `compteclub`
--

INSERT INTO `compteclub` (`id`, `name`, `birthday`, `slogan`, `phone`, `city`, `hours`, `fees`, `other_information`, `description`, `adress`, `email`, `vid1`, `vid2`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `img1`, `img2`, `domain`, `color`) VALUES
(614, 'Auto Club INSAT', '2008', '.', 22222222, 'Tunis', '8h->18h', '15Dt', '.', 'Auto Club INSAT inclut dans son éventail d’activités des projets techniques et artistiques, diagnostique des défaillances et service qualité, l’organisation de journées,de tables rondes et de colloques, ainsi que l’organisation et la participation à des c', 'Centre urbain nord', 'insat.autoclub@gmail.com', 'https://www.youtube.com/watch?v=n33me5gLX6Q', 'https://www.youtube.com/watch?v=dopc5ytOlUQ', 'https://www.facebook.com/insatautoclub/?ref=page_internal', 'https://twitter.com/AUTOCLUBINSAT1', 'https://instgram.com', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/channel/UCbKmrhPcxjYDpmOgfpVVAVQ', '/assets/img/Clubs/autoclub.jpg', 'img/Clubs/autoclub.jpg', 'Automative field', 'bg-gradient-light-purple-light-red'),
(615, 'Insat Press', '2022', 'Au coeur de l\'actuallité universitaire, et plus encore..', 22222222, 'Tunis', '8h->18h', '15Dt', '.', '\'The first university press club created in Tunisia. This page is dedicated for all INSATian students, and any university student more generally, in order to report the latest events to come or have taken place,', 'Centre urbain nord', 'insat.press@gmail.com', 'https://www.youtube.com/watch?v=Ix5BikcpiNI', 'https://www.youtube.com/watch?v=7-R5aRErqE8', 'https://www.facebook.com/Insat.Press/?ref=page_internal', 'https://twitter.com/insatpress', 'https://www.instgram.com', 'https://www.linkedin.com/company/insatpress/', 'https://www.youtube.com/user/INSATPRESS', '/assets/img/Clubs/Press.png', '/assets//img/Clubs/Press.png', 'Press', 'bg-gradient-peacock-blue-crome-yellow'),
(616, 'Securinets', '2022', '.', 22222222, 'Tunis', '8h->16h', '15Dt', '.', 'SECURINETS IS THE FIRST TUNISIAN ASSOCIATION TO BASE ALL OF ITS ACTIVITIES ON COMPUTER SECURITY.', 'Centre urbain nord', 'contact@securinets.com', 'https://www.youtube.com/watch?v=eqy2-farfYg', 'https://www.youtube.com/watch?v=zHuCalLe_y0', 'https://www.facebook.com/Securinets/?ref=page_internal', 'https://twitter.com/SecuriNets', 'https://www.instgram.com', 'https://tn.linkedin.com/company/securinets?trk=similar-pages', 'https://www.youtube.com/user/Securinets', '/assets/img/Clubs/Securinets.jpg', '/assets/img/Clubs/Securinets.jpg', 'Computer security', 'bg-transparent-gradient-light-red-orange'),
(617, 'Theatro INSAT', '2022', '.', 23903398, 'Tunis', 'Always Open\r\n', '15Dt', '.', 'Cultural and event club at INSAT. The artistic and cultural domain interests us and specifically the theatrical which touches everyone.', 'Centre urbain nord', '\r\nclubinsattheatro@gmail.com', 'https://www.youtube.com/watch?v=8SeldxGbDYo', 'https://www.youtube.com/watch?v=lAU9cbX_OgQ', 'https://www.facebook.com/theatroinsat/?ref=page_internal', 'https://www.twitter.com', 'https://instagram.com/insat_theatro?utm_medium=copy_link', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/channel/UC-clI4hWsSAetCiE2jdw3uw', '/assets/img/Clubs/Theatro.jpg', '/assets/img/Clubs/Theatro.jpg', 'Theatre', 'bg-gradient-light-purple-light-red'),
(618, 'Anim INSAT', '2000', '.', 22222222, 'Tunis', '8h->18h', '15Dt', '', 'Anim INSAT provides the best integration for newcomers and the most jovial atmosphere to endure the stress of studying.', 'Centre urbain nord', '\r\nanim.insat.169@gmail.com', 'https://www.facebook.com/486500624703013/videos/1696380597048337', 'https://www.facebook.com/486500624703013/videos/1715287605157636', 'https://www.facebook.com/AnimInsat/?ref=page_internal', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/', '/assets/img/Clubs/anim.jpg', '/assets/img/Clubs/anim.jpg', 'Animation', 'bg-gradient-purple-magenta'),
(619, 'Symbio INSAT', '2022', '.', 22222222, 'Tunis', 'Always Open\r\n', '15Dt', '.', 'Symbio is a biology club at INSAT. We offer industrial and ecological tours, but above all, we give students the chance to have training. We also have an event component.', 'Centre urbain nord', '\r\nsymbioinsat@gmail.com', '.', '.', 'https://www.facebook.com/symbioinsatclub', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com', '/assets/img/Clubs/symbio.png', '/assets/img/Clubs/symbio.png', 'Biology', 'bg-gradient-magenta-orange-2'),
(620, 'Ciné-Radio', '2022', '.', 22222222, 'Tunis', '8h->18h', '15Dt', '.', 'Cultural and event club. We are working to give all Tunisian students the chance to be heard and to display their talents.', 'Centre urbain nord', 'contact@cineradioinsat.com', 'https://www.youtube.com/watch?v=_JQIuczgu2c', 'https://www.youtube.com/watch?v=VmpTbMyc_aY', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.twitter.com', 'Instagram.com/cineradio_insat/', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/channel/UCM40-Ihu3M6keDKrwtioxjA', '/assets/img/Clubs/cineradio.jpg', '/assets/img/Clubs/cineradio.jpg', 'Culture', 'bg-gradient-peacock-blue-crome-yellow');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210524203818', '2021-06-12 16:12:20', 502),
('DoctrineMigrations\\Version20210524204220', '2021-06-12 16:12:21', 276),
('DoctrineMigrations\\Version20210524205226', '2021-06-12 16:12:21', 1955),
('DoctrineMigrations\\Version20210524211524', '2021-06-12 16:12:23', 758),
('DoctrineMigrations\\Version20210611105809', '2021-06-12 16:12:24', 1956),
('DoctrineMigrations\\Version20210611114927', '2021-06-12 16:12:26', 8776),
('DoctrineMigrations\\Version20210611121313', '2021-06-12 16:12:35', 65),
('DoctrineMigrations\\Version20210611131219', '2021-06-12 16:12:35', 3200),
('DoctrineMigrations\\Version20210611150303', '2021-06-12 16:12:38', 241),
('DoctrineMigrations\\Version20210612195534', '2021-06-12 21:56:38', 594);

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `name`, `img1`, `img2`, `description`, `filter`, `club_id`) VALUES
(961, 'Raheem Ritchie', '/assets/img/img1.jpg', '/assets/img/img3.jpg', 'Bosco, Stokes and Collins', 'training', NULL),
(962, 'Prof. Jeanne Wehner V', '/assets/img/img3.jpg', '/assets/img/img1.jpg', 'Bernier and Sons', 'training', NULL),
(963, 'Aiyana Grimes', '/assets/img/img3.jpg', '/assets/img/img2.jpg', 'Mante LLC', 'training', NULL),
(964, 'Annie Cartwright', '/assets/img/img3.jpg', '/assets/img/img3.jpg', 'Reichel, Huels and Stanton', 'training', NULL),
(965, 'Saul Roob', '/assets/img/img3.jpg', '/assets/img/img2.jpg', 'Shields PLC', 'training', NULL),
(966, 'Cleta Hayes', '/assets/img/img1.jpg', '/assets/img/img1.jpg', 'Bogan and Sons', 'training', NULL),
(967, 'Augustus Pfeffer', '/assets/img/img2.jpg', '/assets/img/img2.jpg', 'Abernathy-Buckridge', 'training', NULL),
(968, 'Mr. Bernhard Spinka', '/assets/img/img3.jpg', '/assets/img/img2.jpg', 'Wyman, Donnelly and Hettinger', 'training', NULL),
(969, 'Carroll McLaughlin', '/assets/img/img2.jpg', '/assets/img/img3.jpg', 'Reichert, Bechtelar and Anderson', 'training', NULL),
(970, 'Arnaldo O\'Reilly', '/assets/img/img2.jpg', '/assets/img/img2.jpg', 'Ratke, Kunde and Thompson', 'training', NULL),
(971, 'Cordia Hamill', '/assets/img/img1.jpg', '/assets/img/img2.jpg', 'Bosco, Rohan and Schimmel', 'training', NULL),
(972, 'Jordyn Ryan', '/assets/img/img2.jpg', '/assets/img/img2.jpg', 'Stracke LLC', 'training', NULL),
(973, 'Prof. Rosamond Herman', '/assets/img/img3.jpg', '/assets/img/img1.jpg', 'Turner PLC', 'training', NULL),
(974, 'Karianne Rau I', '/assets/img/img2.jpg', '/assets/img/img1.jpg', 'Kihn, Stiedemann and Crona', 'training', NULL),
(975, 'Susan Schroeder', '/assets/img/img2.jpg', '/assets/img/img2.jpg', 'Wolff, Kub and Lueilwitz', 'training', NULL),
(976, 'Doris Nitzsche PhD', '/assets/img/img1.jpg', '/assets/img/img3.jpg', 'Schroeder Inc', 'training', NULL),
(977, 'Ignacio Lueilwitz', '/assets/img/img3.jpg', '/assets/img/img2.jpg', 'Lemke-Mueller', 'training', NULL),
(978, 'Prof. Deshawn Marvin', '/assets/img/img3.jpg', '/assets/img/img1.jpg', 'Stehr-Shields', 'training', NULL),
(979, 'Mr. Macey Hayes', '/assets/img/img1.jpg', '/assets/img/img3.jpg', 'Grady Ltd', 'training', NULL),
(980, 'Loyce Kuhn Jr.', '/assets/img/img3.jpg', '/assets/img/img2.jpg', 'Ferry-Daugherty', 'training', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `field`
--

CREATE TABLE `field` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pourcentage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `field`
--

INSERT INTO `field` (`id`, `name`, `pourcentage`, `club_id`) VALUES
(1, 'Robotic', '100%', NULL),
(2, 'Aeronotic', '100%', NULL),
(3, 'Industry', '90%', NULL),
(4, 'Electronic', '95%', NULL),
(5, 'Algorithm', '80%', NULL),
(6, 'Social', '75%', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `filter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `img1`, `img2`, `prix`, `description`, `club_id`, `filter`) VALUES
(1501, 'Aerobotix Hoodie', '/assets/img/Product/hoodieaer3.png', '/assets/img/Product/hoodieaer2.png', 35, 'Blue Winter Hoodie', NULL, NULL),
(1502, 'Securonets Hoodie', '/assets/img/Product/securinets.png', '/assets/img/Product/securinets2.png', 35, 'Red Winter Hoodie', NULL, NULL),
(1503, 'Acm Hoodie', '/assets/img/Product/acm11.png', '/assets/img/Product/acm2.png', 35, 'Blue Winter Hoodie', NULL, NULL),
(1504, 'Impression 3D', '/assets/img/Product/impr2.png', '/assets/img/Product/impr1.png', 2, 'Impression de pièces 3d par gramme avec PLA', NULL, NULL),
(1505, 'T-Shirt', '/assets/img/Clubs/Aerobotix/products/prod2.png', '/assets/img/Clubs/Aerobotix/products/prod2.png', 28, 'Summer Black T-Shirt', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `statistique`
--

CREATE TABLE `statistique` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statistique`
--

INSERT INTO `statistique` (`id`, `name`, `value`, `icon`, `club_id`) VALUES
(1, 'National competitions', 142, 'bi-list-check', NULL),
(2, 'International competitions', 19, 'bi-globe', NULL),
(3, 'Members', 98, 'bi-people-fill', NULL),
(4, 'Awards', 96, 'bi-award', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone`, `address`, `twitter`, `instagram`, `facebook`, `class`, `description`, `role`, `image`) VALUES
(1, 'MED YASSINE KOUBAA', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', ' An ambitious and a hard worker\r\n            engineering student who is\r\n            around for the 4th year as\r\n            member in the club.\r\n            He is an all-rounder and the one\r\n            to go to for help. He loves coming\r\n            up ', 'Technical Vice President', '/assets/img/Clubs/Aerobotix/board/vpt.png'),
(2, 'YASSMINE BEN AMEUR', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A wise and hospitable\r\n                            engineer. She has a genius\r\n                            for solving problems.\r\n                            Her love to technological\r\n                            innovation and robotics\r\n                 ', 'President', '/assets/img/Clubs/Aerobotix/board/prez.png'),
(3, 'WAFA ABID', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'An ambitious and enthusiastic\r\n                            engineering student. She is\r\n                            passionate about robotics\r\n                            and embedded systems.\r\n                            Her experience and regulation\r\n  ', 'Administrative Vice President', '/assets/img/Clubs/Aerobotix/board/vpa.png'),
(4, 'AMIRA BEZINE', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', ' A software engineering student,\r\n                            an enthusiastic and innovative\r\n                            mind. Besides her passion for\r\n                            robotics, she has a good experience\r\n                            in the me', 'Media', '/assets/img/Clubs/Aerobotix/board/media.png'),
(5, 'NOURCHENE BARGUAOUI', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A brave and sociable engineer.\r\n                            She is crazy enough to think\r\n                            she can change the world.\r\n                            Joining the Aerobotix\'s family\r\n                was one of the best choices\r\n     ', 'Human Ressource', '/assets/img/Clubs/Aerobotix/board/rh.png'),
(6, 'ALA EDDINE KRAIEM', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A adventurous engineering student\r\n                            who has been an eurobot team\r\n                            member for 2 years.\r\n                            He\'s an electronics expert and a\r\n                        dreamer. He always comes up', 'Exposition', '/assets/img/Clubs/Aerobotix/board/expo.png'),
(7, 'HAZAR BOUGHANMI', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'An ambitious and driven\r\n                            engineer who always thrives\r\n                            on challenges and constantly\r\n                            set goals for herself.\r\n                            She has always something to strive\r', 'Drone Manager', '/assets/img/Clubs/Aerobotix/board/drone.png'),
(8, 'AWNI MEJRI', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', ' An ambitious and systematic\r\n                            industrial automation engineer\r\n                            who has a great passion for\r\n                            learning and discovering.\r\n                            He loves working on robot', 'Material Manager', '/assets/img/Clubs/Aerobotix/board/mater.png'),
(9, 'AZIZ BEN GANDIA', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A second year chemersty student\r\n                            who is so passionate about\r\n                            robotics. He has a good yet\r\n                            strange way of communicating.\r\n                            He is great at convinc', 'Sponsoring', '/assets/img/Clubs/Aerobotix/board/sponso.png'),
(10, 'MOHAMED LOUKIL', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A driven, aspiring engineer\r\n                            who has been tracking\r\n                            planes with a laptop\'s\r\n                        radar from his house\'s\r\n                            roof since his childhood.\r\n                    ', 'Aeromodelisme Manager', '/assets/img/Clubs/Aerobotix/board/aeromod.png'),
(11, 'MAROUENE KAANICHE', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A persevering and commited\r\n                            engineer. He\'s full of spirit\r\n                and energy and will always\r\n                preform at his best.\r\n                He he seeks to help our newcomers\r\n                land their first st', 'Training Manager', '/assets/img/Clubs/Aerobotix/board/formation.png');

-- --------------------------------------------------------

--
-- Structure de la table `user_compteclub`
--

CREATE TABLE `user_compteclub` (
  `user_id` int(11) NOT NULL,
  `compteclub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_event`
--

CREATE TABLE `user_event` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compteclub`
--
ALTER TABLE `compteclub`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3BAE0AA761190A32` (`club_id`);

--
-- Index pour la table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5BF5455861190A32` (`club_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD61190A32` (`club_id`);

--
-- Index pour la table `statistique`
--
ALTER TABLE `statistique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_73A038AD61190A32` (`club_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_compteclub`
--
ALTER TABLE `user_compteclub`
  ADD PRIMARY KEY (`user_id`,`compteclub_id`),
  ADD KEY `IDX_2AA6A59A76ED395` (`user_id`),
  ADD KEY `IDX_2AA6A5942B3B486` (`compteclub_id`);

--
-- Index pour la table `user_event`
--
ALTER TABLE `user_event`
  ADD PRIMARY KEY (`user_id`,`event_id`),
  ADD KEY `IDX_D96CF1FFA76ED395` (`user_id`),
  ADD KEY `IDX_D96CF1FF71F7E88B` (`event_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compteclub`
--
ALTER TABLE `compteclub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=621;

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=981;

--
-- AUTO_INCREMENT pour la table `field`
--
ALTER TABLE `field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1506;

--
-- AUTO_INCREMENT pour la table `statistique`
--
ALTER TABLE `statistique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_3BAE0AA761190A32` FOREIGN KEY (`club_id`) REFERENCES `compteclub` (`id`);

--
-- Contraintes pour la table `field`
--
ALTER TABLE `field`
  ADD CONSTRAINT `FK_5BF5455861190A32` FOREIGN KEY (`club_id`) REFERENCES `compteclub` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD61190A32` FOREIGN KEY (`club_id`) REFERENCES `compteclub` (`id`);

--
-- Contraintes pour la table `statistique`
--
ALTER TABLE `statistique`
  ADD CONSTRAINT `FK_73A038AD61190A32` FOREIGN KEY (`club_id`) REFERENCES `compteclub` (`id`);

--
-- Contraintes pour la table `user_compteclub`
--
ALTER TABLE `user_compteclub`
  ADD CONSTRAINT `FK_2AA6A5942B3B486` FOREIGN KEY (`compteclub_id`) REFERENCES `compteclub` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2AA6A59A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_event`
--
ALTER TABLE `user_event`
  ADD CONSTRAINT `FK_D96CF1FF71F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D96CF1FFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
