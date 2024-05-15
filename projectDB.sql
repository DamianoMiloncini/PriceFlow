-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2024 at 06:13 AM
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

--
-- Dumping data for table `bookmarked_item`
--

INSERT INTO `bookmarked_item` (`item_id`, `user_id`) VALUES
('2', 11),
('metro055300110027', 11),
('metro055577103661', 13),
('metro064420010247', 11),
('metro064420010315', 11),
('metro068200466125', 11);

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
(3, 7, 0),
(4, 9, 0),
(5, 10, 0),
(6, 11, 49.68),
(7, 13, 0),
(8, 14, 0),
(9, 15, 32.43);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` varchar(50) NOT NULL,
  `name` varchar(70) NOT NULL,
  `price` varchar(25) NOT NULL,
  `image` varchar(150) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `brand` varchar(35) NOT NULL,
  `link` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `store` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `price`, `image`, `quantity`, `brand`, `link`, `description`, `store`) VALUES
('1', '2% Milk, PurFiltre', '5.29', 'https://product-images.metro.ca/images/hb8/h1b/11354247757854.jpg', '2L', 'Lactancia', '', NULL, ''),
('2', 'Large White Eggs', '4.09', 'https://product-images.metro.ca/images/h4e/h1d/11168817872926.jpg', '12', 'Selection', '', NULL, ''),
('metro012044011393', 'Pure Sport Scented Antiperspirant and Deodorant Stic...', '5.99', 'https://product-images.metro.ca/images/h74/h89/11734992945182.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/pure-sport-scented-antiperspirant-and-deodorant-stick/p/012044011393', NULL, ''),
('metro012044038703', 'Wolfthorn Scented Aluminum Free Deodorant Stick, Wil...', '8.99', 'https://product-images.metro.ca/images/h5c/h64/11511462232094.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/wolfthorn-scented-aluminum-free-deodorant-stick/p/012044038703', NULL, ''),
('metro012044038857', 'Fresh Scented Aluminum Free Deodorant Stick, High En...', '5.99', 'https://product-images.metro.ca/images/h87/hcd/10149354766366.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/fresh-scented-aluminum-free-deodorant-stick/p/012044038857', NULL, ''),
('metro012044038895', 'Original Scented Aluminum Free Deodorant Stick, High...', '5.99', 'https://product-images.metro.ca/images/h82/hbf/10149352931358.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/original-scented-aluminum-free-deodorant-stick/p/012044038895', NULL, ''),
('metro012044038925', 'Pure Sport Scented Aluminum Free Deodorant Stick, Hi...', '5.99', 'https://product-images.metro.ca/images/ha5/h27/10149354799134.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/pure-sport-scented-aluminum-free-deodorant-stick/p/012044038925', NULL, ''),
('metro018627597490', 'Toasted Berry Cereal, GOLEAN Crisp!', '7.49', 'https://product-images.metro.ca/images/h36/hda/10904131076126.jpg', '400 g', 'Kashi', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/toasted-berry-cereal/p/018627597490', NULL, ''),
('metro033383007410', 'Bag of Apples, Royal Gala', '6.99', 'https://product-images.metro.ca/images/h5f/h73/9232865820702.jpg', '3 lb', '', 'https://www.metro.ca/en/online-grocery/aisles/fruits-vegetables/fruits/apples-pears/bag-of-apples/p/033383007410', NULL, 'metro'),
('metro033383088044', 'Bag of Honey Crisp Apples', '7.99', 'https://product-images.metro.ca/images/h26/hc0/12771011592222.jpg', '3 lb', '', 'https://www.metro.ca/en/online-grocery/aisles/fruits-vegetables/fruits/apples-pears/bag-of-honey-crisp-apples/p/033383088044', NULL, 'metro'),
('metro033383465043', 'Bag of Apples, Ambrosia', '6.99', 'https://product-images.metro.ca/images/ha6/h00/10424155930654.jpg', '3 lb', '', 'https://www.metro.ca/en/online-grocery/aisles/fruits-vegetables/fruits/apples-pears/bag-of-apples/p/033383465043', NULL, 'metro'),
('metro037000808510', 'Protecting powder clear gel antiperspirant and deodo...', '7.79', 'https://product-images.metro.ca/images/h94/h08/9514249420830.jpg', '45 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/protecting-powder-clear-gel-antiperspirant-and-deodorant/p/037000808510', NULL, ''),
('metro037000850632', 'Clinical Smooth Solid Antiperspirant and Deodorant, ...', '9.49', 'https://product-images.metro.ca/images/hb2/ha5/11714237431838.jpg', '45 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/clinical-smooth-solid-antiperspirant-and-deodorant/p/037000850632', NULL, ''),
('metro039978001290', 'Textured Vegetable Proteins', '6.49', 'https://product-images.metro.ca/images/h6b/h9d/12578295447582.jpg', '340 g', 'Bob\'s Red Mill', 'https://www.metro.ca/en/online-grocery/aisles/vegan-vegetarian-food/tofu-tempeh-other-protein/textured-vegetable-proteins/p/039978001290', NULL, 'metro'),
('metro041143054352', 'Mixed Sour Berries Flavoured Raisin', '4.99', 'https://product-images.metro.ca/images/h9a/hed/10767371763742.jpg', '140 g', 'Sun-Maid', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/mixed-sour-berries-flavoured-raisin/p/041143054352', NULL, ''),
('metro047400668270', 'Cool Wave Scented Clear Gel Antiperspirant and Deodo...', '7.79', 'https://product-images.metro.ca/images/h36/h91/12018850955294.jpg', '108 g', 'Gillette', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/men-s-products/antiperspirant-deodorant/cool-wave-scented-clear-gel-antiperspirant-and-deodorant/p/047400668270', NULL, ''),
('metro047400668287', 'Power Rush Scented Clear Gel Antiperspirant and Deod...', '7.79', 'https://product-images.metro.ca/images/hba/hc2/12555809980446.jpg', '108 g', 'Gillette', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/men-s-products/antiperspirant-deodorant/power-rush-scented-clear-gel-antiperspirant-and-deodorant/p/047400668287', NULL, ''),
('metro055086602679', 'Powder Invisible Solid Antiperspirant', '7.99', 'https://product-images.metro.ca/images/h87/h04/11730380062750.jpg', '74 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/powder-invisible-solid-antiperspirant/p/055086602679', NULL, ''),
('metro055300110027', 'Skim Milk', '3.94', 'https://product-images.metro.ca/images/haf/h86/12230518308894.jpg', '2 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/055300110027', NULL, ''),
('metro055300110096', '1% Milk', '4.09', 'https://product-images.metro.ca/images/ha1/h45/12230527844382.jpg', '2 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/055300110096', NULL, ''),
('metro055300111000', '3.25% Milk', '7.93', 'https://product-images.metro.ca/images/ha6/hdc/12263404175390.jpg', '4 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/3-25-milk/p/055300111000', NULL, ''),
('metro055300111024', 'Skim Milk', '6.87', 'https://product-images.metro.ca/images/h06/h4d/12263406272542.jpg', '4 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/055300111024', NULL, ''),
('metro055300111093', '1% Milk', '7.19', 'https://product-images.metro.ca/images/heb/h97/12263406403614.jpg', '4 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/055300111093', NULL, ''),
('metro055300113028', 'Skim Milk', '1.99', 'https://product-images.metro.ca/images/hc3/h87/12230527647774.jpg', '1 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/055300113028', NULL, ''),
('metro055300113097', '1% Milk', '2.08', 'https://product-images.metro.ca/images/h59/hbb/12230518407198.jpg', '1 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/055300113097', NULL, ''),
('metro055577103661', 'Brown Sugar Instant Oatmeal, Dino Eggs', '3.49', 'https://product-images.metro.ca/images/he8/h1b/11307094212638.jpg', '8x38 g', 'Quaker', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/oatmeal-hot-cereals/brown-sugar-instant-oatmeal/p/055577103661', NULL, ''),
('metro055577113288', 'High Protein Regular Instant Oatmeal', '4.99', 'https://product-images.metro.ca/images/h9f/h55/12279859019806.jpg', '168 g', 'Quaker', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/oatmeal-hot-cereals/high-protein-regular-instant-oatmeal/p/055577113288', NULL, 'metro'),
('metro055773004892', 'Frozen Potato, Bacon and Egg Bowl, 5-Minute Breakfast', '5.99', 'https://product-images.metro.ca/images/hfe/h46/12488456863774.jpg', '200 g', 'McCain', 'https://www.metro.ca/en/online-grocery/aisles/frozen/fruit-vegetables/french-fries-onion-rings/frozen-potato-bacon-and-egg-bowl/p/055773004892', NULL, ''),
('metro055789006644', 'Rice Vermicelli', '3.99', 'https://product-images.metro.ca/images/h6a/h79/11432718696478.jpg', '300 g', 'Haiku', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/noodles-vermicelli/rice-vermicelli/p/055789006644', NULL, ''),
('metro055789720670', 'Coconut Milk', '2.29', 'https://product-images.metro.ca/images/hb7/hfa/9508893163550.jpg', '200 mL', 'Haiku', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/canned-powdered-milk/coconut-milk/p/055789720670', NULL, 'metro'),
('metro055800331878', 'Whitefish and Eggs Dry Cat Food, Grain Free', '14.99', 'https://product-images.metro.ca/images/h00/hf0/11477929164830.jpg', '1.36 kg', 'Beyond', 'https://www.metro.ca/en/online-grocery/aisles/pet-care/cats/dry-cat-food/whitefish-and-eggs-dry-cat-food/p/055800331878', NULL, ''),
('metro055872025187', '2% Milk', '5.29', 'https://product-images.metro.ca/images/h2e/h54/11401280520222.jpg', '2 L', 'Québon', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/055872025187', NULL, ''),
('metro055872035186', '1% Milk', '5.29', 'https://product-images.metro.ca/images/h83/hbd/11401276588062.jpg', '2 L', 'Québon', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/055872035186', NULL, ''),
('metro055872123012', '2% Milk', '1.89', 'https://product-images.metro.ca/images/hd0/h82/11274297344030.jpg', '473 mL', 'Québon', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/055872123012', NULL, ''),
('metro055989007991', 'Shampoo with Cicamide Protein', '4.99', 'https://product-images.metro.ca/images/hcc/he9/11036432236574.jpg', '385 mL', 'Personnelle', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/hair-care/shampoos-conditioners/shampoo-with-cicamide-protein/p/055989007991', NULL, 'metro'),
('metro055989008011', 'Conditionner with Cicamide Protein', '4.99', 'https://product-images.metro.ca/images/he2/h7e/11036499836958.jpg', '385 mL', 'Personnelle', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/hair-care/shampoos-conditioners/conditionner-with-cicamide-protein/p/055989008011', NULL, 'metro'),
('metro056100035145', 'Baby Powder Scented Antiperspirant And Deodorant Sti...', '5.99', 'https://product-images.metro.ca/images/hce/h87/9894676725790.jpg', '73 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/baby-powder-scented-antiperspirant-and-deodorant-stick/p/056100035145', NULL, ''),
('metro056100035190', 'Baby Powder Scented Antiperspirant and Deodorant Sti...', '5.29', 'https://product-images.metro.ca/images/ha2/h4c/9894673186846.jpg', '45 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/baby-powder-scented-antiperspirant-and-deodorant-stick/p/056100035190', NULL, ''),
('metro056100042495', 'Lavender Scented Gel Deodorant, Fresh Collection', '5.99', 'https://product-images.metro.ca/images/hc3/hec/9517951483934.jpg', '45 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/lavender-scented-gel-deodorant/p/056100042495', NULL, ''),
('metro056725138672', 'Jasmine Rice, World Classics', '7.49', 'https://product-images.metro.ca/images/hc7/h73/11693750485022.jpg', '900 g', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/056725138672', NULL, ''),
('metro056725138726', 'Basmati Rice, World Classics', '8.49', 'https://product-images.metro.ca/images/h8b/hf3/12196746231838.jpg', '900 g', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/056725138726', NULL, ''),
('metro056725250107', 'Jasmine Rice', '9.99', 'https://product-images.metro.ca/images/h56/h37/11693779025950.jpg', '1.6 kg', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/056725250107', NULL, ''),
('metro056725250152', 'Basmati Rice', '25.49', 'https://product-images.metro.ca/images/h84/hae/10715505328158.jpg', '3.63 kg', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/056725250152', NULL, ''),
('metro056725250169', 'Jasmine Rice', '25.49', 'https://product-images.metro.ca/images/h8c/h25/10715507228702.jpg', '3.63 kg', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/056725250169', NULL, ''),
('metro057000000837', 'Frozen Bacon and Egg Scramble with Cheddar Cheese, A...', '6.29', 'https://product-images.metro.ca/images/h55/hf7/11412607696926.jpg', '200 g', 'Crave', 'https://www.metro.ca/en/online-grocery/aisles/frozen/meals-sides/pork-lamb-meals/frozen-bacon-and-egg-scramble-with-cheddar-cheese/p/057000000837', NULL, ''),
('metro057627000586', 'Authentic Italian Calabrese Bread, baked in store', '2 / ', 'https://product-images.metro.ca/images/h06/h2c/9264452370462.jpg', '200 g', 'Front Street Bakery', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/authentic-italian-calabrese-bread/p/057627000586', NULL, ''),
('metro057700015551', 'Gummy Berries, Swedish Berries', '9.99', 'https://product-images.metro.ca/images/h94/hf3/10823033454622.jpg', '816 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/gummy-berries/p/057700015551', NULL, ''),
('metro057700017913', 'Gummy Berries, Swedish Berries', '2 / ', 'https://product-images.metro.ca/images/hb0/heb/12175838674974.jpg', '154 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/gummy-berries/p/057700017913', NULL, ''),
('metro057700017920', 'Cream Flavoured Gummy Berries, Swedish Berries', '2 / ', 'https://product-images.metro.ca/images/h47/he3/12175837724702.jpg', '154 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/cream-flavoured-gummy-berries/p/057700017920', NULL, ''),
('metro057700018095', 'Gummy Berries, Swedish Berries', '5.79', 'https://product-images.metro.ca/images/h7c/h90/12175795159070.jpg', '315 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/gummy-berries/p/057700018095', NULL, ''),
('metro057700215999', 'Gummy Berries, Swedish Berries', '1.79', 'https://product-images.metro.ca/images/hcb/h0d/9331653083166.jpg', '64 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/gummy-berries/p/057700215999', NULL, ''),
('metro058000002494', 'Original deodorant stick', '3.99', 'https://product-images.metro.ca/images/h10/h17/9517941391390.jpg', '70 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/original-deodorant-stick/p/058000002494', NULL, ''),
('metro058000007710', 'Active fresh deodorant stick', '5.99', 'https://product-images.metro.ca/images/hdf/hcf/12050596724766.jpg', '85 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/active-fresh-deodorant-stick/p/058000007710', NULL, ''),
('metro058000007727', 'Glacier® Deodorant Stick', '5.99', 'https://product-images.metro.ca/images/hf5/h43/11574048063518.jpg', '85 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/glacier-deodorant-stick/p/058000007727', NULL, ''),
('metro058000009264', 'Original deodorant stick', '5.99', 'https://product-images.metro.ca/images/h5e/hdb/11574053666846.jpg', '85 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/original-deodorant-stick/p/058000009264', NULL, ''),
('metro058000009271', 'Ocean surf deodorant stick', '5.99', 'https://product-images.metro.ca/images/h97/he4/11574051897374.jpg', '85 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/ocean-surf-deodorant-stick/p/058000009271', NULL, ''),
('metro058496459482', 'Jasmine Rice, Bistro Express', '3 / ', 'https://product-images.metro.ca/images/h88/hdf/12484447305758.jpg', '240 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/058496459482', NULL, ''),
('metro058496460044', 'Basmati Rice', '6.49', 'https://product-images.metro.ca/images/hfc/hd0/12484497702942.jpg', '400 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/basmati-rice/p/058496460044', NULL, ''),
('metro058496460068', 'Jasmine Rice', '6.49', 'https://product-images.metro.ca/images/h3f/h18/12484491051038.jpg', '460 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/058496460068', NULL, ''),
('metro058496460105', 'Basmati Rice', '9.99', 'https://product-images.metro.ca/images/hdf/h58/12484490690590.jpg', '1.6 kg', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/058496460105', NULL, ''),
('metro058496460129', 'Jasmine Rice', '9.99', 'https://product-images.metro.ca/images/h96/hea/12484494688286.jpg', '1.6 kg', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/058496460129', NULL, ''),
('metro058496464578', 'Jasmine Rice, Bistro Express', '6.29', 'https://product-images.metro.ca/images/hb4/h4b/12484514480158.jpg', '490 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/058496464578', NULL, ''),
('metro058496465865', 'Cheese Risotto', '4.99', 'https://product-images.metro.ca/images/h05/hfd/12629550268446.jpg', '240 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/cheese-risotto/p/058496465865', NULL, ''),
('metro058569150766', 'Apple Pie', '9.99', 'https://product-images.metro.ca/images/h64/hc0/11541040168990.jpg', '620 g', 'St-Donat Bakery', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/desserts-pastries/pies-tarts/apple-pie/p/058569150766', NULL, 'metro'),
('metro059000003115', 'Evaporated Milk', '2.99', 'https://product-images.metro.ca/images/h44/h29/12574197579806.jpg', '354 mL', 'Carnation', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/canned-powdered-milk/evaporated-milk/p/059000003115', NULL, ''),
('metro059100008027', 'Pre-Cooked Long Grain White Rice', '7.99', 'https://product-images.metro.ca/images/hf1/h86/12517240012830.jpg', '1.4 kg', 'Minute Rice', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/pre-cooked-long-grain-white-rice/p/059100008027', NULL, ''),
('metro059100008614', 'Ready-to-Serve Basmati Rice', '2 / ', 'https://product-images.metro.ca/images/h37/h65/12517240799262.jpg', '2x125 g', 'Minute Rice', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/ready-to-serve-basmati-rice/p/059100008614', NULL, ''),
('metro059100008621', 'Ready-to-Serve Long Grain and Wild Rice With Fine Herbs', '2 / ', 'https://product-images.metro.ca/images/h18/h7b/12680451784734.jpg', '2x125 g', 'Minute Rice', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/ready-to-serve-long-grain-and-wild-rice-with-fine-herbs/p/059100008621', NULL, ''),
('metro059323011002', 'Mild Roll-On Deodorant', '4.49', 'https://product-images.metro.ca/images/h39/h16/11849307291678.jpg', '50 ml', 'Ombra Spa', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/mild-roll-on-deodorant/p/059323011002', NULL, ''),
('metro059441001428', 'Mascarpone Cheese', '16.99', 'https://product-images.metro.ca/images/hb6/hdb/10821311168542.jpg', '475 g', 'Tre Stelle', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/soft-fresh/mascarpone-cheese/p/059441001428', NULL, ''),
('metro059441006362', 'Bocconcini Cheese', '6.99', 'https://product-images.metro.ca/images/h53/hce/10821287575582.jpg', '200 g', 'Tre Stelle', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/soft-fresh/bocconcini-cheese/p/059441006362', NULL, ''),
('metro059600048097', 'Apple Juice', '3.99', 'https://product-images.metro.ca/images/h94/h64/10529588805662.jpg', '8x200 mL', 'Minute Maid', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/juice-drinks-boxes/apple-juice/p/059600048097', NULL, 'metro'),
('metro059749875981', 'Frozen Mixed Berries', '3 / ', 'https://product-images.metro.ca/images/he8/h9e/9910116810782.jpg', '600 g', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/frozen/fruit-vegetables/fruit/frozen-mixed-berries/p/059749875981', NULL, ''),
('metro059749894326', 'Cream Cheese Brick', '3.49', 'https://product-images.metro.ca/images/h31/h97/10904125243422.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cream-cheese-spreads/cream-cheese-brick/p/059749894326', NULL, ''),
('metro059749894692', 'Cheese Sticks', '3.49', 'https://product-images.metro.ca/images/h14/h02/8821324283934.jpg', '285 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/snacks/salty-snacks/pretzels-cheese-puffs-mixes/cheese-sticks/p/059749894692', NULL, ''),
('metro059749896047', 'Medium Eggs', '4.09', 'https://product-images.metro.ca/images/h22/h62/8833228079134.jpg', '12 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/medium-eggs/p/059749896047', NULL, ''),
('metro059749896054', 'Large White Eggs', '4.09', 'https://product-images.metro.ca/images/h92/h5c/11168816922654.jpg', '12 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/059749896054', NULL, ''),
('metro059749896061', 'Extra Large White Eggs', '5.09', 'https://product-images.metro.ca/images/h9b/h7d/10390687154206.jpg', '12 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/extra-large-white-eggs/p/059749896061', NULL, ''),
('metro059749896078', 'Large White Eggs', '5.99', 'https://product-images.metro.ca/images/h91/h18/11157658206238.jpg', '18 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/059749896078', NULL, ''),
('metro059749897594', 'Pita Breads', '2.49', 'https://product-images.metro.ca/images/hc4/hfe/9519054913566.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/tortillas-flat-breads/pita-bread/pita-breads/p/059749897594', NULL, ''),
('metro059749900898', 'Naan Bread', '2 / ', 'https://product-images.metro.ca/images/h8a/h4f/12716668878878.jpg', '240 g', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/tortillas-flat-breads/flat-bread-naan/naan-bread/p/059749900898', NULL, ''),
('metro059749902359', 'Parboiled Long Grain Rice', '5.99', 'https://product-images.metro.ca/images/h39/h11/10183915044894.jpg', '2 kg', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/parboiled-long-grain-rice/p/059749902359', NULL, ''),
('metro059749902427', 'Long Grain White Rice', '14.99', 'https://product-images.metro.ca/images/hd5/h53/10183914946590.jpg', '8 kg', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/long-grain-white-rice/p/059749902427', NULL, ''),
('metro059749916332', 'Sliced White Bread, Soft', '2 / ', 'https://product-images.metro.ca/images/he2/he1/9760841367582.jpg', '675 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/sliced-white-bread/p/059749916332', NULL, ''),
('metro059749916356', 'Whole Wheat Soft Sandwich Bread', '2 / ', 'https://product-images.metro.ca/images/h8f/h3a/9761057275934.jpg', '675 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/whole-wheat-soft-sandwich-bread/p/059749916356', NULL, ''),
('metro059749931861', 'Goat\'s Milk Cheese, Artisan', '10.99', 'https://product-images.metro.ca/images/h29/h0d/11937049739294.jpg', '250 g', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/goat-sheep/goat-s-milk-cheese/p/059749931861', NULL, ''),
('metro059749942249', 'Bread Crumbs', '2.49', 'https://product-images.metro.ca/images/h5a/h77/11520997949470.jpg', '425 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/bread-crumbs-stuffing/bread-crumbs/p/059749942249', NULL, ''),
('metro059749948111', 'Evaporated Milk', '1.99', 'https://product-images.metro.ca/images/hb3/h8b/11642908704798.jpg', '354 mL', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/canned-powdered-milk/evaporated-milk/p/059749948111', NULL, 'metro'),
('metro059749948838', 'Cheese Crunchies', '3.49', 'https://product-images.metro.ca/images/h95/hcc/11257085886494.jpg', '265 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/snacks/salty-snacks/pretzels-cheese-puffs-mixes/cheese-crunchies/p/059749948838', NULL, ''),
('metro059749954105', 'Garlic and Herb Cream Cheese', '3.49', 'https://product-images.metro.ca/images/ha3/h70/10904139268126.jpg', '227 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cream-cheese-spreads/garlic-and-herb-cream-cheese/p/059749954105', NULL, ''),
('metro059749954259', 'Frozen Swedish Meatballs', '3.49', 'https://product-images.metro.ca/images/h84/h34/8933531779102.jpg', '255 g', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/frozen/meals-sides/beef-veal-meals/frozen-swedish-meatballs/p/059749954259', NULL, ''),
('metro059749957854', 'Apple Pie', '7.99', 'https://product-images.metro.ca/images/ha3/he5/11521597898782.jpg', '1 kg', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/desserts-pastries/pies-tarts/apple-pie/p/059749957854', NULL, 'metro'),
('metro059749957885', 'Apple Crumble', '7.99', 'https://product-images.metro.ca/images/h50/he9/11521564737566.jpg', '1 kg', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/desserts-pastries/pies-tarts/apple-crumble/p/059749957885', NULL, 'metro'),
('metro059749961967', 'Gouda Cheese', '2 / ', 'https://product-images.metro.ca/images/hb9/h72/9519477129246.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/gouda-cheese/p/059749961967', NULL, ''),
('metro059749962421', 'Swiss Cheese', '2 / ', 'https://product-images.metro.ca/images/hc7/h28/9519530115102.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/swiss-cheese/p/059749962421', NULL, ''),
('metro059749962728', 'Coconut Milk', '2 / ', 'https://product-images.metro.ca/images/h33/hac/9068117196830.jpg', '400 mL', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/canned-powdered-milk/coconut-milk/p/059749962728', NULL, 'metro'),
('metro059749965989', 'Basmati Rice', '2.99', 'https://product-images.metro.ca/images/h23/h02/9176615452702.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/059749965989', NULL, ''),
('metro059749969406', 'Old Cheddar Cheese', '2 / ', 'https://product-images.metro.ca/images/hdd/h04/9520127541278.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/old-cheddar-cheese/p/059749969406', NULL, ''),
('metro059749969444', 'Mozzarella Cheese', '2 / ', 'https://product-images.metro.ca/images/h5a/ha8/12578241642526.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/mozzarella-cheese/p/059749969444', NULL, ''),
('metro059749969451', 'Old Marble Cheddar Cheese', '2 / ', 'https://product-images.metro.ca/images/h01/h92/9520127868958.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/old-marble-cheddar-cheese/p/059749969451', NULL, ''),
('metro059749970174', 'Apple Juice', '3.29', 'https://product-images.metro.ca/images/h11/hd7/10300164276254.jpg', '8x200 mL', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/juice-drinks-boxes/apple-juice/p/059749970174', NULL, 'metro'),
('metro059749971256', 'Bread Crumbs, Gluten Free', '7.99', 'https://product-images.metro.ca/images/hb3/h74/9297524752414.jpg', '500 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/bread-crumbs-stuffing/bread-crumbs/p/059749971256', NULL, ''),
('metro059749974134', 'Frozen Mixed Berries, Organic', '3 / ', 'https://product-images.metro.ca/images/h03/h76/10188671025182.jpg', '300 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/organic-groceries/frozen-food/organic-fruits-vegetables/frozen-mixed-berries/p/059749974134', NULL, ''),
('metro059749974288', 'Frozen Mixed Berries, Naturalia', '3 / ', 'https://product-images.metro.ca/images/hc9/h93/10529651720222.jpg', '500 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/frozen/fruit-vegetables/fruit/frozen-mixed-berries/p/059749974288', NULL, ''),
('metro059749976398', 'Cheddar Cheese Slices', '4.29', 'https://product-images.metro.ca/images/hfc/h12/9825122320414.jpg', '410 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/sliced-cheese/cheddar-cheese-slices/p/059749976398', NULL, ''),
('metro059749976411', 'Sliced Swiss Cheese', '4.29', 'https://product-images.metro.ca/images/h81/ha7/9825228029982.jpg', '410 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/sliced-cheese/sliced-swiss-cheese/p/059749976411', NULL, ''),
('metro059749976817', 'Organic Large Brown Eggs, Free Range', '7.79', 'https://product-images.metro.ca/images/hbd/hd0/11205101813790.jpg', '12 un', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/organic-large-brown-eggs/p/059749976817', NULL, ''),
('metro059749976879', 'Large Eggs, Value Pack', '9.79', 'https://product-images.metro.ca/images/hb3/h7a/10784759742494.jpg', '30 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-eggs/p/059749976879', NULL, ''),
('metro059749978873', '1% Cottage Cheese', '3.49', 'https://product-images.metro.ca/images/h9a/hdc/10221839122462.jpg', '500 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cottage-cheese-ricotta/1-cottage-cheese/p/059749978873', NULL, ''),
('metro059749981019', 'Basmati Rice', '2.29', 'https://product-images.metro.ca/images/hce/h34/10911186518046.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/basmati-rice/p/059749981019', NULL, ''),
('metro059749981026', 'Jasmine Rice', '2.29', 'https://product-images.metro.ca/images/hfe/h78/10263613014046.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/059749981026', NULL, ''),
('metro059749981033', 'Brown Rice', '2.29', 'https://product-images.metro.ca/images/hee/h4d/10263579197470.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/brown-rice/p/059749981033', NULL, ''),
('metro059749981057', 'Basmati Rice, Organic', '2 / ', 'https://product-images.metro.ca/images/hd2/h34/10396270198814.jpg', '240 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/basmati-rice/p/059749981057', NULL, ''),
('metro059749984218', '2% Vanilla Greek Yogurt', '5.89', 'https://product-images.metro.ca/images/h15/h10/11521905885214.jpg', '750 g', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/yogurt/yogurt-tubs/2-vanilla-greek-yogurt/p/059749984218', NULL, 'metro'),
('metro059749985116', 'Red Berries Granola, Naturalia', '4.49', 'https://product-images.metro.ca/images/h11/h56/11122396004382.jpg', '300 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/red-berries-granola/p/059749985116', NULL, ''),
('metro059749990738', 'Cheese Bagel', '2 / ', 'https://product-images.metro.ca/images/h93/hf7/11503863300126.jpg', '340 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/muffins-bagels-baked-goods/bagels/cheese-bagel/p/059749990738', NULL, ''),
('metro059749992206', 'Large Eggs form Free Run Hens, Naturalia', '5.49', 'https://product-images.metro.ca/images/hed/ha3/12019041271838.jpg', '12 un', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-eggs-form-free-run-hens/p/059749992206', NULL, ''),
('metro059749992237', 'Free Run Hence Large Eggs, Naturalia', '5.49', 'https://product-images.metro.ca/images/h08/hf7/12019061063710.jpg', '12 un', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/free-run-hence-large-eggs/p/059749992237', NULL, ''),
('metro060410067659', 'Cheese Snack', '2.25', 'https://product-images.metro.ca/images/hf3/h6c/12245605515294.jpg', '140 g', 'Chester\'s', 'https://www.metro.ca/en/online-grocery/aisles/snacks/salty-snacks/chips/cheese-snack/p/060410067659', NULL, ''),
('metro060466853787', 'Organic Cream Cheese Spread', '3.99', 'https://product-images.metro.ca/images/h07/h84/10882781085726.jpg', '200 g', 'Tre Stelle', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cream-cheese-spreads/organic-cream-cheese-spread/p/060466853787', NULL, ''),
('metro060569007018', 'Klosterbrot Monastery Rye Bread', '4.19', 'https://product-images.metro.ca/images/h8b/h17/9910162358302.jpg', '454 g', 'Dimpflmeier', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/rye-other-grains/klosterbrot-monastery-rye-bread/p/060569007018', NULL, ''),
('metro061077302107', 'Thick Sliced White Bread, Artesano', '2 / ', 'https://product-images.metro.ca/images/hff/h9d/11549760094238.jpg', '600 g', 'Villaggio', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/thick-sliced-white-bread/p/061077302107', NULL, ''),
('metro061077771200', 'Ultra-Soft™ Sliced White Bread', '2 / ', 'https://product-images.metro.ca/images/h84/hb8/11412543504414.jpg', '675 g', 'Pom', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/ultra-soft-sliced-white-bread/p/061077771200', NULL, ''),
('metro061077771248', 'Thick Sliced White Bread, Classico', '2 / ', 'https://product-images.metro.ca/images/hea/h99/10475417698334.jpg', '675 g', 'Villaggio', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/thick-sliced-white-bread/p/061077771248', NULL, ''),
('metro061077781254', 'Sliced Raisin Bread with Cinnamon', '6.49', 'https://product-images.metro.ca/images/hc3/h24/11937065828382.jpg', '600 g', 'Pom', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/sliced-raisin-bread-with-cinnamon/p/061077781254', NULL, ''),
('metro061077856334', 'Protein Loaf, No Sugar, No Fat Added', '5.49', 'https://product-images.metro.ca/images/h70/h14/12578283552798.jpg', '600 g', 'Bon Matin', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/protein-loaf/p/061077856334', NULL, 'metro'),
('metro061077940095', 'Multigrain Bread, No Sugar, No Fat Added', '5.09', 'https://product-images.metro.ca/images/h28/ha1/12578143961118.jpg', '520 g', 'Bon Matin', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/multigrain-bread/p/061077940095', NULL, ''),
('metro061200016734', 'Milk Chocolate Bar with Mini Eggs® Candy, Dairy Milk', '4.99', 'https://product-images.metro.ca/images/hb2/hac/10454997565470.jpg', '152 g', 'Cadbury', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chocolate/milk-chocolate-bar-with-mini-eggs-candy/p/061200016734', NULL, ''),
('metro061454251158', 'Pickled Eggs', '5.29', 'https://product-images.metro.ca/images/hbf/hc3/8849235378206.jpg', '6 un', 'Labonté', 'https://www.metro.ca/en/online-grocery/aisles/pantry/canned-jarred/meats/pickled-eggs/p/061454251158', NULL, ''),
('metro061659001251', 'Italian Style Bread Crumbs', '4.29', 'https://product-images.metro.ca/images/h41/h4c/11386248724510.jpg', '680 g', 'Aurora', 'https://www.metro.ca/en/online-grocery/aisles/pantry/herbs-spices-sauces/breading-batters-coatings/italian-style-bread-crumbs/p/061659001251', NULL, ''),
('metro061719011053', 'Large Brown Eggs', '5.29', 'https://product-images.metro.ca/images/h54/hc2/10225164812318.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-brown-eggs/p/061719011053', NULL, ''),
('metro061719011138', 'Free Run Hens Large Brown Eggs', '4.09', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '6 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/free-run-hens-large-brown-eggs/p/061719011138', NULL, ''),
('metro061719011398', 'Free Run Hens Medium Brown Eggs', '9.69', 'https://product-images.metro.ca/images/hd1/h8e/10711377051678.jpg', '24 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/free-run-hens-medium-brown-eggs/p/061719011398', NULL, ''),
('metro061719011558', 'Large White Eggs', '5.99', 'https://product-images.metro.ca/images/h80/h59/10225165500446.jpg', '18 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/061719011558', NULL, ''),
('metro061719011619', 'Medium Brown Eggs, Free Run Hen', '6.89', 'https://product-images.metro.ca/images/h23/h18/10225160781854.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/medium-brown-eggs/p/061719011619', NULL, ''),
('metro061719011695', 'Large White Eggs, Select', '6.49', 'https://product-images.metro.ca/images/h73/h6e/11937053540382.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/061719011695', NULL, ''),
('metro061719011763', 'Large Organic Brown Eggs', '7.79', 'https://product-images.metro.ca/images/h77/h12/11714269872158.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/organic-eggs/large-organic-brown-eggs/p/061719011763', NULL, ''),
('metro061719011930', 'Large White Eggs, Free Run Hens', '5.49', 'https://product-images.metro.ca/images/h5d/h07/10217725165598.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/061719011930', NULL, ''),
('metro062020000613', 'Milk Chocolate Eggs with Surprise Toy', '2.99', 'https://product-images.metro.ca/images/ha4/hca/12191645204510.jpg', '3x20 g', 'Kinder Surprise', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chocolate/milk-chocolate-eggs-with-surprise-toy/p/062020000613', NULL, ''),
('metro062020000620', 'Milk Chocolate Eggs with Surprise Toy', '2.99', 'https://product-images.metro.ca/images/h8e/hd2/12191645532190.jpg', '3x20 g', 'Kinder Surprise', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chocolate/milk-chocolate-eggs-with-surprise-toy/p/062020000620', NULL, ''),
('metro062338805702', 'Country Berries Scented Oil', '9.49', 'https://product-images.metro.ca/images/h13/hb8/11714246737950.jpg', '20 mL', 'Air Wick', 'https://www.metro.ca/en/online-grocery/aisles/household-cleaning/general-household/air-fresheners/country-berries-scented-oil/p/062338805702', NULL, ''),
('metro062356540586', 'Basmati Rice', '18.99', 'https://product-images.metro.ca/images/hb2/h0e/9522396463134.jpg', '4.54 kg', '555', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/062356540586', NULL, ''),
('metro062356542504', 'Red Rice', '4.99', 'https://product-images.metro.ca/images/hb5/h58/9394501386270.jpg', '907 g', 'Cedar', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/red-rice/p/062356542504', NULL, ''),
('metro062356547653', 'Jasmine Rice, Phoenicia', '20.49', 'https://product-images.metro.ca/images/h9a/h37/9658277298206.jpg', '8 kg', 'Cedar', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/062356547653', NULL, ''),
('metro062390120133', 'Burrata Cheese', '15.99', 'https://product-images.metro.ca/images/h98/h30/12555737235486.jpg', '250 g', 'Bella Casara', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/mozzarella-feta/burrata-cheese/p/062390120133', NULL, ''),
('metro063400030350', 'Thick sliced Italian style white bread', '5.49', 'https://product-images.metro.ca/images/h6e/he3/12738851340318.jpg', '675 g', 'D\'Italiano', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/thick-sliced-italian-style-white-bread/p/063400030350', NULL, ''),
('metro063400138711', '14 Grains Sliced Bread', '5.49', 'https://product-images.metro.ca/images/hc8/h00/10399727976478.jpg', '600 g', 'Country Harvest', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/14-grains-sliced-bread/p/063400138711', NULL, ''),
('metro064100079847', 'Red Berries Cereal Jumbo Size, Special K', '10.99', 'https://product-images.metro.ca/images/hde/hb8/10918226788382.jpg', '700 g', 'Kellogg\'s', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/red-berries-cereal-jumbo-size/p/064100079847', NULL, ''),
('metro064100146679', 'Red Berries Cereal, Special K', '8.79', 'https://product-images.metro.ca/images/h3d/h47/11251192037406.jpg', '480 g', 'Kellogg\'s', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/red-berries-cereal/p/064100146679', NULL, ''),
('metro064100779068', 'Red Berries Cereal, Special K', '7.29', 'https://product-images.metro.ca/images/h23/hdb/12488321695774.jpg', '320 g', 'Kellogg\'s', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/red-berries-cereal/p/064100779068', NULL, ''),
('metro064420010025', '3.25% Milk, Fine-Filtered', '5.49', 'https://product-images.metro.ca/images/h43/h1a/12174878670878.jpg', '2 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/3-25-milk/p/064420010025', NULL, 'metro'),
('metro064420010124', '2% Milk, Fine-Filtered', '4.99', 'https://product-images.metro.ca/images/h5a/hfc/11241929932830.jpg', '2 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/064420010124', NULL, ''),
('metro064420010148', '2% Milk, Fine-Filtered', '9.49', 'https://product-images.metro.ca/images/h12/h83/10255669428254.jpg', '4 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/064420010148', NULL, 'metro'),
('metro064420010247', '1% Milk, Fine-Filtered', '9.69', 'https://product-images.metro.ca/images/hdf/hfe/10221710409758.jpg', '4 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/064420010247', NULL, ''),
('metro064420010315', 'Skim Milk, Fine-Filtered', '3.69', 'https://product-images.metro.ca/images/h8f/hc7/11241731719198.jpg', '1 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/064420010315', NULL, ''),
('metro064420010322', 'Skim Milk, Fine-Filtered', '4.99', 'https://product-images.metro.ca/images/h3a/hc2/11241932029982.jpg', '2 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/064420010322', NULL, ''),
('metro064420010346', 'Skim Milk, Fine-Filtered', '9.69', 'https://product-images.metro.ca/images/h2c/h2b/11714250571806.jpg', '4 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/064420010346', NULL, ''),
('metro064420320131', 'Vanilla Flavoured 2% Protein Milk, Plus', '5.99', 'https://product-images.metro.ca/images/hf5/hcc/12175529181214.jpg', '2 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/vanilla-flavoured-2-protein-milk/p/064420320131', NULL, 'metro'),
('metro064420320148', 'Lactose-Free 2% Protein Milk, Plus', '5.99', 'https://product-images.metro.ca/images/h3f/h70/11467525849118.jpg', '2 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/lactose-free-2-protein-milk/p/064420320148', NULL, 'metro'),
('metro064420320155', 'Lactose-Free 2% Chocolate Protein Milk, Plus', '5.99', 'https://product-images.metro.ca/images/h43/h98/11467525816350.jpg', '2 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/lactose-free-2-chocolate-protein-milk/p/064420320155', NULL, 'metro'),
('metro064819286420', 'Apple Jelly', '5.49', 'https://product-images.metro.ca/images/hbc/hf8/12738931163166.jpg', '500 mL', 'Dora', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/jams-jellies/apple-jelly/p/064819286420', NULL, 'metro'),
('metro065244133211', '1% Milk, Organic Nordic', '6.99', 'https://product-images.metro.ca/images/h7a/h33/11292676259870.jpg', '2 L', 'Nutrinor', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/065244133211', NULL, ''),
('metro065244133228', '2% Milk, Organic Nordic', '7.99', 'https://product-images.metro.ca/images/h50/h5a/11292677832734.jpg', '2 L', 'Nutrinor', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/065244133228', NULL, ''),
('metro065333002107', 'Cat litter deodorizer', '3.79', 'https://product-images.metro.ca/images/h14/ha1/9910100590622.jpg', '500 g', 'Arm & Hammer', 'https://www.metro.ca/en/online-grocery/aisles/pet-care/cats/wet-cat-food-care/cat-litter-deodorizer/p/065333002107', NULL, ''),
('metro065633158146', 'Triple Berry Flavoured Oat Cereal, Oatmeal Crisp', '3.99', 'https://product-images.metro.ca/images/h85/h3f/10715456339998.jpg', '399 g', 'General Mills', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/triple-berry-flavoured-oat-cereal/p/065633158146', NULL, ''),
('metro065633197978', 'Rice Cereals, Chex', '5.49', 'https://product-images.metro.ca/images/hce/h94/11714398060574.jpg', '340 g', 'General Mills', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/rice-cereals/p/065633197978', NULL, ''),
('metro065633437593', 'Peanut, Almond and Dark Chocolate Chewy Granola Bars...', '2 / ', 'https://product-images.metro.ca/images/hf7/h2d/11412516732958.jpg', '4 bars', 'Nature Valley', 'https://www.metro.ca/en/online-grocery/aisles/snacks/nuts-seeds-fruit/snack-bars/peanut-almond-and-dark-chocolate-chewy-granola-bars/p/065633437593', NULL, 'metro'),
('metro065633437616', 'Peanut Butter and Dark Chocolate Chewy Granola Bars,...', '2 / ', 'https://product-images.metro.ca/images/h2b/h57/11994736918558.jpg', '4 bars', 'Nature Valley', 'https://www.metro.ca/en/online-grocery/aisles/snacks/nuts-seeds-fruit/snack-bars/peanut-butter-and-dark-chocolate-chewy-granola-bars/p/065633437616', NULL, 'metro'),
('metro065651003831', 'Peeled Hard Boiled Eggs, Eggs2go!', '1.99', 'https://product-images.metro.ca/images/hc7/hba/9526465003550.jpg', '2x88 g', 'Burnbrae Farms', 'https://www.metro.ca/en/online-grocery/aisles/deli-prepared-meals/ready-meals-sides/appetizers-sides/peeled-hard-boiled-eggs/p/065651003831', NULL, ''),
('metro065651013007', 'Salt and Pepper Hard Boiled Peeled Eggs, Eggs 2 go!', '1.99', 'https://product-images.metro.ca/images/he7/ha1/9751135158302.jpg', '84 g', 'Burnbrae Farms', 'https://www.metro.ca/en/online-grocery/aisles/deli-prepared-meals/ready-meals-sides/appetizers-sides/salt-and-pepper-hard-boiled-peeled-eggs/p/065651013007', NULL, ''),
('metro065651024225', 'Hard Boiled Peeled Eggs, Eggs2go!', '3.99', 'https://product-images.metro.ca/images/h5c/hcd/9527580098590.jpg', '6 un', 'Burnbrae Farms', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/hard-boiled-peeled-eggs/p/065651024225', NULL, ''),
('metro066721026385', 'Cadbury Mini Eggs and Chocolate Chip Cookies', '6.49', 'https://product-images.metro.ca/images/he9/hf4/10389209055262.jpg', '460 g', 'Chips Ahoy!', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/cookies-cakes/cadbury-mini-eggs-and-chocolate-chip-cookies/p/066721026385', NULL, ''),
('metro067000004858', 'Mixed Berry Flavoured Sports Drink, Xion4', '2.69', 'https://product-images.metro.ca/images/he1/hf3/12174864941086.jpg', '710 mL', 'Powerade', 'https://www.metro.ca/en/online-grocery/aisles/beverages/sports-energy-drinks/sports-drinks/mixed-berry-flavoured-sports-drink/p/067000004858', NULL, '');
INSERT INTO `item` (`item_id`, `name`, `price`, `image`, `quantity`, `brand`, `link`, `description`, `store`) VALUES
('metro067002303980', 'Chocolate Flavoured Gluten Free Protein Bar', '12.99', 'https://product-images.metro.ca/images/h0a/h26/12210195038238.jpg', '6x50 g', 'Pure Protein', 'https://www.metro.ca/en/online-grocery/aisles/pharmacy/vitamins-supplements-dietary-products/meal-replacements-bars/chocolate-flavoured-gluten-free-protein-bar/p/067002303980', NULL, 'metro'),
('metro067002311756', 'Birthday Cake Flavoured Protein Bar', '12.99', 'https://product-images.metro.ca/images/haf/h4b/12263461224478.jpg', '6x50 g', 'Pure Protein', 'https://www.metro.ca/en/online-grocery/aisles/pharmacy/vitamins-supplements-dietary-products/meal-replacements-bars/birthday-cake-flavoured-protein-bar/p/067002311756', NULL, 'metro'),
('metro067311010180', 'Apple Juice, Classic', '6.29', 'https://product-images.metro.ca/images/hc9/h1b/10288350855198.jpg', '6x300 mL', 'Oasis', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/juice-drinks-boxes/apple-juice/p/067311010180', NULL, 'metro'),
('metro067311010326', 'Apple Juice', '4.49', 'https://product-images.metro.ca/images/h80/h4d/11513837584414.jpg', '8x200 mL', 'Oasis', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/juice-drinks-boxes/apple-juice/p/067311010326', NULL, 'metro'),
('metro067311010333', 'Apple Juice', '2.69', 'https://product-images.metro.ca/images/h88/h57/11513908625438.jpg', '960 mL', 'Oasis', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/shelf-juices-drinks/apple-juice/p/067311010333', NULL, 'metro'),
('metro067400623222', 'Beer Cheese', '10.49', 'https://product-images.metro.ca/images/h68/h3b/12175727362078.jpg', '190 g', 'Oka', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/firm-semi-soft/beer-cheese/p/067400623222', NULL, ''),
('metro067990500224', 'Moisturizing Shampoo with Keratin Protein', '4.99', 'https://product-images.metro.ca/images/ha4/hf0/11892971831326.jpg', '300 ml', 'Finesse', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/hair-care/shampoos-conditioners/moisturizing-shampoo-with-keratin-protein/p/067990500224', NULL, 'metro'),
('metro068100003499', 'Cheese Slices, Singles', '5.79', 'https://product-images.metro.ca/images/hd7/h31/9987151298590.jpg', '410 g', 'Kraft', 'https://www.metro.ca/en/online-grocery/aisles/value-pack/fresh-market/dairy-eggs/cheese-slices/p/068100003499', NULL, ''),
('metro068200010021', '3.25% Homogenized Milk, PurFiltre', '5.49', 'https://product-images.metro.ca/images/ha8/h42/11354244775966.jpg', '2 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/3-25-homogenized-milk/p/068200010021', NULL, 'metro'),
('metro068200010113', '2% Milk, PurFiltre', '2.99', 'https://product-images.metro.ca/images/h83/h1a/11354255753246.jpg', '1 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200010113', NULL, ''),
('metro068200010120', '2% Milk, PurFiltre', '5.29', 'https://product-images.metro.ca/images/hd1/hc0/11354246676510.jpg', '2 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200010120', NULL, ''),
('metro068200010144', '2% Milk, PurFiltre', '9.69', 'https://product-images.metro.ca/images/h63/h64/11354252214302.jpg', '4 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200010144', NULL, ''),
('metro068200010212', '1% Milk, PurFiltre', '2.99', 'https://product-images.metro.ca/images/hdd/h91/11354261520414.jpg', '1 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200010212', NULL, ''),
('metro068200010229', '1% Milk, PurFiltre', '5.29', 'https://product-images.metro.ca/images/h22/ha0/11354256015390.jpg', '2 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200010229', NULL, ''),
('metro068200010243', '1% Milk, PurFiltre', '9.69', 'https://product-images.metro.ca/images/hc9/h93/11354248544286.jpg', '4 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200010243', NULL, ''),
('metro068200010342', 'Skim Milk, PurFiltre', '9.69', 'https://product-images.metro.ca/images/h6f/hb8/11354261028894.jpg', '4 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/068200010342', NULL, ''),
('metro068200466033', '1% Milk, PurFiltre', '4.69', 'https://product-images.metro.ca/images/ha6/h7a/11354269351966.jpg', '1.5 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200466033', NULL, 'metro'),
('metro068200466125', '2% Milk, UltraPur', '6.29', 'https://product-images.metro.ca/images/hf7/h1d/11354282950686.jpg', '1.5 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200466125', NULL, ''),
('metro068200550503', 'High Protein Vanilla Milkshake', '4.49', 'https://product-images.metro.ca/images/hfa/h57/11590812205086.jpg', '460 mL', 'BFit', 'https://www.metro.ca/en/online-grocery/aisles/beverages/sports-energy-drinks/meal-replacements/high-protein-vanilla-milkshake/p/068200550503', NULL, 'metro'),
('metro068200550510', 'High Protein Chocolate Milkshake', '4.49', 'https://product-images.metro.ca/images/h3e/h4c/11590811713566.jpg', '460 mL', 'BFit', 'https://www.metro.ca/en/online-grocery/aisles/beverages/sports-energy-drinks/meal-replacements/high-protein-chocolate-milkshake/p/068200550510', NULL, 'metro'),
('metro068200550909', '2% Milk', '7.56', 'https://product-images.metro.ca/images/h83/he5/12263402536990.jpg', '4 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200550909', NULL, ''),
('metro068200550916', '2% Milk', '4.29', 'https://product-images.metro.ca/images/h7a/h85/12230526304286.jpg', '2 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200550916', NULL, ''),
('metro068200550923', '2% Milk', '2.17', 'https://product-images.metro.ca/images/hc1/h4d/12230524043294.jpg', '1 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200550923', NULL, ''),
('metro068200885513', 'Old Cheddar Cheese', '7.49', 'https://product-images.metro.ca/images/h0f/h00/12735377145886.jpg', '400 g', 'Black Diamond', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/old-cheddar-cheese/p/068200885513', NULL, ''),
('metro068400662907', 'Mayonnaise', '8.95', 'https://product-images.metro.ca/images/hbd/h7e/11344179626014.jpg', '1.42 L', 'Hellmann\'s', 'https://www.metro.ca/en/online-grocery/aisles/pantry/condiments-toppings/mayonnaise-sandwich-spreads/mayonnaise/p/068400662907', NULL, ''),
('metro068505110051', 'Quinoa bread', '2 / ', 'https://product-images.metro.ca/images/h93/he0/10268236218398.jpg', '550 g', 'St-Méthode', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/quinoa-bread/p/068505110051', NULL, ''),
('metro068700101298', 'Strawberry Banana Flavoured Protein Milkshake, Sport', '1.99', 'https://product-images.metro.ca/images/h96/hf9/10946096037918.jpg', '325 mL', 'Milk 2 Go', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/strawberry-banana-flavoured-protein-milkshake/p/068700101298', NULL, 'metro'),
('metro068700303388', 'Chocolate Milk Protein Shake, Sport', '1.99', 'https://product-images.metro.ca/images/hf6/h50/11860662255646.jpg', '325 mL', 'Milk 2 Go', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/chocolate-milk-protein-shake/p/068700303388', NULL, 'metro'),
('metro068700303395', 'Vanilla Flavoured Protein Milkshake, Sport', '1.99', 'https://product-images.metro.ca/images/h11/h65/11627057676318.jpg', '325 mL', 'Milk 2 Go', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/vanilla-flavoured-protein-milkshake/p/068700303395', NULL, 'metro'),
('metro068721004004', 'Raisin bread', '2 / ', 'https://product-images.metro.ca/images/h1e/ha3/11488811810846.jpg', '450 g', 'Sun-Maid', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/raisin-bread/p/068721004004', NULL, ''),
('metro070847896371', 'Wild Berry Tea Flavoured Energy Drink, Rehab', '4.29', 'https://product-images.metro.ca/images/hf1/h77/12436510638110.jpg', '473 mL', 'Monster', 'https://www.metro.ca/en/online-grocery/aisles/beverages/sports-energy-drinks/energy-drinks/wild-berry-tea-flavoured-energy-drink/p/070847896371', NULL, ''),
('metro071464280604', 'Berry Boost™ Fruit Juice Smoothie', '6.99', 'https://product-images.metro.ca/images/hf6/h17/9529687113758.jpg', '946 mL', 'Bolthouse Farms', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/smoothies-nectars/berry-boost-fruit-juice-smoothie/p/071464280604', NULL, ''),
('metro071464306519', 'Chocolate Protein Shake, Protein Plus', '7.99', 'https://product-images.metro.ca/images/h04/h0e/11754105634846.jpg', '946 mL', 'Bolthouse Farms', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/chocolate-protein-shake/p/071464306519', NULL, 'metro'),
('metro073416004337', 'Wild and Whole Grain Brown Rice Blend', '8.79', 'https://product-images.metro.ca/images/h86/h67/12083895730206.jpg', '454 g', 'Lundberg', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/wild-and-whole-grain-brown-rice-blend/p/073416004337', NULL, ''),
('metro079400020840', 'Dark Temptation® Deodorant Bodyspray', '6.99', 'https://product-images.metro.ca/images/h8f/he0/11461692653598.jpg', '113 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/dark-temptation-deodorant-bodyspray/p/079400020840', NULL, ''),
('metro079400077349', 'Adventure Scented Men Antiperspirant Deodorant Stick...', '5.99', 'https://product-images.metro.ca/images/hbc/h8e/12812627574814.jpg', '76 g', 'Degree', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/adventure-scented-men-antiperspirant-deodorant-stick/p/079400077349', NULL, ''),
('metro079400122636', 'Clean Comfort Antiperspirant Stick, Men+Care', '8.49', 'https://product-images.metro.ca/images/h0e/he4/12812625608734.jpg', '76 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/clean-comfort-antiperspirant-stick/p/079400122636', NULL, ''),
('metro079400264558', 'Apollo® Antiperspirant Stick, Dry', '6.99', 'https://product-images.metro.ca/images/he2/h4e/11570775916574.jpg', '76 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/apollo-antiperspirant-stick/p/079400264558', NULL, ''),
('metro079400264619', 'Apollo® Deodorant Stick, Fresh', '6.99', 'https://product-images.metro.ca/images/h80/h8b/11857598087198.jpg', '85 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/apollo-deodorant-stick/p/079400264619', NULL, ''),
('metro079400446077', 'Cool Essentials Dry Spray Antiperspirant, Advanced Care', '8.99', 'https://product-images.metro.ca/images/h04/ha4/12812623839262.jpg', '107 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/cool-essentials-dry-spray-antiperspirant/p/079400446077', NULL, ''),
('metro079400446190', 'Clean Comfort Dry Spray Antiperspirant, Men+Care', '8.99', 'https://product-images.metro.ca/images/hd2/hed/12812729286686.jpg', '107 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/clean-comfort-dry-spray-antiperspirant/p/079400446190', NULL, ''),
('metro079400462213', 'Aluminum-Free Green Tea and Cucumber Scented Deodora...', '8.99', 'https://product-images.metro.ca/images/h32/h69/12716699942942.jpg', '74 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/aluminum-free-green-tea-and-cucumber-scented-deodorant-stick/p/079400462213', NULL, ''),
('metro079400534309', 'Phoenix® Deodorant Stick, Fresh', '6.99', 'https://product-images.metro.ca/images/h13/h52/11570785746974.jpg', '85 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/phoenix-deodorant-stick/p/079400534309', NULL, ''),
('metro079400550200', 'Phoenix® Deodorant Bodyspray', '6.99', 'https://product-images.metro.ca/images/h27/he1/11730385633310.jpg', '113 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/phoenix-deodorant-bodyspray/p/079400550200', NULL, ''),
('metro084213000019', 'Pumpernickel Bread', '4.59', 'https://product-images.metro.ca/images/h55/hc4/11590655639582.jpg', '500 g', 'Mestemacher', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/pumpernickel-bread/p/084213000019', NULL, ''),
('metro084213000729', 'Rye bread', '4.59', 'https://product-images.metro.ca/images/h01/h11/9530440417310.jpg', '500 g', 'Mestemacher', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/rye-other-grains/rye-bread/p/084213000729', NULL, ''),
('metro084213011374', 'Protein Bread', '6.49', 'https://product-images.metro.ca/images/hab/h5f/9651886456862.jpg', '250 g', 'Mestemacher', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/protein-bread/p/084213011374', NULL, ''),
('metro088702009255', 'Mixed Berries Jam', '7.49', 'https://product-images.metro.ca/images/hf0/hdc/9529965051934.jpg', '250 mL', 'Bonne Maman', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/jams-jellies/mixed-berries-jam/p/088702009255', NULL, ''),
('metro204541', 'Raclette Cheese', '7.78', 'https://product-images.metro.ca/images/h11/h96/10967809130526.jpg', '1 piece', 'Oka', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/firm-semi-soft/raclette-cheese/p/204541', NULL, ''),
('metro209271', 'White Bread', '4.69', 'https://product-images.metro.ca/images/h8b/hee/8935511293982.jpg', '540 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/fresh-loaves-breads/white-bread/p/209271', NULL, ''),
('metro215172', 'Belgian bread', '4.69', 'https://product-images.metro.ca/images/h1c/h1c/8860245721118.jpg', '455 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/fresh-loaves-breads/belgian-bread/p/215172', NULL, ''),
('metro231695', 'Light Strawberry Yogurt with Berries and Granola', '4.99', 'https://product-images.metro.ca/images/h64/h5a/9014699589662.jpg', '295 g', 'metrogo!', 'https://www.metro.ca/en/online-grocery/aisles/fruits-vegetables/fresh-cut-fruits-vegetables/light-strawberry-yogurt-with-berries-and-granola/p/231695', NULL, ''),
('metro235557', 'Italian bread', '4.69', 'https://product-images.metro.ca/images/hb7/hf7/9279699877918.jpg', '455 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/italian-bread/p/235557', NULL, ''),
('metro238020', 'Parisian Bread', '4.49', 'https://product-images.metro.ca/images/h1a/h43/10265274056734.jpg', '468 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/fresh-loaves-breads/parisian-bread/p/238020', NULL, ''),
('metro238362', 'Red Berries Flavoured Mini Donuts', '3.69', 'https://product-images.metro.ca/images/ha8/h3e/10265603309598.jpg', '4x25 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/red-berries-flavoured-mini-donuts/p/238362', NULL, ''),
('metro241580', 'Apple Turnovers', '5.79', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '4x88 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/apple-turnovers/p/241580', NULL, 'metro'),
('metro242340', 'Red Berries Mini Donuts', '8.49', 'https://product-images.metro.ca/images/h02/h11/11073491599390.jpg', '10x25 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/red-berries-mini-donuts/p/242340', NULL, ''),
('metro243587', 'Cheese Rolls', '1.49', 'https://product-images.metro.ca/images/hf9/h57/11926819930142.jpg', '1 un', 'metrogo!', 'https://www.metro.ca/en/online-grocery/aisles/cooked-meals/ready-to-eat/prepared-meals/cheese-rolls/p/243587', NULL, ''),
('metro244441', 'Belgian Bread', '4.69', 'https://product-images.metro.ca/images/h09/h16/11122254413854.jpg', '400 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/rye-other-grains/belgian-bread/p/244441', NULL, ''),
('metro244545', 'Italian Bread', '4.69', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '400 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/rye-other-grains/italian-bread/p/244545', NULL, ''),
('metro244968', 'Apple Bites', '5.49', 'https://product-images.metro.ca/images/h64/he4/12743976747038.jpg', '12x26 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/apple-bites/p/244968', NULL, 'metro'),
('metro245293', 'Cheese Rolls', '8.49', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '6 un', 'Adonis', 'https://www.metro.ca/en/online-grocery/aisles/cooked-meals/ready-to-eat/prepared-meals/cheese-rolls/p/245293', NULL, ''),
('metro3341500006008', 'Blue Cheese', '9.79', 'https://product-images.metro.ca/images/h29/h4a/11735046193182.jpg', '125 g', 'St-Agur', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/blue-cheese-rocquefort/blue-cheese/p/3341500006008', NULL, ''),
('metro623798006506', 'Swedish Meatball', '10.49', 'https://product-images.metro.ca/images/h9e/hba/9992454963230.jpg', '305 g', '3 fois par jour', 'https://www.metro.ca/en/online-grocery/aisles/deli-prepared-meals/swedish-meatball/p/623798006506', NULL, ''),
('metro627022794054', 'Goji Berry Mixed Nuts', '9.99', 'https://product-images.metro.ca/images/h27/hd9/11849325674526.jpg', '350 g', 'Royal Nuts', 'https://www.metro.ca/en/online-grocery/aisles/fruits-vegetables/dried-fruits-nuts/goji-berry-mixed-nuts/p/627022794054', NULL, ''),
('metro628250431124', 'Berries and Nuts Energy Bar', '2.99', 'https://product-images.metro.ca/images/h26/hf9/11742494720030.jpg', '50 g', 'Näak', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/berries-and-nuts-energy-bar/p/628250431124', NULL, ''),
('metro628250795035', 'Cocoa Flavoured Protein Muscle Smoothie', '6.99', 'https://product-images.metro.ca/images/h6c/h41/9695673122846.jpg', '400 mL', 'Smooth Meals', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/smoothies-nectars/cocoa-flavoured-protein-muscle-smoothie/p/628250795035', NULL, 'metro'),
('metro628678650114', 'Apple Cider, Pinède', '16.49', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '750 mL', 'Cidrerie Au Pied de Cochon', 'https://www.metro.ca/en/online-grocery/aisles/beer-wine/beer-cider/cider/apple-cider/p/628678650114', NULL, 'metro'),
('metro628678762107', 'Butterscotch Flavoured Protein Bar', '11.99', 'https://product-images.metro.ca/images/h32/h9c/11754466672670.jpg', '240 g', 'Hugo Girard', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/butterscotch-flavoured-protein-bar/p/628678762107', NULL, 'metro'),
('metro629145082315', 'Flaxseed Bread', '6.99', 'https://product-images.metro.ca/images/h59/h9f/9961660547102.jpg', '525 g', 'Première Moisson', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/premiere-moisson/flaxseed-bread/p/629145082315', NULL, ''),
('metro667141000308', 'Apple Juice', '2.69', 'https://product-images.metro.ca/images/heb/h30/10503224098846.jpg', '350 mL', 'Héritage 77', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/refrigerated-juices-drinks/apple-juice/p/667141000308', NULL, 'metro'),
('metro669694130617', 'Chili Mix with Soy Protein', '7.99', 'https://product-images.metro.ca/images/h64/hb8/9658481082398.jpg', '322 g', 'Recipes in a Jar', 'https://www.metro.ca/en/online-grocery/aisles/vegan-vegetarian-food/pantry/chili-mix-with-soy-protein/p/669694130617', NULL, 'metro'),
('metro672774017470', 'Coconut Milk', '4.19', 'https://product-images.metro.ca/images/ha8/hb3/9742459142174.jpg', '400 mL', 'Blue Dragon', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/canned-powdered-milk/coconut-milk/p/672774017470', NULL, ''),
('metro672774106167', 'Rice Noodles', '4.69', 'https://product-images.metro.ca/images/hd5/h2d/11198188847134.jpg', '300 g', 'Blue Dragon', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/noodles-vermicelli/rice-noodles/p/672774106167', NULL, ''),
('metro696685100021', 'Seeded Bread', '9.29', 'https://product-images.metro.ca/images/hf9/h0e/11449638191134.jpg', '544 g', 'Carbonaut', 'https://www.metro.ca/en/online-grocery/aisles/frozen/bakery/bread-baked-goods/seeded-bread/p/696685100021', NULL, ''),
('metro722252606426', 'Chocolate Flavoured Protein Bar, Builder\'s', '2.69', 'https://product-images.metro.ca/images/h72/h55/11540933345310.jpg', '68 g', 'Clif Bar', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/chocolate-flavoured-protein-bar/p/722252606426', NULL, 'metro'),
('metro722252616449', 'Chocolate Mint Flavoured Protein Bars, Builder\'s', '31.99', 'https://product-images.metro.ca/images/hb3/h78/11511655301150.jpg', '12x68 g', 'Clif Bar', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/chocolate-mint-flavoured-protein-bars/p/722252616449', NULL, 'metro'),
('metro725299030414', 'Basmati Rice', '22.99', 'https://product-images.metro.ca/images/hd7/h68/10686005346334.jpg', '4.54 kg', 'Tilda', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/725299030414', NULL, ''),
('metro725299931179', 'Jasmine Rice', '3.69', 'https://product-images.metro.ca/images/h51/h16/12452416815134.jpg', '250 g', 'Tilda', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/725299931179', NULL, ''),
('metro737282363096', 'Wild about Berries Granola Clusters, Morning Crisp', '6.99', 'https://product-images.metro.ca/images/h5b/h40/12192240467998.jpg', '400 g', 'Jordans', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/wild-about-berries-granola-clusters/p/737282363096', NULL, ''),
('metro773479394870', 'Cheese Bagels', '2 / ', 'https://product-images.metro.ca/images/h9e/h74/12505749389342.jpg', '452 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/muffins-bagels-baked-goods/bagels/cheese-bagels/p/773479394870', NULL, ''),
('metro773889744876', 'Cheese Bagels', '2 / ', 'https://product-images.metro.ca/images/hd3/h74/10823481360414.jpg', '452 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/muffins-bagels-baked-goods/bagels/cheese-bagels/p/773889744876', NULL, ''),
('metro774304000928', 'Raisin challa twisted bread', '6.99', 'https://product-images.metro.ca/images/h56/h36/12770809151518.jpg', '625 g', 'Snowdon Bakery', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/raisin-challa-twisted-bread/p/774304000928', NULL, ''),
('metro775462176012', 'Apple Juice', '4.99', 'https://product-images.metro.ca/images/h4c/h0f/11754380492830.jpg', '1.5 L', 'Tradition', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/shelf-juices-drinks/apple-juice/p/775462176012', NULL, 'metro'),
('metro811620022224', 'Vanilla Flavoured Lactose Free Protein Milk Shake', '4.29', 'https://product-images.metro.ca/images/h8d/h95/12191801835550.jpg', '414 mL', 'Core Power', 'https://www.metro.ca/en/online-grocery/aisles/beverages/sports-energy-drinks/meal-replacements/vanilla-flavoured-lactose-free-protein-milk-shake/p/811620022224', NULL, 'metro'),
('metro811740000577', 'Kamut Grains & Raisin Sliced Bread', '5.49', 'https://product-images.metro.ca/images/hac/he7/10486549676062.jpg', '550 g', 'Inéwa', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/kamut-grains-raisin-sliced-bread/p/811740000577', NULL, ''),
('metro817351001538', 'Burratini Cheese', '8.00', 'https://product-images.metro.ca/images/h82/h35/10816557252638.jpg', '125 g', 'Bella Casara', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/soft-fresh/burratini-cheese/p/817351001538', NULL, ''),
('metro838766106700', 'Chocolate Flavoured Gluten Free Proteins, Protein & ...', '39.99', 'https://product-images.metro.ca/images/h74/h61/9751148068894.jpg', '521 g', 'Vega', 'https://www.metro.ca/en/online-grocery/aisles/pharmacy/vitamins-supplements-dietary-products/dietary-supplements/chocolate-flavoured-gluten-free-proteins/p/838766106700', NULL, 'metro'),
('metro838766106717', 'Vanilla Flavoured Proteins and Greens', '39.99', 'https://product-images.metro.ca/images/hbf/hb5/11937114849310.jpg', '526 g', 'Vega', 'https://www.metro.ca/en/online-grocery/aisles/pharmacy/vitamins-supplements-dietary-products/meal-replacements-bars/vanilla-flavoured-proteins-and-greens/p/838766106717', NULL, 'metro'),
('metro872214002039', 'Vanilla Flavoured Whey Protein Isolate Supplement', '67.99', 'https://product-images.metro.ca/images/h78/h97/9379186704414.jpg', '908 g', 'Hugo Girard', 'https://www.metro.ca/en/online-grocery/aisles/pharmacy/vitamins-supplements-dietary-products/meal-replacements-bars/vanilla-flavoured-whey-protein-isolate-supplement/p/872214002039', NULL, 'metro'),
('metro872214002053', 'H ISO+ Chocolate Flavoured Whey Isolate Protein', '67.99', 'https://product-images.metro.ca/images/ha7/h76/9379266789406.jpg', '908 g', 'Hugo Girard', 'https://www.metro.ca/en/online-grocery/aisles/pharmacy/vitamins-supplements-dietary-products/meal-replacements-bars/h-iso-chocolate-flavoured-whey-isolate-protein/p/872214002053', NULL, 'metro'),
('metro872214002091', 'Chocolate Flavoured Whey Protein Concentrate', '43.99', 'https://product-images.metro.ca/images/hc3/h96/9379151249438.jpg', '908 g', 'Hugo Girard', 'https://www.metro.ca/en/online-grocery/aisles/pharmacy/vitamins-supplements-dietary-products/meal-replacements-bars/chocolate-flavoured-whey-protein-concentrate/p/872214002091', NULL, 'metro'),
('metro877693003614', 'Organic Gluten Free Berries Cookies', '4.99', 'https://product-images.metro.ca/images/h5d/hd5/11292931588126.jpg', '120 g', 'Prana', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/cookies-cakes/organic-gluten-free-berries-cookies/p/877693003614', NULL, ''),
('metro885250111115', 'Rye bread', '4.49', 'https://product-images.metro.ca/images/h4a/h9d/9005303037982.jpg', '340 g', 'Dunn\'s', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/rye-other-grains/rye-bread/p/885250111115', NULL, ''),
('metro885320011017', 'Plant-Based Protein Macaroni Pasta', '5.99', 'https://product-images.metro.ca/images/h42/h1d/12578709176350.jpg', '227 g', 'GoGo Quinoa', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/pasta/plant-based-protein-macaroni-pasta/p/885320011017', NULL, 'metro'),
('metro890000001264', 'Apple and Berries Sauce Pouches', '2 / ', 'https://product-images.metro.ca/images/h81/h4b/10695653130270.jpg', '4x90 g', 'Gogo Squeez', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/apple-and-berries-sauce-pouches/p/890000001264', NULL, ''),
('metro890497000412', 'Naan Bread', '4.99', 'https://product-images.metro.ca/images/hb0/h51/12477353656350.jpg', '360 g', 'Stonefire', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/muffins-bagels-baked-goods/croissants-chocolatines/naan-bread/p/890497000412', NULL, ''),
('metro890497000870', 'Naan Bread', '4.99', 'https://product-images.metro.ca/images/h2f/ha8/12477466607646.jpg', '200 g', 'Stonefire', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/tortillas-flat-breads/flat-bread-naan/naan-bread/p/890497000870', NULL, ''),
('superc018627597636', 'Cereal, GOLEAN Crunch!', '5.99', 'https://product-images.metro.ca/images/h48/hf9/12488318189598.jpg', '390 g', 'Kashi', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/cereal/p/018627597636', NULL, 'superc'),
('superc018627597667', 'Original Cereal, GOLEAN', '5.99', 'https://product-images.metro.ca/images/h9a/hb2/11243926781982.jpg', '370 g', 'Kashi', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/original-cereal/p/018627597667', NULL, 'superc'),
('superc025583005303', 'Lightly Seasoned Plant-Based Chick\'n', '7.99', 'https://product-images.metro.ca/images/hc3/h7a/11461795610654.jpg', '227 g', 'Tofurky', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/lightly-seasoned-plant-based-chick-n/p/025583005303', NULL, 'superc'),
('superc029145009785', '100% Whole Wheat Round Loaf', '4.99', 'https://product-images.metro.ca/images/ha7/h66/11541093711902.jpg', '700 g', 'Première Moisson', 'https://www.superc.ca/en/aisles/bread-bakery-products/freshly-baked-bread-baguettes/premiere-moisson/100-whole-wheat-round-loaf/p/029145009785', NULL, 'superc'),
('superc031200046062', 'White Cranberry Juice', '5.29', 'https://product-images.metro.ca/images/h1f/hd4/10225193386014.jpg', '1.77 L', 'Ocean Spray', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/white-cranberry-juice/p/031200046062', NULL, 'superc'),
('superc031200046079', 'Cranberry Juice', '5.29', 'https://product-images.metro.ca/images/hfd/h1c/9894733021214.jpg', '1.77 L', 'Ocean Spray', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/cranberry-juice/p/031200046079', NULL, 'superc'),
('superc031200454683', 'Cranberry Juice', '7.79', 'https://product-images.metro.ca/images/h15/he5/10794067394590.jpg', '3 L', 'Ocean Spray', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/cranberry-juice/p/031200454683', NULL, 'superc'),
('superc032601505301', 'Bag of Organic Apples, Gala', '6.99', 'https://product-images.metro.ca/images/h67/h6f/10095601549342.jpg', '3 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-organic-apples/p/032601505301', NULL, 'superc'),
('superc033383001531', 'Bag of Granny Smith Apples, Granny Smith', '5.99', 'https://product-images.metro.ca/images/h50/h8b/10822745063454.jpg', '3 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-granny-smith-apples/p/033383001531', NULL, 'superc'),
('superc033383007410', 'Bag of Apples, Royal Gala', '6.99', 'https://product-images.metro.ca/images/h21/h48/9232866213918.jpg', '3 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-apples/p/033383007410', NULL, 'superc'),
('superc033383088044', 'Bag of Honey Crisp Apples', '6.99', 'https://product-images.metro.ca/images/h3e/h7d/12771012214814.jpg', '3 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-honey-crisp-apples/p/033383088044', NULL, 'superc'),
('superc033383441252', 'McIntosh Apples', '10.99', 'https://product-images.metro.ca/images/h94/hf1/12825343852574.jpg', '8 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/mcintosh-apples/p/033383441252', NULL, 'superc'),
('superc033383443515', 'Bag of Spartan Apples', '5.99', 'https://product-images.metro.ca/images/h1a/h33/8889256411166.jpg', '3 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-spartan-apples/p/033383443515', NULL, 'superc'),
('superc033383465043', 'Bag of Apples, Ambrosia', '5.99', 'https://product-images.metro.ca/images/hee/hde/10424156356638.jpg', '3 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-apples/p/033383465043', NULL, 'superc'),
('superc041331078221', 'Non-alcoholic malt beverage', '10.49', 'https://product-images.metro.ca/images/h22/h28/11521418723358.jpg', '6x355 mL', 'Malta Goya', 'https://www.superc.ca/en/aisles/beverages/soft-drinks/root-beer-spruce-beer/non-alcoholic-malt-beverage/p/041331078221', NULL, 'superc'),
('superc041757674199', 'Apple and Maple Fresh Cheese', '7.79', 'https://product-images.metro.ca/images/h02/h7d/12436254457886.jpg', '150 g', 'Boursin', 'https://www.superc.ca/en/aisles/dairy-eggs/deli-cheese/soft-fresh/apple-and-maple-fresh-cheese/p/041757674199', NULL, 'superc'),
('superc047834000066', 'Powdered Wasabi', '9.49', 'https://product-images.metro.ca/images/h4f/he7/11244101206046.jpg', '28 g', 'Sushi Chef', 'https://www.superc.ca/en/aisles/world-cuisine/asian/powdered-wasabi/p/047834000066', NULL, 'superc'),
('superc047834063085', 'Panko Bread Crumbs', '9.79', 'https://product-images.metro.ca/images/hd7/hd8/11244102746142.jpg', '227 g', 'Sushi Chef', 'https://www.superc.ca/en/aisles/fish-seafood/prepared-fish-seafood/sushi-fish-condiments/panko-bread-crumbs/p/047834063085', NULL, 'superc'),
('superc048500000250', 'Apple Juice', '1.99', '/images/shared/large/default--400x400.jpg?v=2024.2.sc.d12', '355 mL', 'Tropicana', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/refrigerated-juices-drinks/apple-juice/p/048500000250', NULL, 'superc'),
('superc048500000267', 'Grape Juice', '1.99', '/images/shared/large/default--400x400.jpg?v=2024.2.sc.d12', '355 mL', 'Tropicana', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/refrigerated-juices-drinks/grape-juice/p/048500000267', NULL, 'superc'),
('superc051500420560', 'Whole Wheat Specialty Flour', '6.49', 'https://product-images.metro.ca/images/hbc/h00/10938836811806.jpg', '2.5 kg', 'Five Roses', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/flour-baking-essentials/whole-wheat-specialty-flour/p/051500420560', NULL, 'superc'),
('superc055598561204', 'Molasse Cookie', '5.99', 'https://product-images.metro.ca/images/hb7/h93/12473559318558.jpg', '500 g', 'La Petite Bretonne', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/cookies-scones/molasse-cookie/p/055598561204', NULL, 'superc'),
('superc055653173250', 'Coconut Cookies, Breaktime', '1.99', 'https://product-images.metro.ca/images/hc4/h4b/11351748575262.jpg', '250 g', 'Dare', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/coconut-cookies/p/055653173250', NULL, 'superc'),
('superc055653173359', 'Oatmeal Cookies, Breaktime', '1.99', 'https://product-images.metro.ca/images/haf/h9c/11274423435294.jpg', '250 g', 'Dare', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/oatmeal-cookies/p/055653173359', NULL, 'superc'),
('superc055712100142', 'Whole Wheat Cereals', '5.79', 'https://product-images.metro.ca/images/hda/h62/11205006622750.jpg', '400 g', 'Weetabix', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/whole-wheat-cereals/p/055712100142', NULL, 'superc'),
('superc055789720724', 'Udon Wheat Noodles', '2.49', 'https://product-images.metro.ca/images/h9f/h32/10184282538014.jpg', '300 g', 'Haiku', 'https://www.superc.ca/en/aisles/world-cuisine/asian/udon-wheat-noodles/p/055789720724', NULL, 'superc'),
('superc055789720731', 'Ramen Wheat Noodles', '2.49', 'https://product-images.metro.ca/images/h2b/hc8/11521648197662.jpg', '300 g', 'Haiku', 'https://www.superc.ca/en/aisles/world-cuisine/asian/ramen-wheat-noodles/p/055789720731', NULL, 'superc'),
('superc055872024012', '2% Milk', '2.26', 'https://product-images.metro.ca/images/hed/he9/11274292297758.jpg', '1 L', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/055872024012', NULL, 'superc'),
('superc055872025019', '2% Milk', '4.45', 'https://product-images.metro.ca/images/h73/hc8/11274290429982.jpg', '2 L', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/055872025019', NULL, 'superc'),
('superc055872025187', '2% Milk', '4.45', 'https://product-images.metro.ca/images/h38/hf6/11401281011742.jpg', '2 L', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/055872025187', NULL, 'superc'),
('superc055872026016', '2% Milk', '7.87', 'https://product-images.metro.ca/images/h2c/he0/11274283057182.jpg', '4 L', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/055872026016', NULL, 'superc'),
('superc055872094015', '1% Chocolate Milk', '2.49', 'https://product-images.metro.ca/images/h2f/hb4/11274284826654.jpg', '1 L', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/1-chocolate-milk/p/055872094015', NULL, 'superc'),
('superc055872102185', '1% Chocolate Milk, Fine-Filtered', '6.49', 'https://product-images.metro.ca/images/h68/he3/11816802975774.jpg', '6x200 mL', 'Natrel', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/1-chocolate-milk/p/055872102185', NULL, 'superc'),
('superc055872105186', '1% Chocolate Milk', '4.49', 'https://product-images.metro.ca/images/h9d/h5d/11816806645790.jpg', '2 L', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/1-chocolate-milk/p/055872105186', NULL, 'superc'),
('superc055872123012', '2% Milk', '1.69', 'https://product-images.metro.ca/images/hba/h43/11274297802782.jpg', '473 mL', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/055872123012', NULL, 'superc'),
('superc055872183016', '1% Chocolate Milk', '2.49', 'https://product-images.metro.ca/images/hbe/hfc/11401272492062.jpg', '473 mL', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/1-chocolate-milk/p/055872183016', NULL, 'superc'),
('superc055872183184', '1% Chocolate Milk', '2.49', 'https://product-images.metro.ca/images/ha9/hc8/11401273606174.jpg', '473 mL', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/1-chocolate-milk/p/055872183184', NULL, 'superc'),
('superc055872700046', 'Skim Milk', '2.08', 'https://product-images.metro.ca/images/h45/h7e/11274303242270.jpg', '1 L', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/055872700046', NULL, 'superc'),
('superc055872700114', '1% Milk', '4.26', 'https://product-images.metro.ca/images/h95/h56/11274286989342.jpg', '2 L', 'Québon', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/055872700114', NULL, 'superc'),
('superc055989100869', 'Rubbing alcohol compound', '2.69', 'https://product-images.metro.ca/images/hd1/h0b/10258413322270.jpg', '450 ml', 'Personnelle', 'https://www.superc.ca/en/aisles/pharmacy/healthcare-products/first-aid/rubbing-alcohol-compound/p/055989100869', NULL, 'superc'),
('superc056327013070', 'Non-Alcoholic Lager Beer, Edge', '22.99', 'https://product-images.metro.ca/images/he5/h95/9552997875742.jpg', '12x355 mL - cans', 'Coors', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-lager-beer/p/056327013070', NULL, 'superc'),
('superc056327020801', 'Alcoholic Malt Beverage Variety Pack, Splash Pack', '25.99', 'https://product-images.metro.ca/images/h1c/h6d/11497585213470.jpg', '12x355 mL', 'Coors Seltzer', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/cocktails-other-wines/alcoholic-malt-beverage-variety-pack/p/056327020801', NULL, 'superc'),
('superc056327022638', 'Slushie Flavoured Alcoholic Malt Beverage Variety Pack', '25.99', 'https://product-images.metro.ca/images/hdf/h38/11478052896798.jpg', '12x355 mL', 'Coors Seltzer', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/cocktails-other-wines/slushie-flavoured-alcoholic-malt-beverage-variety-pack/p/056327022638', NULL, 'superc'),
('superc056327023406', 'Alcoholic Malt Beverage Island Breeze Seltzer', '25.99', 'https://product-images.metro.ca/images/h66/h21/12752909893662.jpg', '12x355 mL', 'Coors Seltzer', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/cocktails-other-wines/alcoholic-malt-beverage-island-breeze-seltzer/p/056327023406', NULL, 'superc'),
('superc056800186246', '2% Banana Flavoured Greek Yogurt', '4.59', 'https://product-images.metro.ca/images/h5d/ha7/11570856624158.jpg', '4x100 g', 'Oikos', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/greek-yogurts/2-banana-flavoured-greek-yogurt/p/056800186246', NULL, 'superc'),
('superc056800430776', '1.5% Strawberry-Banana Flavoured Drinkable Probiotic...', '5.69', 'https://product-images.metro.ca/images/h2d/hae/11198038343710.jpg', '8x93 mL', 'DanActive', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/1-5-strawberry-banana-flavoured-drinkable-probiotic-yogurts/p/056800430776', NULL, 'superc'),
('superc056800470505', '2% Strawberry-Banana Flavoured Greek Yogourts', '4.59', 'https://product-images.metro.ca/images/h3d/h73/11570947063838.jpg', '4x100 g', 'Oikos', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/multipacks/2-strawberry-banana-flavoured-greek-yogourts/p/056800470505', NULL, 'superc'),
('superc056800669565', 'Hazelnut Flavoured Coffee Enhancer, Zero Sugar', '5.99', 'https://product-images.metro.ca/images/h3d/h2d/12354478407710.jpg', '946 mL', 'International Delight', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/cream-creamers/hazelnut-flavoured-coffee-enhancer/p/056800669565', NULL, 'superc'),
('superc056800670820', '2% Strawberry-Banana Flavoured Drinkable Yogurt, Go!', '1.59', 'https://product-images.metro.ca/images/h39/hde/10509761675294.jpg', '190 mL', 'Danone', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/2-strawberry-banana-flavoured-drinkable-yogurt/p/056800670820', NULL, 'superc'),
('superc056800844214', '1.5% Strawberry-Banana Flavoured Drinkable Yogurt, ...', '3.99', 'https://product-images.metro.ca/images/h69/h2a/12488463941662.jpg', '6x93 mL', 'Danone', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/1-5-strawberry-banana-flavoured-drinkable-yogurt/p/056800844214', NULL, 'superc'),
('superc056800953329', '3.2% No Added Sugar Plain Probiotic Yogurt, Source o...', '4.59', 'https://product-images.metro.ca/images/h56/h59/12562406637598.jpg', '625 g', 'Activia', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/3-2-no-added-sugar-plain-probiotic-yogurt/p/056800953329', NULL, 'superc'),
('superc056800953404', '2.1% Peach, Blueberry, Vanilla, and Strawberry-Kiwi ...', '6.99', 'https://product-images.metro.ca/images/h56/h4c/12562422169630.jpg', '12x95 g', 'Activia', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/multipacks/2-1-peach-blueberry-vanilla-and-strawberry-kiwi-with-cereals-probiotic-yogurt/p/056800953404', NULL, 'superc'),
('superc056920020239', '3% Strawberry, Strawberry And Banana, And Strawberry...', '3.69', 'https://product-images.metro.ca/images/he0/hb7/10393687392286.jpg', '6x60 g', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/multipacks/3-strawberry-strawberry-and-banana-and-strawberry-vanilla-flavoured-fresh-cheese/p/056920020239', NULL, 'superc'),
('superc056920060204', '0% Berries and Peach Flavoured Yogurt Variety Pack, ...', '7.79', 'https://product-images.metro.ca/images/h81/h8f/11521102118942.jpg', '16x100 g', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/multipacks/0-berries-and-peach-flavoured-yogurt-variety-pack/p/056920060204', NULL, 'superc'),
('superc056920124043', '0% Vanilla Flavoured Yogurt Without Added Sugar, Source', '2.69', 'https://product-images.metro.ca/images/ha5/hd9/10264103845918.jpg', '630 g', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/yogurt-tubs/0-vanilla-flavoured-yogurt-without-added-sugar/p/056920124043', NULL, 'superc'),
('superc056920124845', 'Strawberry Flavoured 0% Yogurt without Added Sugar, ...', '2.69', 'https://product-images.metro.ca/images/h98/hfa/10264090116126.jpg', '630 g', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/yogurt-tubs/strawberry-flavoured-0-yogurt-without-added-sugar/p/056920124845', NULL, 'superc'),
('superc056920124852', '0% No Added Sugar Raspberry Flavoured Yogurt, Source', '2.69', 'https://product-images.metro.ca/images/h15/h7e/10913474707486.jpg', '630 g', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/yogurt-tubs/0-no-added-sugar-raspberry-flavoured-yogurt/p/056920124852', NULL, 'superc'),
('superc056920124869', '0% Peach Flavoured Yogurt Without Added Sugar, Source', '2.69', 'https://product-images.metro.ca/images/hce/h45/10264100667422.jpg', '630 g', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/yogurt-tubs/0-peach-flavoured-yogurt-without-added-sugar/p/056920124869', NULL, 'superc'),
('superc056920124883', '0% Cherry Flavoured Yogurt Without Added Sugar, Source', '2.69', 'https://product-images.metro.ca/images/h9d/hc8/10264093818910.jpg', '630 g', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/yogurt-tubs/0-cherry-flavoured-yogurt-without-added-sugar/p/056920124883', NULL, 'superc'),
('superc056920125460', 'Strawberry and Banana Flavoured Drinkable Yogurt, Yop', '4.99', 'https://product-images.metro.ca/images/h89/hcf/10289605574686.jpg', '8x93 mL', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/strawberry-and-banana-flavoured-drinkable-yogurt/p/056920125460', NULL, 'superc'),
('superc056920130198', 'Strawberry and Banana Flavoured 1% Drinkable Yogurt,...', '0.99', 'https://product-images.metro.ca/images/h1c/hc7/10845438935070.jpg', '200 mL', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/strawberry-and-banana-flavoured-1-drinkable-yogurt/p/056920130198', NULL, 'superc'),
('superc056920133427', 'Strawberry Banana and Fruit Punch Flavoured Yogurt, ...', '3.69', 'https://product-images.metro.ca/images/hc6/he7/11735305945118.jpg', '8x56 g', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/strawberry-banana-and-fruit-punch-flavoured-yogurt/p/056920133427', NULL, 'superc'),
('superc056920136428', '1% Banana Flavoured Drinkable Yogurt, Yop', '0.99', 'https://product-images.metro.ca/images/hbf/h18/12192538460190.jpg', '200 mL', 'Yoplait', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/1-banana-flavoured-drinkable-yogurt/p/056920136428', NULL, 'superc'),
('superc057000003364', 'Tomato Juice', '8.29', 'https://product-images.metro.ca/images/hbb/hc6/9986739765278.jpg', '6x156 mL', 'Heinz', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/vegetable-juices/tomato-juice/p/057000003364', NULL, 'superc'),
('superc057000003395', 'Tomato Juice', '1.49', 'https://product-images.metro.ca/images/h1d/hd9/9986681274398.jpg', '540 mL', 'Heinz', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/vegetable-juices/tomato-juice/p/057000003395', NULL, 'superc'),
('superc057000003401', 'Tomato Juice', '4.69', 'https://product-images.metro.ca/images/hc3/h18/12196739285022.jpg', '1.36 L', 'Heinz', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/vegetable-juices/tomato-juice/p/057000003401', NULL, 'superc'),
('superc057000003517', 'Tomato Juice', '8.79', 'https://product-images.metro.ca/images/h6c/hd3/10970149257246.jpg', '2.84 L', 'Heinz', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/vegetable-juices/tomato-juice/p/057000003517', NULL, 'superc'),
('superc057496002278', 'Non-Alcoholic Australian White Wine', '9.99', 'https://product-images.metro.ca/images/h2d/hf3/12578451947550.jpg', '750 mL', 'Smoky Bay', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/alcohol-free-wine/non-alcoholic-australian-white-wine/p/057496002278', NULL, 'superc'),
('superc057496012710', 'Sangria Alcoholic Drink', '7.49', 'https://product-images.metro.ca/images/h13/h03/10379114840094.jpg', '1 L', 'Santa Cruise', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/sangria-alcoholic-drink/p/057496012710', NULL, 'superc'),
('superc057864000080', 'Extra Firm Tofu', '3.99', 'https://product-images.metro.ca/images/h21/hb1/9490880921630.jpg', '350 g', 'Sunrise', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/tofu-tempeh/extra-firm-tofu/p/057864000080', NULL, 'superc'),
('superc057864000325', 'Banana Flavoured Dessert Tofu', '1.99', 'https://product-images.metro.ca/images/h00/h62/9518646984734.jpg', '2x150 g', 'Sunrise', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/tofu-tempeh/banana-flavoured-dessert-tofu/p/057864000325', NULL, 'superc'),
('superc058191200297', 'Raspberry cream donut', '5.99', 'https://product-images.metro.ca/images/h99/h9d/9519055241246.jpg', '6 un', 'Maisonneuve & Fils', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/raspberry-cream-donut/p/058191200297', NULL, 'superc'),
('superc059600048097', 'Apple Juice', '4.19', 'https://product-images.metro.ca/images/h1b/h4f/10529589231646.jpg', '8x200 mL', 'Minute Maid', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/apple-juice/p/059600048097', NULL, 'superc');
INSERT INTO `item` (`item_id`, `name`, `price`, `image`, `quantity`, `brand`, `link`, `description`, `store`) VALUES
('superc059749854696', 'Bag of Mcintosh Apples', '6.99', 'https://product-images.metro.ca/images/haa/h7e/8906771103774.jpg', '4 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-mcintosh-apples/p/059749854696', NULL, 'superc'),
('superc059749875066', 'Toasted Puffed Wheat Cereal', '4.99', 'https://product-images.metro.ca/images/h5c/hf9/8846629470238.jpg', '400 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/toasted-puffed-wheat-cereal/p/059749875066', NULL, 'superc'),
('superc059749876186', 'Toasted Wheat Crackers', '2.49', 'https://product-images.metro.ca/images/h3a/hb3/10822665961502.jpg', '225 g', 'Selection', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/crackers/toasted-wheat-crackers/p/059749876186', NULL, 'superc'),
('superc059749877442', 'Tomato Juice', '2.79', 'https://product-images.metro.ca/images/hbe/h01/9098449322014.jpg', '1.36 L', 'Selection', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/vegetable-juices/tomato-juice/p/059749877442', NULL, 'superc'),
('superc059749877466', 'Tomato Juice', '1.49', 'https://product-images.metro.ca/images/h63/h8b/9693790896158.jpg', '540 mL', 'Selection', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/vegetable-juices/tomato-juice/p/059749877466', NULL, 'superc'),
('superc059749878616', 'Regular Chips', '0.99', 'https://product-images.metro.ca/images/haa/hc4/10822685261854.jpg', '150 g', 'Selection', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/regular-chips/p/059749878616', NULL, 'superc'),
('superc059749878685', 'Regular Chips', '2 / ', 'https://product-images.metro.ca/images/h32/hc6/11520992837662.jpg', '200 g', 'Selection', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/regular-chips/p/059749878685', NULL, 'superc'),
('superc059749878722', 'All Dressed Chips', '2 / ', 'https://product-images.metro.ca/images/hec/he4/10200390533150.jpg', '200 g', 'Selection', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/all-dressed-chips/p/059749878722', NULL, 'superc'),
('superc059749878982', 'Cranberry Juice Blend', '4.49', 'https://product-images.metro.ca/images/h4d/h0b/10946090762270.jpg', '1.89 L', 'Irresistibles', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/cranberry-juice-blend/p/059749878982', NULL, 'superc'),
('superc059749887229', 'Baking Powder', '4.69', 'https://product-images.metro.ca/images/hf1/hcc/9679378055198.jpg', '450 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/flour-baking-essentials/baking-powder/p/059749887229', NULL, 'superc'),
('superc059749888998', 'Curry Powder', '2.99', 'https://product-images.metro.ca/images/hec/h0c/9020166045726.jpg', '100 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/herb-spice-blends/curry-powder/p/059749888998', NULL, 'superc'),
('superc059749889087', 'Chili Powder', '2.99', 'https://product-images.metro.ca/images/hca/h5a/9096950480926.jpg', '100 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/chili-powder/p/059749889087', NULL, 'superc'),
('superc059749889254', 'Garlic Powder', '3.69', 'https://product-images.metro.ca/images/hcd/hc2/9096928460830.jpg', '120 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/garlic-powder/p/059749889254', NULL, 'superc'),
('superc059749889384', 'Onion Powder', '2.99', 'https://product-images.metro.ca/images/hbf/h70/9020162408478.jpg', '100 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/onion-powder/p/059749889384', NULL, 'superc'),
('superc059749889391', 'Ground Cinnamon', '2.79', 'https://product-images.metro.ca/images/h08/he2/9020164538398.jpg', '113 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/ground-cinnamon/p/059749889391', NULL, 'superc'),
('superc059749892599', 'Whole Wheat Flour', '3.99', 'https://product-images.metro.ca/images/h69/hca/10183870087198.jpg', '2.5 kg', 'Selection', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/flour-baking-essentials/whole-wheat-flour/p/059749892599', NULL, 'superc'),
('superc059749894784', 'Salted Butter', '6.49', 'https://product-images.metro.ca/images/h45/h0b/10239121489950.jpg', '454 g', 'Selection', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/butter-margarine/salted-butter/p/059749894784', NULL, 'superc'),
('superc059749894791', 'Half-Salted Butter', '6.49', 'https://product-images.metro.ca/images/h53/h2e/10239117000734.jpg', '454 g', 'Selection', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/butter-margarine/half-salted-butter/p/059749894791', NULL, 'superc'),
('superc059749897594', 'Pita Breads', '1.69', 'https://product-images.metro.ca/images/h39/h6d/9519055274014.jpg', '250 g', 'Selection', 'https://www.superc.ca/en/aisles/bread-bakery-products/tortillas-flat-breads/pita-bread/pita-breads/p/059749897594', NULL, 'superc'),
('superc059749898461', 'Hamburger Buns', '2.49', 'https://product-images.metro.ca/images/ha5/h73/9761049608222.jpg', '12 un', 'Selection', 'https://www.superc.ca/en/aisles/bread-bakery-products/buns-rolls/hot-dog-hamburger/hamburger-buns/p/059749898461', NULL, 'superc'),
('superc059749900898', 'Naan Bread', '2.99', 'https://product-images.metro.ca/images/h91/h65/12716669337630.jpg', '240 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/bread-bakery-products/tortillas-flat-breads/flat-bread-naan/naan-bread/p/059749900898', NULL, 'superc'),
('superc059749908399', 'De-Alcoholized Lager Beer', '8.49', 'https://product-images.metro.ca/images/h4e/hd1/8975582691358.jpg', '12x355 mL - cans', 'Selection', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/de-alcoholized-lager-beer/p/059749908399', NULL, 'superc'),
('superc059749916332', 'Sliced White Bread, Soft', '2.89', 'https://product-images.metro.ca/images/hc1/hcb/9760841728030.jpg', '675 g', 'Selection', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/white/sliced-white-bread/p/059749916332', NULL, 'superc'),
('superc059749916363', 'Whole Wheat Sliced Bread', '5.75', 'https://product-images.metro.ca/images/h00/h64/9519060582430.jpg', '2x675 g', 'Selection', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/whole-wheat-sliced-bread/p/059749916363', NULL, 'superc'),
('superc059749916998', 'White Italian Bread', '6.00', 'https://product-images.metro.ca/images/h7b/h2e/10823023231006.jpg', '2x675 g', 'Selection', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/artisan-specialty/white-italian-bread/p/059749916998', NULL, 'superc'),
('superc059749917018', 'Whole Wheat Italian Bread', '6.00', 'https://product-images.metro.ca/images/hb9/h5a/10823074381854.jpg', '2x675 g', 'Selection', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/whole-wheat-italian-bread/p/059749917018', NULL, 'superc'),
('superc059749936088', 'Assorted European Cookies', '7.00', 'https://product-images.metro.ca/images/h0b/h39/9763111075870.jpg', '650 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/assorted-european-cookies/p/059749936088', NULL, 'superc'),
('superc059749942232', 'Panko Breadcrumbs', '1.99', 'https://product-images.metro.ca/images/h5d/hf3/9518763245598.jpg', '227 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/breading-batters-coatings/panko-breadcrumbs/p/059749942232', NULL, 'superc'),
('superc059749942249', 'Bread Crumbs', '1.99', 'https://product-images.metro.ca/images/hfc/hda/11520998277150.jpg', '425 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/bread-crumbs-stuffing/bread-crumbs/p/059749942249', NULL, 'superc'),
('superc059749942256', 'Italian Style Breadcrumbs', '1.99', 'https://product-images.metro.ca/images/h61/h45/9518828847134.jpg', '425 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/bread-crumbs-stuffing/italian-style-breadcrumbs/p/059749942256', NULL, 'superc'),
('superc059749943413', 'Chocolate Chip & Banana Muffins', '6.00', 'https://product-images.metro.ca/images/hd4/hb4/9073798283294.jpg', '600 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/bread-bakery-products/muffins-bagels-baked-goods/muffins/chocolate-chip-banana-muffins/p/059749943413', NULL, 'superc'),
('superc059749948852', 'Corn Chips', '2.79', 'https://product-images.metro.ca/images/h81/h6b/8822031679518.jpg', '280 g', 'Selection', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/corn-tortilla-chips/corn-chips/p/059749948852', NULL, 'superc'),
('superc059749950954', 'Maple Sugar', '7.69', 'https://product-images.metro.ca/images/hde/hbb/11521237418014.jpg', '220 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/sugar-sweeteners/maple-sugar/p/059749950954', NULL, 'superc'),
('superc059749954709', 'Orange, Strawberry and Banana Juice', '4.49', 'https://product-images.metro.ca/images/h2c/h67/10938840711198.jpg', '1.65 L', 'Irresistibles', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/refrigerated-juices-drinks/orange-strawberry-and-banana-juice/p/059749954709', NULL, 'superc'),
('superc059749960977', 'Garlic Powder', '3.99', 'https://product-images.metro.ca/images/hdb/hd5/12083925745694.jpg', '75 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/garlic-powder/p/059749960977', NULL, 'superc'),
('superc059749961059', 'Chili Powder', '2.99', 'https://product-images.metro.ca/images/h0a/h31/12083926925342.jpg', '68 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/chili-powder/p/059749961059', NULL, 'superc'),
('superc059749961219', 'Onion Powder', '1.99', 'https://product-images.metro.ca/images/h6a/h8f/12083929907230.jpg', '50 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/onion-powder/p/059749961219', NULL, 'superc'),
('superc059749964487', 'Sweetened Banana Chips', '4.00', 'https://product-images.metro.ca/images/h55/h0a/9060353736734.jpg', '175 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/sweetened-banana-chips/p/059749964487', NULL, 'superc'),
('superc059749969925', 'Fruit Punch Juice Boxes, Cocktail', '2.59', 'https://product-images.metro.ca/images/h25/h5e/10300166012958.jpg', '8x200 mL', 'Selection', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/juice-drinks-boxes/fruit-punch-juice-boxes/p/059749969925', NULL, 'superc'),
('superc059749970143', 'Juice Boxes Variety Pack', '14.99', 'https://product-images.metro.ca/images/h27/hb2/11817003614238.jpg', '40x200 mL', 'Selection', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/juice-drinks-boxes/juice-boxes-variety-pack/p/059749970143', NULL, 'superc'),
('superc059749970211', 'Summer Blend Juice Boxes', '2.59', 'https://product-images.metro.ca/images/hf5/h80/10319539961886.jpg', '8x200 mL', 'Selection', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/juice-drinks-boxes/summer-blend-juice-boxes/p/059749970211', NULL, 'superc'),
('superc059749970914', 'Belgian Chocolate Cookies', '7.99', 'https://product-images.metro.ca/images/h77/h7e/9297529012254.jpg', '400 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/belgian-chocolate-cookies/p/059749970914', NULL, 'superc'),
('superc059749971256', 'Bread Crumbs, Gluten Free', '7.69', 'https://product-images.metro.ca/images/h5a/h9b/9297525473310.jpg', '500 g', 'Life Smart', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/bread-crumbs-stuffing/bread-crumbs/p/059749971256', NULL, 'superc'),
('superc059749974462', 'Non-Alcoholic IPA Beer', '9.49', 'https://product-images.metro.ca/images/hbb/h9c/9551559327774.jpg', '6x355 mL - cans', 'Irresistibles', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-ipa-beer/p/059749974462', NULL, 'superc'),
('superc059749976305', 'Seasoned Panko Breadcrumbs', '1.99', 'https://product-images.metro.ca/images/h5a/h00/11521605042206.jpg', '227 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/breading-batters-coatings/seasoned-panko-breadcrumbs/p/059749976305', NULL, 'superc'),
('superc059749976350', 'Milk Chocolate Chips', '9.99', 'https://product-images.metro.ca/images/h68/hec/9704192114718.jpg', '900 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/chocolate-cocoa/milk-chocolate-chips/p/059749976350', NULL, 'superc'),
('superc059749976367', 'Dark Chocolate Chips', '9.99', 'https://product-images.metro.ca/images/hf5/h0f/9704254439454.jpg', '835 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/chocolate-cocoa/dark-chocolate-chips/p/059749976367', NULL, 'superc'),
('superc059749976718', 'Vegetable Chips, Classic', '3.99', 'https://product-images.metro.ca/images/hc3/h51/9757709008926.jpg', '120 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/vegetable-chips/p/059749976718', NULL, 'superc'),
('superc059749976749', 'Vegetable Chips, Classic', '3.99', 'https://product-images.metro.ca/images/h93/h44/9757684695070.jpg', '142 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/vegetable-chips/p/059749976749', NULL, 'superc'),
('superc059749980777', 'Cane Sugar, Organic', '5.69', 'https://product-images.metro.ca/images/ha2/h6c/10406143819806.jpg', '900 g', 'Life Smart', 'https://www.superc.ca/en/aisles/organic-groceries/pantry/organic-sugar-flour-other-baking-ingredients/cane-sugar/p/059749980777', NULL, 'superc'),
('superc059749982955', 'Molasses Cookies', '6.99', 'https://product-images.metro.ca/images/h05/h8b/10823555153950.jpg', '850 g', 'Selection', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/cookies-scones/molasses-cookies/p/059749982955', NULL, 'superc'),
('superc059749983389', 'Mini Powdered Sugar Donuts', '4.99', 'https://product-images.metro.ca/images/h93/he4/11522146369566.jpg', '400 g', 'Selection', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/mini-powdered-sugar-donuts/p/059749983389', NULL, 'superc'),
('superc059749983983', 'Frozen Strawberries and Bananas', '5.49', 'https://product-images.metro.ca/images/hf4/h89/11521799258142.jpg', '600 g', 'Irresistibles', 'https://www.superc.ca/en/aisles/frozen/fruit-vegetables/fruit/frozen-strawberries-and-bananas/p/059749983983', NULL, 'superc'),
('superc059749984317', 'Oatmeal Cookies', '6.99', 'https://product-images.metro.ca/images/h0c/h82/10823580876830.jpg', '792 g', 'Selection', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/cookies-scones/oatmeal-cookies/p/059749984317', NULL, 'superc'),
('superc059749986649', 'Brownie Cookies', '2.22', 'https://product-images.metro.ca/images/hac/h00/11162203160606.jpg', '270 g', 'Selection', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/brownie-cookies/p/059749986649', NULL, 'superc'),
('superc059749991865', 'Compostable Wheat Straw', '2.99', 'https://product-images.metro.ca/images/hb3/hcc/12578395750430.jpg', '50 un', 'Selection Eco', 'https://www.superc.ca/en/aisles/household-cleaning/cooking-kitchen-supplies/disposable-tableware-utensils/compostable-wheat-straw/p/059749991865', NULL, 'superc'),
('superc059749993128', 'Chili Powder', '8.99', 'https://product-images.metro.ca/images/h59/ha3/12259519594526.jpg', '500 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/condiments-toppings/hot-chili-sauces/chili-powder/p/059749993128', NULL, 'superc'),
('superc059749993159', 'Onion Powder', '8.99', 'https://product-images.metro.ca/images/hbc/hf6/12051251953694.jpg', '635 g', 'Selection', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/onion-powder/p/059749993159', NULL, 'superc'),
('superc060410045138', 'Banana Chips, Simply', '5.49', 'https://product-images.metro.ca/images/h9f/hff/12279459315742.jpg', '77 g', 'Bare', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/banana-chips/p/060410045138', NULL, 'superc'),
('superc060410047002', 'Classic Flavour Chips, Party Size', '4.99', 'https://product-images.metro.ca/images/h84/hcf/12279489167390.jpg', '415 g', 'Lay\'s', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/classic-flavour-chips/p/060410047002', NULL, 'superc'),
('superc060410047019', 'Classic Flavour Chips, Value Pack', '3 / ', 'https://product-images.metro.ca/images/h87/h15/11679727517726.jpg', '235 g', 'Lay\'s', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/classic-flavour-chips/p/060410047019', NULL, 'superc'),
('superc060410047217', 'Regular Flavour Chips', '3.99', 'https://product-images.metro.ca/images/hd5/hc9/11685159796766.jpg', '200 g', 'Ruffles', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/regular-flavour-chips/p/060410047217', NULL, 'superc'),
('superc060410047422', 'Salt and Vinegar Chips', '3.99', 'https://product-images.metro.ca/images/hf5/h30/12279467048990.jpg', '200 g', 'Ruffles', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/salt-and-vinegar-chips/p/060410047422', NULL, 'superc'),
('superc060410047514', 'Ketchup Flavoured Chips, Value Pack', '3 / ', 'https://product-images.metro.ca/images/h32/h51/12279469441054.jpg', '235 g', 'Lay\'s', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/ketchup-flavoured-chips/p/060410047514', NULL, 'superc'),
('superc060410061404', 'All Dressed Chips', '3 / ', 'https://product-images.metro.ca/images/hc5/hc6/12245565308958.jpg', '235 g', 'Lay\'s', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/all-dressed-chips/p/060410061404', NULL, 'superc'),
('superc060410066324', 'Salt and Vinegar Crisps, Stax', '2.79', 'https://product-images.metro.ca/images/he5/h86/11068791488542.jpg', '155 g', 'Lay\'s', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/salt-and-vinegar-crisps/p/060410066324', NULL, 'superc'),
('superc060410072080', 'Tortilla Chips, Hearty Dippers', '3.99', 'https://product-images.metro.ca/images/h09/h6b/12175876456478.jpg', '250 g', 'Tostitos', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/tortilla-chips/p/060410072080', NULL, 'superc'),
('superc060410901175', 'Tortilla Chips, Scoops', '3.99', 'https://product-images.metro.ca/images/h5e/h1e/12234942840862.jpg', '215 g', 'Tostitos', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/tortilla-chips/p/060410901175', NULL, 'superc'),
('superc060410901205', 'Tortilla Chips, Restaurant Style', '3.99', 'https://product-images.metro.ca/images/hd7/h9e/12234944741406.jpg', '275 g', 'Tostitos', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/tortilla-chips/p/060410901205', NULL, 'superc'),
('superc060410901243', 'Tortilla Chips, Rounds', '3.99', 'https://product-images.metro.ca/images/hd3/h66/10778655752222.jpg', '295 g', 'Tostitos', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/tortilla-chips/p/060410901243', NULL, 'superc'),
('superc060822000060', 'Vegan Bologna', '5.49', 'https://product-images.metro.ca/images/h7a/h7f/11849349922846.jpg', '155 g', 'Yves Veggie Cuisine', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/vegan-bologna/p/060822000060', NULL, 'superc'),
('superc060822000084', 'Vegan Weiners, Veggie Dogs', '4.49', 'https://product-images.metro.ca/images/hf2/h90/11761479450654.jpg', '275 g', 'Yves Veggie Cuisine', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/vegan-weiners/p/060822000084', NULL, 'superc'),
('superc060822000466', 'Garden Style Vegan Buger Patties', '7.99', 'https://product-images.metro.ca/images/h33/hae/11849343074334.jpg', '380 g', 'Yves Veggie Cuisine', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/garden-style-vegan-buger-patties/p/060822000466', NULL, 'superc'),
('superc060822001111', 'Veggie Salami', '5.49', 'https://product-images.metro.ca/images/he2/h5b/11849348481054.jpg', '155 g', 'Yves Veggie Cuisine', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/veggie-salami/p/060822001111', NULL, 'superc'),
('superc060822001166', 'Vegan Pepperoni', '5.49', 'https://product-images.metro.ca/images/h84/hf5/11849348022302.jpg', '120 g', 'Yves Veggie Cuisine', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/vegan-pepperoni/p/060822001166', NULL, 'superc'),
('superc060822003016', 'Plant-Based Ground Round', '5.99', 'https://product-images.metro.ca/images/h21/hd7/11849342681118.jpg', '340 g', 'Yves Veggie Cuisine', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/plant-based-ground-round/p/060822003016', NULL, 'superc'),
('superc060822400020', 'Veggie Burgers', '8.99', 'https://product-images.metro.ca/images/h47/h1b/11849391636510.jpg', '568 g', 'Yves Veggie Cuisine', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/veggie-burgers/p/060822400020', NULL, 'superc'),
('superc061077856310', '100% Whole Wheat Bread, No Sugar, No Fat Added', '2 / ', 'https://product-images.metro.ca/images/h0f/h88/12578284240926.jpg', '600 g', 'Bon Matin', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/100-whole-wheat-bread/p/061077856310', NULL, 'superc'),
('superc061077871658', 'Hamburger Buns, Toscana', '3.77', 'https://product-images.metro.ca/images/h3f/h7c/10486551642142.jpg', '8 un', 'Villaggio', 'https://www.superc.ca/en/aisles/bread-bakery-products/buns-rolls/small-buns/hamburger-buns/p/061077871658', NULL, 'superc'),
('superc061430885025', 'Apples, Sweetango', '5.99', 'https://product-images.metro.ca/images/h7e/h94/9182769446942.jpg', '2 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/apples/p/061430885025', NULL, 'superc'),
('superc061659001251', 'Italian Style Bread Crumbs', '3.99', 'https://product-images.metro.ca/images/hae/h17/11386249281566.jpg', '680 g', 'Aurora', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/breading-batters-coatings/italian-style-bread-crumbs/p/061659001251', NULL, 'superc'),
('superc061659018969', 'Plain Breadcrumbs, Panko', '3.49', 'https://product-images.metro.ca/images/h32/hb7/11386251247646.jpg', '227 g', 'Aurora', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/breading-batters-coatings/plain-breadcrumbs/p/061659018969', NULL, 'superc'),
('superc061659020429', 'Plain Breadcrumbs', '4.49', 'https://product-images.metro.ca/images/h5b/h8a/11386248790046.jpg', '680 g', 'Aurora', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/breading-batters-coatings/plain-breadcrumbs/p/061659020429', NULL, 'superc'),
('superc062067381522', 'Alcohol Free Beer', '13.49', 'https://product-images.metro.ca/images/ha9/hc6/12259074244638.jpg', '6x355 mL', 'Budweiser', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/alcohol-free-beer/p/062067381522', NULL, 'superc'),
('superc062067381539', 'Non-Alcoholic Beer, Zero', '22.99', 'https://product-images.metro.ca/images/h32/hd5/9531732295710.jpg', '12x355 mL - cans', 'Creemore Springs', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-beer/p/062067381539', NULL, 'superc'),
('superc062067384165', 'Alcoholic Malt Beverage with Clamato, Chelada', '14.99', 'https://product-images.metro.ca/images/hcb/hc5/10379043438622.jpg', '6x355 mL - cans', 'Bud Light', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/cocktails-other-wines/alcoholic-malt-beverage-with-clamato/p/062067384165', NULL, 'superc'),
('superc062067384172', 'Alcoholic Malt Beverage with Clamato, Chelada', '24.99', 'https://product-images.metro.ca/images/h14/h41/10379030429726.jpg', '12x355 mL - cans', 'Bud Light', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/cocktails-other-wines/alcoholic-malt-beverage-with-clamato/p/062067384172', NULL, 'superc'),
('superc062067385629', 'Non-Alcoholic Mexican Beer, Sunbrew', '15.99', 'https://product-images.metro.ca/images/h37/h83/10768802447390.jpg', '6x330 mL', 'Corona', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-mexican-beer/p/062067385629', NULL, 'superc'),
('superc062067421891', 'Original Alcoholic Beverage, 7up', '15.49', 'https://product-images.metro.ca/images/hca/h79/12578983641118.jpg', '6x355 mL', 'SVNS', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/original-alcoholic-beverage/p/062067421891', NULL, 'superc'),
('superc062067421907', 'Lemonade Flavoured Alcoholic Beverage, 7up', '15.49', 'https://product-images.metro.ca/images/h0e/h6c/12555955437598.jpg', '6x355 mL', 'SVNS', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/lemonade-flavoured-alcoholic-beverage/p/062067421907', NULL, 'superc'),
('superc062067422409', 'Original Alcoholic Beverage, 7up', '26.99', 'https://product-images.metro.ca/images/h0e/h6d/12556090376222.jpg', '12x355 mL', 'SVNS', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/original-alcoholic-beverage/p/062067422409', NULL, 'superc'),
('superc062067424199', 'Non-Alcoholic Mexican Beer, Sunbrew', '26.99', 'https://product-images.metro.ca/images/h97/h78/11274396860446.jpg', '12x355 mL', 'Corona', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-mexican-beer/p/062067424199', NULL, 'superc'),
('superc062847510708', 'Icing Sugar', '3.49', 'https://product-images.metro.ca/images/h1e/hf9/11333023793182.jpg', '1 kg', 'Redpath', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/sugar-sweeteners/icing-sugar/p/062847510708', NULL, 'superc'),
('superc062847610637', 'Golden Yellow Sugar', '4.49', 'https://product-images.metro.ca/images/h10/hae/10727327825950.jpg', '2 kg', 'Redpath', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/sugar-sweeteners/golden-yellow-sugar/p/062847610637', NULL, 'superc'),
('superc062847610675', 'Golden Yellow Sugar', '3.79', 'https://product-images.metro.ca/images/hd4/h58/10727333167134.jpg', '1 kg', 'Redpath', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/sugar-sweeteners/golden-yellow-sugar/p/062847610675', NULL, 'superc'),
('superc062859000013', 'Exta Firm Fine Herbs Tofu', '3.99', 'https://product-images.metro.ca/images/h72/h4a/10946114715678.jpg', '454 g', 'Unisoya', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/tofu-tempeh/exta-firm-fine-herbs-tofu/p/062859000013', NULL, 'superc'),
('superc062859000044', 'Regular Extra Firm Tofu', '3.99', 'https://product-images.metro.ca/images/h2c/hb0/10946113077278.jpg', '454 g', 'Unisoya', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/tofu-tempeh/regular-extra-firm-tofu/p/062859000044', NULL, 'superc'),
('superc062884262011', 'Prebiotic Chocolate Milk Beverage, Chokéo', '4.29', 'https://product-images.metro.ca/images/hea/h8d/10882774958110.jpg', '3x200 mL', 'Grand Pré', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/prebiotic-chocolate-milk-beverage/p/062884262011', NULL, 'superc'),
('superc063348006905', 'Banana Bread Soft Cookies, Bear Paws', '2.22', 'https://product-images.metro.ca/images/hd7/h96/12473445810206.jpg', '240 g', 'Dare', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/banana-bread-soft-cookies/p/063348006905', NULL, 'superc'),
('superc063348011428', 'Village Cookies, Tradition', '4.99', 'https://product-images.metro.ca/images/hf6/h29/10135049666590.jpg', '555 g', 'Dare', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/village-cookies/p/063348011428', NULL, 'superc'),
('superc063348026385', 'Goglu Cookies, Tradition', '4.99', 'https://product-images.metro.ca/images/h02/h2e/10135007789086.jpg', '575 g', 'Dare', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/goglu-cookies/p/063348026385', NULL, 'superc'),
('superc063400041431', 'Sliced Wheat Bread', '7.50', 'https://product-images.metro.ca/images/h0b/h27/10822983876638.jpg', '2x675 g', 'D\'Italiano', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/sliced-wheat-bread/p/063400041431', NULL, 'superc'),
('superc064042005409', 'Ginger Cookies, Praeventia', '4.69', 'https://product-images.metro.ca/images/hdb/h13/10225176150046.jpg', '210 g', 'Leclerc', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/ginger-cookies/p/064042005409', NULL, 'superc'),
('superc064042006505', 'Oatmeal Cookies, Tradition', '3.99', 'https://product-images.metro.ca/images/h77/h71/11665921835038.jpg', '300 g', 'Leclerc', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/cookies-scones/oatmeal-cookies/p/064042006505', NULL, 'superc'),
('superc064042603711', 'Choco-Banana Muffin Bars, Muffin Max', '3.49', 'https://product-images.metro.ca/images/h7a/h1c/10101031600158.jpg', '223 g', 'Leclerc', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/choco-banana-muffin-bars/p/064042603711', NULL, 'superc'),
('superc064100000704', 'Buds Cereal, All-Bran', '7.79', 'https://product-images.metro.ca/images/h6e/h6c/12174889222174.jpg', '500 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/buds-cereal/p/064100000704', NULL, 'superc'),
('superc064100001466', 'Original Cereal, All-Bran', '6.29', 'https://product-images.metro.ca/images/h8b/h80/10845154803742.jpg', '525 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/original-cereal/p/064100001466', NULL, 'superc'),
('superc064100106215', 'Original Cereal, Special K', '6.49', 'https://product-images.metro.ca/images/h60/h22/12770802466846.jpg', '435 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/original-cereal/p/064100106215', NULL, 'superc'),
('superc064100108028', 'Cereal, Two Scoops Raisin Bran', '6.49', 'https://product-images.metro.ca/images/h76/hce/12050682478622.jpg', '425 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/cereal/p/064100108028', NULL, 'superc'),
('superc064100108066', 'Cereal Jumbo Size, Two Scoops Raisin Bran', '10.49', 'https://product-images.metro.ca/images/hea/h19/10433086980126.jpg', '1.15 kg', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/cereal-jumbo-size/p/064100108066', NULL, 'superc'),
('superc064100108264', 'Cereal, Frosted Flakes', '3.77', 'https://product-images.metro.ca/images/h45/h32/11292684255262.jpg', '425 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/cereal/p/064100108264', NULL, 'superc'),
('superc064100118690', 'Ketchup Flavoured Chips', '2.47', 'https://product-images.metro.ca/images/ha2/hb1/12555741888542.jpg', '156 g', 'Pringles', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/ketchup-flavoured-chips/p/064100118690', NULL, 'superc'),
('superc064100142282', 'Family Size Cereal, Raisin Bran', '7.29', 'https://product-images.metro.ca/images/hfe/hb7/11571069812766.jpg', '625 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/family-size-cereal/p/064100142282', NULL, 'superc'),
('superc064100143180', 'Original Cereal, Special K', '7.69', 'https://product-images.metro.ca/images/hf3/hd5/12771067887646.jpg', '545 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/original-cereal/p/064100143180', NULL, 'superc'),
('superc064100147973', 'All Dressed Chip', '2.47', '/images/shared/large/default--400x400.jpg?v=2024.2.sc.d12', '156 g', 'Pringles', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/chips/all-dressed-chip/p/064100147973', NULL, 'superc'),
('superc064100589988', 'Original Cereal, Mini-Wheats', '3.99', 'https://product-images.metro.ca/images/hcb/hd6/10278110035998.jpg', '510 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/original-cereal/p/064100589988', NULL, 'superc'),
('superc064100595729', 'Cereal, Froot Loops', '3.77', 'https://product-images.metro.ca/images/h46/h1f/12416104431646.jpg', '345 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/cereal/p/064100595729', NULL, 'superc'),
('superc064100595798', 'Flakes Cereal, All-Bran', '6.49', 'https://product-images.metro.ca/images/h0c/hee/12122102562846.jpg', '450 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/flakes-cereal/p/064100595798', NULL, 'superc'),
('superc064100779716', 'Cereal, Corn Pops', '3.77', 'https://product-images.metro.ca/images/hbc/hc2/12210137497630.jpg', '320 g', 'Kellogg\'s', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/cereal/p/064100779716', NULL, 'superc'),
('superc064420010124', '2% Milk, Fine-Filtered', '4.99', 'https://product-images.metro.ca/images/h4d/h0c/11241930326046.jpg', '2 L', 'Natrel', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/064420010124', NULL, 'superc'),
('superc064420320131', 'Vanilla Flavoured 2% Protein Milk, Plus', '7.49', 'https://product-images.metro.ca/images/hdf/h16/12175529672734.jpg', '2 L', 'Natrel', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/vanilla-flavoured-2-protein-milk/p/064420320131', NULL, 'superc'),
('superc064420320148', 'Lactose-Free 2% Protein Milk, Plus', '7.49', 'https://product-images.metro.ca/images/hb2/hc5/11467526307870.jpg', '2 L', 'Natrel', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/lactose-free-2-protein-milk/p/064420320148', NULL, 'superc'),
('superc064420320155', 'Lactose-Free 2% Chocolate Protein Milk, Plus', '7.49', 'https://product-images.metro.ca/images/h16/h5d/11467526275102.jpg', '2 L', 'Natrel', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/lactose-free-2-chocolate-protein-milk/p/064420320155', NULL, 'superc'),
('superc064420320179', '3.25% Lactose Free Protein Milk, Plus', '7.49', 'https://product-images.metro.ca/images/h5c/hfa/11467526406174.jpg', '2 L', 'Natrel', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/lactose-free-non-dairy-milk/3-25-lactose-free-protein-milk/p/064420320179', NULL, 'superc'),
('superc065000116052', 'Hot Chocolate Powder, Carnation', '6.99', 'https://product-images.metro.ca/images/h4b/h53/12656847912990.jpg', '450 g', 'Nestlé', 'https://www.superc.ca/en/aisles/beverages/drink-mixes/powdered-drink-mixes/hot-chocolate-powder/p/065000116052', NULL, 'superc'),
('superc065000321272', 'Wheat Biscuit Baby Cereal, Stage 3', '6.69', 'https://product-images.metro.ca/images/h19/he5/10882733539358.jpg', '227 g', 'Gerber', 'https://www.superc.ca/en/aisles/baby/food-formula/cereal/wheat-biscuit-baby-cereal/p/065000321272', NULL, 'superc'),
('superc065633132832', 'Multi-Grain Cereal, Cheerios', '5.19', 'https://product-images.metro.ca/images/h6e/he4/10399723814942.jpg', '342 g', 'General Mills', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/multi-grain-cereal/p/065633132832', NULL, 'superc'),
('superc065633132948', 'Honey Nut Oats Cereal, Cheerios', '5.19', 'https://product-images.metro.ca/images/h46/h1a/12879171715102.jpg', '430 g', 'General Mills', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/honey-nut-oats-cereal/p/065633132948', NULL, 'superc'),
('superc065633158122', 'Oat Cereal with Almonds, Oatmeal Crisp', '3.99', 'https://product-images.metro.ca/images/h27/hf3/10686134747166.jpg', '437 g', 'General Mills', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/oat-cereal-with-almonds/p/065633158122', NULL, 'superc'),
('superc065633197794', 'Corn Cereals, Chex', '5.49', 'https://product-images.metro.ca/images/h31/h20/11320092196894.jpg', '340 g', 'General Mills', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/corn-cereals/p/065633197794', NULL, 'superc'),
('superc065633197978', 'Rice Cereals, Chex', '5.49', 'https://product-images.metro.ca/images/h1f/h32/11714399043614.jpg', '340 g', 'General Mills', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/rice-cereals/p/065633197978', NULL, 'superc'),
('superc065633205116', 'Cereal Minis , Cinnamon Toast Crunch', '5.19', 'https://product-images.metro.ca/images/h89/h0b/12816248209438.jpg', '349 g', 'General Mills', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/cereal-minis/p/065633205116', NULL, 'superc'),
('superc065633205291', 'Minis Cereal, Reese\'s Puffs', '5.19', 'https://product-images.metro.ca/images/h95/h8c/11693980319774.jpg', '331 g', 'General Mills', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/minis-cereal/p/065633205291', NULL, 'superc'),
('superc065633279346', 'Chocolate Cereal, Nesquik', '5.19', 'https://product-images.metro.ca/images/h31/he3/11761480663070.jpg', '340 g', 'General Mills', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/chocolate-cereal/p/065633279346', NULL, 'superc'),
('superc065633279438', 'Maple Syrup Flavoured Cereal, French Toast Crunch', '5.19', 'https://product-images.metro.ca/images/h93/h36/10170576961566.jpg', '380 g', 'General Mills', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/maple-syrup-flavoured-cereal/p/065633279438', NULL, 'superc'),
('superc065684119882', 'Strawberry Banana Flavoured 5% Extra Creamy Greek Yo...', '7.49', 'https://product-images.metro.ca/images/h35/hd6/12738935357470.jpg', '650 g', 'Liberté', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/greek-yogurts/strawberry-banana-flavoured-5-extra-creamy-greek-yogurt/p/065684119882', NULL, 'superc'),
('superc065684127757', '1.5% Strawberry and Banana Flavoured Drinkable Yogur...', '4.99', 'https://product-images.metro.ca/images/hb7/h13/10823242514462.jpg', '1 L', 'Liberté', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/1-5-strawberry-and-banana-flavoured-drinkable-yogurt/p/065684127757', NULL, 'superc'),
('superc065684131358', '0% Banana Flavoured Yogurt, Greek', '7.49', 'https://product-images.metro.ca/images/h0d/h49/12738962915358.jpg', '750 g', 'Liberté', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/greek-yogurts/0-banana-flavoured-yogurt/p/065684131358', NULL, 'superc'),
('superc065684131396', 'Apple Pie Flavoured Yogurt, Méditerranée', '2.99', 'https://product-images.metro.ca/images/hb9/h1f/12738964848670.jpg', '500 g', 'Liberté', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/yogurt-tubs/apple-pie-flavoured-yogurt/p/065684131396', NULL, 'superc'),
('superc065912581214', 'Lemon Juice', '2.99', 'https://product-images.metro.ca/images/hd1/h03/8812122406942.jpg', '945 mL', 'ReaLemon', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/lemon-juice/p/065912581214', NULL, 'superc'),
('superc066086143246', 'Italian Flavoured Bread Crumbs', '4.49', 'https://product-images.metro.ca/images/h2e/hb4/12050672943134.jpg', '425 g', 'Pastene', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/breading-batters-coatings/italian-flavoured-bread-crumbs/p/066086143246', NULL, 'superc'),
('superc066086144205', 'Plain Bread Crumbs', '4.49', 'https://product-images.metro.ca/images/h2d/hcf/9526841868318.jpg', '425 g', 'Pastene', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/breading-batters-coatings/plain-bread-crumbs/p/066086144205', NULL, 'superc'),
('superc066188004483', 'Dulce Leche Pudding', '4.29', 'https://product-images.metro.ca/images/h63/h69/10823611809822.jpg', '4x106 g', 'Jell-O', 'https://www.superc.ca/en/aisles/dairy-eggs/chilled-desserts-dough/dessert-cups/dulce-leche-pudding/p/066188004483', NULL, 'superc'),
('superc066188004490', 'Strawberry Flavoured Gel Snacks', '4.29', 'https://product-images.metro.ca/images/h56/h60/9987037003806.jpg', '4x89 g', 'Jell-O', 'https://www.superc.ca/en/aisles/dairy-eggs/chilled-desserts-dough/dessert-cups/strawberry-flavoured-gel-snacks/p/066188004490', NULL, 'superc'),
('superc066188013201', 'Strawberry Jelly Powder', '1.29', 'https://product-images.metro.ca/images/h01/hc4/9986883584030.jpg', '85 g', 'Jell-O', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/kits-mixes-fillings/strawberry-jelly-powder/p/066188013201', NULL, 'superc'),
('superc066188013300', 'Raspberry Jelly Powder', '1.29', 'https://product-images.metro.ca/images/h32/ha8/9986877325342.jpg', '85 g', 'Jell-O', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/kits-mixes-fillings/raspberry-jelly-powder/p/066188013300', NULL, 'superc'),
('superc066188013409', 'Cherry Jelly Powder', '1.29', 'https://product-images.metro.ca/images/hb6/he6/9986847440926.jpg', '85 g', 'Jell-O', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/kits-mixes-fillings/cherry-jelly-powder/p/066188013409', NULL, 'superc'),
('superc066188014000', 'Orange Jelly Powder', '1.29', 'https://product-images.metro.ca/images/hcd/hac/9986841313310.jpg', '85 g', 'Jell-O', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/kits-mixes-fillings/orange-jelly-powder/p/066188014000', NULL, 'superc'),
('superc066188014109', 'Lemon Jelly Powder', '1.29', 'https://product-images.metro.ca/images/h6e/hac/9986865037342.jpg', '85 g', 'Jell-O', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/kits-mixes-fillings/lemon-jelly-powder/p/066188014109', NULL, 'superc'),
('superc066200000875', 'Powdered Mustard', '4.99', 'https://product-images.metro.ca/images/h5c/h6c/10421703213086.jpg', '88 g', 'Keen\'s', 'https://www.superc.ca/en/aisles/pantry/condiments-toppings/ketchup-mustard/powdered-mustard/p/066200000875', NULL, 'superc'),
('superc066200001865', 'Chili Powder', '6.49', 'https://product-images.metro.ca/images/h9b/h30/10486546956318.jpg', '138 g', 'Club House', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/herb-spice-blends/chili-powder/p/066200001865', NULL, 'superc'),
('superc066200001872', 'Garlic Powder', '8.69', 'https://product-images.metro.ca/images/h0d/h63/10727323566110.jpg', '165 g', 'Club House', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/garlic-powder/p/066200001872', NULL, 'superc'),
('superc066200011666', 'Curry Powder', '8.49', 'https://product-images.metro.ca/images/hcd/hf8/10062154760222.jpg', '110 g', 'Club House', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/curry-powder/p/066200011666', NULL, 'superc'),
('superc066200011710', 'Onion Powder', '6.49', 'https://product-images.metro.ca/images/h6c/h76/10134482419742.jpg', '116 g', 'Club House', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/onion-powder/p/066200011710', NULL, 'superc'),
('superc066721001139', 'Spinach and Roasted Garlic Wheat Crackers', '2 / ', 'https://product-images.metro.ca/images/h6a/hf6/9526409232414.jpg', '175 g', 'Wheat Thins', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/crackers/spinach-and-roasted-garlic-wheat-crackers/p/066721001139', NULL, 'superc'),
('superc066721005861', 'Original Cookies', '3.69', 'https://product-images.metro.ca/images/h1b/had/11432747237406.jpg', '303 g', 'FudgeeO', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/original-cookies/p/066721005861', NULL, 'superc'),
('superc066721005885', 'Double Stuf Cookies', '3.69', 'https://product-images.metro.ca/images/h0f/h97/9527292428318.jpg', '303 g', 'FudgeeO', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/double-stuf-cookies/p/066721005885', NULL, 'superc'),
('superc066721006493', 'Fig Cookies, Newtons', '4.49', 'https://product-images.metro.ca/images/h6b/h53/10372616421406.jpg', '283 g', 'Christie', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/fig-cookies/p/066721006493', NULL, 'superc'),
('superc066721006684', 'Original Chocolate Chip Cookies, Value Pack', '5.49', 'https://product-images.metro.ca/images/h79/h32/11432746811422.jpg', '460 g', 'Chips Ahoy!', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/original-chocolate-chip-cookies/p/066721006684', NULL, 'superc'),
('superc066721010414', 'Whole Grain Wafers', '5.99', 'https://product-images.metro.ca/images/h7e/h00/9526802481182.jpg', '400 g', 'Honey Maid', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/whole-grain-wafers/p/066721010414', NULL, 'superc'),
('superc066721018748', 'Whole Wheat Crackers', '4.29', 'https://product-images.metro.ca/images/h81/h80/12354344681502.jpg', '500 g', 'Premium Plus', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/crackers/whole-wheat-crackers/p/066721018748', NULL, 'superc'),
('superc066721025456', 'Mega Stuffed Sandwich Cookies', '5.49', 'https://product-images.metro.ca/images/h8e/h6f/11319996121118.jpg', '374 g', 'Oreo', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/mega-stuffed-sandwich-cookies/p/066721025456', NULL, 'superc'),
('superc066721026590', 'Chocolate Sandwich Cookies, The Original', '3.69', 'https://product-images.metro.ca/images/hdb/hbf/11068874424350.jpg', '270 g', 'Oreo', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/chocolate-sandwich-cookies/p/066721026590', NULL, 'superc'),
('superc066721027177', 'Original Flavour Wheat Crackers, Value Pack', '4.69', 'https://product-images.metro.ca/images/heb/h2d/11068872327198.jpg', '350 g', 'Wheat Thins', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/crackers/original-flavour-wheat-crackers/p/066721027177', NULL, 'superc'),
('superc066721027184', 'Vegetable Wheat Crackers, Vegetable Thins Value Pack', '4.69', 'https://product-images.metro.ca/images/h1d/hd0/10225304371230.jpg', '350 g', 'Wheat Thins', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/crackers/vegetable-wheat-crackers/p/066721027184', NULL, 'superc'),
('superc066721028174', 'Classic Wheat Cracker, Triscuit', '3.49', 'https://product-images.metro.ca/images/hdd/hc4/12656960864286.jpg', '185 g', 'Christie', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/crackers/classic-wheat-cracker/p/066721028174', NULL, 'superc'),
('superc066721028358', 'Vegetable Wheat Crackers', '2 / ', 'https://product-images.metro.ca/images/h2c/h0d/12175828680734.jpg', '180 g', 'Vegetable Thins', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/crackers/vegetable-wheat-crackers/p/066721028358', NULL, 'superc'),
('superc066721028426', 'Original Flavour Wheat Crackers', '2 / ', 'https://product-images.metro.ca/images/hde/hb2/12175815376926.jpg', '180 g', 'Wheat Thins', 'https://www.superc.ca/en/aisles/snacks/salty-snacks/crackers/original-flavour-wheat-crackers/p/066721028426', NULL, 'superc'),
('superc067100004918', 'Baking Powder', '7.29', 'https://product-images.metro.ca/images/h57/h1f/11412518174750.jpg', '450 g', 'Magic', 'https://www.superc.ca/en/aisles/pantry/baking-ingredients/flour-baking-essentials/baking-powder/p/067100004918', NULL, 'superc'),
('superc067311010326', 'Apple Juice', '3.59', 'https://product-images.metro.ca/images/h6b/h57/11513838010398.jpg', '8x200 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/juice-drinks-boxes/apple-juice/p/067311010326', NULL, 'superc'),
('superc067311010333', 'Apple Juice', '0.97', 'https://product-images.metro.ca/images/h9a/h2e/11513909018654.jpg', '960 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/apple-juice/p/067311010333', NULL, 'superc'),
('superc067311016328', 'Apple and Grape Juice Boxes', '3.59', 'https://product-images.metro.ca/images/h72/h0b/11513928908830.jpg', '8x200 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/juice-drinks-boxes/apple-and-grape-juice-boxes/p/067311016328', NULL, 'superc'),
('superc067311018322', 'Orange Juice, Pure Breakfast', '3.59', 'https://product-images.metro.ca/images/he8/h82/11513905578014.jpg', '8x200 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/juice-drinks-boxes/orange-juice/p/067311018322', NULL, 'superc'),
('superc067311018339', 'Orange Juice, Pure Breakfast', '0.97', 'https://product-images.metro.ca/images/h00/h22/11513920421918.jpg', '960 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/orange-juice/p/067311018339', NULL, 'superc'),
('superc067311028338', 'Pineapple Juice', '0.97', 'https://product-images.metro.ca/images/hc6/hbe/11412564443166.jpg', '960 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/pineapple-juice/p/067311028338', NULL, 'superc'),
('superc067311037323', 'Exotic Mango Fruit Juice Boxes', '3.59', 'https://product-images.metro.ca/images/h0c/hd9/11513916358686.jpg', '8x200 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/juice-drinks-boxes/exotic-mango-fruit-juice-boxes/p/067311037323', NULL, 'superc'),
('superc067311040125', 'Strawberry Banana Juice', '0.97', 'https://product-images.metro.ca/images/h8a/h8a/11513907347486.jpg', '960 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/strawberry-banana-juice/p/067311040125', NULL, 'superc'),
('superc067311532132', 'Clementine Fruit Juice Boxes, Hydrafruit', '3.59', 'https://product-images.metro.ca/images/h98/h52/11735063199774.jpg', '8x200 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/clementine-fruit-juice-boxes/p/067311532132', NULL, 'superc');
INSERT INTO `item` (`item_id`, `name`, `price`, `image`, `quantity`, `brand`, `link`, `description`, `store`) VALUES
('superc067311532880', 'Peach Juice Boxes, Hydrafruit', '3.59', 'https://product-images.metro.ca/images/hb1/h72/12752663478302.jpg', '8x200 mL', 'Oasis', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/juice-drinks-boxes/peach-juice-boxes/p/067311532880', NULL, 'superc'),
('superc067311807100', 'Not From Concentrate Apple Juice Boxes, Orchard Coll...', '3.59', 'https://product-images.metro.ca/images/h31/h59/11937231699998.jpg', '8x200 mL', 'Rougemont', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/refrigerated-juices-drinks/not-from-concentrate-apple-juice-boxes/p/067311807100', NULL, 'superc'),
('superc068100892376', 'Light Cheese Spread', '5.99', 'https://product-images.metro.ca/images/hc3/h80/9986828009502.jpg', '450 g', 'Cheez Whiz', 'https://www.superc.ca/en/aisles/dairy-eggs/packaged-cheese/cream-cheese-spreads/light-cheese-spread/p/068100892376', NULL, 'superc'),
('superc068200010014', '3.25% Homogenized Milk, PurFiltre', '3.79', 'https://product-images.metro.ca/images/h72/h93/11354252443678.jpg', '1 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/3-25-homogenized-milk/p/068200010014', NULL, 'superc'),
('superc068200010021', '3.25% Homogenized Milk, PurFiltre', '5.89', 'https://product-images.metro.ca/images/h14/hfa/11354245234718.jpg', '2 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/3-25-homogenized-milk/p/068200010021', NULL, 'superc'),
('superc068200010045', '3.25% Homogenized Milk, PurFiltre', '9.79', 'https://product-images.metro.ca/images/hb5/h4d/11354256539678.jpg', '4 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/3-25-homogenized-milk/p/068200010045', NULL, 'superc'),
('superc068200010113', '2% Milk, PurFiltre', '3.79', 'https://product-images.metro.ca/images/ha6/h6d/11354256211998.jpg', '1 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200010113', NULL, 'superc'),
('superc068200010120', '2% Milk, PurFiltre', '5.19', 'https://product-images.metro.ca/images/h0f/hec/11354247069726.jpg', '2 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200010120', NULL, 'superc'),
('superc068200010144', '2% Milk, PurFiltre', '9.09', 'https://product-images.metro.ca/images/h94/hd5/11354252640286.jpg', '4 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200010144', NULL, 'superc'),
('superc068200010212', '1% Milk, PurFiltre', '3.79', 'https://product-images.metro.ca/images/he2/h54/11354261913630.jpg', '1 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200010212', NULL, 'superc'),
('superc068200010229', '1% Milk, PurFiltre', '5.19', 'https://product-images.metro.ca/images/h2b/h41/11354256474142.jpg', '2 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200010229', NULL, 'superc'),
('superc068200010243', '1% Milk, PurFiltre', '9.09', 'https://product-images.metro.ca/images/hff/hba/11354248970270.jpg', '4 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200010243', NULL, 'superc'),
('superc068200010311', '0% Skim Milk, PurFiltre', '3.79', 'https://product-images.metro.ca/images/h97/h02/11354245201950.jpg', '1 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/0-skim-milk/p/068200010311', NULL, 'superc'),
('superc068200010328', '0% Skim Milk, PurFiltre', '5.19', 'https://product-images.metro.ca/images/h30/he5/11354248806430.jpg', '2 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/0-skim-milk/p/068200010328', NULL, 'superc'),
('superc068200010342', 'Skim Milk, PurFiltre', '9.09', 'https://product-images.metro.ca/images/hde/h28/11354261487646.jpg', '4 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/068200010342', NULL, 'superc'),
('superc068200442877', '3.25% Banana Cream Flavoured Balkan Style Yogurt, Or...', '2.99', 'https://product-images.metro.ca/images/hf9/h8b/12735343722526.jpg', '650 g', 'Astro', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/yogurt-tubs/3-25-banana-cream-flavoured-balkan-style-yogurt/p/068200442877', NULL, 'superc'),
('superc068200466170', '1% Chocolate Milk, UltraPur', '5.99', 'https://product-images.metro.ca/images/h59/hb9/11354287079454.jpg', '1.5 L', 'Lactantia', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-chocolate-milk/p/068200466170', NULL, 'superc'),
('superc068505100250', '100% Whole Wheat Bread', '4.99', 'https://product-images.metro.ca/images/h13/h7c/10123685625886.jpg', '500 g', 'St-Méthode', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/100-whole-wheat-bread/p/068505100250', NULL, 'superc'),
('superc068505101325', '100% Whole Grain With Sprouted Wheat Sliced Bread', '4.99', 'https://product-images.metro.ca/images/ha3/hfb/10268238086174.jpg', '550 g', 'St-Méthode', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/100-whole-grain-with-sprouted-wheat-sliced-bread/p/068505101325', NULL, 'superc'),
('superc068505102285', 'Integral sliced bread', '4.29', 'https://product-images.metro.ca/images/h80/h5c/10268239921182.jpg', '550 g', 'St-Méthode', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/artisan-specialty/integral-sliced-bread/p/068505102285', NULL, 'superc'),
('superc068505110051', 'Quinoa bread', '4.99', 'https://product-images.metro.ca/images/hcf/h3b/10268236677150.jpg', '550 g', 'St-Méthode', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/artisan-specialty/quinoa-bread/p/068505110051', NULL, 'superc'),
('superc068700101298', 'Strawberry Banana Flavoured Protein Milkshake, Sport', '2.49', 'https://product-images.metro.ca/images/h60/hd2/10946096463902.jpg', '325 mL', 'Milk 2 Go', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/strawberry-banana-flavoured-protein-milkshake/p/068700101298', NULL, 'superc'),
('superc068700106491', 'Vanilla Flavoured Protein Milkshake, Sport', '4.09', 'https://product-images.metro.ca/images/h28/h9e/10946136703006.jpg', '473 mL', 'Milk 2 Go', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/vanilla-flavoured-protein-milkshake/p/068700106491', NULL, 'superc'),
('superc068700106514', 'Chocolate Flavour Protein Milkshake, Sport', '4.09', 'https://product-images.metro.ca/images/haa/hd7/10946135261214.jpg', '473 mL', 'Milk 2 Go', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/chocolate-flavour-protein-milkshake/p/068700106514', NULL, 'superc'),
('superc068700303388', 'Chocolate Milk Protein Shake, Sport', '2.49', 'https://product-images.metro.ca/images/ha5/h48/11860662747166.jpg', '325 mL', 'Milk 2 Go', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/chocolate-milk-protein-shake/p/068700303388', NULL, 'superc'),
('superc068700303395', 'Vanilla Flavoured Protein Milkshake, Sport', '2.49', 'https://product-images.metro.ca/images/h23/h3c/11627058069534.jpg', '325 mL', 'Milk 2 Go', 'https://www.superc.ca/en/aisles/dairy-eggs/milk-cream-butter/flavoured-milk/vanilla-flavoured-protein-milkshake/p/068700303395', NULL, 'superc'),
('superc068721004004', 'Raisin bread', '5.49', 'https://product-images.metro.ca/images/hda/hae/11488812302366.jpg', '450 g', 'Sun-Maid', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/artisan-specialty/raisin-bread/p/068721004004', NULL, 'superc'),
('superc069299242164', 'Tempura Battered Fish', '9.99', 'https://product-images.metro.ca/images/h1f/h9f/11565906133022.jpg', '510 g', 'Janes', 'https://www.superc.ca/en/aisles/fish-seafood/frozen-fish-seafood/seasoned-breaded/tempura-battered-fish/p/069299242164', NULL, 'superc'),
('superc069700052757', 'Flaky Apple Turnovers Preparation with Dough, Fillin...', '3.59', 'https://product-images.metro.ca/images/h28/h0b/12174875983902.jpg', '383 g', 'Pillsbury', 'https://www.superc.ca/en/aisles/dairy-eggs/chilled-desserts-dough/chilled-dough/flaky-apple-turnovers-preparation-with-dough-filling-and-icing/p/069700052757', NULL, 'superc'),
('superc069700131971', 'Reese\'s Cookie Dough', '4.79', 'https://product-images.metro.ca/images/h7a/h42/12175434809374.jpg', '454 g', 'Pillsbury', 'https://www.superc.ca/en/aisles/dairy-eggs/chilled-desserts-dough/chilled-dough/reese-s-cookie-dough/p/069700131971', NULL, 'superc'),
('superc069700268219', 'Chocolate Chunk And Chip Cookies Dough', '4.79', 'https://product-images.metro.ca/images/h70/hc0/10784660127774.jpg', '454 g', 'Pillsbury', 'https://www.superc.ca/en/aisles/dairy-eggs/chilled-desserts-dough/chilled-dough/chocolate-chunk-and-chip-cookies-dough/p/069700268219', NULL, 'superc'),
('superc069700268233', 'Chocolatey Chip Cookies Dough', '2.99', 'https://product-images.metro.ca/images/h43/h67/10784653443102.jpg', '468 g', 'Pillsbury', 'https://www.superc.ca/en/aisles/dairy-eggs/chilled-desserts-dough/chilled-dough/chocolatey-chip-cookies-dough/p/069700268233', NULL, 'superc'),
('superc069700268240', 'Chocolatey Chunk Cookies Dough', '2.99', 'https://product-images.metro.ca/images/h43/h2c/10784659406878.jpg', '468 g', 'Pillsbury', 'https://www.superc.ca/en/aisles/dairy-eggs/chilled-desserts-dough/chilled-dough/chocolatey-chunk-cookies-dough/p/069700268240', NULL, 'superc'),
('superc069700268271', 'Chocolate Chip Cookies Dough', '4.79', 'https://product-images.metro.ca/images/h76/h93/12174877458462.jpg', '454 g', 'Pillsbury', 'https://www.superc.ca/en/aisles/dairy-eggs/chilled-desserts-dough/chilled-dough/chocolate-chip-cookies-dough/p/069700268271', NULL, 'superc'),
('superc072400011597', 'Hot Cereal', '4.79', 'https://product-images.metro.ca/images/h8b/hd6/11627059347486.jpg', '800 g', 'Cream of Wheat', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/oatmeal-hot-cereals/hot-cereal/p/072400011597', NULL, 'superc'),
('superc072890006820', 'Non-Alcoholic Dutch Lager Beer', '26.99', 'https://product-images.metro.ca/images/ha8/h87/12230667730974.jpg', '12x330 mL', 'Heineken', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-dutch-lager-beer/p/072890006820', NULL, 'superc'),
('superc082000796657', 'Berry Blast Flavoured Alcoholic Malt Beverage, Seltz...', '15.49', 'https://product-images.metro.ca/images/ha7/h2e/11022199947294.jpg', '6x355 mL', 'Smirnoff', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/cocktails-other-wines/berry-blast-flavoured-alcoholic-malt-beverage/p/082000796657', NULL, 'superc'),
('superc082000802365', 'Lemonade Flavoured Alcoholic Malt Beverage Variety P...', '26.99', 'https://product-images.metro.ca/images/h19/ha3/11401526083614.jpg', '12x355 mL', 'Smirnoff', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/cocktails-other-wines/lemonade-flavoured-alcoholic-malt-beverage-variety-pack/p/082000802365', NULL, 'superc'),
('superc087692019565', 'Berry Flavoured Alcoholic Drink Variety Pack', '25.99', 'https://product-images.metro.ca/images/h57/h7d/12856167858206.jpg', '12x355 mL', 'Truly Seltzer', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/berry-flavoured-alcoholic-drink-variety-pack/p/087692019565', NULL, 'superc'),
('superc214043', 'Belgian Bread', '3.99', 'https://product-images.metro.ca/images/hf0/ha6/10835041353758.jpg', '645 g', '', 'https://www.superc.ca/en/aisles/bread-bakery-products/freshly-baked-bread-baguettes/fresh-loaves-breads/belgian-bread/p/214043', NULL, 'superc'),
('superc215172', 'Belgian bread', '3.99', 'https://product-images.metro.ca/images/hcc/h49/8860246507550.jpg', '455 g', 'Merit', 'https://www.superc.ca/en/aisles/bread-bakery-products/freshly-baked-bread-baguettes/fresh-loaves-breads/belgian-bread/p/215172', NULL, 'superc'),
('superc3073781112535', 'Processed Cheese Product and Whole Wheat Breadsticks...', '3.99', 'https://product-images.metro.ca/images/hf2/h72/11761606131742.jpg', '140 g', 'The Laughing Cow', 'https://www.superc.ca/en/aisles/dairy-eggs/packaged-cheese/cream-cheese-spreads/processed-cheese-product-and-whole-wheat-breadsticks-snacks/p/3073781112535', NULL, 'superc'),
('superc3080216060743', '0% Alcohol White Beer, 1664', '13.49', 'https://product-images.metro.ca/images/h80/hc2/12272322576414.jpg', '6x330 mL', 'Kronenbourg', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/0-alcohol-white-beer/p/3080216060743', NULL, 'superc'),
('superc5000213025420', 'Non Alcoholic Beer', '13.49', 'https://product-images.metro.ca/images/h43/h6d/12258665529374.jpg', '4x440 mL', 'Guinness', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-beer/p/5000213025420', NULL, 'superc'),
('superc5281012013782', 'Non-Alcoholic Beer', '10.99', 'https://product-images.metro.ca/images/h9e/h53/11764134805534.jpg', '6x330 ml', 'Laziza', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-beer/p/5281012013782', NULL, 'superc'),
('superc5410126116236', 'Biscoff Cookies', '3.99', 'https://product-images.metro.ca/images/hd5/h86/12771020046366.jpg', '186 g', 'Lotus', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/biscoff-cookies/p/5410126116236', NULL, 'superc'),
('superc620383010023', 'Garlic Powder', '3.99', 'https://product-images.metro.ca/images/h7e/h29/10250252386334.jpg', '39 g', 'Dion', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/garlic-powder/p/620383010023', NULL, 'superc'),
('superc620383010184', 'Curry Powder', '2.99', 'https://product-images.metro.ca/images/hb4/h8c/10319474098206.jpg', '36 g', 'Dion', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/curry-powder/p/620383010184', NULL, 'superc'),
('superc620383010702', 'Onion Powder', '2.79', 'https://product-images.metro.ca/images/h51/h2e/10239172280350.jpg', '39 g', 'Dion', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/herb-spice-blends/onion-powder/p/620383010702', NULL, 'superc'),
('superc620383012430', 'Curry Powder', '3.99', 'https://product-images.metro.ca/images/h74/haa/10378900144158.jpg', '80 g', 'Dion', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/herb-spice-blends/curry-powder/p/620383012430', NULL, 'superc'),
('superc620383012607', 'Garlic Powder', '5.99', 'https://product-images.metro.ca/images/he3/h3f/10378929537054.jpg', '100 g', 'Dion', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/garlic-powder/p/620383012607', NULL, 'superc'),
('superc620383013536', 'Sumac Powder', '3.99', 'https://product-images.metro.ca/images/h9b/hdd/12555860410398.jpg', '42 g', 'Dion', 'https://www.superc.ca/en/aisles/pantry/herbs-spices-sauces/spices/sumac-powder/p/620383013536', NULL, 'superc'),
('superc626114191009', 'Whole Wheat Tortillas', '4.99', 'https://product-images.metro.ca/images/h08/h19/9761285570590.jpg', '564 g', 'Mejicano', 'https://www.superc.ca/en/aisles/bread-bakery-products/tortillas-flat-breads/tortillas/whole-wheat-tortillas/p/626114191009', NULL, 'superc'),
('superc626233271408', 'Oatmeal Cookies', '3.99', 'https://product-images.metro.ca/images/h8f/h92/10715290959902.jpg', '300 g', 'Sara Lee', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/cookies-scones/oatmeal-cookies/p/626233271408', NULL, 'superc'),
('superc627552104026', 'Seitan Burger to Slice', '9.99', 'https://product-images.metro.ca/images/he4/h87/11477972910110.jpg', '800 g', 'Gusta', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/seitan-burger-to-slice/p/627552104026', NULL, 'superc'),
('superc627552104057', 'Veggie Ground , Original', '4.49', 'https://product-images.metro.ca/images/h40/h21/11478019538974.jpg', '340 g', 'Gusta', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/veggie-ground/p/627552104057', NULL, 'superc'),
('superc627552108024', 'Plant-Based No-Chicken Spread', '4.99', 'https://product-images.metro.ca/images/hab/hda/11320032002078.jpg', '240 g', 'Gusta', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/plant-based-no-chicken-spread/p/627552108024', NULL, 'superc'),
('superc627552108031', 'Plant-Based No-Chicken Strips', '4.99', 'https://product-images.metro.ca/images/h7d/hef/11320032460830.jpg', '200 g', 'Gusta', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/plant-based-no-chicken-strips/p/627552108031', NULL, 'superc'),
('superc627552108048', 'Plant-Based Beefless Strips', '4.99', 'https://product-images.metro.ca/images/hb1/h98/12192237223966.jpg', '200 g', 'Gusta', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/plant-based-beefless-strips/p/627552108048', NULL, 'superc'),
('superc627552108062', 'Plant-Based General Tao', '4.99', 'https://product-images.metro.ca/images/ha2/h95/12192235061278.jpg', '240 g', 'Gusta', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/plant-based-general-tao/p/627552108062', NULL, 'superc'),
('superc627843577898', 'Vegan Cheese, Original', '4.99', 'https://product-images.metro.ca/images/he5/h40/9530567458846.jpg', '227 g', 'Gusta', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/vegan-cheese/p/627843577898', NULL, 'superc'),
('superc628110125170', 'Non-Alcoholic IPA Beer, Découverte', '3.99', 'https://product-images.metro.ca/images/h6b/hb2/10498146172958.jpg', '473 mL - can', 'Microbrasserie Le BockAle', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-ipa-beer/p/628110125170', NULL, 'superc'),
('superc628154020035', 'Natural Whole Grain Wheat Cereal, Shredded Wheat', '4.69', 'https://product-images.metro.ca/images/h56/h8b/11198066360350.jpg', '425 g', 'Post', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/natural-whole-grain-wheat-cereal/p/628154020035', NULL, 'superc'),
('superc628154138006', 'Honey Flavoured Wheat Cereals, Sugar-Crisp', '4.79', 'https://product-images.metro.ca/images/h9f/h06/11198053351454.jpg', '365 g', 'Post', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/honey-flavoured-wheat-cereals/p/628154138006', NULL, 'superc'),
('superc628154138105', 'Honey Flavoured Wheat Cereals, Sugar-Crisp', '4.99', 'https://product-images.metro.ca/images/hc2/hc7/11198065606686.jpg', '550 g', 'Post', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/honey-flavoured-wheat-cereals/p/628154138105', NULL, 'superc'),
('superc628154138983', 'Corn and Oats Cereal, Honeycomb', '4.79', 'https://product-images.metro.ca/images/h62/h33/11198056955934.jpg', '400 g', 'Post', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/corn-and-oats-cereal/p/628154138983', NULL, 'superc'),
('superc628154380214', 'Original Cereal, Shreddies', '4.99', 'https://product-images.metro.ca/images/h38/h89/11205142249502.jpg', '440 g', 'Post', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/original-cereal/p/628154380214', NULL, 'superc'),
('superc628154433231', 'Cereals, Honeycomb', '4.99', 'https://product-images.metro.ca/images/hcf/hf5/11670109945886.jpg', '525 g', 'Post', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/family-cereals/cereals/p/628154433231', NULL, 'superc'),
('superc629025350053', '1% Banana Flavoured Drinkable Yogurt, Nanö', '4.79', 'https://product-images.metro.ca/images/h66/hf7/12735348375582.jpg', '6x93 mL', 'iÖGO', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/1-banana-flavoured-drinkable-yogurt/p/629025350053', NULL, 'superc'),
('superc629025350459', '1% Strawberry and Banana Flavoured Lactose-Free Drin...', '4.79', 'https://product-images.metro.ca/images/hcf/hcb/12735379537950.jpg', '6x93 mL', 'iÖGO', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/1-strawberry-and-banana-flavoured-lactose-free-drinkable-yogurt/p/629025350459', NULL, 'superc'),
('superc629025350466', '1% Apple and Grape Flavoured Lactose-Free Drinkable ...', '4.79', 'https://product-images.metro.ca/images/h1d/h7d/12735385239582.jpg', '6x93 mL', 'iÖGO', 'https://www.superc.ca/en/aisles/dairy-eggs/yogurt/drinkable-yogurts/1-apple-and-grape-flavoured-lactose-free-drinkable-yogurt/p/629025350466', NULL, 'superc'),
('superc629255281042', 'Non-Alcoholic IPA Beer, L\'Amer IPA', '14.99', 'https://product-images.metro.ca/images/ha9/h61/10020907122718.jpg', '4x473 mL - cans', 'Brasseur de Montréal', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-ipa-beer/p/629255281042', NULL, 'superc'),
('superc629255292048', 'Non-Alcoholic Beer Assortment', '14.99', 'https://product-images.metro.ca/images/h18/ha0/11318765420574.jpg', '4x473 mL', 'Brasseur de Montréal', 'https://www.superc.ca/en/aisles/beer-wine/beer-cider/artisanal-beer-microbrewery/non-alcoholic-beer-assortment/p/629255292048', NULL, 'superc'),
('superc684746100363', 'Assortment of Alcoholic Drinks, Signature Pack', '24.99', 'https://product-images.metro.ca/images/hf0/h69/11937385152542.jpg', '12x355 mL - cans', 'Bombay', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/assortment-of-alcoholic-drinks/p/684746100363', NULL, 'superc'),
('superc684746696774', 'Caesar Original Alcoholic Beverage, Clamato', '25.99', '/images/shared/large/default--400x400.jpg?v=2024.2.sc.d12', '12x341 mL', 'Mott\'s', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/caesar-original-alcoholic-beverage/p/684746696774', NULL, 'superc'),
('superc684746898598', 'Alcoholic Malt Beverage, Hard Ice', '12.99', 'https://product-images.metro.ca/images/h83/h04/10009626673182.jpg', '6x355 mL', 'Poppers', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/alcoholic-malt-beverage/p/684746898598', NULL, 'superc'),
('superc685750000502', 'Sugar Snap Peas', '4.99', 'https://product-images.metro.ca/images/h47/h4d/8893481320478.jpg', '200 g', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegetables/peas-beans-corn/sugar-snap-peas/p/685750000502', NULL, 'superc'),
('superc685750091296', 'Organic local McIntosh apples', '4.99', 'https://product-images.metro.ca/images/h62/h2e/9094000967710.jpg', '2 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/organic-fruits-vegetables/organic-local-mcintosh-apples/p/685750091296', NULL, 'superc'),
('superc685750091302', 'Bag of Apples, Spartan', '4.99', 'https://product-images.metro.ca/images/h9f/hb1/10323240386590.jpg', '2 lb', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-apples/p/685750091302', NULL, 'superc'),
('superc686578014016', 'Bag of Apples, Granny Smith', '5.99', 'https://product-images.metro.ca/images/h62/hf2/11511530520606.jpg', '907 g', 'Collatio', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-apples/p/686578014016', NULL, 'superc'),
('superc686578014023', 'Bag of Apples, Gala', '5.99', 'https://product-images.metro.ca/images/h44/hd1/11511531044894.jpg', '907 g', 'Collatio', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/bag-of-apples/p/686578014023', NULL, 'superc'),
('superc686578014054', 'Apple Trio', '5.99', 'https://product-images.metro.ca/images/h19/hef/11511582916638.jpg', '907 g', 'Collatio', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/apple-trio/p/686578014054', NULL, 'superc'),
('superc686578274885', 'Sliced Red Apples in Snack Packs', '3.99', 'https://product-images.metro.ca/images/hc7/h32/11492991696926.jpg', '5x57 g', '', 'https://www.superc.ca/en/aisles/fruits-vegetables/fruits/apples-pears/sliced-red-apples-in-snack-packs/p/686578274885', NULL, 'superc'),
('superc696685100021', 'Seeded Bread', '8.49', 'https://product-images.metro.ca/images/hf3/h4b/11449638584350.jpg', '544 g', 'Carbonaut', 'https://www.superc.ca/en/aisles/frozen/bakery/bread-baked-goods/seeded-bread/p/696685100021', NULL, 'superc'),
('superc749880110798', 'Butter Crisps', '5.99', 'https://product-images.metro.ca/images/h21/hdb/9533040918558.jpg', '100 g', 'Jules Destrooper', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/butter-crisps/p/749880110798', NULL, 'superc'),
('superc7610037001302', 'Granor Cookies', '3.99', 'https://product-images.metro.ca/images/hf5/h79/9533070508062.jpg', '100 g', 'Wernli', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/granor-cookies/p/7610037001302', NULL, 'superc'),
('superc7610062091903', 'Truffet Cookies', '3.99', 'https://product-images.metro.ca/images/hcd/hf9/9532997369886.jpg', '100 g', 'Wernli', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/truffet-cookies/p/7610062091903', NULL, 'superc'),
('superc771118451236', 'Non-Alcoholic Wine Beverage Assortment, Mix-Pak', '18.99', 'https://product-images.metro.ca/images/ha8/h26/10062123401246.jpg', '12x341 mL', 'Casal Domingo', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/non-alcoholic-wine-beverage-assortment/p/771118451236', NULL, 'superc'),
('superc771118451571', 'Tropical Fruit Flavoured Non-Alcoholic Wine Beverage', '7.49', 'https://product-images.metro.ca/images/hbb/hca/12192287096862.jpg', '341 mL', 'Casal Domingo', 'https://www.superc.ca/en/aisles/beer-wine/wines-cocktails-coolers/coolers/tropical-fruit-flavoured-non-alcoholic-wine-beverage/p/771118451571', NULL, 'superc'),
('superc771322002606', 'Cheddar and Apple Sausages', '5.49', 'https://product-images.metro.ca/images/h37/h91/11432678719518.jpg', '375 g', 'La Fernandière', 'https://www.superc.ca/en/aisles/meat-poultry/sausages-bacon/sausages-hot-dogs/cheddar-and-apple-sausages/p/771322002606', NULL, 'superc'),
('superc771815100253', 'Non-Alcoholic IPA Beer, Hors Sentiers', '3.99', 'https://product-images.metro.ca/images/h60/h47/10221828800542.jpg', '473 mL - can', 'Boréale', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-ipa-beer/p/771815100253', NULL, 'superc'),
('superc771815100925', 'Non-Alcoholic Beer Assortment, Hors Sentiers', '20.99', 'https://product-images.metro.ca/images/hfe/h8e/11244154585118.jpg', '12x355 mL', 'Boréale', 'https://www.superc.ca/en/aisles/beverages/non-alcoholic-beverages/non-alcoholic-beer/non-alcoholic-beer-assortment/p/771815100925', NULL, 'superc'),
('superc771856472159', 'Chocolate Glazed Donut Hole', '3.99', '/images/shared/large/default--400x400.jpg?v=2024.2.sc.d12', '300 g', 'Donut Time', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/chocolate-glazed-donut-hole/p/771856472159', NULL, 'superc'),
('superc771856479103', 'Powdered Sugar Donut', '3.99', '/images/shared/large/default--400x400.jpg?v=2024.2.sc.d12', '300 g', 'Donut Time', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/powdered-sugar-donut/p/771856479103', NULL, 'superc'),
('superc772643009541', 'Le Trio Shrimp, Lobster and Smoked Salmon Spreads', '3.99', 'https://product-images.metro.ca/images/h8b/hd7/12050728878110.jpg', '3x70 g', 'Malimousse', 'https://www.superc.ca/en/aisles/fish-seafood/prepared-fish-seafood/spreads-mousse-caviar/le-trio-shrimp-lobster-and-smoked-salmon-spreads/p/772643009541', NULL, 'superc'),
('superc774567100274', 'Brioche Bread, Bulka', '3.99', 'https://product-images.metro.ca/images/h26/hd8/12230594527262.jpg', '575 g', 'Homemade Patisserie', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/artisan-specialty/brioche-bread/p/774567100274', NULL, 'superc'),
('superc774567100281', 'Egg Bread, Challah', '4.99', 'https://product-images.metro.ca/images/hbd/hae/12230594625566.jpg', '575 g', 'Homemade Patisserie', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/artisan-specialty/egg-bread/p/774567100281', NULL, 'superc'),
('superc775462176012', 'Apple Juice', '4.49', 'https://product-images.metro.ca/images/h89/hf0/11754380918814.jpg', '1.5 L', 'Tradition', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/apple-juice/p/775462176012', NULL, 'superc'),
('superc778739888069', 'Wheat Baguette', '0.89', 'https://product-images.metro.ca/images/hcb/h8c/10711363026974.jpg', '250 g', 'Comas', 'https://www.superc.ca/en/aisles/bread-bakery-products/freshly-baked-bread-baguettes/baguettes/wheat-baguette/p/778739888069', NULL, 'superc'),
('superc779921100709', 'Butter Cookies', '4.79', 'https://product-images.metro.ca/images/h2b/hb5/9836474925086.jpg', '500 g', 'Gioia', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/butter-cookies/p/779921100709', NULL, 'superc'),
('superc779921100907', 'S Cookies', '1.99', 'https://product-images.metro.ca/images/h46/h95/11714303328286.jpg', '200 g', 'Gioia', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/breakfast-bars-pastries/s-cookies/p/779921100907', NULL, 'superc'),
('superc795130009077', 'Maria Cookies', '4.29', 'https://product-images.metro.ca/images/hb9/hab/11412692205598.jpg', '600 g', 'Gullon', 'https://www.superc.ca/en/aisles/snacks/sweet-snacks-candy/cookies-cakes/maria-cookies/p/795130009077', NULL, 'superc'),
('superc816553001070', 'Panko Bread Crumbs', '5.99', 'https://product-images.metro.ca/images/hd4/hd9/9438014242846.jpg', '320 g', 'Aki Sushi', 'https://www.superc.ca/en/aisles/fish-seafood/prepared-fish-seafood/sushi-fish-condiments/panko-bread-crumbs/p/816553001070', NULL, 'superc'),
('superc816697021040', 'Gluten Free Plant Based Simulated Meat', '8.99', 'https://product-images.metro.ca/images/h2e/h5e/10542449000478.jpg', '340 g', 'Impossible', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/gluten-free-plant-based-simulated-meat/p/816697021040', NULL, 'superc'),
('superc816697021064', 'Gluten Free Plant Based Burger Patties', '6.99', 'https://product-images.metro.ca/images/h3c/hde/10504563523614.jpg', '226 g', 'Impossible', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/gluten-free-plant-based-burger-patties/p/816697021064', NULL, 'superc'),
('superc818158012505', 'Toasted Wheat Germ', '6.69', 'https://product-images.metro.ca/images/h67/hb0/11243924815902.jpg', '340 g', 'Kretschmer', 'https://www.superc.ca/en/aisles/pantry/cereals-spreads-syrups/oatmeal-hot-cereals/toasted-wheat-germ/p/818158012505', NULL, 'superc'),
('superc824150701163', 'Pomegranate Juice', '5.99', 'https://product-images.metro.ca/images/hd9/h39/11754045571102.jpg', '473 mL', 'Pom Wonderful', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/shelf-juices-drinks/pomegranate-juice/p/824150701163', NULL, 'superc'),
('superc824150701484', 'Pomegranate Juice', '15.99', 'https://product-images.metro.ca/images/h5d/h4a/11754148102174.jpg', '1.4 L', 'Pom Wonderful', 'https://www.superc.ca/en/aisles/beverages/juices-drinks/refrigerated-juices-drinks/pomegranate-juice/p/824150701484', NULL, 'superc'),
('superc850004207376', 'Plant-Based Hot Italian Sausages', '8.99', 'https://product-images.metro.ca/images/heb/h72/12656777068574.jpg', '400 g', 'Beyond Meat', 'https://www.superc.ca/en/aisles/fruits-vegetables/vegan-vegetarian/vegan-proteins-cheese/plant-based-hot-italian-sausages/p/850004207376', NULL, 'superc'),
('superc851346001059', 'Salted Crunchy Plantain Crisps', '2 / ', 'https://product-images.metro.ca/images/hf2/hd8/12473395970078.jpg', '85 g', 'SS-Frutas Imports', 'https://www.superc.ca/en/aisles/fruits-vegetables/dried-fruits-nuts/salted-crunchy-plantain-crisps/p/851346001059', NULL, 'superc'),
('superc851346001066', 'Naturally Sweet Crunchy Plantain Crisps', '2 / ', 'https://product-images.metro.ca/images/hbc/ha4/12473395937310.jpg', '85 g', 'SS-Frutas Imports', 'https://www.superc.ca/en/aisles/fruits-vegetables/dried-fruits-nuts/naturally-sweet-crunchy-plantain-crisps/p/851346001066', NULL, 'superc'),
('superc885250111115', 'Rye bread', '4.29', 'https://product-images.metro.ca/images/hc4/h73/9005303463966.jpg', '340 g', 'Dunn\'s', 'https://www.superc.ca/en/aisles/bread-bakery-products/packaged-bread/rye-other-grains/rye-bread/p/885250111115', NULL, 'superc'),
('superc891249002401', 'Corn Chips, Totopos', '5.29', '/images/shared/large/default--400x400.jpg?v=2024.2.sc.d12', '396.8 g', 'La Visita', 'https://www.superc.ca/en/aisles/world-cuisine/latin/corn-chips/p/891249002401', NULL, 'superc'),
('superc896923001916', 'Banana and Chocolate Cake', '7.99', 'https://product-images.metro.ca/images/hf1/h04/11657515466782.jpg', '500 g', 'Boulangerie du Petit-Pré', 'https://www.superc.ca/en/aisles/bread-bakery-products/desserts-pastries/cakes/banana-and-chocolate-cake/p/896923001916', NULL, 'superc');

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
(1, '2', 3),
(6, 'metro012044011393', 1),
(6, 'metro064420010315', 9),
(6, 'metro068200466125', 1),
(6, 'metro672774017470', 1),
(9, '1', 2),
(9, 'metro055300111000', 2),
(9, 'metro055773004892', 1);

-- --------------------------------------------------------

--
-- Table structure for table `items_in_recipe`
--

CREATE TABLE `items_in_recipe` (
  `recipe_id` int(11) NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `quantity_needed` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items_in_recipe`
