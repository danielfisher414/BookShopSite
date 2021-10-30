-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 02:12 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creditcard`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `#` int(11) NOT NULL,
  `ccnum` varchar(100) NOT NULL,
  `expdate` date NOT NULL,
  `seccode` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`#`, `ccnum`, `expdate`, `seccode`) VALUES
(1, 'a5sfethw6x98d6sk4jv0lms65h7cjshn', '2021-02-28', '389'),
(2, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2024-08-31', '431'),
(3, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2022-07-31', '123'),
(4, 'a0c5e36f07f997f19824f4aac70101ba', '2024-06-30', '421'),
(5, '78a50b24ff3cbf1d2c98409b023eb915', '2024-01-31', '321'),
(6, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2021-04-30', '222'),
(7, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2024-05-31', '222'),
(8, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2021-02-28', '222'),
(9, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-02-28', '1324'),
(10, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2021-07-31', '6413'),
(11, '76e99b37de7dd0dbdf4083169db38848', '2023-08-31', '9875'),
(12, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2021-10-31', '431'),
(13, '76e99b37de7dd0dbdf4083169db38848', '2022-12-31', '4313'),
(14, '1150ff8e07403e9e23f1184e33aa1160', '2021-11-30', '4212'),
(15, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2022-08-31', '4321'),
(16, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-08-31', '4313'),
(17, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2022-11-30', '431'),
(18, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-11-30', '531'),
(19, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-08-31', '431'),
(20, 'a0c5e36f07f997f19824f4aac70101ba', '2021-07-31', '4315'),
(21, 'aad9ce9b62a1f697745fcd81314b877f', '2023-12-31', '7645'),
(22, 'a0c5e36f07f997f19824f4aac70101ba', '2021-11-30', '5321'),
(23, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-11-30', '542'),
(24, 'a0c5e36f07f997f19824f4aac70101ba', '2021-10-31', '5341'),
(25, '46eb006d9d3b9a02dd3cccec82d4318c', '2023-11-30', '421'),
(26, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-08-31', '531'),
(27, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-11-30', '5321'),
(28, 'a0c5e36f07f997f19824f4aac70101ba', '2023-09-30', '231'),
(29, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-09-30', '531'),
(30, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-11-30', '5312'),
(31, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2021-02-28', '531'),
(32, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-09-30', '6431'),
(33, '78a50b24ff3cbf1d2c98409b023eb915', '2024-10-31', '5213'),
(34, 'bf2aa109e563c4cdc689d8fd19b2b7b1', '2023-11-30', '531');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`#`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
