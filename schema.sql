-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2026 at 11:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`) VALUES
(1, 'Akmenės district'),
(2, 'Biržų district'),
(3, 'Joniškio district'),
(4, 'Kauno city'),
(5, 'Kėdainių district'),
(6, 'Kelmės district'),
(7, 'Klaipėdos city'),
(8, 'Mažeikių district'),
(9, 'Pakruojo district'),
(10, 'Panevėžio city'),
(11, 'Pasvalio district'),
(12, 'Radviliškio distr'),
(13, 'Raseinių district'),
(14, 'Rokiškio district'),
(15, 'Šiaulių city'),
(16, 'Šiaulių district'),
(17, 'Tauragės district');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`) VALUES
(1, 'AZn 03-2'),
(2, 'KTd 01'),
(3, 'KTd 03'),
(4, 'KTn 01'),
(5, 'KTn 03-1'),
(6, 'KTn 03-2'),
(7, 'KTn 05');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status_name`) VALUES
(1, 'Active'),
(2, 'Deleted (due to lack of progress)'),
(3, 'Deleted by personal preference'),
(4, 'Diploma defense postponed'),
(5, 'Finished'),
(6, 'holidays'),
(7, 'Left to repeat the course');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(11) DEFAULT NULL,
  `surname` varchar(31) DEFAULT NULL,
  `gen` varchar(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(28) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `surname`, `gen`, `birthday`, `phone`, `groups_id`, `city_id`, `status_id`) VALUES
(1, 'Tomas', 'Pačkauskaitė ', 'M', '1986-04-23', '4719423', 2, 12, 1),
(2, 'Valdemaras', 'Žilinskas ', 'F', '1986-09-26', '42233527, 47340542', 2, 15, 1),
(3, 'Vytautas', 'Tavoraitė ', 'M', '1987-12-28', '4524043', 2, 15, 1),
(4, 'Santa', 'Žudys ', 'F', '1958-03-08', '4724530, 44443712, 47124071', 2, 15, 6),
(5, 'Eugenijus', 'Zinkevičienė (Petrauskaitė) ', 'F', '1987-04-10', '1', 2, 15, 6),
(6, 'Martynas', 'Čičinskienė ', 'M', '1987-01-20', '4322051', 2, 15, 1),
(7, 'Gintarė', 'Prichodko ', 'F', '1983-02-28', '42194119, 440504', 2, 6, 1),
(8, 'Jurgita', 'Bakšytė ', 'F', '1986-10-19', '4375159', 3, 16, 1),
(9, 'Edgaras', 'Krasauskienė ', 'M', '1986-09-12', '41170', 3, 6, 1),
(10, 'Martynas', 'Kazlauskaitė ', 'M', '1985-01-22', '49414223, 41035045', 3, 8, 1),
(11, 'Justas', 'Smirnovas ', 'M', '1986-06-02', '429452, 42094799', 3, 8, 1),
(12, 'Darius', 'Druktenis ', 'M', '1986-11-03', '49347404, 473305', 3, 8, 1),
(13, 'Rita', 'Milašiūtė ', 'F', '1985-11-24', '494114', 3, 9, 1),
(14, 'Edgaras', 'Navickas ', 'M', '1984-10-25', ' 440 2 33, 42297577', 3, 12, 1),
(15, 'Renatas', 'Danieliūtė ', 'M', '1986-03-19', '43170490', 3, 16, 1),
(16, 'Aurimas', 'Dalinger ', 'M', '1986-01-11', ' 423 50 20', 3, 16, 1),
(17, 'Pavel', 'Monkūnaitė ', 'M', '1986-10-27', '4375159, 4734245', 3, 15, 1),
(18, 'Mantas', 'Gujytė ', 'M', '1985-11-26', ' 409 24 44', 3, 16, 1),
(19, 'Marius', 'Mockevičienė ', 'M', '1982-01-30', '407549', 3, 6, 1),
(20, 'Tomas', 'Zamaliauckas ', 'M', '1987-09-03', '47411403', 3, 16, 1),
(21, 'Agnė', 'Kuzmickas ', 'F', '1986-05-21', '4340592', 3, 15, 1),
(22, 'Ramūnas', 'Šarlauskienė ', 'M', '1986-01-25', '40377479', 3, 15, 1),
(23, 'Ginta', 'Glinskis ', 'M', '1984-03-03', '47150917, 4294449', 3, 3, 1),
(24, 'Gedas', 'Vilkas ', 'M', '1984-11-11', '447213', 3, 15, 1),
(25, 'Žana', 'Tamašauskas ', 'F', '1988-07-20', '42441329', 3, 15, 1),
(26, 'Justina', 'Romanovienė ', 'F', '1986-04-02', '445552', 3, 15, 1),
(27, 'Evaldas', 'Šliožienė ', 'M', '1988-08-02', ' 474 41 001', 3, 15, 1),
(28, 'Paulius', 'Savickas ', 'M', '1988-04-26', '1', 3, 15, 5),
(29, 'Marius', 'Butėnienė ', 'M', '1988-09-28', '43141953, 4203424', 3, 15, 1),
(30, 'Rasa', 'Kantauskaitė ', 'F', '1988-12-20', '40177434', 3, 16, 1),
(31, 'Marius', 'Pekarskas ', 'M', '1988-12-01', '404343', 3, 15, 1),
(32, 'Modestas', 'Stonytė ', 'M', '1988-06-22', ' 404 14 405', 3, 3, 1),
(33, 'Nerijus', 'Gaigalas ', 'M', '1987-12-16', '441224', 3, 15, 1),
(34, 'Laimutė', 'Karkalienė ', 'F', '1988-05-18', ' 49 71530', 4, 8, 1),
(35, 'Jurgita', 'Bogdan ', 'F', '1988-03-01', ' 44 3951', 4, 15, 6),
(36, 'Indrė', 'Kavaliauskienė (Jankauskaitė)', 'F', '1988-03-01', ' 41 45414', 4, 15, 1),
(37, 'Adomas', 'Ponelienė ', 'M', '1988-06-20', ' 42 29395', 4, 6, 1),
(38, 'Ricity', 'Jasevičienė ', 'F', '1982-06-28', ' 450 32201', 4, 6, 1),
(39, 'Audrė', 'Gabrielaitis ', 'F', '1985-09-03', ' 475 27494', 4, 7, 1),
(40, 'Auksė', 'Peleckis ', 'F', '1970-05-17', ' 443 73241', 4, 8, 1),
(41, 'Židrūnas', 'Popova', 'M', '1985-07-10', ' 410 0939', 4, 8, 1),
(42, 'Daiva', 'Grigaliūnaitė ', 'F', '1973-08-19', '425 45730', 4, 8, 1),
(43, 'Ricity', 'Ivanovas ', 'F', '1970-01-20', '40133744, 410415 (mamos)', 4, 10, 1),
(44, 'Reda', 'Drungilas ', 'F', '1984-10-20', ' 414 94245', 4, 12, 1),
(45, 'Jolita', 'Vepkojus ', 'F', '1979-05-18', ' 472 2345', 4, 12, 1),
(46, 'Inga', 'Rutkauskas ', 'F', '1985-04-30', ' 415 442', 4, 15, 1),
(47, 'Irina', 'Andrulis ', 'F', '1987-04-09', '41 523524', 4, 16, 1),
(48, 'Sonata', 'Dragūnas ', 'F', '1986-08-10', ' 472 44344', 4, 15, 6),
(49, 'Egidijus', 'Griciūnas ', 'M', '1984-04-30', ' 410 33210', 4, 15, 1),
(50, 'Marius', 'Savičiūnaitė ', 'M', '1987-08-11', ' 474 99952', 4, 15, 5),
(51, 'Mantas', 'Abromavičius ', 'M', '1976-04-24', ' 410 424', 4, 15, 1),
(52, 'Brigita', 'Budrys ', 'F', '1982-06-29', ' 474 1417', 4, 15, 1),
(53, 'Vitalija', 'Dirvinskas ', 'F', '1987-01-14', '4142740', 4, 15, 1),
(54, 'Raimundas', 'Giržadas ', 'M', '1987-03-15', ' 477 3420', 4, 15, 4),
(55, 'Giedrė', 'Satkauskas ', 'F', '1985-08-11', ' 41427573,  4033195', 4, 15, 1),
(56, 'Marius', 'Danikauskas ', 'M', '1987-06-28', '1', 4, 15, 1),
(57, 'Daiva', 'Kryžanauskas ', 'F', '1983-10-02', ' 41 2955', 4, 15, 1),
(58, 'Jovita', 'Damanskienė', 'F', '1987-05-13', '41 511142', 4, 15, 1),
(59, 'Virginija', 'Grikšas ', 'F', '1988-12-09', ' 45 44210', 4, 15, 1),
(60, 'Tadas', 'Myčko ', 'M', '1981-11-27', '477473', 4, 15, 2),
(61, 'Artūras', 'Janušauskienė ', 'M', '1987-08-25', ' 47 43304', 4, 15, 1),
(62, 'Irina', 'Januševičiūtė ', 'F', '1983-07-11', ' 452 120', 4, 15, 1),
(63, 'Živilė', 'Ašmantas ', 'F', '1987-08-05', '4117203', 7, 3, 1),
(64, 'Zita', 'Graisaitė ', 'F', '1986-03-09', '41014752', 7, 15, 1),
(65, 'Regina', 'Pliaška ', 'F', '1988-07-02', '434339', 7, 15, 1),
(66, 'Simona', 'Jokubaitienė ', 'F', '1987-01-14', '47540355', 7, 15, 1),
(67, 'Jovita', 'Gegelevičienė ', 'F', '1972-07-30', '41147995', 7, 15, 1),
(68, 'Rolandas', 'Incas ', 'M', '1988-03-24', '4777494', 7, 15, 1),
(69, 'Mindaugas', 'Domarkaitė ', 'M', '1985-03-05', ' 452 7743', 7, 4, 5),
(70, 'Mantas', 'Danielius ', 'M', '1985-01-27', 'tel 44305103', 7, 16, 1),
(71, 'Jurgita', 'Jankauskaitė', 'F', '1984-02-01', '41540504', 7, 15, 1),
(72, 'Ingrida', 'Juozapaitis ', 'F', '1987-02-16', '40412110', 7, 6, 1),
(73, 'Evaldas', 'Butvilienė ', 'M', '1988-03-19', '4740594', 7, 7, 1),
(74, 'Rolandas', 'Sitnikas ', 'M', '1986-01-29', '4721071', 7, 15, 1),
(75, 'Žydrūnė', 'Daukšaitė ', 'F', '1982-07-30', '4055543', 7, 12, 1),
(76, 'Giedrius', 'Pačkauskaitė ', 'M', '1985-08-06', '49917474', 7, 15, 3),
(77, 'Erikas', 'Žilinskas ', 'M', '1986-05-28', '4124433', 7, 12, 1),
(78, 'Lina', 'Tavoraitė ', 'F', '1986-07-17', '410111', 7, 16, 1),
(79, 'Nida', 'Žudys ', 'F', '1987-01-17', '4149902', 7, 16, 1),
(80, 'Jurgita', 'Zinkevičienė (Petrauskaitė) ', 'F', '1985-09-27', '41409335', 7, 17, 1),
(81, 'Renata', 'Čičinskienė ', 'F', '1986-10-06', '47733272', 7, 12, 1),
(82, 'Andrius', 'Prichodko ', 'M', '1986-10-16', '47221155', 7, 15, 1),
(83, 'Tomas', 'Bakšytė ', 'M', '1986-12-09', ' 499 74 003', 7, 15, 5),
(84, 'Jolanta', 'Krasauskienė ', 'F', '1986-05-06', '45293737, 41111405', 7, 15, 1),
(85, 'Gaiva', 'Kazlauskaitė ', 'F', '1986-03-14', '47540004', 7, 15, 1),
(86, 'Gintaras', 'Smirnovas ', 'M', '1986-10-18', '4714030', 7, 15, 1),
(87, 'Jurga', 'Druktenis ', 'F', '1986-09-04', '4520494', 7, 15, 1),
(88, 'Lina', 'Milašiūtė ', 'F', '1986-05-06', ' 477 24724', 7, 15, 1),
(89, 'Inga', 'Navickas ', 'F', '1985-10-02', '4722727', 7, 15, 1),
(90, 'Andrejus', 'Danieliūtė ', 'M', '1986-06-19', '4152213', 7, 15, 1),
(91, 'Nerijus', 'Dalinger ', 'M', '1986-11-27', '452309', 7, 15, 1),
(92, 'Mindaugas', 'Monkūnaitė ', 'M', '1985-07-16', '4735079', 7, 15, 7),
(93, 'Erika', 'Gujytė ', 'F', '1986-08-10', '4145407', 7, 15, 1),
(94, 'Gitana', 'Mockevičienė ', 'F', '1986-06-29', '43145210', 7, 15, 1),
(95, 'Svetlana', 'Zamaliauckas ', 'F', '1985-11-06', '40412074', 7, 15, 6),
(96, 'Milda', 'Kuzmickas ', 'F', '1986-02-04', '47334570', 7, 15, 1),
(97, 'Marius', 'Šarlauskienė ', 'M', '1986-09-19', ' 4157539,  42444149', 7, 15, 6),
(98, 'Dovilė', 'Glinskis ', 'F', '1985-11-12', '41247443', 7, 15, 1),
(99, 'Tocity', 'Vilkas ', 'F', '1986-06-09', '4393933', 7, 15, 1),
(100, 'Daivaras', 'Tamašauskas ', 'M', '1986-07-08', '421731', 4, 15, 1),
(101, 'Linas', 'Romanovienė ', 'M', '1987-01-11', ' 423 91221,  410 3445', 4, 9, 6),
(102, 'Monika', 'Šliožienė ', 'F', '1987-07-19', ' 473 10931', 4, 6, 1),
(103, 'Raimondas', 'Savickas ', 'M', '1984-07-08', '45510474, 42744249', 4, 6, 1),
(104, 'Asta', 'Butėnienė ', 'F', '1986-12-07', '45055431', 4, 6, 1),
(105, 'Erika', 'Kantauskaitė ', 'F', '1986-12-19', '4241133', 4, 6, 1),
(106, 'Daiva', 'Pekarskas ', 'F', '1987-05-15', '47301540', 4, 6, 1),
(107, 'Lijana', 'Stonytė ', 'F', '1986-09-21', '4151719, 415359', 4, 6, 1),
(108, 'Sandra', 'Gaigalas ', 'F', '1987-09-17', ' 45333539,  47104447', 4, 5, 5),
(109, 'Asta', 'Karkalienė ', 'F', '1987-07-17', '49944151', 4, 2, 1),
(110, 'Monika', 'Bogdan ', 'F', '1987-07-30', ' 43723032,  42230544', 4, 10, 1),
(111, 'Edgaras', 'Kavaliauskienė (Jankauskaitė)', 'M', '1987-03-09', '1', 4, 16, 1),
(112, 'Arūnas', 'Ponelienė ', 'M', '1987-10-18', '40433535', 4, 3, 1),
(113, 'Laura', 'Jasevičienė ', 'F', '1987-04-24', '40554242', 4, 12, 1),
(114, 'Vitalijus', 'Gabrielaitis ', 'M', '1986-10-25', ' 494 74', 4, 12, 1),
(115, 'Violeta', 'Peleckis ', 'F', '1987-10-21', ' 42520420, +44774014435,', 4, 12, 5),
(116, 'Tadas', 'Popova', 'M', '1985-12-26', ' 40174250,  42240125', 4, 12, 1),
(117, 'Viktorija', 'Grigaliūnaitė ', 'F', '1987-06-23', '1', 4, 12, 5),
(118, 'Kristina', 'Ivanovas ', 'F', '1986-04-03', '4724494', 4, 12, 1),
(119, 'Žilvinas', 'Drungilas ', 'M', '1987-08-18', '47444394', 4, 12, 1),
(120, 'Asta', 'Vepkojus ', 'F', '1985-04-11', ' 40534724,  40439947', 4, 15, 6),
(121, 'Laicity', 'Rutkauskas ', 'F', '1986-09-05', '42057220, 45744540', 4, 14, 1),
(122, 'Evelina', 'Andrulis ', 'F', '1987-06-01', '47714594, +3537134259', 4, 15, 1),
(123, 'Gitas', 'Dragūnas ', 'M', '1987-06-23', '42274401', 4, 16, 1),
(124, 'Mantas', 'Griciūnas ', 'M', '1986-11-26', '47 5431', 4, 16, 1),
(125, 'Vaida', 'Savičiūnaitė ', 'F', '1987-06-25', '47452432, +35357724405', 4, 13, 1),
(126, 'Kęstutis', 'Abromavičius ', 'M', '1987-05-23', '402039', 4, 15, 1),
(127, 'Renata', 'Budrys ', 'F', '1986-11-25', '44502974', 4, 15, 1),
(128, 'Maksimas', 'Dirvinskas ', 'M', '1987-08-16', '40437452', 4, 15, 1),
(129, 'Orinta', 'Giržadas ', 'F', '1987-04-11', '4747091', 4, 15, 1),
(130, 'Airida', 'Satkauskas ', 'F', '1987-10-01', '413441', 4, 15, 1),
(131, 'Aušrelė', 'Danikauskas ', 'F', '1987-05-01', '4557744', 4, 15, 1),
(132, 'Edvardas', 'Kryžanauskas ', 'M', '1987-01-04', '435033', 4, 15, 1),
(133, 'Tadas', 'Damanskienė', 'M', '1987-04-01', ' 404 72 374', 4, 15, 6),
(134, 'Renata', 'Grikšas ', 'F', '1987-06-05', '41174390', 4, 15, 1),
(135, 'Gediminas', 'Myčko ', 'M', '1985-05-25', '4450229', 4, 15, 6),
(136, 'Gediminas', 'Gediminas', 'M', '1988-08-16', '45773951', 4, 15, 1),
(137, 'Kęstutis', 'Kęstutis', 'M', '1986-07-04', '40444154', 4, 15, 1),
(138, 'Inga', 'Inga', 'F', '1988-12-16', '4129737', 4, 15, 5),
(139, 'Nijolė', 'Nijolė', 'F', '1989-01-07', '4144944', 4, 15, 1),
(140, 'Mantas', 'Mantas', 'M', '1988-11-07', '44597547', 4, 15, 1),
(141, 'Ilcity', 'Ilcity', 'F', '1989-01-29', ' 47 2574', 4, 15, 1),
(142, 'Ircity', 'Ircity', 'F', '1988-05-04', '1', 4, 15, 1),
(143, 'Nerijus', 'Nerijus', 'M', '1988-08-01', '441593', 4, 15, 1),
(144, 'Rita', 'Rita', 'F', '1989-01-24', '40041910', 4, 15, 1),
(145, 'Gediminas', 'Gediminas', 'M', '1987-08-10', ' 475 3554,  493 00113', 4, 15, 1),
(146, 'Edita', 'Edita', 'F', '1988-05-26', ' 44 7415,  41 40254', 4, 15, 6),
(147, 'Piotr', 'Piotr', 'M', '1988-02-05', ' 44127174,  45204214', 4, 15, 1),
(148, 'Jurgita', 'Jurgita', 'F', '1986-06-09', '41701542', 4, 15, 1),
(149, 'Jurgita', 'Jurgita', 'F', '1988-11-17', '4745132', 4, 15, 1),
(150, 'Ingrida', 'Ingrida', 'F', '1988-09-21', '474411', 4, 15, 6),
(151, 'Kęstutis', 'Kęstutis', 'M', '1987-10-18', '4521142', 4, 15, 7),
(152, 'Mantas', 'Mantas', 'M', '1988-04-07', '1', 4, 15, 1),
(153, 'Asta', 'Asta', 'F', '1980-02-04', '4343219', 4, 15, 1),
(154, 'Lina', 'Lina', 'F', '1986-12-27', '4090147', 5, 16, 1),
(155, 'Aleksandras', 'Aleksandras', 'M', '1988-08-01', '404 93705', 5, 16, 1),
(156, 'Linas', 'Šarlauskienė ', 'M', '1986-08-24', '40 4053', 5, 16, 2),
(157, 'Kornelijus', 'Glinskis ', 'M', '1988-07-17', '421147, 422 3194', 5, 16, 1),
(158, 'Žanas', 'Vilkas ', 'M', '1987-12-28', '4737133', 5, 12, 3),
(159, 'Marius', 'Tamašauskas ', 'M', '1987-12-11', '409 71434', 5, 16, 1),
(160, 'Marius', 'Romanovienė ', 'M', '1988-02-05', '401 92149', 5, 16, 1),
(161, 'Andrius', 'Šliožienė ', 'M', '1988-09-15', '47140952', 5, 10, 1),
(162, 'Ernesta', 'Savickas ', 'F', '1966-11-26', '474 443', 5, 16, 1),
(163, 'Donatas', 'Butėnienė ', 'M', '1969-12-08', '42770243', 5, 16, 1),
(164, 'Vidmantas', 'Kantauskaitė ', 'M', '1975-02-20', '47 52434', 5, 16, 1),
(165, 'Karolis', 'Pekarskas ', 'M', '1980-03-17', '470 34079, 4454450', 5, 16, 1),
(166, 'Vytautas', 'Stonytė ', 'M', '1979-04-28', '1', 5, 16, 5),
(167, 'Rokas', 'Gaigalas ', 'M', '1972-07-08', '41 114', 5, 16, 1),
(168, 'Airidas', 'Karkalienė ', 'M', '1971-10-18', '405 595', 5, 16, 1),
(169, 'Edvinas', 'Bogdan ', 'M', '1978-06-18', '473 79933', 5, 16, 1),
(170, 'Gintarė', 'Kavaliauskienė (Jankauskaitė)', 'F', '1975-06-10', '40115040', 5, 15, 1),
(171, 'Remigijus', 'Ponelienė ', 'M', '1975-12-02', '470 7540,  41 442119', 5, 15, 1),
(172, 'Sonata', 'Jasevičienė ', 'F', '1979-09-06', '475221, 4407975', 5, 1, 2),
(173, 'Nilvita', 'Gabrielaitis ', 'F', '1979-02-14', '49 2373', 5, 15, 1),
(174, 'Renata', 'Peleckis ', 'F', '1982-01-04', '475 45242', 5, 15, 1),
(175, 'Gediminas', 'Popova', 'M', '1980-10-02', '4774001', 5, 15, 5),
(176, 'Viktorija', 'Grigaliūnaitė ', 'F', '1960-05-03', '404 45454', 5, 15, 1),
(177, 'Tomas', 'Ivanovas ', 'M', '1984-12-25', '4029190', 5, 15, 1),
(178, 'Jolanta', 'Drungilas ', 'F', '1967-03-18', '47 72240', 5, 15, 1),
(179, 'Neringa', 'Vepkojus ', 'F', '1973-01-02', '49921335', 5, 15, 1),
(180, 'Rimantas', 'Rutkauskas ', 'M', '1984-02-11', '414 279', 5, 15, 1),
(181, 'Jovita', 'Andrulis ', 'F', '1977-03-05', '47034079, 47572311', 5, 15, 1),
(182, 'Artūras', 'Dragūnas ', 'M', '1972-09-07', '4450514', 5, 15, 1),
(183, 'Simona', 'Griciūnas ', 'F', '1983-06-26', '475 99259, 41 3907', 5, 15, 1),
(184, 'Deividas', 'Savičiūnaitė ', 'M', '1973-09-26', '434 9442', 5, 15, 1),
(185, 'Airida', 'Abromavičius ', 'F', '1980-06-10', '44 555', 5, 15, 1),
(186, 'Tomas', 'Budrys ', 'M', '1981-05-31', '45470307', 5, 15, 1),
(187, 'Rasa', 'Dirvinskas ', 'F', '1986-07-02', '475 73500', 5, 15, 1),
(188, 'Raimondas', 'Giržadas ', 'M', '1981-08-10', '42393935, 4443702', 5, 15, 1),
(189, 'Jurgita', 'Satkauskas ', 'F', '1986-08-09', '417 42479', 6, 8, 1),
(190, 'Audra', 'Danikauskas ', 'F', '1986-04-23', '413 23750', 6, 6, 1),
(191, 'Tomas', 'Kryžanauskas ', 'M', '1972-02-11', '421 53539', 6, 6, 1),
(192, 'Edgaras', 'Damanskienė', 'M', '1987-02-01', '42 52300', 6, 6, 1),
(193, 'Valdas', 'Grikšas ', 'M', '1983-05-08', '422057', 6, 3, 2),
(194, 'Andrius', 'Myčko ', 'M', '1983-08-07', '41 2471', 6, 6, 1),
(195, 'Inga', 'Šarlauskienė ', 'F', '1978-03-10', '4701094, 40173447', 6, 6, 1),
(196, 'Mindaugas', 'Glinskis ', 'M', '1978-08-31', '403 27537', 6, 10, 1),
(197, 'Kristina', 'Vilkas ', 'F', '1987-02-23', '45427555, 4934474', 6, 17, 1),
(198, 'Lina', 'Tamašauskas ', 'F', '1983-03-11', '41737400, 419 72024', 6, 6, 1),
(199, 'Miglė', 'Romanovienė ', 'F', '1979-04-16', '474 71013', 6, 10, 1),
(200, 'Daiva', 'Šliožienė ', 'F', '1981-01-24', '4740033', 6, 11, 1),
(201, 'Kęstutis', 'Savickas ', 'M', '1980-03-31', '4935330, 45151993', 6, 11, 1),
(202, 'Diana', 'Butėnienė ', 'F', '1972-02-11', '470 0923', 6, 12, 1),
(203, 'Ginas', 'Kantauskaitė ', 'M', '1986-09-06', '4040090', 6, 12, 5),
(204, 'Darius', 'Pekarskas ', 'M', '1987-08-01', '477 09541', 6, 12, 1),
(205, 'Romas', 'Stonytė ', 'M', '1967-10-12', '4207475', 6, 3, 2),
(206, 'Vytautas', 'Gaigalas ', 'M', '1968-06-10', '453 10110', 6, 16, 1),
(207, 'Aleksandras', 'Karkalienė ', 'M', '1982-07-16', '1', 6, 15, 1),
(208, 'Inga', 'Bogdan ', 'F', '1972-09-04', '43430523, 4311043', 6, 17, 5),
(209, 'Vilandas', 'Kavaliauskienė (Jankauskaitė)', 'M', '1985-07-18', '47454024', 6, 15, 1),
(210, 'Žaneta', 'Ponelienė ', 'F', '1987-08-25', '47 1235', 6, 16, 1),
(211, 'Airinė', 'Jasevičienė ', 'F', '1985-05-01', '47344225', 6, 15, 5),
(212, 'Jūratė', 'Gabrielaitis ', 'F', '1987-06-17', '42403403', 6, 3, 1),
(213, 'Sandra', 'Peleckis ', 'F', '1982-01-01', '472 94', 6, 15, 1),
(214, 'Justinas', 'Popova', 'F', '1980-04-14', '404 40744', 6, 15, 1),
(215, 'Vaidas', 'Grigaliūnaitė ', 'F', '1983-03-04', '4550475, 499 32405', 6, 15, 1),
(216, 'Vidas', 'Ivanovas ', 'M', '1987-04-22', '47213073, 4734520', 6, 15, 1),
(217, 'Ineta', 'Drungilas ', 'F', '1954-03-05', '473 1330', 6, 15, 1),
(218, 'Vilcity', 'Vepkojus ', 'F', '1987-07-08', '47110210, 432592', 6, 15, 1),
(219, 'Rasa', 'Rutkauskas ', 'F', '1982-05-09', '414 74450', 6, 15, 1),
(220, 'Tomas', 'Andrulis ', 'M', '1978-05-03', '471904', 6, 15, 1),
(221, 'Daiva', 'Dragūnas ', 'F', '1978-10-16', '44 5799', 6, 15, 1),
(222, 'Nerijus', 'Griciūnas ', 'M', '1987-10-01', '40599', 6, 15, 1),
(223, 'Jurgita', 'Savičiūnaitė ', 'F', '1980-08-27', '4302750', 6, 3, 1),
(224, 'Renatas', 'Abromavičius ', 'M', '1974-06-17', '454114', 6, 15, 1),
(225, 'Edita', 'Budrys ', 'M', '1972-03-20', '47723953, 473 02949', 1, 15, 1),
(226, 'Tomas', 'Dirvinskas ', 'M', '1987-06-20', '40 27129', 1, 15, 1),
(227, 'Lijana', 'Giržadas ', 'F', '1987-03-24', '4214715', 1, 3, 1),
(228, 'Mantautas', 'Satkauskas ', 'M', '1957-11-14', '43452504, 490 13391, 45 4710', 1, 15, 1),
(229, 'Rimas', 'Danikauskas ', 'M', '1979-08-01', '41014331', 1, 15, 1),
(230, 'Raimondas', 'Kryžanauskas ', 'M', '1978-01-25', '409 41320', 1, 15, 1),
(231, 'Rocity', 'Damanskienė', 'F', '1980-05-31', '403139', 1, 15, 1),
(232, 'Armandas', 'Grikšas ', 'M', '1976-06-13', '474 155, 445 55515', 1, 15, 1),
(233, 'Andrius', 'Myčko ', 'M', '1966-12-21', '444 11174', 1, 15, 5),
(234, 'Edita', 'Savičiūnaitė ', 'M', '1982-01-08', '40411214', 1, 15, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_student_group` (`groups_id`),
  ADD KEY `fk_student_city` (`city_id`),
  ADD KEY `fk_student_status` (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_city` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `fk_student_group` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `fk_student_status` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