--

INSERT INTO `items_in_recipe` (`recipe_id`, `item_id`, `quantity_needed`) VALUES
(1, '2', 2),
(2, '1', 3),
(2, 'metro039978001290', 1),
(3, 'metro039978001290', 2),
(4, 'metro057700015551', 1);

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
('metro012044011393', 'deodorant'),
('metro012044038703', 'deodorant'),
('metro012044038857', 'deodorant'),
('metro012044038895', 'deodorant'),
('metro012044038925', 'deodorant'),
('metro018627597490', 'swedish berries'),
('metro033383007410', 'apple'),
('metro033383088044', 'apple'),
('metro033383465043', 'apple'),
('metro037000808510', 'deodorant'),
('metro037000850632', 'deodorant'),
('metro039978001290', 'protein'),
('metro041143054352', 'swedish berries'),
('metro047400668270', 'deodorant'),
('metro047400668287', 'deodorant'),
('metro055086602679', 'deodorant'),
('metro055300110027', 'milk'),
('metro055300110096', 'milk'),
('metro055300111000', 'milk'),
('metro055300111024', 'milk'),
('metro055300111093', 'milk'),
('metro055300113028', 'milk'),
('metro055300113097', 'milk'),
('metro055577103661', 'eggs'),
('metro055577113288', 'protein'),
('metro055773004892', 'eggs'),
('metro055789006644', 'rice'),
('metro055789720670', 'milk'),
('metro055800331878', 'eggs'),
('metro055872025187', 'milk'),
('metro055872035186', 'milk'),
('metro055872123012', 'milk'),
('metro055989007991', 'protein'),
('metro055989008011', 'protein'),
('metro056100035145', 'deodorant'),
('metro056100035190', 'deodorant'),
('metro056100042495', 'deodorant'),
('metro056725138672', 'rice'),
('metro056725138726', 'rice'),
('metro056725250107', 'rice'),
('metro056725250152', 'rice'),
('metro056725250169', 'rice'),
('metro057000000837', 'eggs'),
('metro057627000586', 'bread'),
('metro057700015551', 'swedish berries'),
('metro057700015551', 'swedish_berries'),
('metro057700017913', 'swedish berries'),
('metro057700017913', 'swedish_berries'),
('metro057700017920', 'swedish berries'),
('metro057700017920', 'swedish_berries'),
('metro057700018095', 'swedish berries'),
('metro057700018095', 'swedish_berries'),
('metro057700215999', 'swedish berries'),
('metro057700215999', 'swedish_berries'),
('metro058000002494', 'deodorant'),
('metro058000007710', 'deodorant'),
('metro058000007727', 'deodorant'),
('metro058000009264', 'deodorant'),
('metro058000009271', 'deodorant'),
('metro058496459482', 'rice'),
('metro058496460044', 'rice'),
('metro058496460068', 'rice'),
('metro058496460105', 'rice'),
('metro058496460129', 'rice'),
('metro058496464578', 'rice'),
('metro058496465865', 'cheese'),
('metro058569150766', 'apple'),
('metro059000003115', 'milk'),
('metro059100008027', 'rice'),
('metro059100008614', 'rice'),
('metro059100008621', 'rice'),
('metro059323011002', 'deodorant'),
('metro059441001428', 'cheese'),
('metro059441006362', 'cheese'),
('metro059600048097', 'apple'),
('metro059749875981', 'swedish berries'),
('metro059749894326', 'cheese'),
('metro059749894692', 'cheese'),
('metro059749896047', 'eggs'),
('metro059749896054', 'eggs'),
('metro059749896061', 'eggs'),
('metro059749896078', 'eggs'),
('metro059749897594', 'bread'),
('metro059749900898', 'bread'),
('metro059749902359', 'rice'),
('metro059749902427', 'rice'),
('metro059749916332', 'bread'),
('metro059749916356', 'bread'),
('metro059749931861', 'cheese'),
('metro059749942249', 'bread'),
('metro059749948111', 'milk'),
('metro059749948838', 'cheese'),
('metro059749954105', 'cheese'),
('metro059749954259', 'swedish berries'),
('metro059749957854', 'apple'),
('metro059749957885', 'apple'),
('metro059749961967', 'cheese'),
('metro059749962421', 'cheese'),
('metro059749962728', 'milk'),
('metro059749965989', 'rice'),
('metro059749969406', 'cheese'),
('metro059749969444', 'cheese'),
('metro059749969451', 'cheese'),
('metro059749970174', 'apple'),
('metro059749971256', 'bread'),
('metro059749974134', 'swedish berries'),
('metro059749974288', 'swedish berries'),
('metro059749976398', 'cheese'),
('metro059749976411', 'cheese'),
('metro059749976817', 'eggs'),
('metro059749976879', 'eggs'),
('metro059749978873', 'cheese'),
('metro059749981019', 'rice'),
('metro059749981026', 'rice'),
('metro059749981033', 'rice'),
('metro059749981057', 'rice'),
('metro059749984218', 'whey'),
('metro059749985116', 'swedish berries'),
('metro059749990738', 'cheese'),
('metro059749992206', 'eggs'),
('metro059749992237', 'eggs'),
('metro060410067659', 'cheese'),
('metro060466853787', 'cheese'),
('metro060569007018', 'bread'),
('metro061077302107', 'eggs'),
('metro061077771200', 'bread'),
('metro061077771248', 'bread'),
('metro061077781254', 'raisin bread'),
('metro061077856334', 'protein'),
('metro061077940095', 'bread'),
('metro061200016734', 'eggs'),
('metro061454251158', 'eggs'),
('metro061659001251', 'bread'),
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
('metro062338805702', 'swedish berries'),
('metro062356540586', 'rice'),
('metro062356542504', 'rice'),
('metro062356547653', 'rice'),
('metro062390120133', 'cheese'),
('metro063400030350', 'bread'),
('metro063400138711', 'bread'),
('metro064100079847', 'swedish berries'),
('metro064100146679', 'swedish berries'),
('metro064100779068', 'swedish berries'),
('metro064420010025', 'milk'),
('metro064420010124', 'milk'),
('metro064420010148', 'milk'),
('metro064420010247', 'milk'),
('metro064420010315', 'milk'),
('metro064420010322', 'milk'),
('metro064420010346', 'milk'),
('metro064420320131', 'protein'),
('metro064420320148', 'protein'),
('metro064420320155', 'protein'),
('metro064819286420', 'apple'),
('metro065244133211', 'milk'),
('metro065244133228', 'milk'),
('metro065333002107', 'deodorant'),
('metro065633158146', 'swedish berries'),
('metro065633197978', 'rice'),
('metro065633437593', 'protein'),
('metro065633437616', 'protein'),
('metro065651003831', 'eggs'),
('metro065651013007', 'eggs'),
('metro065651024225', 'eggs'),
('metro066721026385', 'eggs'),
('metro067000004858', 'swedish berries'),
('metro067002303980', 'protein'),
('metro067002311756', 'protein'),
('metro067311010180', 'apple'),
('metro067311010326', 'apple'),
('metro067311010333', 'apple'),
('metro067400623222', 'cheese'),
('metro067990500224', 'protein'),
('metro068100003499', 'cheese'),
('metro068200010021', 'milk'),
('metro068200010113', 'milk'),
('metro068200010120', 'milk'),
('metro068200010144', 'milk'),
('metro068200010212', 'milk'),
('metro068200010229', 'milk'),
('metro068200010243', 'milk'),
('metro068200010342', 'milk'),
('metro068200466033', 'milk'),
('metro068200466125', 'milk'),
('metro068200550503', 'protein'),
('metro068200550510', 'protein'),
('metro068200550909', 'milk'),
('metro068200550916', 'milk'),
('metro068200550923', 'milk'),
('metro068200885513', 'cheese'),
('metro068400662907', 'eggs'),
('metro068505110051', 'bread'),
('metro068700101298', 'protein'),
('metro068700303388', 'protein'),
('metro068700303395', 'protein'),
('metro068721004004', 'bread'),
('metro068721004004', 'raisin bread'),
('metro070847896371', 'swedish berries'),
('metro071464280604', 'swedish berries'),
('metro071464306519', 'protein'),
('metro073416004337', 'rice'),
('metro079400020840', 'deodorant'),
('metro079400077349', 'deodorant'),
('metro079400122636', 'deodorant'),
('metro079400264558', 'deodorant'),
('metro079400264619', 'deodorant'),
('metro079400446077', 'deodorant'),
('metro079400446190', 'deodorant'),
('metro079400462213', 'deodorant'),
('metro079400534309', 'deodorant'),
('metro079400550200', 'deodorant'),
('metro084213000019', 'bread'),
('metro084213000729', 'bread'),
('metro084213011374', 'bread'),
('metro084213011374', 'protein'),
('metro088702009255', 'swedish berries'),
('metro204541', 'cheese'),
('metro209271', 'bread'),
('metro215172', 'bread'),
('metro231695', 'swedish berries'),
('metro235557', 'bread'),
('metro238020', 'bread'),
('metro238362', 'swedish berries'),
('metro241580', 'apple'),
('metro242340', 'swedish berries'),
('metro243587', 'cheese'),
('metro244441', 'bread'),
('metro244545', 'bread'),
('metro244968', 'apple'),
('metro245293', 'cheese'),
('metro3341500006008', 'cheese'),
('metro623798006506', 'swedish berries'),
('metro627022794054', 'swedish berries'),
('metro628250431124', 'swedish berries'),
('metro628250795035', 'protein'),
('metro628678650114', 'apple'),
('metro628678762107', 'protein'),
('metro629145082315', 'bread'),
('metro667141000308', 'apple'),
('metro669694130617', 'protein'),
('metro672774017470', 'milk'),
('metro672774106167', 'rice'),
('metro696685100021', 'bread'),
('metro722252606426', 'protein'),
('metro722252616449', 'protein'),
('metro725299030414', 'rice'),
('metro725299931179', 'rice'),
('metro737282363096', 'swedish berries'),
('metro773479394870', 'cheese'),
('metro773889744876', 'cheese'),
('metro774304000928', 'raisin bread'),
('metro775462176012', 'apple'),
('metro811620022224', 'protein'),
('metro811740000577', 'raisin bread'),
('metro817351001538', 'cheese'),
('metro838766106700', 'protein'),
('metro838766106717', 'protein'),
('metro872214002039', 'whey'),
('metro872214002053', 'whey'),
('metro872214002091', 'protein'),
('metro872214002091', 'whey'),
('metro877693003614', 'swedish berries'),
('metro885250111115', 'bread'),
('metro885320011017', 'protein'),
('metro890000001264', 'swedish berries'),
('metro890497000412', 'bread'),
('metro890497000870', 'bread'),
('superc018627597636', 'cereal'),
('superc018627597667', 'cereal'),
('superc025583005303', 'protein'),
('superc029145009785', 'whey'),
('superc031200046062', 'juice'),
('superc031200046079', 'juice'),
('superc031200454683', 'juice'),
('superc032601505301', 'apple'),
('superc033383001531', 'apple'),
('superc033383007410', 'apple'),
('superc033383088044', 'apple'),
('superc033383441252', 'apple'),
('superc033383443515', 'apple'),
('superc033383465043', 'apple'),
('superc041331078221', 'alcohol'),
('superc041757674199', 'apple'),
('superc047834000066', 'powder'),
('superc047834063085', 'bread'),
('superc048500000250', 'juice'),
('superc048500000267', 'juice'),
('superc051500420560', 'whey'),
('superc055598561204', 'cookies'),
('superc055653173250', 'cookies'),
('superc055653173359', 'cookies'),
('superc055712100142', 'whey'),
('superc055789720724', 'whey'),
('superc055789720731', 'whey'),
('superc055872024012', 'milk'),
('superc055872025019', 'milk'),
('superc055872025187', 'milk'),
('superc055872026016', 'milk'),
('superc055872094015', 'milk'),
('superc055872102185', 'milk'),
('superc055872105186', 'milk'),
('superc055872123012', 'milk'),
('superc055872183016', 'milk'),
('superc055872183184', 'milk'),
('superc055872700046', 'milk'),
('superc055872700114', 'milk'),
('superc055989100869', 'alcohol'),
('superc056327013070', 'alcohol'),
('superc056327020801', 'seltzer'),
('superc056327022638', 'seltzer'),
('superc056327023406', 'seltzer'),
('superc056800186246', 'banana'),
('superc056800430776', 'banana'),
('superc056800470505', 'banana'),
('superc056800669565', 'sugar'),
('superc056800670820', 'banana'),
('superc056800844214', 'banana'),
('superc056800953329', 'sugar'),
('superc056800953404', 'cereal'),
('superc056920020239', 'banana'),
('superc056920060204', 'sugar'),
('superc056920124043', 'sugar'),
('superc056920124845', 'sugar'),
('superc056920124852', 'sugar'),
('superc056920124869', 'sugar'),
('superc056920124883', 'sugar'),
('superc056920125460', 'banana'),
('superc056920130198', 'banana'),
('superc056920133427', 'banana'),
('superc056920136428', 'banana'),
('superc057000003364', 'juice'),
('superc057000003395', 'juice'),
('superc057000003401', 'juice'),
('superc057000003517', 'juice'),
('superc057496002278', 'alcohol'),
('superc057496012710', 'alcohol'),
('superc057864000080', 'protein'),
('superc057864000325', 'banana'),
('superc058191200297', 'sugar'),
('superc059600048097', 'juice'),
('superc059749854696', 'apple'),
('superc059749875066', 'whey'),
('superc059749876186', 'whey'),
('superc059749877442', 'juice'),
('superc059749877466', 'juice'),
('superc059749878616', 'chips'),
('superc059749878685', 'chips'),
('superc059749878722', 'chips'),
('superc059749878982', 'juice'),
('superc059749887229', 'powder'),
('superc059749888998', 'powder'),
('superc059749889087', 'powder'),
('superc059749889254', 'powder'),
('superc059749889384', 'powder'),
('superc059749889391', 'powder'),
('superc059749892599', 'whey'),
('superc059749894784', 'milk'),
('superc059749894791', 'milk'),
('superc059749897594', 'bread'),
('superc059749898461', 'bread'),
('superc059749900898', 'bread'),
('superc059749908399', 'alcohol'),
('superc059749916332', 'bread'),
('superc059749916363', 'whey'),
('superc059749916998', 'bread'),
('superc059749917018', 'whey'),
('superc059749936088', 'cookies'),
('superc059749942232', 'bread'),
('superc059749942249', 'bread'),
('superc059749942256', 'bread'),
('superc059749943413', 'banana'),
('superc059749948852', 'chips'),
('superc059749950954', 'sugar'),
('superc059749954709', 'banana'),
('superc059749960977', 'powder'),
('superc059749961059', 'powder'),
('superc059749961219', 'powder'),
('superc059749964487', 'banana'),
('superc059749969925', 'juice'),
('superc059749970143', 'juice'),
('superc059749970211', 'juice'),
('superc059749970914', 'cookies'),
('superc059749971256', 'bread'),
('superc059749974462', 'alcohol'),
('superc059749976305', 'bread'),
('superc059749976350', 'chips'),
('superc059749976367', 'chips'),
('superc059749976718', 'chips'),
('superc059749976749', 'chips'),
('superc059749980777', 'sugar'),
('superc059749982955', 'cookies'),
('superc059749983389', 'sugar'),
('superc059749983983', 'banana'),
('superc059749984317', 'cookies'),
('superc059749986649', 'cookies'),
('superc059749991865', 'whey'),
('superc059749993128', 'powder'),
('superc059749993159', 'powder'),
('superc060410045138', 'banana'),
('superc060410045138', 'chips'),
('superc060410047002', 'chips'),
('superc060410047019', 'chips'),
('superc060410047217', 'chips'),
('superc060410047422', 'chips'),
('superc060410047514', 'chips'),
('superc060410061404', 'chips'),
('superc060410066324', 'chips'),
('superc060410072080', 'chips'),
('superc060410901175', 'chips'),
('superc060410901205', 'chips'),
('superc060410901243', 'chips'),
('superc060822000060', 'protein'),
('superc060822000084', 'protein'),
('superc060822000466', 'protein'),
('superc060822001111', 'protein'),
('superc060822001166', 'protein'),
('superc060822003016', 'protein'),
('superc060822400020', 'protein'),
('superc061077856310', 'bread'),
('superc061077871658', 'bread'),
('superc061430885025', 'apple'),
('superc061659001251', 'bread'),
('superc061659018969', 'bread'),
('superc061659020429', 'bread'),
('superc062067381522', 'alcohol'),
('superc062067381539', 'alcohol'),
('superc062067384165', 'alcohol'),
('superc062067384172', 'alcohol'),
('superc062067385629', 'alcohol'),
('superc062067421891', 'alcohol'),
('superc062067421907', 'alcohol'),
('superc062067422409', 'alcohol'),
('superc062067424199', 'alcohol'),
('superc062847510708', 'sugar'),
('superc062847610637', 'sugar'),
('superc062847610675', 'sugar'),
('superc062859000013', 'protein'),
('superc062859000044', 'protein'),
('superc062884262011', 'milk'),
('superc063348006905', 'banana'),
('superc063348011428', 'cookies'),
('superc063348026385', 'cookies'),
('superc063400041431', 'whey'),
('superc064042005409', 'cookies'),
('superc064042006505', 'cookies'),
('superc064042603711', 'banana'),
('superc064100000704', 'cereal'),
('superc064100001466', 'cereal'),
('superc064100106215', 'cereal'),
('superc064100108028', 'cereal'),
('superc064100108066', 'cereal'),
('superc064100108264', 'cereal'),
('superc064100118690', 'chips'),
('superc064100142282', 'cereal'),
('superc064100143180', 'cereal'),
('superc064100147973', 'chips'),
('superc064100589988', 'cereal'),
('superc064100595729', 'cereal'),
('superc064100595798', 'cereal'),
('superc064100779716', 'cereal'),
('superc064420010124', 'milk'),
('superc064420320131', 'protein'),
('superc064420320148', 'protein'),
('superc064420320155', 'protein'),
('superc064420320179', 'protein'),
('superc065000116052', 'powder'),
('superc065000321272', 'whey'),
('superc065633132832', 'cereal'),
('superc065633132948', 'cereal'),
('superc065633158122', 'cereal'),
('superc065633197794', 'cereal'),
('superc065633197978', 'cereal'),
('superc065633205116', 'cereal'),
('superc065633205291', 'cereal'),
('superc065633279346', 'cereal'),
('superc065633279438', 'cereal'),
('superc065684119882', 'banana'),
('superc065684127757', 'banana'),
('superc065684131358', 'banana'),
('superc065684131396', 'apple'),
('superc065912581214', 'juice'),
('superc066086143246', 'bread'),
('superc066086144205', 'bread'),
('superc066188004483', 'sugar'),
('superc066188004490', 'sugar'),
('superc066188013201', 'powder'),
('superc066188013300', 'powder'),
('superc066188013409', 'powder'),
('superc066188014000', 'powder'),
('superc066188014109', 'powder'),
('superc066200000875', 'powder'),
('superc066200001865', 'powder'),
('superc066200001872', 'powder'),
('superc066200011666', 'powder'),
('superc066200011710', 'powder'),
('superc066721001139', 'whey'),
('superc066721005861', 'cookies'),
('superc066721005885', 'cookies'),
('superc066721006493', 'cookies'),
('superc066721006684', 'cookies'),
('superc066721010414', 'whey'),
('superc066721018748', 'whey'),
('superc066721025456', 'cookies'),
('superc066721026590', 'cookies'),
('superc066721027177', 'whey'),
('superc066721027184', 'whey'),
('superc066721028174', 'whey'),
('superc066721028358', 'whey'),
('superc066721028426', 'whey'),
('superc067100004918', 'powder'),
('superc067311010326', 'juice'),
('superc067311010333', 'juice'),
('superc067311016328', 'juice'),
('superc067311018322', 'juice'),
('superc067311018339', 'juice'),
('superc067311028338', 'juice'),
('superc067311037323', 'juice'),
('superc067311040125', 'banana'),
('superc067311532132', 'juice'),
('superc067311532880', 'juice'),
('superc067311807100', 'juice'),
('superc068100892376', 'cereal'),
('superc068200010014', 'milk'),
('superc068200010021', 'milk'),
('superc068200010045', 'milk'),
('superc068200010113', 'milk'),
('superc068200010120', 'milk'),
('superc068200010144', 'milk'),
('superc068200010212', 'milk'),
('superc068200010229', 'milk'),
('superc068200010243', 'milk'),
('superc068200010311', 'milk'),
('superc068200010328', 'milk'),
('superc068200010342', 'milk'),
('superc068200442877', 'banana'),
('superc068200466170', 'milk'),
('superc068505100250', 'bread'),
('superc068505100250', 'whey'),
('superc068505101325', 'whey'),
('superc068505102285', 'bread'),
('superc068505110051', 'bread'),
('superc068700101298', 'banana'),
('superc068700101298', 'protein'),
('superc068700106491', 'protein'),
('superc068700106514', 'protein'),
('superc068700303388', 'milk'),
('superc068700303388', 'protein'),
('superc068700303395', 'protein'),
('superc068721004004', 'bread'),
('superc069299242164', 'chips'),
('superc069700052757', 'apple'),
('superc069700131971', 'cookies'),
('superc069700268219', 'chips'),
('superc069700268219', 'cookies'),
('superc069700268233', 'chips'),
('superc069700268233', 'cookies'),
('superc069700268240', 'cookies'),
('superc069700268271', 'chips'),
('superc069700268271', 'cookies'),
('superc072400011597', 'cereal'),
('superc072890006820', 'alcohol'),
('superc082000796657', 'seltzer'),
('superc082000802365', 'seltzer'),
('superc087692019565', 'seltzer'),
('superc214043', 'bread'),
('superc215172', 'bread'),
('superc3073781112535', 'bread'),
('superc3073781112535', 'whey'),
('superc3080216060743', 'alcohol'),
('superc5000213025420', 'alcohol'),
('superc5281012013782', 'alcohol'),
('superc5410126116236', 'cookies'),
('superc620383010023', 'powder'),
('superc620383010184', 'powder'),
('superc620383010702', 'powder'),
('superc620383012430', 'powder'),
('superc620383012607', 'powder'),
('superc620383013536', 'powder'),
('superc626114191009', 'whey'),
('superc626233271408', 'cookies'),
('superc627552104026', 'protein'),
('superc627552104057', 'protein'),
('superc627552108024', 'protein'),
('superc627552108031', 'protein'),
('superc627552108048', 'protein'),
('superc627552108062', 'protein'),
('superc627843577898', 'protein'),
('superc628110125170', 'alcohol'),
('superc628154020035', 'whey'),
('superc628154138006', 'whey'),
('superc628154138105', 'whey'),
('superc628154138983', 'cereal'),
('superc628154380214', 'cereal'),
('superc628154433231', 'cereal'),
('superc629025350053', 'banana'),
('superc629025350459', 'banana'),
('superc629025350466', 'apple'),
('superc629255281042', 'alcohol'),
('superc629255292048', 'alcohol'),
('superc684746100363', 'alcohol'),
('superc684746696774', 'alcohol'),
('superc684746898598', 'alcohol'),
('superc685750000502', 'sugar'),
('superc685750091296', 'apple'),
('superc685750091302', 'apple'),
('superc686578014016', 'apple'),
('superc686578014023', 'apple'),
('superc686578014054', 'apple'),
('superc686578274885', 'apple'),
('superc696685100021', 'bread'),
('superc749880110798', 'chips'),
('superc7610037001302', 'cookies'),
('superc7610062091903', 'cookies'),
('superc771118451236', 'alcohol'),
('superc771118451571', 'alcohol'),
('superc771322002606', 'apple'),
('superc771815100253', 'alcohol'),
('superc771815100925', 'alcohol'),
('superc771856472159', 'sugar'),
('superc771856479103', 'sugar'),
('superc772643009541', 'cereal'),
('superc774567100274', 'bread'),
('superc774567100281', 'bread'),
('superc775462176012', 'juice'),
('superc778739888069', 'whey'),
('superc779921100709', 'cookies'),
('superc779921100907', 'cookies'),
('superc795130009077', 'cookies'),
('superc816553001070', 'bread'),
('superc816697021040', 'protein'),
('superc816697021064', 'protein'),
('superc818158012505', 'whey'),
('superc824150701163', 'juice'),
('superc824150701484', 'juice'),
('superc850004207376', 'protein'),
('superc851346001059', 'chips'),
('superc851346001066', 'chips'),
('superc885250111115', 'bread'),
('superc891249002401', 'chips'),
('superc896923001916', 'banana');

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
  `image` blob NOT NULL,
  `total_price` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `user_id`, `title`, `content`, `date_created`, `privacy_status`, `duration`, `image`, `total_price`) VALUES
