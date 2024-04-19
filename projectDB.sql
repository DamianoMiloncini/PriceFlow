-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2024 at 08:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bookmarked_Item`
--

CREATE TABLE `Bookmarked_Item` (
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Item`
--

CREATE TABLE `Item` (
  `item_id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `price` float NOT NULL,
  `image` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `brand` varchar(35) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Items_In_Cart`
--

CREATE TABLE `Items_In_Cart` (
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity_purchased` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Items_In_Recipe`
--

CREATE TABLE `Items_In_Recipe` (
  `recipe_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity_needed` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Item_From_Search_Query`
--

CREATE TABLE `Item_From_Search_Query` (
  `item_id` int(11) NOT NULL,
  `search_query` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Item_Store_Location`
--

CREATE TABLE `Item_Store_Location` (
  `item_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Recipe`
--

CREATE TABLE `Recipe` (
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(500) NOT NULL,
  `date_created` date NOT NULL,
  `privacy_status` tinyint(1) NOT NULL DEFAULT 1,
  `duration` varchar(10) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Search_Query`
--

CREATE TABLE `Search_Query` (
  `search_query` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Store`
--

CREATE TABLE `Store` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `city` text NOT NULL,
  `province` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(72) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `address` varchar(10) DEFAULT NULL,
  `street` varchar(25) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `secret` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bookmarked_Item`
--
ALTER TABLE `Bookmarked_Item`
  ADD PRIMARY KEY (`item_id`,`user_id`),
  ADD KEY `user_id_FOREIGN_KEY5` (`user_id`);

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id_FOREIGN_KEY` (`user_id`);

--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `Items_In_Cart`
--
ALTER TABLE `Items_In_Cart`
  ADD PRIMARY KEY (`cart_id`,`item_id`),
  ADD KEY `item_id_FOREIGN_KEY3` (`item_id`);

--
-- Indexes for table `Items_In_Recipe`
--
ALTER TABLE `Items_In_Recipe`
  ADD PRIMARY KEY (`recipe_id`,`item_id`),
  ADD KEY `item_id_FOREIGN_KEY6` (`item_id`);

--
-- Indexes for table `Item_From_Search_Query`
--
ALTER TABLE `Item_From_Search_Query`
  ADD PRIMARY KEY (`item_id`,`search_query`),
  ADD KEY `search_query_FOREIGN_KEY` (`search_query`);

--
-- Indexes for table `Item_Store_Location`
--
ALTER TABLE `Item_Store_Location`
  ADD PRIMARY KEY (`item_id`,`store_id`),
  ADD KEY `store_id_FOREIGN_KEY2` (`store_id`);

--
-- Indexes for table `Recipe`
--
ALTER TABLE `Recipe`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `user_id_FOREIGN_KEY2` (`user_id`);

--
-- Indexes for table `Search_Query`
--
ALTER TABLE `Search_Query`
  ADD PRIMARY KEY (`search_query`);

--
-- Indexes for table `Store`
--
ALTER TABLE `Store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cart`
--
ALTER TABLE `Cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Item`
--
ALTER TABLE `Item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Recipe`
--
ALTER TABLE `Recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Store`
--
ALTER TABLE `Store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bookmarked_Item`
--
ALTER TABLE `Bookmarked_Item`
  ADD CONSTRAINT `item_id_FOREIGN_KEY4` FOREIGN KEY (`item_id`) REFERENCES `Item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_FOREIGN_KEY5` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `Cart`
--
ALTER TABLE `Cart`
  ADD CONSTRAINT `user_id_FOREIGN_KEY` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `Items_In_Cart`
--
ALTER TABLE `Items_In_Cart`
  ADD CONSTRAINT `cart_id_FOREIGN_KEY` FOREIGN KEY (`cart_id`) REFERENCES `Cart` (`cart_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_id_FOREIGN_KEY3` FOREIGN KEY (`item_id`) REFERENCES `Item` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `Items_In_Recipe`
--
ALTER TABLE `Items_In_Recipe`
  ADD CONSTRAINT `item_id_FOREIGN_KEY6` FOREIGN KEY (`item_id`) REFERENCES `Item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_id_FOREIGN_KEY` FOREIGN KEY (`recipe_id`) REFERENCES `Recipe` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `Item_From_Search_Query`
--
ALTER TABLE `Item_From_Search_Query`
  ADD CONSTRAINT `item_id_FOREIGN_KEY` FOREIGN KEY (`item_id`) REFERENCES `Item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `search_query_FOREIGN_KEY` FOREIGN KEY (`search_query`) REFERENCES `Search_Query` (`search_query`) ON DELETE CASCADE;

--
-- Constraints for table `Item_Store_Location`
--
ALTER TABLE `Item_Store_Location`
  ADD CONSTRAINT `item_id_FOREIGN_KEY2` FOREIGN KEY (`item_id`) REFERENCES `Item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `store_id_FOREIGN_KEY` FOREIGN KEY (`store_id`) REFERENCES `Store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `store_id_FOREIGN_KEY2` FOREIGN KEY (`store_id`) REFERENCES `Store` (`store_id`);

--
-- Constraints for table `Recipe`
--
ALTER TABLE `Recipe`
  ADD CONSTRAINT `user_id_FOREIGN_KEY2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
