-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 11:35 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `shoes_details`
--

CREATE TABLE `shoes_details` (
  `id` int(3) NOT NULL,
  `shoename` varchar(35) CHARACTER SET latin1 NOT NULL,
  `brandname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `shoedescription` varchar(255) NOT NULL,
  `shoecolor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shoesize` int(5) NOT NULL,
  `price` int(11) NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 NOT NULL,
  `rating` varchar(10) NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `image` text CHARACTER SET latin1 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoes_details`
--

INSERT INTO `shoes_details` (`id`, `shoename`, `brandname`, `shoedescription`, `shoecolor`, `gender`, `shoesize`, `price`, `link`, `rating`, `category`, `image`, `status`) VALUES
(4, 'Puma Smash v2', 'puma', 'drytfeuwyge hrjb isrkegcaxiwnkeljh axej akwxkehdbfw', 'white', 'Male', 9, 4500, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '5', 'casual', 'images.jpg', 1),
(5, 'Puma Smash v2 L2', 'puma', 'ayresxtkcgvhbknjkm', 'mixed-color', 'Male', 8, 4500, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '4', 'sneaker', 'images.jpg', 1),
(6, 'Puma Smash v2', 'puma', 'qzegdxhgvhbnnbghgdazdsfxhbn', 'black', 'Male', 10, 5000, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '5', 'sneaker', 'images.jpg', 1),
(7, 'Adidas Falcon', 'adidas', 'Colorful and stylish, adidas Falcon shoes have a chunky silhouette and retro look that was inspired by the 90s. Choose from many different bold colors and patterns, available in a variety of sizes.', 'blue', 'Male', 9, 2600, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '5', 'casual', 'images.jpg', 1),
(8, 'Adidas Falcon', 'adidas', 'Colorful and stylish, adidas Falcon shoes have a chunky silhouette and retro look that was inspired by the 90s. Choose from many different bold colors and patterns, available in a variety of sizes.', 'red', 'Male', 8, 2400, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '5', 'casual', 'images.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shoes_details`
--
ALTER TABLE `shoes_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shoes_details`
--
ALTER TABLE `shoes_details`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