(1, 14, 'Fruit Bowl', 'very sweet', '2024-05-12 16:13:04', 'public', '45', 0x2f6f70742f6c616d70702f6874646f63732f75706c6f6164732f363634306561393062343839625f696d616765362e6a7067, '8.18'),
(2, 15, 'Fresh Fruit', 'Very fresh LOL', '2024-05-13 03:39:46', 'public', '15', 0x2f6f70742f6c616d70702f6874646f63732f75706c6f6164732f363634313862383233616566315f696d61676531302e6a7067, '22.36'),
(3, 15, 'Gourmet Steak', 'Lost of protein\r\nThe steak looks kinda gross ngl', '2024-05-13 03:42:07', 'public', '45', 0x2f6f70742f6c616d70702f6874646f63732f75706c6f6164732f363634313863306637386339355f696d616765392e6a7067, '12.98'),
(4, 15, 'Actual Steak', 'made a mistake', '2024-05-13 03:43:02', 'public', '55', 0x2f6f70742f6c616d70702f6874646f63732f75706c6f6164732f363634313863343662636437665f696d616765382e6a7067, '9.99');

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
('alcohol'),
('apple'),
('banana'),
('bread'),
('cereal'),
('cheese'),
('chips'),
('cookies'),
('deodorant'),
('egg'),
('eggs'),
('flour'),
('image1.jpg'),
('image10.jpg'),
('image2.jpg'),
('image3.jpg'),
('image4.jpg'),
('image5.jpg'),
('image6.jpg'),
('image7.jpg'),
('image8.jpg'),
('image9.jpg'),
('juice'),
('metro068200010120'),
('milk'),
('milks'),
('potato'),
('potatoes'),
('powder'),
('protein'),
('protein powder'),
('raisin bread'),
('rice'),
('salami'),
('seltzer'),
('sugar'),
('swedish berries'),
('swedish_berries'),
('sweet potato'),
('whey'),
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
(2, 'Metro', '5150 Chem. de la Côte-des-Neiges', 'H3T 1X8', 'Montreal', 'Quebec'),
(4, 'Metro Plus ETS', '1230 R. Notre Dame O', 'H3C 1K6', 'Montréal', 'Quebec');

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
(5, 'santi', '$2y$10$SCK.pL8ECHC.hZBNLnU38unlhibjk8VrjSQygTQDF9iusEC/uZ/Pu', 'Santiago', '', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'santiago', '$2y$10$iFquDjAy5QeADGZVqpmNGOcI6hrXDSanOU.POATX2OZf30F3zgBz6', 'Santiago', 'Garcia', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'santiago123', '$2y$10$lebtB63./uG7trqtlgeE5eVGVI2asfdGSpA9KS6eJU2UYrVy.I0H.', 'Santiago', 'Garcia', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '1234', '$2y$10$V0iQC3d/FiNyIGAKz80dq.HvLGFaYtQZ7dqDvspx/b3jT5hNd9auO', '1234', 'a', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '12345', '$2y$10$iDHzucJffTzwuDJCuVAT9.z8mL3319GClBHzEGbGOKNADogZYBNku', '1234', 'a', '709', 'rue Canning', 'H3J 2A3', 'Montreal', 'Quebec', NULL),
(13, 'santi123', '$2y$10$EZ4dKcDY.I36jTEQlpvC/O7pYhUyJuHK05DHgTLOQYLdIZiusY6p.', 'santi', 'garcia', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'mano', '$2y$10$32cT35hOXLLo0EZezgSLFuvYMJ9HolJDCcaALyJgmP7Yhx7PDf8gu', 'Damiano', 'Mil', NULL, NULL, NULL, NULL, NULL, 'YNBS3MLMHQWXHL76QDTY5JVM5RZH5GD3'),
(15, 'user1', '$2y$10$DiPA7eSAUgXTYsDntfGh7uvkiSdeoyuDUMBr/QI3R9cBAgqsK.El6', 'Test', 'User', NULL, NULL, NULL, NULL, NULL, '4NE6KT2TJPLRQTHT7S5IG3MGTVCLBM4Q');

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
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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