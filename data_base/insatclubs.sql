-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 03:47 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insatclubs`
--

-- --------------------------------------------------------

--
-- Table structure for table `compteclub`
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
-- Dumping data for table `compteclub`
--

INSERT INTO `compteclub` (`id`, `name`, `birthday`, `slogan`, `phone`, `city`, `hours`, `fees`, `other_information`, `description`, `adress`, `email`, `vid1`, `vid2`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `img1`, `img2`, `domain`, `color`) VALUES
(614, 'Auto Club INSAT', '2008', '.', 22222222, 'Tunis', '8h->18h', '15Dt', '.', 'Auto Club INSAT inclut dans son éventail d’activités des projets techniques et artistiques, diagnostique des défaillances et service qualité, l’organisation de journées,de tables rondes et de colloques, ainsi que l’organisation et la participation à des c', 'Centre urbain nord', 'insat.autoclub@gmail.com', 'https://www.youtube.com/watch?v=n33me5gLX6Q', 'https://www.youtube.com/watch?v=dopc5ytOlUQ', 'https://www.facebook.com/insatautoclub/?ref=page_internal', 'https://twitter.com/AUTOCLUBINSAT1', 'https://instgram.com', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/channel/UCbKmrhPcxjYDpmOgfpVVAVQ', '/img/Clubs/autoclub.jpg', '/img/Clubs/autoclub.jpg', 'Automative field', 'bg-gradient-light-purple-light-red'),
(615, 'Insat Press', '2022', 'Au coeur de l\'actuallité universitaire, et plus encore..', 22222222, 'Tunis', '8h->18h', '15Dt', '.', '\'The first university press club created in Tunisia. This page is dedicated for all INSATian students, and any university student more generally, in order to report the latest events to come or have taken place,', 'Centre urbain nord', 'insat.press@gmail.com', 'https://www.youtube.com/watch?v=Ix5BikcpiNI', 'https://www.youtube.com/watch?v=7-R5aRErqE8', 'https://www.facebook.com/Insat.Press/?ref=page_internal', 'https://twitter.com/insatpress', 'https://www.instgram.com', 'https://www.linkedin.com/company/insatpress/', 'https://www.youtube.com/user/INSATPRESS', '/img/Clubs/Press.png', '/img/Clubs/Press.png', 'Press', 'bg-gradient-peacock-blue-crome-yellow'),
(616, 'Securinets', '2022', '.', 22222222, 'Tunis', '8h->16h', '15Dt', '.', 'SECURINETS IS THE FIRST TUNISIAN ASSOCIATION TO BASE ALL OF ITS ACTIVITIES ON COMPUTER SECURITY.', 'Centre urbain nord', 'contact@securinets.com', 'https://www.youtube.com/watch?v=eqy2-farfYg', 'https://www.youtube.com/watch?v=zHuCalLe_y0', 'https://www.facebook.com/Securinets/?ref=page_internal', 'https://twitter.com/SecuriNets', 'https://www.instgram.com', 'https://tn.linkedin.com/company/securinets?trk=similar-pages', 'https://www.youtube.com/user/Securinets', '\"/img/Clubs/Securinets.jpg\"', '\"/img/Clubs/Securinets.jpg\"', 'Computer security', 'bg-transparent-gradient-light-red-orange'),
(617, 'Theatro INSAT', '2022', '.', 23903398, 'Tunis', 'Always Open\r\n', '15Dt', '.', 'Cultural and event club at INSAT. The artistic and cultural domain interests us and specifically the theatrical which touches everyone.', 'Centre urbain nord', '\r\nclubinsattheatro@gmail.com', 'https://www.youtube.com/watch?v=8SeldxGbDYo', 'https://www.youtube.com/watch?v=lAU9cbX_OgQ', 'https://www.facebook.com/theatroinsat/?ref=page_internal', 'https://www.twitter.com', 'https://instagram.com/insat_theatro?utm_medium=copy_link', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/channel/UC-clI4hWsSAetCiE2jdw3uw', '/img/Clubs/Theatro.jpg', '/img/Clubs/Theatro.jpg', 'Theatre', 'bg-gradient-light-purple-light-red'),
(618, 'Anim INSAT', '2000', '.', 22222222, 'Tunis', '8h->18h', '15Dt', '', 'Anim INSAT provides the best integration for newcomers and the most jovial atmosphere to endure the stress of studying.', 'Centre urbain nord', '\r\nanim.insat.169@gmail.com', 'https://www.facebook.com/486500624703013/videos/1696380597048337', 'https://www.facebook.com/486500624703013/videos/1715287605157636', 'https://www.facebook.com/AnimInsat/?ref=page_internal', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/', '/img/Clubs/anim.jpg', './img/Clubs/anim.jpg', 'Animation', 'bg-gradient-purple-magenta'),
(619, 'Symbio INSAT', '2022', '.', 22222222, 'Tunis', 'Always Open\r\n', '15Dt', '.', 'Symbio is a biology club at INSAT. We offer industrial and ecological tours, but above all, we give students the chance to have training. We also have an event component.', 'Centre urbain nord', '\r\nsymbioinsat@gmail.com', '.', '.', 'https://www.facebook.com/symbioinsatclub', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com', '/img/Clubs/symbio.png', '/img/Clubs/symbio.png', 'Biology', 'bg-gradient-magenta-orange-2'),
(620, 'Ciné-Radio', '2022', '.', 22222222, 'Tunis', '8h->18h', '15Dt', '.', 'Cultural and event club. We are working to give all Tunisian students the chance to be heard and to display their talents.', 'Centre urbain nord', 'contact@cineradioinsat.com', 'https://www.youtube.com/watch?v=_JQIuczgu2c', 'https://www.youtube.com/watch?v=VmpTbMyc_aY', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.twitter.com', 'Instagram.com/cineradio_insat/', 'https://www.linkedin.com/?trk=people-guest_nav-header-logo', 'https://www.youtube.com/channel/UCM40-Ihu3M6keDKrwtioxjA', '/img/Clubs/cineradio.jpg', '/img/Clubs/cineradio.jpg', 'Culture', 'bg-gradient-peacock-blue-crome-yellow');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210524203818', '2021-05-24 22:38:42', 379),
('DoctrineMigrations\\Version20210524204220', '2021-05-24 22:42:31', 302),
('DoctrineMigrations\\Version20210524205226', '2021-05-24 22:52:36', 1948),
('DoctrineMigrations\\Version20210524211524', '2021-05-24 23:15:32', 884),
('DoctrineMigrations\\Version20210611105809', '2021-06-11 12:58:29', 2357),
('DoctrineMigrations\\Version20210611114927', '2021-06-11 13:49:38', 7090),
('DoctrineMigrations\\Version20210611121313', '2021-06-11 14:13:21', 566),
('DoctrineMigrations\\Version20210611131219', '2021-06-11 15:12:25', 2230),
('DoctrineMigrations\\Version20210611150303', '2021-06-11 17:03:22', 839),
('DoctrineMigrations\\Version20210612014440', '2021-06-12 03:45:24', 3407);

-- --------------------------------------------------------

--
-- Table structure for table `event`
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
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `img1`, `img2`, `description`, `filter`, `club_id`) VALUES
(801, 'Claudia Heller', '/img/img1.jpg', '/img/img3.jpg', 'Vandervort PLC', 'competetion', NULL),
(802, 'Garrick McGlynn', '/img/img1.jpg', '/img/img1.jpg', 'Hessel, Kuvalis and Rau', 'competetion', NULL),
(803, 'Eudora Hoeger', '/img/img1.jpg', '/img/img1.jpg', 'Murazik, Kiehn and Herzog', 'competetion', NULL),
(804, 'Trevor Considine II', '/img/img2.jpg', '/img/img3.jpg', 'Jast LLC', 'competetion', NULL),
(805, 'Jalon Schiller Jr.', '/img/img1.jpg', '/img/img1.jpg', 'Berge-Lynch', 'competetion', NULL),
(806, 'Dakota Heaney Sr.', '/img/img3.jpg', '/img/img1.jpg', 'Collier, Fritsch and Volkman', 'competetion', NULL),
(807, 'Dr. Deon Mosciski', '/img/img2.jpg', '/img/img3.jpg', 'Torp-Schneider', 'competetion', NULL),
(808, 'Doug McGlynn', '/img/img1.jpg', '/img/img2.jpg', 'Jacobs, Collier and Bernhard', 'competetion', NULL),
(809, 'Miss Minnie Cartwright PhD', '/img/img3.jpg', '/img/img3.jpg', 'Conn PLC', 'competetion', NULL),
(810, 'Trycia Cassin', '/img/img2.jpg', '/img/img3.jpg', 'Senger-O\'Hara', 'competetion', NULL),
(811, 'Kennedy Kuhn', '/img/img3.jpg', '/img/img2.jpg', 'Block-Rowe', 'competetion', NULL),
(812, 'Omer Volkman', '/img/img1.jpg', '/img/img3.jpg', 'Herzog-Krajcik', 'competetion', NULL),
(813, 'Dr. Favian Goodwin', '/img/img1.jpg', '/img/img2.jpg', 'Langosh, Corkery and Padberg', 'competetion', NULL),
(814, 'Miss Arianna Hegmann MD', '/img/img1.jpg', '/img/img2.jpg', 'Mitchell Inc', 'competetion', NULL),
(815, 'Ofelia Lesch', '/img/img3.jpg', '/img/img3.jpg', 'Lemke and Sons', 'competetion', NULL),
(816, 'Justina Eichmann', '/img/img3.jpg', '/img/img1.jpg', 'Walsh Group', 'competetion', NULL),
(817, 'Dr. Sonia O\'Connell', '/img/img3.jpg', '/img/img3.jpg', 'Torphy-Funk', 'competetion', NULL),
(818, 'Morris Daniel', '/img/img1.jpg', '/img/img1.jpg', 'O\'Connell-Kassulke', 'competetion', NULL),
(819, 'Phyllis Jacobs', '/img/img3.jpg', '/img/img3.jpg', 'Feil-Bergstrom', 'competetion', NULL),
(820, 'Dr. Mark Boyer', '/img/img3.jpg', '/img/img3.jpg', 'Gislason and Sons', 'competetion', NULL),
(821, 'Glenna Casper II', '/img/img2.jpg', '/img/img2.jpg', 'Bartoletti-Stiedemann', 'competetion', NULL),
(822, 'Santiago Harris', '/img/img1.jpg', '/img/img3.jpg', 'Bernier LLC', 'competetion', NULL),
(823, 'Kassandra Cole II', '/img/img1.jpg', '/img/img2.jpg', 'Smitham and Sons', 'competetion', NULL),
(824, 'Leann Hilll', '/img/img3.jpg', '/img/img3.jpg', 'Kulas, Schmidt and Kirlin', 'competetion', NULL),
(825, 'Curt Roberts', '/img/img2.jpg', '/img/img1.jpg', 'Tillman Inc', 'competetion', NULL),
(826, 'Dr. Gust Goodwin', '/img/img3.jpg', '/img/img3.jpg', 'McDermott, Mitchell and Krajcik', 'competetion', NULL),
(827, 'Jayda Goodwin III', '/img/img3.jpg', '/img/img2.jpg', 'Metz PLC', 'competetion', NULL),
(828, 'Shanel Jerde', '/img/img2.jpg', '/img/img2.jpg', 'Wiegand LLC', 'competetion', NULL),
(829, 'Chet Harber Sr.', '/img/img2.jpg', '/img/img3.jpg', 'Harvey and Sons', 'competetion', NULL),
(830, 'Anna Bins III', '/img/img1.jpg', '/img/img1.jpg', 'Hartmann, Morar and Hane', 'competetion', NULL),
(831, 'Prof. Craig Stamm IV', '/img/img2.jpg', '/img/img1.jpg', 'Hagenes, Nolan and Paucek', 'competetion', NULL),
(832, 'Nola Treutel', '/img/img1.jpg', '/img/img1.jpg', 'Huels, Yundt and Nolan', 'competetion', NULL),
(833, 'Aryanna Huels', '/img/img1.jpg', '/img/img2.jpg', 'Heaney, Emmerich and Schamberger', 'competetion', NULL),
(834, 'Dr. Drew Walter', '/img/img3.jpg', '/img/img1.jpg', 'Hermann, Miller and Boyer', 'competetion', NULL),
(835, 'Mark Goyette', '/img/img3.jpg', '/img/img1.jpg', 'Roberts Group', 'competetion', NULL),
(836, 'Jamil Sanford', '/img/img3.jpg', '/img/img1.jpg', 'Conn LLC', 'competetion', NULL),
(837, 'Prof. Adelia Emard', '/img/img3.jpg', '/img/img1.jpg', 'Larson-Daugherty', 'competetion', NULL),
(838, 'Dr. Ricky Runte', '/img/img3.jpg', '/img/img3.jpg', 'Kuvalis, Osinski and Lemke', 'competetion', NULL),
(839, 'Wade Vandervort IV', '/img/img1.jpg', '/img/img2.jpg', 'Cartwright, Nicolas and Willms', 'competetion', NULL),
(840, 'Cydney Dach', '/img/img2.jpg', '/img/img2.jpg', 'Smitham, Reynolds and Hintz', 'competetion', NULL),
(841, 'Cruz Fadel', '/img/img1.jpg', '/img/img3.jpg', 'Lakin-Shanahan', 'competetion', NULL),
(842, 'Lamar Stokes', '/img/img3.jpg', '/img/img3.jpg', 'Skiles and Sons', 'competetion', NULL),
(843, 'Kaleigh Treutel', '/img/img1.jpg', '/img/img2.jpg', 'Kiehn PLC', 'competetion', NULL),
(844, 'Heidi Bins', '/img/img3.jpg', '/img/img3.jpg', 'Schimmel Inc', 'competetion', NULL),
(845, 'Rosalinda Bauch Sr.', '/img/img2.jpg', '/img/img2.jpg', 'Wiegand Group', 'competetion', NULL),
(846, 'Ubaldo Pouros', '/img/img2.jpg', '/img/img1.jpg', 'Denesik-Carroll', 'competetion', NULL),
(847, 'Jeffrey Cremin', '/img/img2.jpg', '/img/img1.jpg', 'McDermott LLC', 'competetion', NULL),
(848, 'Quinton Stamm', '/img/img1.jpg', '/img/img1.jpg', 'Veum-Monahan', 'competetion', NULL),
(849, 'Arch Quitzon', '/img/img3.jpg', '/img/img2.jpg', 'Bogan-Crona', 'competetion', NULL),
(850, 'Crystal Ullrich', '/img/img1.jpg', '/img/img2.jpg', 'Russel, Schumm and Cremin', 'competetion', NULL),
(851, 'Clint Welch', '/img/img1.jpg', '/img/img3.jpg', 'Bailey-Kohler', 'competetion', NULL),
(852, 'Nichole Mertz', '/img/img2.jpg', '/img/img2.jpg', 'Lubowitz Ltd', 'competetion', NULL),
(853, 'Charity Connelly', '/img/img1.jpg', '/img/img1.jpg', 'Lubowitz-Heller', 'competetion', NULL),
(854, 'Wiley Padberg Jr.', '/img/img2.jpg', '/img/img1.jpg', 'Weber, Breitenberg and Schumm', 'competetion', NULL),
(855, 'Lafayette Beahan', '/img/img3.jpg', '/img/img1.jpg', 'Bernier PLC', 'competetion', NULL),
(856, 'Lily Abshire', '/img/img2.jpg', '/img/img2.jpg', 'Dare, Miller and Leffler', 'competetion', NULL),
(857, 'Prof. August Keeling PhD', '/img/img3.jpg', '/img/img1.jpg', 'Durgan, Hills and Hartmann', 'competetion', NULL),
(858, 'Prof. Abraham Beahan', '/img/img1.jpg', '/img/img2.jpg', 'Feest-Heathcote', 'competetion', NULL),
(859, 'Kory Kozey I', '/img/img1.jpg', '/img/img2.jpg', 'Sanford, Schuster and Wisoky', 'competetion', NULL),
(860, 'Newell Ankunding', '/img/img1.jpg', '/img/img2.jpg', 'Herman Inc', 'competetion', NULL),
(861, 'Mr. Craig Okuneva', '/img/img3.jpg', '/img/img1.jpg', 'Crooks, Jacobson and Romaguera', 'competetion', NULL),
(862, 'Noe Ernser III', '/img/img3.jpg', '/img/img1.jpg', 'Bradtke, Kuhlman and McCullough', 'competetion', NULL),
(863, 'Curt Abbott', '/img/img1.jpg', '/img/img1.jpg', 'Harris, Mitchell and Beatty', 'competetion', NULL),
(864, 'Adelle O\'Reilly', '/img/img2.jpg', '/img/img1.jpg', 'Langosh-Hirthe', 'competetion', NULL),
(865, 'Micaela Ruecker', '/img/img1.jpg', '/img/img1.jpg', 'Stokes, Berge and Mertz', 'competetion', NULL),
(866, 'Prof. Katharina Rohan', '/img/img1.jpg', '/img/img2.jpg', 'Casper, Harber and Koepp', 'competetion', NULL),
(867, 'Anika Considine', '/img/img3.jpg', '/img/img3.jpg', 'Beier-Schneider', 'competetion', NULL),
(868, 'Olen Corkery', '/img/img3.jpg', '/img/img1.jpg', 'Farrell-VonRueden', 'competetion', NULL),
(869, 'Karina Crona', '/img/img3.jpg', '/img/img3.jpg', 'Ruecker-Adams', 'competetion', NULL),
(870, 'Christy Schroeder', '/img/img2.jpg', '/img/img1.jpg', 'Kemmer, Kuhn and Reichert', 'competetion', NULL),
(871, 'Soledad Yost Jr.', '/img/img3.jpg', '/img/img3.jpg', 'Morar, Treutel and Wilderman', 'competetion', NULL),
(872, 'Prof. Madelyn Kertzmann V', '/img/img2.jpg', '/img/img3.jpg', 'Hammes LLC', 'competetion', NULL),
(873, 'Monte Mosciski', '/img/img1.jpg', '/img/img3.jpg', 'Stamm-Kshlerin', 'competetion', NULL),
(874, 'Prof. Omari Mayert', '/img/img2.jpg', '/img/img3.jpg', 'Zboncak-Turcotte', 'competetion', NULL),
(875, 'Oscar Grant', '/img/img2.jpg', '/img/img3.jpg', 'Adams, Fahey and Jenkins', 'competetion', NULL),
(876, 'Litzy Legros', '/img/img2.jpg', '/img/img3.jpg', 'Jakubowski, Pagac and Lehner', 'competetion', NULL),
(877, 'Micheal Funk', '/img/img2.jpg', '/img/img2.jpg', 'Satterfield-Ward', 'competetion', NULL),
(878, 'Dr. Maia Bergstrom', '/img/img3.jpg', '/img/img2.jpg', 'Brown and Sons', 'competetion', NULL),
(879, 'Adell Wilkinson', '/img/img3.jpg', '/img/img1.jpg', 'Weimann-Glover', 'competetion', NULL),
(880, 'Mable Kozey DDS', '/img/img3.jpg', '/img/img2.jpg', 'Conn, Spencer and Becker', 'competetion', NULL),
(881, 'Mr. Isaias Ernser', '/img/img1.jpg', '/img/img1.jpg', 'Steuber, Eichmann and Turner', 'competetion', NULL),
(882, 'Karlie Feest IV', '/img/img1.jpg', '/img/img2.jpg', 'Mohr LLC', 'competetion', NULL),
(883, 'Antonio Zboncak', '/img/img2.jpg', '/img/img1.jpg', 'VonRueden-Carter', 'competetion', NULL),
(884, 'Maud Tillman Sr.', '/img/img3.jpg', '/img/img3.jpg', 'Ratke, Grimes and Rohan', 'competetion', NULL),
(885, 'Lacey Runolfsson', '/img/img3.jpg', '/img/img2.jpg', 'Schumm, Hodkiewicz and Romaguera', 'competetion', NULL),
(886, 'Bart Ritchie', '/img/img1.jpg', '/img/img3.jpg', 'Boyer, Torphy and Rogahn', 'competetion', NULL),
(887, 'Savanah Bartell', '/img/img3.jpg', '/img/img3.jpg', 'Hodkiewicz-Kulas', 'competetion', NULL),
(888, 'Sarina Prohaska', '/img/img1.jpg', '/img/img2.jpg', 'Hermiston Inc', 'competetion', NULL),
(889, 'Eileen Quigley III', '/img/img3.jpg', '/img/img1.jpg', 'Goldner-Eichmann', 'competetion', NULL),
(890, 'Celestine Weimann', '/img/img3.jpg', '/img/img3.jpg', 'Stehr and Sons', 'competetion', NULL),
(891, 'Dwight Franecki I', '/img/img1.jpg', '/img/img1.jpg', 'Grant-Weber', 'competetion', NULL),
(892, 'Mrs. Ludie Beier DDS', '/img/img3.jpg', '/img/img1.jpg', 'Deckow Group', 'competetion', NULL),
(893, 'Mr. Wilfrid Bogisich III', '/img/img1.jpg', '/img/img3.jpg', 'Beer Inc', 'competetion', NULL),
(894, 'Prof. Vallie Hyatt V', '/img/img3.jpg', '/img/img1.jpg', 'Terry-Bernhard', 'competetion', NULL),
(895, 'Vella Rutherford', '/img/img2.jpg', '/img/img2.jpg', 'Ondricka, Schmidt and Heller', 'competetion', NULL),
(896, 'Deonte Ebert', '/img/img2.jpg', '/img/img2.jpg', 'Gleason LLC', 'competetion', NULL),
(897, 'Gunnar Kemmer', '/img/img3.jpg', '/img/img1.jpg', 'Roberts Group', 'competetion', NULL),
(898, 'Else Hegmann', '/img/img2.jpg', '/img/img2.jpg', 'Willms, Swaniawski and Stokes', 'competetion', NULL),
(899, 'Ms. Delta Wyman', '/img/img3.jpg', '/img/img2.jpg', 'Davis-O\'Connell', 'competetion', NULL),
(900, 'Mr. Antonio Medhurst PhD', '/img/img3.jpg', '/img/img3.jpg', 'Rempel-McClure', 'competetion', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pourcentage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `img1`, `img2`, `prix`, `description`, `club_id`) VALUES
(1501, 'Aerobotix Hoodie', 'img/Product/hoodie aer3.jpg', 'img/Product/hoodieaer2.jpg', 35, 'Blue Winter Hoodie', NULL),
(1502, 'Securonets Hoodie', 'img/Product/securinets.jpg', 'img/Product/securinets2.jpg', 35, 'Red Winter Hoodie', NULL),
(1503, 'Acm Hoodie', 'img/Product/acm11.jpg', 'img/Product/acm2.jpg', 35, 'Blue Winter Hoodie', NULL),
(1504, 'Impression 3D', 'img/Product/impr2.jpg', 'img/Product/impr1.jpg', 2, 'Impression de pièces 3d par gramme avec PLA', NULL),
(1505, 'T-Shirt', '/img/Clubs/Aerobotix/products/prod1.png', '/img/Clubs/Aerobotix/products/prod2.png', 28, 'Summer Black T-Shirt', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statistique`
--

