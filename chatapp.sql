-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 03:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender` int(255) NOT NULL,
  `receiver` int(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `files` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `received` int(11) NOT NULL DEFAULT 0,
  `deleted_sender` int(11) NOT NULL DEFAULT 0,
  `deleted_receiver` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `receiver`, `message`, `files`, `date`, `seen`, `received`, `deleted_sender`, `deleted_receiver`) VALUES
(16, 1054835093, 1147233235, 'hi love', NULL, '2024-04-04', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `gender`, `img`, `status`, `date`) VALUES
(1, 1147233235, 'stephen', 'olumide', 'stephenkhalaf@gmail.com', 'password', 'male', '1711827917HD-wallpaper-jesus-christ-jesus-christ-christian-god-religious-thumbnail.jpg', 'Online', '2024-03-30'),
(2, 63084350, 'Talon', 'Murphy', 'your.email+fakedata73616@gmail.com', '34viOnJYj7mz4gZ', 'undefined', '1711802769GDgSvPtXIAAGWb_.jfif', 'Offline', '2024-03-30'),
(3, 1005966974, 'Keaton', 'Ratke', 'your.email+fakedata13510@gmail.com', '0xDov4foUlByIg_', 'undefined', '1711802817GEVoo-SXsAAbfWJ.jfif', 'Offline', '2024-03-30'),
(4, 87234661, 'Alessandra', 'kate', 'your.email+fakedata48782@gmail.com', 'Xq_pmZ4Sp80nYrR', 'female', '1711802844pexels-photo-6121448.jpeg', 'Offline', '2024-03-30'),
(5, 1054835093, 'jessica', 'lee', 'jessicalee@gmail.com', 'password', 'female', '1711976240pexels-photo-4046313.jpeg', 'Online', '2024-04-01'),
(6, 6256847, 'judith', 'obi', 'judith@gmail.com', 'password', 'female', '1711991753pexels-photo-4352249.jpeg', 'Online', '2024-04-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
