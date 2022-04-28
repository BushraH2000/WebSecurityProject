-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2022 at 04:35 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` int(11) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`id`, `itemName`, `description`, `quantity`, `price`, `img`) VALUES
(1, 'Antminer L7 (9.16Gh)', 'Model Antminer L7 (9.16Gh) from Bitmain mining Scrypt algorithm with a maximum hashrate of 9.16Gh/s for a power consumption of 3425W.', 3, '15000.00', '1AntminerL7.jpg'),
(2, 'Antminer S19j Pro (100Th)', 'Model Antminer S19j Pro (100Th) from Bitmain mining SHA-256 algorithm with a maximum hashrate of 100Th/s for a power consumption of 3050W.', 5, '16000.00', '2AntminerS19j.jpg'),
(3, 'Bitmain Antminer S19 Pro (110Th)', 'Antminer S19 Pro (110Th) from Bitmain mining SHA-256 algorithm with a maximum hashrate of 110Th/s for a power consumption of 3250W.                      ', 4, '16000.00', '3Avalon.jpg'),
(4, 'AvalonMiner 1126', 'Model AvalonMiner 1126 from Canaan mining SHA-256 algorithm with a maximum hashrate of 90Th/s for a power consumption of 3420W.', 2, '19000.00', '4Avalon.jpg'),
(5, 'Bitmain Antminer S17 (56Th)', 'Antminer S17 (56Th) from Bitmain mining SHA-256 algorithm with a maximum hashrate of 56Th/s for a power consumption of 2520W.', 1, '12000.00', '5Bitmain.jpg'),
(6, 'Bitmain Antminer S17 (53Th)', 'Antminer S17 (53Th) from mining SHA-256 algorithm with a maximum hashrate of 53Th/s for a power consumption of 2385W.', 6, '13000.00', '6Bitmain.jpg'),
(7, 'Bitmain Antminer S19 95th/s', 'Antminer S19 (95Th) from Bitmain mining SHA-256 algorithm with a maximum hashrate of 95Th/s for a power consumption of 3250W.\r\n', 3, '17000.00', '7Bitmain.jpg'),
(8, 'Bitmain Antminer S19 Pro (110Th)', 'Antminer S19 Pro (110Th) from Bitmain mining SHA-256 algorithm with a maximum hashrate of 110Th/s for a power consumption of 3250W.', 3, '19000.00', '8Bitmain.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` varchar(4) NOT NULL,
  `name` varchar(250) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `Pr` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `username`, `password`, `email`, `Pr`) VALUES
('3623', 'Noor', 'noor_h', 'Asld120!!@$', 'noorH@gmail.com', 'u'),
('3786', 'Ahmad', 'ahmd_906', 'Fghj1234!', 'ahmd699@gmail.com', 'a'),
('4347', 'asma1', 'asma11', 'as!!', 'asma11@gmail.com', 'u'),
('4796', 'alghadeer', 'alghadeer_SH', 'abnm1230!!', 'alghadeer90@gmail.com', 'u'),
('4890', 'bushra', 'bushra_12', 'bb11ms!!', 'bushra12@gmail.com', 'u'),
('4908', 'layan', 'layan_m', 'llmm33!', 'layanM@gmail.com', 'u'),
('5771', 'Adam', 'Adam@600', 'A600@mad!!', 'Adam_600@hotmail.com', 'a'),
('7645', 'safwan', 'safwan700', 'backscho11!', 'Safwan_56@gmail.com', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
