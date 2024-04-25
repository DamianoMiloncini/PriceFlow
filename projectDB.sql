-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2024 at 02:28 PM
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
CREATE DATABASE IF NOT EXISTS `projectDB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projectDB`;

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
(1, 4, 28.14);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` varchar(50) NOT NULL,
  `name` varchar(70) NOT NULL,
  `price` varchar(25) NOT NULL,
  `image` varchar(150) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `brand` varchar(35) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `price`, `image`, `quantity`, `brand`, `description`) VALUES
('1', '2% Milk, PurFiltre', '5.29', 'https://product-images.metro.ca/images/hb8/h1b/11354247757854.jpg', '2L', 'Lactancia', NULL),
('2', 'Large White Eggs', '4.09', 'https://product-images.metro.ca/images/h4e/h1d/11168817872926.jpg', '12', 'Selection', NULL),
('metro055300110027', 'Skim Milk', '3.94', 'https://product-images.metro.ca/images/haf/h86/12230518308894.jpg', '2 L', 'Beatrice', NULL),
('metro055300110096', '1% Milk', '4.09', 'https://product-images.metro.ca/images/ha1/h45/12230527844382.jpg', '2 L', 'Beatrice', NULL),
('metro055300111000', '3.25% Milk', '7.93', 'https://product-images.metro.ca/images/ha6/hdc/12263404175390.jpg', '4 L', 'Beatrice', NULL),
('metro055300111024', 'Skim Milk', '6.87', 'https://product-images.metro.ca/images/h06/h4d/12263406272542.jpg', '4 L', 'Beatrice', NULL),
('metro055300111093', '1% Milk', '7.19', 'https://product-images.metro.ca/images/heb/h97/12263406403614.jpg', '4 L', 'Beatrice', NULL),
('metro055300113028', 'Skim Milk', '1.99', 'https://product-images.metro.ca/images/hc3/h87/12230527647774.jpg', '1 L', 'Beatrice', NULL),
('metro055300113097', '1% Milk', '2.08', 'https://product-images.metro.ca/images/h59/hbb/12230518407198.jpg', '1 L', 'Beatrice', NULL),
('metro055773004892', 'Frozen Potato, Bacon and Egg Bowl, 5-Minute Breakfast', '5.99', 'https://product-images.metro.ca/images/hfe/h46/12488456863774.jpg', '200 g', 'McCain', NULL),
('metro055800331878', 'Whitefish and Eggs Dry Cat Food, Grain Free', '14.99', 'https://product-images.metro.ca/images/h00/hf0/11477929164830.jpg', '1.36 kg', 'Beyond', NULL),
('metro057627000586', 'Authentic Italian Calabrese Bread, baked in store', '2 / ', 'https://product-images.metro.ca/images/h06/h2c/9264452370462.jpg', '200 g', 'Front Street Bakery', NULL),
('metro059749896047', 'Medium Eggs', '4.09', 'https://product-images.metro.ca/images/h22/h62/8833228079134.jpg', '12 un', 'Selection', NULL),
('metro059749896054', 'Large White Eggs', '4.09', 'https://product-images.metro.ca/images/h92/h5c/11168816922654.jpg', '12 un', 'Selection', NULL),
('metro059749896061', 'Extra Large White Eggs', '5.09', 'https://product-images.metro.ca/images/h9b/h7d/10390687154206.jpg', '12 un', 'Selection', NULL),
('metro059749896078', 'Large White Eggs', '5.99', 'https://product-images.metro.ca/images/h91/h18/11157658206238.jpg', '18 un', 'Selection', NULL),
('metro059749897594', 'Pita Breads', '2.49', 'https://product-images.metro.ca/images/hc4/hfe/9519054913566.jpg', '250 g', 'Selection', NULL),
('metro059749900898', 'Naan Bread', '2 / ', 'https://product-images.metro.ca/images/h8a/h4f/12716668878878.jpg', '240 g', 'Irresistibles', NULL),
('metro059749916332', 'Sliced White Bread, Soft', '2 / ', 'https://product-images.metro.ca/images/he2/he1/9760841367582.jpg', '675 g', 'Selection', NULL),
('metro059749916356', 'Whole Wheat Soft Sandwich Bread', '2 / ', 'https://product-images.metro.ca/images/h8f/h3a/9761057275934.jpg', '675 g', 'Selection', NULL),
('metro059749942249', 'Bread Crumbs', '2.49', 'https://product-images.metro.ca/images/h5a/h77/11520997949470.jpg', '425 g', 'Selection', NULL),
('metro059749948111', 'Evaporated Milk', '1.99', 'https://product-images.metro.ca/images/hb3/h8b/11642908704798.jpg', '354 mL', 'Selection', NULL),
('metro059749971256', 'Bread Crumbs, Gluten Free', '7.99', 'https://product-images.metro.ca/images/hb3/h74/9297524752414.jpg', '500 g', 'Life Smart', NULL),
('metro059749976817', 'Organic Large Brown Eggs, Free Range', '7.79', 'https://product-images.metro.ca/images/hbd/hd0/11205101813790.jpg', '12 un', 'Life Smart', NULL),
('metro059749976879', 'Large Eggs, Value Pack', '9.79', 'https://product-images.metro.ca/images/hb3/h7a/10784759742494.jpg', '30 un', 'Selection', NULL),
('metro059749992206', 'Large Eggs form Free Run Hens, Naturalia', '5.49', 'https://product-images.metro.ca/images/hed/ha3/12019041271838.jpg', '12 un', 'Life Smart', NULL),
('metro059749992237', 'Free Run Hence Large Eggs, Naturalia', '5.49', 'https://product-images.metro.ca/images/h08/hf7/12019061063710.jpg', '12 un', 'Life Smart', NULL),
('metro060569007018', 'Klosterbrot Monastery Rye Bread', '4.19', 'https://product-images.metro.ca/images/h8b/h17/9910162358302.jpg', '454 g', 'Dimpflmeier', NULL),
('metro061077771200', 'Ultra-Soft™ Sliced White Bread', '2.12 ', 'https://product-images.metro.ca/images/h84/hb8/11412543504414.jpg', '675 g', 'Pom', NULL),
('metro061077771248', 'Thick Sliced White Bread, Classico', '2 / ', 'https://product-images.metro.ca/images/hea/h99/10475417698334.jpg', '675 g', 'Villaggio', NULL),
('metro061077940095', 'Multigrain Bread, No Sugar, No Fat Added', '5.09', 'https://product-images.metro.ca/images/h28/ha1/12578143961118.jpg', '520 g', 'Bon Matin', NULL),
('metro061200016734', 'Milk Chocolate Bar with Mini Eggs® Candy, Dairy Milk', '4.99', 'https://product-images.metro.ca/images/hb2/hac/10454997565470.jpg', '152 g', 'Cadbury', NULL),
('metro061200033212', 'Milk Chocolate', '2 / ', 'https://product-images.metro.ca/images/h08/h07/11432780070942.jpg', '100 g', 'Jersey Milk', NULL),
('metro061454251158', 'Pickled Eggs', '5.29', 'https://product-images.metro.ca/images/hbf/hc3/8849235378206.jpg', '6 un', 'Labonté', NULL),
('metro061659001251', 'Italian Style Bread Crumbs', '4.29', 'https://product-images.metro.ca/images/h41/h4c/11386248724510.jpg', '680 g', 'Aurora', NULL),
('metro061719011053', 'Large Brown Eggs', '5.29', 'https://product-images.metro.ca/images/h54/hc2/10225164812318.jpg', '12 un', 'Nutri', NULL),
('metro061719011138', 'Free Run Hens Large Brown Eggs', '4.09', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '6 un', 'Nutri', NULL),
('metro061719011398', 'Free Run Hens Medium Brown Eggs', '9.69', 'https://product-images.metro.ca/images/hd1/h8e/10711377051678.jpg', '24 un', 'Nutri', NULL),
('metro061719011558', 'Large White Eggs', '5.99', 'https://product-images.metro.ca/images/h80/h59/10225165500446.jpg', '18 un', 'Nutri', NULL),
('metro061719011619', 'Medium Brown Eggs, Free Run Hen', '6.89', 'https://product-images.metro.ca/images/h23/h18/10225160781854.jpg', '12 un', 'Nutri', NULL),
('metro061719011695', 'Large White Eggs, Select', '6.49', 'https://product-images.metro.ca/images/h73/h6e/11937053540382.jpg', '12 un', 'Nutri', NULL),
('metro061719011763', 'Large Organic Brown Eggs', '7.79', 'https://product-images.metro.ca/images/h77/h12/11714269872158.jpg', '12 un', 'Nutri', NULL),
('metro061719011930', 'Large White Eggs, Free Run Hens', '5.49', 'https://product-images.metro.ca/images/h5d/h07/10217725165598.jpg', '12 un', 'Nutri', NULL),
('metro062020000613', 'Milk Chocolate Eggs with Surprise Toy', '2.99', 'https://product-images.metro.ca/images/ha4/hca/12191645204510.jpg', '3x20 g', 'Kinder Surprise', NULL),
('metro062020000620', 'Milk Chocolate Eggs with Surprise Toy', '2.99', 'https://product-images.metro.ca/images/h8e/hd2/12191645532190.jpg', '3x20 g', 'Kinder Surprise', NULL),
('metro063100479893', 'Frozen Breakfast Sausage Rounds', '8.99', 'https://product-images.metro.ca/images/h8f/h44/9522848497694.jpg', '375 g', 'Schneiders', NULL),
('metro063400030350', 'Thick sliced Italian style white bread', '5.49', 'https://product-images.metro.ca/images/h6e/he3/12738851340318.jpg', '675 g', 'D\'Italiano', NULL),
('metro063400138711', '14 Grains Sliced Bread', '5.49', 'https://product-images.metro.ca/images/hc8/h00/10399727976478.jpg', '600 g', 'Country Harvest', NULL),
('metro063562683654', 'Bread Pan', '19.99', 'https://product-images.metro.ca/images/h0f/hb9/10323547815966.jpg', '1 un', 'Trudeau', NULL),
('metro064420010117', '2% Milk, Fine-Filtered', '3.69', 'https://product-images.metro.ca/images/h10/he9/11241933602846.jpg', '1 L', 'Natrel', NULL),
('metro064420010124', '2% Milk, Fine-Filtered', '4.99', 'https://product-images.metro.ca/images/h5a/hfc/11241929932830.jpg', '2 L', 'Natrel', NULL),
('metro064420010148', '2% Milk, Fine-Filtered', '9.69', 'https://product-images.metro.ca/images/h12/h83/10255669428254.jpg', '4 L', 'Natrel', NULL),
('metro064420010216', '1% Milk, Fine-Filtered', '3.69', 'https://product-images.metro.ca/images/h5a/h7c/11241935372318.jpg', '1 L', 'Natrel', NULL),
('metro064420010223', '1% Milk, Fine filtered', '4.99', 'https://product-images.metro.ca/images/h39/he7/11241939271710.jpg', '2 L', 'Natrel', NULL),
('metro064420010247', '1% Milk, Fine-Filtered', '9.69', 'https://product-images.metro.ca/images/hdf/hfe/10221710409758.jpg', '4 L', 'Natrel', NULL),
('metro064420010315', 'Skim Milk, Fine-Filtered', '3.69', 'https://product-images.metro.ca/images/h8f/hc7/11241731719198.jpg', '1 L', 'Natrel', NULL),
('metro064420010322', 'Skim Milk, Fine-Filtered', '4.99', 'https://product-images.metro.ca/images/h3a/hc2/11241932029982.jpg', '2 L', 'Natrel', NULL),
('metro064420010346', 'Skim Milk, Fine-Filtered', '9.69', 'https://product-images.metro.ca/images/h2c/h2b/11714250571806.jpg', '4 L', 'Natrel', NULL),
('metro065651003831', 'Peeled Hard Boiled Eggs, Eggs2go!', '1.99', 'https://product-images.metro.ca/images/hc7/hba/9526465003550.jpg', '2x88 g', 'Burnbrae Farms', NULL),
('metro065651013007', 'Salt and Pepper Hard Boiled Peeled Eggs, Eggs 2 go!', '1.99', 'https://product-images.metro.ca/images/he7/ha1/9751135158302.jpg', '84 g', 'Burnbrae Farms', NULL),
('metro065651024225', 'Hard Boiled Peeled Eggs, Eggs2go!', '3.99', 'https://product-images.metro.ca/images/h5c/hcd/9527580098590.jpg', '6 un', 'Burnbrae Farms', NULL),
('metro066721026385', 'Cadbury Mini Eggs and Chocolate Chip Cookies', '6.49', 'https://product-images.metro.ca/images/he9/hf4/10389209055262.jpg', '460 g', 'Chips Ahoy!', NULL),
('metro068200010113', '2% Milk, PurFiltre', '2.99', 'https://product-images.metro.ca/images/h83/h1a/11354255753246.jpg', '1 L', 'Lactantia', NULL),
('metro068200010120', '2% Milk, PurFiltre', '5.29', 'https://product-images.metro.ca/images/hd1/hc0/11354246676510.jpg', '2 L', 'Lactantia', NULL),
('metro068200010144', '2% Milk, PurFiltre', '9.69', 'https://product-images.metro.ca/images/h63/h64/11354252214302.jpg', '4 L', 'Lactantia', NULL),
('metro068200010212', '1% Milk, PurFiltre', '2.99', 'https://product-images.metro.ca/images/hdd/h91/11354261520414.jpg', '1 L', 'Lactantia', NULL),
('metro068200010229', '1% Milk, PurFiltre', '5.29', 'https://product-images.metro.ca/images/h22/ha0/11354256015390.jpg', '2 L', 'Lactantia', NULL),
('metro068200010243', '1% Milk, PurFiltre', '9.69', 'https://product-images.metro.ca/images/hc9/h93/11354248544286.jpg', '4 L', 'Lactantia', NULL),
('metro068200010342', 'Skim Milk, PurFiltre', '9.69', 'https://product-images.metro.ca/images/h6f/hb8/11354261028894.jpg', '4 L', 'Lactantia', NULL),
('metro068200466019', '2% Milk, PurFiltre', '4.69', 'https://product-images.metro.ca/images/hd1/h50/11354269810718.jpg', '1.5 L', 'Lactantia', NULL),
('metro068200466033', '1% Milk, PurFiltre', '4.69', 'https://product-images.metro.ca/images/ha6/h7a/11354269351966.jpg', '1.5 L', 'Lactantia', NULL),
('metro068200466125', '2% Milk, UltraPur', '6.29', 'https://product-images.metro.ca/images/hf7/h1d/11354282950686.jpg', '1.5 L', 'Lactantia', NULL),
('metro068200550909', '2% Milk', '7.56', 'https://product-images.metro.ca/images/h83/he5/12263402536990.jpg', '4 L', 'Beatrice', NULL),
('metro068400000525', 'Avocado Oil Mayonnaise Type Dressing with a Hint of ...', '6.99', 'https://product-images.metro.ca/images/ha3/h23/12279429627934.jpg', '710 mL', 'Hellmann\'s', NULL),
('metro068400508656', 'Mayonnaise', '5.29', 'https://product-images.metro.ca/images/h2d/h81/11660190908446.jpg', '340 mL', 'Hellmann\'s', NULL),
('metro068400616603', 'Reduced Fat Light Mayonnaise Type Dressing', '6.99', 'https://product-images.metro.ca/images/hf2/h96/11660190941214.jpg', '750 mL', 'Hellmann\'s', NULL),
('metro068505110051', 'Quinoa bread', '2 / ', 'https://product-images.metro.ca/images/h93/he0/10268236218398.jpg', '550 g', 'St-Méthode', NULL),
('metro068721004004', 'Raisin bread', '2 / ', 'https://product-images.metro.ca/images/h1e/ha3/11488811810846.jpg', '450 g', 'Sun-Maid', NULL),
('metro084213000019', 'Pumpernickel Bread', '4.59', 'https://product-images.metro.ca/images/h55/hc4/11590655639582.jpg', '500 g', 'Mestemacher', NULL),
('metro084213000729', 'Rye bread', '4.59', 'https://product-images.metro.ca/images/h01/h11/9530440417310.jpg', '500 g', 'Mestemacher', NULL),
('metro084213011374', 'Protein Bread', '6.49', 'https://product-images.metro.ca/images/hab/h5f/9651886456862.jpg', '250 g', 'Mestemacher', NULL),
('metro209271', 'White Bread', '4.69', 'https://product-images.metro.ca/images/h8b/hee/8935511293982.jpg', '540 g', 'Merit', NULL),
('metro215172', 'Belgian bread', '4.69', 'https://product-images.metro.ca/images/h1c/h1c/8860245721118.jpg', '455 g', 'Merit', NULL),
('metro235557', 'Italian bread', '4.69', 'https://product-images.metro.ca/images/hb7/hf7/9279699877918.jpg', '455 g', 'Merit', NULL),
('metro244441', 'Belgian Bread', '4.69', 'https://product-images.metro.ca/images/h09/h16/11122254413854.jpg', '400 g', '', NULL),
('metro244545', 'Italian Bread', '4.69', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '400 g', '', NULL),
('metro629145082315', 'Flaxseed Bread', '6.99', 'https://product-images.metro.ca/images/h59/h9f/9961660547102.jpg', '525 g', 'Première Moisson', NULL),
('metro672774017470', 'Coconut Milk', '4.19', 'https://product-images.metro.ca/images/ha8/hb3/9742459142174.jpg', '400 mL', 'Blue Dragon', NULL),
('metro696685100021', 'Seeded Bread', '9.29', 'https://product-images.metro.ca/images/hf9/h0e/11449638191134.jpg', '544 g', 'Carbonaut', NULL),
('metro885250111115', 'Rye bread', '4.49', 'https://product-images.metro.ca/images/h4a/h9d/9005303037982.jpg', '340 g', 'Dunn\'s', NULL),
('metro890497000412', 'Naan Bread', '4.99', 'https://product-images.metro.ca/images/hb0/h51/12477353656350.jpg', '360 g', 'Stonefire', NULL),
('metro890497000870', 'Naan Bread', '4.99', 'https://product-images.metro.ca/images/h2f/ha8/12477466607646.jpg', '200 g', 'Stonefire', NULL);

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

--
-- Dumping data for table `item_from_search_query`
--

INSERT INTO `item_from_search_query` (`item_id`, `query`) VALUES
('metro055300110027', 'milk'),
('metro055300110096', 'milk'),
('metro055300111000', 'milk'),
('metro055300111024', 'milk'),
('metro055300111093', 'milk'),
('metro055300113028', 'milk'),
('metro055300113097', 'milk'),
('metro055773004892', 'eggs'),
('metro055800331878', 'eggs'),
('metro057627000586', 'please'),
('metro059749896047', 'eggs'),
('metro059749896054', 'eggs'),
('metro059749896061', 'eggs'),
('metro059749896078', 'eggs'),
('metro059749897594', 'please'),
('metro059749900898', 'please'),
('metro059749916332', 'please'),
('metro059749916356', 'please'),
('metro059749942249', 'please'),
('metro059749948111', 'milk'),
('metro059749971256', 'please'),
('metro059749976817', 'eggs'),
('metro059749976879', 'eggs'),
('metro059749992206', 'eggs'),
('metro059749992237', 'eggs'),
('metro060569007018', 'please'),
('metro061077771200', 'please'),
('metro061077771248', 'please'),
('metro061077940095', 'please'),
('metro061200016734', 'eggs'),
('metro061200033212', 'milk'),
('metro061454251158', 'eggs'),
('metro061659001251', 'please'),
('metro061719011053', 'eggs'),
('metro061719011138', 'eggs'),
('metro061719011398', 'eggs'),
('metro061719011558', 'eggs'),
('metro061719011619', 'eggs'),
('metro061719011695', 'eggs'),
('metro061719011763', 'eggs'),
('metro061719011930', 'eggs'),
('metro062020000613', 'eggs'),
('metro062020000620', 'eggs'),
('metro063100479893', 'eggs'),
('metro063400030350', 'please'),
('metro063400138711', 'please'),
('metro063562683654', 'please'),
('metro064420010117', 'milk'),
('metro064420010124', 'milk'),
('metro064420010148', 'milk'),
('metro064420010216', 'milk'),
('metro064420010223', 'milk'),
('metro064420010247', 'milk'),
('metro064420010315', 'milk'),
('metro064420010322', 'milk'),
('metro064420010346', 'milk'),
('metro065651003831', 'eggs'),
('metro065651013007', 'eggs'),
('metro065651024225', 'eggs'),
('metro066721026385', 'eggs'),
('metro068200010113', 'milk'),
('metro068200010120', 'milk'),
('metro068200010144', 'milk'),
('metro068200010212', 'milk'),
('metro068200010229', 'milk'),
('metro068200010243', 'milk'),
('metro068200010342', 'milk'),
('metro068200466019', 'milk'),
('metro068200466033', 'milk'),
('metro068200466125', 'milk'),
('metro068200550909', 'milk'),
('metro068400000525', 'eggs'),
('metro068400508656', 'eggs'),
('metro068400616603', 'eggs'),
('metro068505110051', 'please'),
('metro068721004004', 'please'),
('metro084213000019', 'please'),
('metro084213000729', 'please'),
('metro084213011374', 'please'),
('metro209271', 'please'),
('metro215172', 'please'),
('metro235557', 'please'),
('metro244441', 'please'),
('metro244545', 'please'),
('metro629145082315', 'please'),
('metro672774017470', 'milk'),
('metro696685100021', 'please'),
('metro885250111115', 'please'),
('metro890497000412', 'please'),
('metro890497000870', 'please');

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
  `date_created` date NOT NULL,
  `privacy_status` tinyint(1) NOT NULL DEFAULT 1,
  `duration` varchar(10) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('eggs'),
('milk'),
('please');

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
(4, 'Vanier', '$2y$10$5jaZmduRt9h6EzaA8vXeQeKPL8IV039Um8zElI0JkM1CvM36EkZ1G', 'Vanier', 'Location', '821', 'Sainte Croix Ave', 'H4L 3X9', 'Saint-Laurent', 'Quebec', NULL);

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
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
