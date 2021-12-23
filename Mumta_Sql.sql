-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.tasks/
--
-- Host: 127.0.0.1
-- Generation Time: dec 20, 2021 at 02:03 PM
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
-- Database: `bankingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Saba', 'Anil', 20045, '2021-11-17 18:58:27'),
(2, 'sana', 'Mumta', 12400, '2021-04-17 19:00:31'),
(3, 'Ankit', 'Niky', 5000, '2021-04-17 19:01:32'),
(4, 'Saneet', 'Niky', 5000, '2021-04-17 19:06:15'),
(5, 'saba', 'sunny', 2045, '2021-12-24 00:48:01'),
(6, 'saba', 'sunny', 2000, '2021-12-24 00:48:35'),
(7, 'Arjun', 'karna', 50000, '2021-11-25 19:31:22'),
(8, 'Siddhu', 'Aman', 4520, '2021-11-30 07:39:58'),
(9, 'lata', 'Sana', 5200, '2021-12-15 09:37:08'),
(10, 'Saneet', 'Aman', 1200, '2021-12-20 11:52:18');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'saba', 'saba@gmail.com', 46600),
(2654, 'Aman', 'amna@gmail.com', 30620),
(3624, 'Geeta', 'geeta@gmail.com', 40000),
(4542, 'Arjun', 'arjun@gmail.com', 48800),
(5345, 'Sana', 'sana@gmail.com', 35000),
(5465, 'veena', 'veena@gmail.com', 49500),
(6554, 'baby', 'baby@gmail.com', 40000),
(7875, 'knooz', 'knooz@gmail.com', 49480),
(8877, 'anil', 'anil@gmail.com', 40000),
(9245, 'nand', 'nand@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
