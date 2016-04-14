-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2016 at 10:04 AM
-- Server version: 5.6.23-log
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fantastic`
--

-- --------------------------------------------------------

--
-- Table structure for table `proizvod`
--

CREATE TABLE `proizvod` (
  `id` int(11) NOT NULL,
  `idTipZiv` int(11) NOT NULL,
  `idTipPr` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `cijena` double NOT NULL,
  `opis` text CHARACTER SET utf32 COLLATE utf32_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `proizvod`
--

INSERT INTO `proizvod` (`id`, `idTipZiv`, `idTipPr`, `naziv`, `cijena`, `opis`) VALUES
(1, 2, 2, 'Bomboni Blue Eye', 25, 'Bomboni Blue Eye su super super duper bomboni. Jestivi slatki fini njami.'),
(2, 1, 1, 'Cangan suha hrana', 85, 'Gentrify cold-pressed chambray intelligentsia nulla kitsch. Id XOXO gastropub franzen iPhone.'),
(3, 4, 4, 'MAP grit za ptice', 22, 'Chartreuse forage deserunt twee accusamus umami, odio disrupt mixtape jean shorts post-ironic esse.'),
(4, 3, 3, 'PYS krletka za glodavce', 550, 'Pabst cardigan reprehenderit hella +1 yr. Single-origin coffee tote bag fugiat'),
(5, 4, 3, 'Aquaristic vata - gruba', 24, 'Shoreditch tacos brunch, brooklyn sunt chillwave fanny pack mollit. Biodiesel aliqua etsy gastropub aute.'),
(6, 6, 2, 'TR sipina kost', 16, 'Ex non squid, quis pabst selvage incididunt fap brooklyn id fingerstache.'),
(7, 1, 3, 'Vodilica za pse - LANA', 210, 'Four dollar toast marfa occaecat yuccie.'),
(8, 1, 4, 'Bea šampon - antiitch', 65, 'Semiotics church-key gastropub, mustache keffiyeh quinoa exercitation stumptown vice banh mi veniam. '),
(9, 2, 4, 'Cat''s best - posip za mačke', 45, 'Ramps fingerstache fixie.'),
(10, 3, 1, 'MAG bunny carrota', 32, 'Food truck yuccie distillery, chicharrones wolf irony man bun.');

-- --------------------------------------------------------

--
-- Table structure for table `tipproizvoda`
--

CREATE TABLE `tipproizvoda` (
  `id` int(11) NOT NULL,
  `imePr` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `tipproizvoda`
--

INSERT INTO `tipproizvoda` (`id`, `imePr`) VALUES
(1, 'hrana'),
(2, 'poslastice'),
(3, 'oprema'),
(4, 'higijena'),
(5, 'ostalo');

-- --------------------------------------------------------

--
-- Table structure for table `tipzivotinje`
--

CREATE TABLE `tipzivotinje` (
  `id` int(11) NOT NULL,
  `imeZiv` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `tipzivotinje`
--

INSERT INTO `tipzivotinje` (`id`, `imeZiv`) VALUES
(1, 'pas'),
(2, 'mačka'),
(3, 'glodavci'),
(4, 'ptice'),
(5, 'ribice'),
(6, 'gmazovi'),
(7, 'ostalo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTipZiv` (`idTipZiv`),
  ADD KEY `idTipPr` (`idTipPr`);

--
-- Indexes for table `tipproizvoda`
--
ALTER TABLE `tipproizvoda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipzivotinje`
--
ALTER TABLE `tipzivotinje`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `proizvod`
--
ALTER TABLE `proizvod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tipproizvoda`
--
ALTER TABLE `tipproizvoda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tipzivotinje`
--
ALTER TABLE `tipzivotinje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
