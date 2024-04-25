-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2024 at 05:06 AM
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
-- Table structure for table `bookmarked_item`
--

CREATE TABLE `bookmarked_item` (
  `item_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `cart_price`) VALUES
(1, 4, 28.14),
(2, 5, 0),
(3, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` varchar(50) NOT NULL,
  `name` varchar(35) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(150) NOT NULL,
  `quantity` varchar(5) NOT NULL,
  `brand` varchar(35) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `price`, `image`, `quantity`, `brand`, `description`) VALUES
('1', '2% Milk, PurFiltre', 5.29, 'https://product-images.metro.ca/images/hb8/h1b/11354247757854.jpg', '2L', 'Lactancia', NULL),
('2', 'Large White Eggs', 4.09, 'https://product-images.metro.ca/images/h4e/h1d/11168817872926.jpg', '12', 'Selection', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items_in_cart`
--

CREATE TABLE `items_in_cart` (
  `cart_id` int(11) NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `quantity_purchased` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items_in_cart`
--

INSERT INTO `items_in_cart` (`cart_id`, `item_id`, `quantity_purchased`) VALUES
(1, '1', 3),
(1, '2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `items_in_recipe`
--

CREATE TABLE `items_in_recipe` (
  `recipe_id` int(11) NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `quantity_needed` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_from_search_query`
--

CREATE TABLE `item_from_search_query` (
  `item_id` varchar(50) NOT NULL,
  `query` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_store_location`
--

CREATE TABLE `item_store_location` (
  `item_id` varchar(50) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `privacy_status` enum('public','private') NOT NULL DEFAULT 'public',
  `duration` varchar(10) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `user_id`, `title`, `content`, `date_created`, `privacy_status`, `duration`, `image`) VALUES
(2, 5, 'Rice', 'rice', '2024-04-25 01:58:59', 'public', '15 minutes', 0x2f6f70742f6c616d70702f6874646f63732f75706c6f6164732f363632396238653265623266365f696d616765352e6a7067),
(4, 5, 'Pizza', 'pizza', '2024-04-25 02:01:16', 'public', '30 minutes', 0x2f6f70742f6c616d70702f6874646f63732f75706c6f6164732f363632396239366334393133305f70697a7a612e6a7067),
(5, 5, 'Lasagna', 'cheese', '2024-04-25 02:50:01', 'private', '30 minutes', 0x2f6f70742f6c616d70702f6874646f63732f75706c6f6164732f363632396334643961633932355f696d616765372e6a7067),
(6, 6, 'Wine', 'wine cocktail recipe', '2024-04-25 02:55:57', 'public', '5 minutes', 0x2f6f70742f6c616d70702f6874646f63732f75706c6f6164732f363632396336336439653439655f696d61676531322e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `search_query`
--

CREATE TABLE `search_query` (
  `query` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_query`
--

INSERT INTO `search_query` (`query`) VALUES
('yogurt');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `city` text NOT NULL,
  `province` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_name`, `address`, `postal_code`, `city`, `province`) VALUES
(1, 'Metro', '740 Boulevard Cote Vertu', 'H4L 5C8', 'Montreal', 'Quebec'),
(2, 'Metro', '5150 Chem. de la Côte-des-Neiges', 'H3T 1X8', 'Montreal', 'Quebec');

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
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password_hash`, `first_name`, `last_name`, `address`, `street`, `postal_code`, `city`, `province`, `secret`) VALUES
(1, 'Damiano', '$2y$10$JOy2v91Im0Y0/GEKEfJhluK5jleiySVOxlslagtJsxlo1Pj1I7jg2', 'Damiano', 'Miloncini', '3456', 'BumBum', 'H8W1J1', 'Montreal', 'Quebec', NULL),
(2, 'Damiano33', '$2y$10$ajKGebUr6fqrsaQ5B8Eub.3CoV7olsJMYWbqmcnhcXj23ZiCJ8Rqa', 'Damiano', 'Miloncini', '', '', '', '', '', NULL),
(3, 'Damiano!', '$2y$10$z6uprSPVwFL3cxGv.bJAEuxxTbyzHGdTDPvykgGBeFX88lwPqdI2C', 'Damiano', 'Miloncini', '', '', '', '', '', NULL),
(4, 'Vanier', '$2y$10$5jaZmduRt9h6EzaA8vXeQeKPL8IV039Um8zElI0JkM1CvM36EkZ1G', 'Vanier', 'Location', '821', 'Sainte Croix Ave', 'H4L 3X9', 'Saint-Laurent', 'Quebec', NULL),
(5, 'sheldon', '$2y$10$874hb8DljYEXrRow9k0dT.KjzpdYH7uKIO7NLTC3CvsOuSl5YbP9W', '', '', NULL, NULL, NULL, NULL, NULL, 'YKV23PPBGC5RHIA6F2LG5YF7FB27DUSP'),
(6, 'sheldon2', '$2y$10$qhv1MviZvIe1U3we4I/HheHj4qJgdotM3sIe3u5wn/gE6llm5Mj7C', '', '', NULL, NULL, NULL, NULL, NULL, 'IGUY2SG4LOSYB6KCXVV54H3VIQBBSZ75');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarked_item`
--
ALTER TABLE `bookmarked_item`
  ADD PRIMARY KEY (`item_id`,`user_id`),
  ADD KEY `user_id_FOREIGN_KEY5` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id_FOREIGN_KEY` (`user_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `items_in_cart`
--
ALTER TABLE `items_in_cart`
  ADD PRIMARY KEY (`cart_id`,`item_id`),
  ADD KEY `item_id_FOREIGN_KEY3` (`item_id`);

--
-- Indexes for table `items_in_recipe`
--
ALTER TABLE `items_in_recipe`
  ADD PRIMARY KEY (`recipe_id`,`item_id`),
  ADD KEY `item_id_FOREIGN_KEY6` (`item_id`);

--
-- Indexes for table `item_from_search_query`
--
ALTER TABLE `item_from_search_query`
  ADD PRIMARY KEY (`item_id`,`query`),
  ADD KEY `search_query_FOREIGN_KEY` (`query`);

--
-- Indexes for table `item_store_location`
--
ALTER TABLE `item_store_location`
  ADD PRIMARY KEY (`item_id`,`store_id`),
  ADD KEY `store_id_FOREIGN_KEY2` (`store_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `user_id_FOREIGN_KEY2` (`user_id`);

--
-- Indexes for table `search_query`
--
ALTER TABLE `search_query`
  ADD PRIMARY KEY (`query`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookmarked_item`
--
ALTER TABLE `bookmarked_item`
  ADD CONSTRAINT `item_id_FOREIGN_KEY4` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_FOREIGN_KEY5` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `user_id_FOREIGN_KEY` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `items_in_cart`
--
ALTER TABLE `items_in_cart`
  ADD CONSTRAINT `cart_id_FOREIGN_KEY` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_id_FOREIGN_KEY3` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE NO ACTION;

--
-- Constraints for table `items_in_recipe`
--
ALTER TABLE `items_in_recipe`
  ADD CONSTRAINT `item_id_FOREIGN_KEY6` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_id_FOREIGN_KEY` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `item_from_search_query`
--
ALTER TABLE `item_from_search_query`
  ADD CONSTRAINT `item_id_FOREIGN_KEY` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `search_query_FOREIGN_KEY` FOREIGN KEY (`query`) REFERENCES `search_query` (`query`) ON DELETE CASCADE;

--
-- Constraints for table `item_store_location`
--
ALTER TABLE `item_store_location`
  ADD CONSTRAINT `item_id_FOREIGN_KEY2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `store_id_FOREIGN_KEY` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `store_id_FOREIGN_KEY2` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `user_id_FOREIGN_KEY2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