CREATE TABLE `statistique` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
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

-- --------------------------------------------------------

--
-- Table structure for table `user_compteclub`
--

CREATE TABLE `user_compteclub` (
  `user_id` int(11) NOT NULL,
  `compteclub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_event`
--

CREATE TABLE `user_event` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compteclub`
--
ALTER TABLE `compteclub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3BAE0AA761190A32` (`club_id`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5BF5455861190A32` (`club_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD61190A32` (`club_id`);

--
-- Indexes for table `statistique`
--
ALTER TABLE `statistique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_73A038AD61190A32` (`club_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_compteclub`
--
ALTER TABLE `user_compteclub`
  ADD PRIMARY KEY (`user_id`,`compteclub_id`),
  ADD KEY `IDX_2AA6A59A76ED395` (`user_id`),
  ADD KEY `IDX_2AA6A5942B3B486` (`compteclub_id`);

--
-- Indexes for table `user_event`
--
ALTER TABLE `user_event`
  ADD PRIMARY KEY (`user_id`,`event_id`),
  ADD KEY `IDX_D96CF1FFA76ED395` (`user_id`),
  ADD KEY `IDX_D96CF1FF71F7E88B` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compteclub`
--
ALTER TABLE `compteclub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=621;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT for table `field`
--
ALTER TABLE `field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1506;

--
-- AUTO_INCREMENT for table `statistique`
--
ALTER TABLE `statistique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_3BAE0AA761190A32` FOREIGN KEY (`club_id`) REFERENCES `compteclub` (`id`);

--
-- Constraints for table `field`
--
ALTER TABLE `field`
  ADD CONSTRAINT `FK_5BF5455861190A32` FOREIGN KEY (`club_id`) REFERENCES `compteclub` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD61190A32` FOREIGN KEY (`club_id`) REFERENCES `compteclub` (`id`);

--
-- Constraints for table `statistique`
--
ALTER TABLE `statistique`
  ADD CONSTRAINT `FK_73A038AD61190A32` FOREIGN KEY (`club_id`) REFERENCES `compteclub` (`id`);

--
-- Constraints for table `user_compteclub`
--
ALTER TABLE `user_compteclub`
  ADD CONSTRAINT `FK_2AA6A5942B3B486` FOREIGN KEY (`compteclub_id`) REFERENCES `compteclub` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2AA6A59A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_event`
--
ALTER TABLE `user_event`
  ADD CONSTRAINT `FK_D96CF1FF71F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D96CF1FFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
