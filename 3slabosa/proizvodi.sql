-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 07, 2016 at 08:34 AM
-- Server version: 5.7.8-rc
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proizvodi`
--

-- --------------------------------------------------------

--
-- Table structure for table `Karakteristike`
--

CREATE TABLE `Karakteristike` (
  `kar_id` int(11) NOT NULL,
  `naziv` text NOT NULL,
  `opis` text NOT NULL,
  `cijena` decimal(10,0) NOT NULL,
  `kar_zivotinja_tip_id` int(11) NOT NULL,
  `kar_proizvod_tip_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Karakteristike`
--

INSERT INTO `Karakteristike` (`kar_id`, `naziv`, `opis`, `cijena`, `kar_zivotinja_tip_id`, `kar_proizvod_tip_id`) VALUES
(1, 'bomboni Blue Eye', 'bomboni za životinj', '25', 1, 2),
(2, 'Cangan suha hrana', 'Suha hrana za životinje', '85', 1, 2),
(3, 'Krletka za ptice', 'Velika krletka za ptice', '200', 3, 3),
(4, 'Igračka za mačku - Poppy', 'Perjnata igračka za mačke', '15', 2, 5),
(5, 'Igračka za pse - Billy', 'Uže za griženje', '24', 1, 5),
(6, 'Vodilica za psa', 'Vodilica za psa - Lana', '78', 1, 3),
(7, 'Terarij', 'Terarij za gmazove', '300', 5, 3),
(8, 'Bea šampon', 'Šampon za pse', '47', 1, 4),
(9, 'Cat\'s best pijesak za mačke', 'Pijesak za mačke', '53', 2, 5),
(10, 'MAG Bunny Carrota', 'Poslastica za zečeve', '32', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Proizvodi_tip`
--

CREATE TABLE `Proizvodi_tip` (
  `proiz_id` int(11) NOT NULL,
  `proiz_tip` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Proizvodi_tip`
--

INSERT INTO `Proizvodi_tip` (`proiz_id`, `proiz_tip`) VALUES
(1, 'hrana'),
(2, 'poslastice'),
(3, 'oprema'),
(4, 'higijena'),
(5, 'ostalo');

-- --------------------------------------------------------

--
-- Table structure for table `Zivotinje_tip`
--

CREATE TABLE `Zivotinje_tip` (
  `ziv_id` int(11) NOT NULL,
  `ziv_tip` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Zivotinje_tip`
--

INSERT INTO `Zivotinje_tip` (`ziv_id`, `ziv_tip`) VALUES
(1, 'pas'),
(2, 'mačka'),
(3, 'ptice'),
(4, 'ribice'),
(5, 'gmazovi'),
(6, 'ostalo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Karakteristike`
--
ALTER TABLE `Karakteristike`
  ADD PRIMARY KEY (`kar_id`),
  ADD KEY `kar_zivotinja_tip_id` (`kar_zivotinja_tip_id`) USING BTREE,
  ADD KEY `kar_proizvod_tip_id` (`kar_proizvod_tip_id`),
  ADD KEY `kar_zivotinja_tip_id_2` (`kar_zivotinja_tip_id`),
  ADD KEY `kar_proizvod_tip_id_2` (`kar_proizvod_tip_id`) USING BTREE;

--
-- Indexes for table `Proizvodi_tip`
--
ALTER TABLE `Proizvodi_tip`
  ADD PRIMARY KEY (`proiz_id`);

--
-- Indexes for table `Zivotinje_tip`
--
ALTER TABLE `Zivotinje_tip`
  ADD PRIMARY KEY (`ziv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Karakteristike`
--
ALTER TABLE `Karakteristike`
  MODIFY `kar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Proizvodi_tip`
--
ALTER TABLE `Proizvodi_tip`
  MODIFY `proiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Zivotinje_tip`
--
ALTER TABLE `Zivotinje_tip`
  MODIFY `ziv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
