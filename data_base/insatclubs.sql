-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 14 juin 2021 à 01:44
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
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vid1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vid2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `compteclub`
--

INSERT INTO `compteclub` (`id`, `name`, `birthday`, `slogan`, `phone`, `city`, `hours`, `fees`, `other_information`, `description`, `adress`, `email`, `vid1`, `vid2`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `img1`, `img2`, `domain`, `color`) VALUES
(614, 'Auto Club INSAT', '2008', 'Future of cars.', 22222222, 'Tunis', '8h->18h', '15Dt', '.', 'Auto Club INSAT inclut dans son éventail d’activités des projets techniques et artistiques, diagnostique des défaillances et service qualité, l’organisation de journées,de tables rondes et de colloques, ainsi que l’organisation et la participation à des c', 'Centre urbain nord', 'insat.autoclub@gmail.com', 'https://www.youtube.com/watch?v=n33me5gLX6Q', 'https://www.youtube.com/watch?v=dopc5ytOlUQ', 'https://www.facebook.com/insatautoclub/?ref=page_internal', 'https://twitter.com/AUTOCLUBINSAT1', 'https://instgram.com', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/channel/UCbKmrhPcxjYDpmOgfpVVAVQ', '/assets/img/Clubs/autoclub/autoclub.jpg', '/assets/img/Clubs/autoclub/autoclub.jpg', 'Automative field', 'bg-gradient-light-purple-light-red'),
(615, 'Insat Press', '2022', 'Au coeur de l\'actuallité universitaire, et plus encore..', 22222222, 'Tunis', '8h->18h', '15Dt', '.', '\'The first university press club created in Tunisia. This page is dedicated for all INSATian students, and any university student more generally, in order to report the latest events to come or have taken place,', 'Centre urbain nord', 'insat.press@gmail.com', 'https://www.youtube.com/watch?v=Ix5BikcpiNI', 'https://www.youtube.com/watch?v=7-R5aRErqE8', 'https://www.facebook.com/Insat.Press/?ref=page_internal', 'https://twitter.com/insatpress', 'https://www.instgram.com', 'https://www.linkedin.com/company/insatpress/', 'https://www.youtube.com/user/INSATPRESS', '/assets/img/Clubs/press/Press.png', '/assets/img/Clubs/press/Press.png', 'Press', 'bg-gradient-peacock-blue-crome-yellow'),
(616, 'Securinets', '2022', 'Security above everything', 22222222, 'Tunis', '8h->16h', '15Dt', '.', 'SECURINETS IS THE FIRST TUNISIAN ASSOCIATION TO BASE ALL OF ITS ACTIVITIES ON COMPUTER SECURITY.', 'Centre urbain nord', 'contact@securinets.com', 'https://www.youtube.com/watch?v=eqy2-farfYg', 'https://www.youtube.com/watch?v=zHuCalLe_y0', 'https://www.facebook.com/Securinets/?ref=page_internal', 'https://twitter.com/SecuriNets', 'https://www.instgram.com', 'https://tn.linkedin.com/company/securinets?trk=similar-pages', 'https://www.youtube.com/user/Securinets', '/assets/img/Clubs/securinets/Securinets.jpg', '/assets/img/Clubs/securinets/Securinets.jpg', 'Computer security', 'bg-transparent-gradient-light-red-orange'),
(617, 'Theatro INSAT', '2022', 'A soul requires art', 23903398, 'Tunis', 'Always Open\r\n', '15Dt', '.', 'Cultural and event club at INSAT. The artistic and cultural domain interests us and specifically the theatrical which touches everyone.', 'Centre urbain nord', '\r\nclubinsattheatro@gmail.com', 'https://www.youtube.com/watch?v=8SeldxGbDYo', 'https://www.youtube.com/watch?v=lAU9cbX_OgQ', 'https://www.facebook.com/theatroinsat/?ref=page_internal', 'https://www.twitter.com', 'https://instagram.com/insat_theatro?utm_medium=copy_link', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/channel/UC-clI4hWsSAetCiE2jdw3uw', '/assets/img/Clubs/theatro/Theatro.jpg', '/assets/img/Clubs/theatro/Theatro.jpg', 'Theatre', 'bg-gradient-light-purple-light-red'),
(618, 'Anim INSAT', '2000', 'Friends are a major part', 22222222, 'Tunis', '8h->18h', '15Dt', '', 'Anim INSAT provides the best integration for newcomers and the most jovial atmosphere to endure the stress of studying.', 'Centre urbain nord', '\r\nanim.insat.169@gmail.com', 'https://www.facebook.com/486500624703013/videos/1696380597048337', 'https://www.facebook.com/486500624703013/videos/1715287605157636', 'https://www.facebook.com/AnimInsat/?ref=page_internal', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/', '/assets/img/Clubs/anim/anim.jpg', '/assets/img/Clubs/anim/anim.jpg', 'Animation', 'bg-gradient-purple-magenta'),
(619, 'Symbio INSAT', '2022', 'Future of the Biotechnology', 22222222, 'Tunis', 'Always Open\r\n', '15Dt', '.', 'Symbio is a biology club at INSAT. We offer industrial and ecological tours, but above all, we give students the chance to have training. We also have an event component.', 'Centre urbain nord', '\r\nsymbioinsat@gmail.com', '.', '.', 'https://www.facebook.com/symbioinsatclub', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com', '/assets/img/Clubs/symbio/symbio.png', '/assets/img/Clubs/symbio/symbio.png', 'Biology', 'bg-gradient-magenta-orange-2'),
(620, 'Ciné-Radio', '2022', 'Music feeds the heart', 22222222, 'Tunis', '8h->18h', '15Dt', '.', 'Cultural and event club. We are working to give all Tunisian students the chance to be heard and to display their talents.', 'Centre urbain nord', 'contact@cineradioinsat.com', 'https://www.youtube.com/watch?v=_JQIuczgu2c', 'https://www.youtube.com/watch?v=VmpTbMyc_aY', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.twitter.com', 'Instagram.com/cineradio_insat/', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/channel/UCM40-Ihu3M6keDKrwtioxjA', '/assets/img/Clubs/cineradio/cineradio.jpg', '/assets/img/Clubs/cineradio/cineradio.jpg', 'Culture', 'bg-gradient-peacock-blue-crome-yellow'),
(1000, 'IEEE INSAT SB', 'January 2nd 2013', 'Advancing Technology for humanity', 93114913, 'Centre Urbain Nord', '-', '80dt', '-', 'IEEE Student Branch at National Institute of Applied Science and Technology', '676 INSAT Centre Urbain Nord BP، Tunis Cedex 1080', 'ieee.insat.sb@gmail.com', 'https://www.youtube.com/watch?v=VL6b7l_1V1I', 'https://www.youtube.com/watch?v=AFj91p6-g7I', 'https://www.facebook.com/IeeeInsatStudentBranch/', 'https://twitter.com/ieee_insat_sb', 'https://www.instagram.com/ieee.insat.sb/', 'https://www.linkedin.com/company/ieee-insat-student-branch/', 'https://www.youtube.com/channel/UCVK9F0-8FL8x8UpKMmgqOgw', '/assets/img/Clubs/ieee/ieee.jpg', '/assets/img/Clubs/ieee/ieee.jpg', 'https://insat.ieee.tn/', 'blue'),
(1001, 'Junior entreprise insat', '08/04/2005', 'Trust Tomorrow’s engineers', 58457575, 'Tunis', 'depends', '10dt', '-', 'La Junior Entreprise INSAT est une association à but non lucratif proposant des services dans le domaine de l\'IT.\r\nElle est fondée en 2005 et est gérée par les étudiants de l\'INSAT', 'Insat', 'junior.entreprise.insat@gmail.com', '-', '-', 'https://www.facebook.com/junior.entreprise.insat', '-', 'https://www.instagram.com/junior_entreprise_insat', 'https://www.linkedin.com/company/30099266/?fbclid=IwAR1Wrwt4-peoiWnNJ67OPQlTLCc9ufKSr_-BUrTi0s6Hggwmet4yN-qULKM', 'https://www.youtube.com/channel/UCmNCQRBMVP_RzhWZjnJfUPA', '/assets/img/Clubs/jei/jei.jpg', '/assets/img/Clubs/jei/jei.jpg', 'Web & Mobile Development - Entrepreneurship', 'Red and Blue'),
(1002, 'ACM', '2015', 'the future of IT', 22222222, 'INSAT', '24', '10', '', 'ACM is an IT club of INSAT. The most awarded club since 2015.', 'INSAT', '', '', '', 'https://www.facebook.com/insatacm/', '', '', '', '', '/assets/img/Clubs/ACM/acm.jpg', '/assets/img/Clubs/ACM/acm.jpg', 'IT', 'Blue and white');

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
('DoctrineMigrations\\Version20210612195534', '2021-06-12 21:56:38', 594),
('DoctrineMigrations\\Version20210613131549', '2021-06-14 00:01:48', 261),
('DoctrineMigrations\\Version20210613153501', '2021-06-14 00:01:49', 123),
('DoctrineMigrations\\Version20210613155428', '2021-06-14 00:01:49', 83),
('DoctrineMigrations\\Version20210613221148', '2021-06-14 00:12:05', 3111);

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
(981, 'Securiday 2k21 : 14th Edition', '/assets/img/Clubs/securinets/events/securiday.jpg', '/assets/img/Clubs/securinets/events/securiday2.jpg', 'SecuriDay is all about introducing youth to security, and its importance in their everyday lives.', 'Competition', 616),
(982, 'HACKLOCK', '/assets/img/Clubs/securinets/events/hacklock.jpg', '/assets/img/Clubs/securinets/events/hacklock2.jpg', 'Securinets Insat is immensely pleased to introduce you to our very first edition of Hacklock\r\nMark up your calendars on the 20th and 21st of February and wait for us for further information ', 'Competition', 616),
(983, 'Securinets FriendlyCTF', '/assets/img/Clubs/securinets/events/friendly.jpg', '/assets/img/Clubs/securinets/events/friendly2.png', 'This is an opportunity for beginners to get introduced to what a CTF is, and get the chance to participate in it as it doesn\'t require any prerequisite knowledge.', 'training', 616),
(984, 'CyberCamp\r\n', '/assets/img/Clubs/securinets/events/cybercamp.jpg\r\n', '/assets/img/Clubs/Securinets.jpg', ' CyberCamp is your way into the cybersecurity world and not only through theoretical lessons but also practical challenges! \r\nThe Bootcamp will be composed of three workshops :\r\n- Introduction to offensive security: we\'ll take you on a tour to the ethical', 'Competition', 616),
(986, 'ACM game development', '/assets/img/Clubs/ACM/acm.jpg', '/assets/img/Clubs/ACM/acm.jpg', 'ACM game development event. Prepare your career.', 'Compitition', 1002),
(988, 'Anim Meeting', '/assets/img/Clubs/anim/anim.jpg', '/assets/img/Clubs/anim/anim.jpg', 'Meet new people and Enjoy your time.', 'Fun', 618),
(989, 'Cine Sports Day', '/assets/img/Clubs/cineradio/cineradio.jpg', '/assets/img/Clubs/cineradio/cineradio.jpg', 'Cine sports day, Tennis, ping pong and football.', 'Fun', 620),
(990, 'IEEE CSTC', '/assets/img/Clubs/ieee/ieee.jpg', '/assets/img/Clubs/ieee/ieee.jpg', 'IEEE CSTC day in hammamet with multiples speakers.', 'Fun', 1000),
(991, 'INSAT press Music day', '/assets/img/Clubs/press/Press.png', '/assets/img/Clubs/press/Press.png', 'Press Music day.', 'Competition', 615),
(992, 'JEI Presentation day', '/assets/img/Clubs/jei/jei.jpg', '/assets/img/Clubs/jei/jei.jpg', 'JEI presentation day', 'Meeting', 1001),
(993, 'Symbio Chemicals Day', '/assets/img/Clubs/symbio/symbio.png', '/assets/img/Clubs/symbio/symbio.png', 'Symbio Chemicals Day', 'Competition', 619),
(994, 'Theatro', '/assets/img/Clubs/theatro/Theatro.jpg', '/assets/img/Clubs/theatro/Theatro.jpg', 'Theatro day', 'Fun', 617);

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
(1501, 'Aerobotix Hoodie', '/assets/img/Product/hoodieaer3.png', '/assets/img/Product/hoodieaer2.png', 35, 'Blue Winter Hoodie', 1001, NULL),
(1502, 'Securonets Hoodie', '/assets/img/Product/securinets.png', '/assets/img/Product/securinets2.png', 35, 'Red Winter Hoodie', 616, NULL),
(1503, 'Acm Hoodie', '/assets/img/Product/acm11.png', '/assets/img/Product/acm2.png', 35, 'Blue Winter Hoodie', 618, NULL),
(1504, 'Impression 3D', '/assets/img/Product/impr2.png', '/assets/img/Product/impr1.png', 2, 'Impression de pièces 3d par gramme avec PLA', 1000, NULL),
(1505, 'T-Shirt', '/assets/img/Clubs/Aerobotix/products/prod2.png', '/assets/img/Clubs/Aerobotix/products/prod2.png', 28, 'Summer Black T-Shirt', 1002, NULL);

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
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'www.twitter.com',
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'www.twitter.com',
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `clubname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone`, `address`, `twitter`, `instagram`, `facebook`, `class`, `description`, `role`, `image`, `password`, `roles`, `clubname`) VALUES
(1, 'MED YASSINE KOUBAA', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', ' An ambitious and a hard worker\r\n            engineering student who is\r\n            around for the 4th year as\r\n            member in the club.\r\n            He is an all-rounder and the one\r\n            to go to for help. He loves coming\r\n            up ', 'Technical Vice President', '/assets/img/Clubs/Aerobotix/board/vpt.png', '', '', NULL),
(2, 'YASSMINE BEN AMEUR', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A wise and hospitable\r\n                            engineer. She has a genius\r\n                            for solving problems.\r\n                            Her love to technological\r\n                            innovation and robotics\r\n                 ', 'President', '/assets/img/Clubs/Aerobotix/board/prez.png', '', '', NULL),
(3, 'WAFA ABID', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'An ambitious and enthusiastic\r\n                            engineering student. She is\r\n                            passionate about robotics\r\n                            and embedded systems.\r\n                            Her experience and regulation\r\n  ', 'Administrative Vice President', '/assets/img/Clubs/Aerobotix/board/vpa.png', '', '', NULL),
(4, 'AMIRA BEZINE', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', ' A software engineering student,\r\n                            an enthusiastic and innovative\r\n                            mind. Besides her passion for\r\n                            robotics, she has a good experience\r\n                            in the me', 'Media', '/assets/img/Clubs/Aerobotix/board/media.png', '', '', NULL),
(5, 'NOURCHENE BARGUAOUI', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A brave and sociable engineer.\r\n                            She is crazy enough to think\r\n                            she can change the world.\r\n                            Joining the Aerobotix\'s family\r\n                was one of the best choices\r\n     ', 'Human Ressource', '/assets/img/Clubs/Aerobotix/board/rh.png', '', '', NULL),
(6, 'ALA EDDINE KRAIEM', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A adventurous engineering student\r\n                            who has been an eurobot team\r\n                            member for 2 years.\r\n                            He\'s an electronics expert and a\r\n                        dreamer. He always comes up', 'Exposition', '/assets/img/Clubs/Aerobotix/board/expo.png', '', '', NULL),
(7, 'HAZAR BOUGHANMI', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'An ambitious and driven\r\n                            engineer who always thrives\r\n                            on challenges and constantly\r\n                            set goals for herself.\r\n                            She has always something to strive\r', 'Drone Manager', '/assets/img/Clubs/Aerobotix/board/drone.png', '', '', NULL),
(8, 'AWNI MEJRI', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', ' An ambitious and systematic\r\n                            industrial automation engineer\r\n                            who has a great passion for\r\n                            learning and discovering.\r\n                            He loves working on robot', 'Material Manager', '/assets/img/Clubs/Aerobotix/board/mater.png', '', '', NULL),
(9, 'AZIZ BEN GANDIA', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A second year chemersty student\r\n                            who is so passionate about\r\n                            robotics. He has a good yet\r\n                            strange way of communicating.\r\n                            He is great at convinc', 'Sponsoring', '/assets/img/Clubs/Aerobotix/board/sponso.png', '', '', NULL),
(10, 'MOHAMED LOUKIL', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A driven, aspiring engineer\r\n                            who has been tracking\r\n                            planes with a laptop\'s\r\n                        radar from his house\'s\r\n                            roof since his childhood.\r\n                    ', 'Aeromodelisme Manager', '/assets/img/Clubs/Aerobotix/board/aeromod.png', '', '', NULL),
(11, 'MAROUENE KAANICHE', ' ', 22222222, ' adressaaaa', ' ', ' ', ' ', 'gl/rt..', 'A persevering and commited\r\n                            engineer. He\'s full of spirit\r\n                and energy and will always\r\n                preform at his best.\r\n                He he seeks to help our newcomers\r\n                land their first st', 'Training Manager', '/assets/img/Clubs/Aerobotix/board/formation.png', '', '', NULL),
(12, 'Tounsi Chaima', 'chaimatounsi@insat.u-carthage.tn', 22222222, 'Tunis', 'https://twitter.com/tounsi_chaima?lang=en', 'www.instagram.com', 'https://www.facebook.com/tounssi.chaima', 'RT4', 'the enthusiastic leader always coming up with new ideas. She motivates and influences the board to acheive the best results at all costs.', 'President', '/assets/img/Clubs/securinets/president.jpg', '', '', NULL),
(13, 'Mohamed Ali Khedher', 'mohamedalikhedher@insat.u-cartage.tn', 22222222, 'Sousse', 'www.twitter.com', 'https://www.instagram.com/medalikhedher/', 'https://www.facebook.com/mohamedali.khedher.7/about_overview', 'RT4', 'our vice president is the most calm, positive and charismatic member of the team. He takes on leadership or chairperson roles by clarifying objectives, responsibilities and duties within the group .\r\n\r\n', 'Vice President', '/assets/img/Clubs/securinets/vicepresident.jpg', '', '', NULL),
(14, 'tarek baccar', 'tarekbaccar@insat.u-carthage.tn', 22222222, 'La Mannouba', 'https://twitter.com/tarekbaccar1', 'https://www.instagram.com/tarekbaccar/', 'https://www.facebook.com/tarek.baccar.447851', 'RT3', 'Our treasurer , the richest member , is responsible of all the spendings and revenues of our club. He is also in the constant research of the best deals .\r\n\r\n', 'Tresorier', '/assets/img/Clubs/securinets/tresorier.jpg', '', '', NULL),
(15, 'Hama Ben Ismail', 'hamabenismail@insat.u-carthage.tn', 22222222, 'Sousse', 'www.twitter.com', 'https://www.instagram.com/hamabenismail/', 'https://www.facebook.com/Hamaaaab', 'RT3', 'The webmaster is the mind behind this masterpiece of a website as well as our video conferencing platform.\r\n\r\n', 'Web Master', '/assets/img/Clubs/secuirnets/webmaster.jpg', '', '', NULL),
(16, 'Bacem Zarai', 'bacemzarai@insat.u-carthage.tn', 22222222, 'Tunis', 'https://twitter.com/bacemzarai?lang=en', 'https://www.instagram.com/bacem_zarai/', 'https://www.facebook.com/bacem1.zarai', 'RT4', 'In a technology-oriented world , our junior manager works with the younger generations to implement in them the basics of cybersecurity , a must for the 21st century.\r\n\r\n', 'Junior\'s Manager', '/assets/img/Clubs/securinets/responsablejunior.jpg', '', '', NULL),
(17, 'MOHAMED ARFAOUI', 'mohamedarfaoui@insat.u-carthage.tn', 22222222, 'Tunis', 'https://twitter.com/hama_arfaoui?lang=en', 'https://www.instagram.com/h4ma.ar/', 'https://www.facebook.com/arfaoui.mohamed.7/about_contact_and_basic_info', 'RT4', 'Our talented media manager. he makes it easier to reach a greater community , keeping everyone updated about the latest discoveries in cybersecurity.\r\n\r\n', 'Media Manager', '/assets/img/Clubs/secuirnets/mediamanager.jpg', '', '', NULL),
(18, 'CHERIF AICHA', 'cherifaicha@insat.u-carthage.tn', 22222222, 'Tunis', 'www.twitter.com', 'https://www.instagram.com/a._cherif/', 'https://www.facebook.com/aicha.cherif.7549/about_life_events', 'RT4', 'Our Head of External Relations works on the image of our club outside the university. She contacts other clubs for collaborations , helps in the creation of other securinets entities and is also a great sponsorship manager.', 'External Relations Manager', '/assets/img/Clubs/securinets/externalrelationsmanager.jpg', '', '', NULL),
(19, 'SEMAH BEN ALI', 'semahbenali@insat.u-carthage.tn', 22222222, 'Gabes', 'https://twitter.com/benalisemah', 'www.instagram.com', 'https://www.facebook.com/SemahBA98', 'RT3', 'The technical team manager- the life saver of our members- is here to help them take their first steps in cybersecurity by organizing multiple workshops , competitions and simply assisting them with their technical issues.\r\n\r\n', 'Techincal Team Manager', '/assets/img/Clubs/technicalmanager.jpg', '', '', NULL),
(20, 'Asma Jebari', 'asmajebari@insat.u-carthage.tn', 22222222, 'Ariana', 'www.twitter.com', 'www.instagram.com', 'https://www.facebook.com/asma.jebari4', 'RT3', 'Our Human resources manager also the unofficial pyschologist , event planner and peaceamaker.\r\n\r\n', 'Human Ressources Manager', '/assets/img/Clubs/securinets/humanressourcemanager.jpg', '', '', NULL),
(21, 'Khalil Garnaoui', 'khalil.garnaoui@insat.u-carthage.tn', 22222222, 'Insat', 'www.twitter.com', 'www.instagram.com', 'https://www.facebook.com/garnaouikhalil', 'INSAT', 'khalil garnaoui', 'President', '/assets/img/Clubs/JEI/khalilgarnaoui.jpeg', '', '', NULL),
(22, 'Wafé Selmy\r\n', 'wafe.selmy@insat.u-carthage.tn', 22222222, 'INSAT', 'www.twitter.com', 'www.instagram.com', 'https://www.facebook.com/nffgg', 'GL3', '-', 'Membre JEI', '/assets/img/Clubs/JEI/wafeselmy.jpeg', '', '', NULL),
(23, 'Med Ali Jardak', 'med.ali@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'RT4', '', 'Membre', '/assets/img/Clubs/JEI/medali.jpeg', '', '', NULL),
(24, 'Sarah Benabdallah', 'sarah.ben@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'RT3', '', 'Membre', '/assets/img/Clubs/JEI/sarah.jpeg', '', '', NULL),
(25, 'Bechir Brahem', 'bechir.brahem@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'President', '/assets/img/Clubs/ACM/bechir.jpeg', '', '', NULL),
(26, 'Med amine hamdouni', 'medamine.hamdouni@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/ACM/hamdouni.jpeg', '', '', NULL),
(31, 'Ons Sellami\r\n', 'ons.sellami@insat.u-carthage.tn', 22222222, 'insat', '', '', '', '', '', 'Membre', '/assets/img/Clubs/ACM/onssellami.jpeg', '', '', NULL),
(32, 'Naim Dali', 'naim.dali@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/ACM/naim.jpeg', '', '', NULL),
(33, 'Bechir Brahem', 'bechir.brahem@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'President', 'assets/img/Clubs/press/bechir.jpeg', '', '', NULL),
(34, 'Med amine hamdouni', 'medamine.hamdouni@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/press/hamdouni.jpeg', '', '', NULL),
(35, 'Ons Sellami\r\n', 'ons.sellami@insat.u-carthage.tn', 22222222, 'insat', '', '', '', '', '', 'Membre', '/assets/img/Clubs/press/onssellami.jpeg', '', '', NULL),
(36, 'Naim Dali', 'naim.dali@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/press/naim.jpeg', '', '', NULL),
(37, 'Bechir Brahem', 'bechir.brahem@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'President', 'assets/img/Clubs/theatro/bechir.jpeg', '', '', NULL),
(38, 'Med amine hamdouni', 'medamine.hamdouni@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/theatro/hamdouni.jpeg', '', '', NULL),
(39, 'Ons Sellami\r\n', 'ons.sellami@insat.u-carthage.tn', 22222222, 'insat', '', '', '', '', '', 'Membre', '/assets/img/Clubs/theatro/onssellami.jpeg', '', '', NULL),
(40, 'Naim Dali', 'naim.dali@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/theatro/naim.jpeg', '', '', NULL),
(41, 'Bechir Brahem', 'bechir.brahem@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'President', 'assets/img/Clubs/anim/bechir.jpeg', '', '', NULL),
(42, 'Med amine hamdouni', 'medamine.hamdouni@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/anim/hamdouni.jpeg', '', '', NULL),
(43, 'Ons Sellami\r\n', 'ons.sellami@insat.u-carthage.tn', 22222222, 'insat', '', '', '', '', '', 'Membre', '/assets/img/Clubs/anim/onssellami.jpeg', '', '', NULL),
(44, 'Naim Dali', 'naim.dali@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/anim/naim.jpeg', '', '', NULL),
(45, 'Bechir Brahem', 'bechir.brahem@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'President', 'assets/img/Clubs/symbio/bechir.jpeg', '', '', NULL),
(46, 'Med amine hamdouni', 'medamine.hamdouni@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/symbio/hamdouni.jpeg', '', '', NULL),
(47, 'Ons Sellami\r\n', 'ons.sellami@insat.u-carthage.tn', 22222222, 'insat', '', '', '', '', '', 'Membre', '/assets/img/Clubs/symbio/onssellami.jpeg', '', '', NULL),
(48, 'Naim Dali', 'naim.dali@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/symbio/naim.jpeg', '', '', NULL),
(49, 'Bechir Brahem', 'bechir.brahem@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'President', 'assets/img/Clubs/ieee/bechir.jpeg', '', '', NULL),
(50, 'Med amine hamdouni', 'medamine.hamdouni@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/ieee/hamdouni.jpeg', '', '', NULL),
(51, 'Ons Sellami\r\n', 'ons.sellami@insat.u-carthage.tn', 22222222, 'insat', '', '', '', '', '', 'Membre', '/assets/img/Clubs/ieee/onssellami.jpeg', '', '', NULL),
(52, 'Naim Dali', 'naim.dali@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/ieee/naim.jpeg', '', '', NULL),
(53, 'Bechir Brahem', 'bechir.brahem@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'President', 'assets/img/Clubs/cine/bechir.jpeg', '', '', NULL),
(54, 'Med amine hamdouni', 'medamine.hamdouni@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/cine/hamdouni.jpeg', '', '', NULL),
(55, 'Ons Sellami\r\n', 'ons.sellami@insat.u-carthage.tn', 22222222, 'insat', '', '', '', '', '', 'Membre', '/assets/img/Clubs/cine/onssellami.jpeg', '', '', NULL),
(56, 'Naim Dali', 'naim.dali@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/cine/naim.jpeg', '', '', NULL),
(57, 'Bechir Brahem', 'bechir.brahem@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'President', 'assets/img/Clubs/auto/bechir.jpeg', '', '', NULL),
(58, 'Med amine hamdouni', 'medamine.hamdouni@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/auto/hamdouni.jpeg', '', '', NULL),
(59, 'Ons Sellami\r\n', 'ons.sellami@insat.u-carthage.tn', 22222222, 'insat', '', '', '', '', '', 'Membre', '/assets/img/Clubs/auto/onssellami.jpeg', '', '', NULL),
(60, 'Naim Dali', 'naim.dali@insat.u-carthage.tn', 22222222, 'insat', '', '', '', 'GL2', '', 'Membre', '/assets/img/Clubs/auto/naim.jpeg', '', '', NULL),
(61, 'new', 'new@new.new', 22222222, 'new', 'www.twitter.com', 'www.instagram.com', 'www.facebook.com', NULL, NULL, NULL, NULL, '$argon2id$v=19$m=65536,t=4,p=1$M05Ib1dxb1BqV0sxNmZLUQ$BNKa8klz80U8kEUuvbLEVOgZ854EVYEq4/OWEcWCoPM', '[\"ROLE_USER\"]', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=995;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
