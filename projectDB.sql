-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2024 at 05:46 PM
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
  `link` varchar(200) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `price`, `image`, `quantity`, `brand`, `link`, `description`) VALUES
('1', '2% Milk, PurFiltre', '5.29', 'https://product-images.metro.ca/images/hb8/h1b/11354247757854.jpg', '2L', 'Lactancia', '', NULL),
('2', 'Large White Eggs', '4.09', 'https://product-images.metro.ca/images/h4e/h1d/11168817872926.jpg', '12', 'Selection', '', NULL),
('metro012044011393', 'Pure Sport Scented Antiperspirant and Deodorant Stic...', '5.99', 'https://product-images.metro.ca/images/h74/h89/11734992945182.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/pure-sport-scented-antiperspirant-and-deodorant-stick/p/012044011393', NULL),
('metro012044038703', 'Wolfthorn Scented Aluminum Free Deodorant Stick, Wil...', '8.99', 'https://product-images.metro.ca/images/h5c/h64/11511462232094.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/wolfthorn-scented-aluminum-free-deodorant-stick/p/012044038703', NULL),
('metro012044038857', 'Fresh Scented Aluminum Free Deodorant Stick, High En...', '5.99', 'https://product-images.metro.ca/images/h87/hcd/10149354766366.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/fresh-scented-aluminum-free-deodorant-stick/p/012044038857', NULL),
('metro012044038895', 'Original Scented Aluminum Free Deodorant Stick, High...', '5.99', 'https://product-images.metro.ca/images/h82/hbf/10149352931358.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/original-scented-aluminum-free-deodorant-stick/p/012044038895', NULL),
('metro012044038925', 'Pure Sport Scented Aluminum Free Deodorant Stick, Hi...', '5.99', 'https://product-images.metro.ca/images/ha5/h27/10149354799134.jpg', '85 g', 'Old Spice', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/pure-sport-scented-aluminum-free-deodorant-stick/p/012044038925', NULL),
('metro018627597490', 'Toasted Berry Cereal, GOLEAN Crisp!', '7.49', 'https://product-images.metro.ca/images/h36/hda/10904131076126.jpg', '400 g', 'Kashi', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/toasted-berry-cereal/p/018627597490', NULL),
('metro037000808510', 'Protecting powder clear gel antiperspirant and deodo...', '7.79', 'https://product-images.metro.ca/images/h94/h08/9514249420830.jpg', '45 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/protecting-powder-clear-gel-antiperspirant-and-deodorant/p/037000808510', NULL),
('metro037000850632', 'Clinical Smooth Solid Antiperspirant and Deodorant, ...', '9.49', 'https://product-images.metro.ca/images/hb2/ha5/11714237431838.jpg', '45 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/clinical-smooth-solid-antiperspirant-and-deodorant/p/037000850632', NULL),
('metro041143054352', 'Mixed Sour Berries Flavoured Raisin', '4.99', 'https://product-images.metro.ca/images/h9a/hed/10767371763742.jpg', '140 g', 'Sun-Maid', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/mixed-sour-berries-flavoured-raisin/p/041143054352', NULL),
('metro047400668270', 'Cool Wave Scented Clear Gel Antiperspirant and Deodo...', '7.79', 'https://product-images.metro.ca/images/h36/h91/12018850955294.jpg', '108 g', 'Gillette', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/men-s-products/antiperspirant-deodorant/cool-wave-scented-clear-gel-antiperspirant-and-deodorant/p/047400668270', NULL),
('metro047400668287', 'Power Rush Scented Clear Gel Antiperspirant and Deod...', '7.79', 'https://product-images.metro.ca/images/hba/hc2/12555809980446.jpg', '108 g', 'Gillette', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/men-s-products/antiperspirant-deodorant/power-rush-scented-clear-gel-antiperspirant-and-deodorant/p/047400668287', NULL),
('metro055086602679', 'Powder Invisible Solid Antiperspirant', '7.99', 'https://product-images.metro.ca/images/h87/h04/11730380062750.jpg', '74 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/powder-invisible-solid-antiperspirant/p/055086602679', NULL),
('metro055300110027', 'Skim Milk', '3.94', 'https://product-images.metro.ca/images/haf/h86/12230518308894.jpg', '2 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/055300110027', NULL),
('metro055300110096', '1% Milk', '4.09', 'https://product-images.metro.ca/images/ha1/h45/12230527844382.jpg', '2 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/055300110096', NULL),
('metro055300111000', '3.25% Milk', '7.93', 'https://product-images.metro.ca/images/ha6/hdc/12263404175390.jpg', '4 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/3-25-milk/p/055300111000', NULL),
('metro055300111024', 'Skim Milk', '6.87', 'https://product-images.metro.ca/images/h06/h4d/12263406272542.jpg', '4 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/055300111024', NULL),
('metro055300111093', '1% Milk', '7.19', 'https://product-images.metro.ca/images/heb/h97/12263406403614.jpg', '4 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/055300111093', NULL),
('metro055300113028', 'Skim Milk', '1.99', 'https://product-images.metro.ca/images/hc3/h87/12230527647774.jpg', '1 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/055300113028', NULL),
('metro055300113097', '1% Milk', '2.08', 'https://product-images.metro.ca/images/h59/hbb/12230518407198.jpg', '1 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/055300113097', NULL),
('metro055577103661', 'Brown Sugar Instant Oatmeal, Dino Eggs', '3.49', 'https://product-images.metro.ca/images/he8/h1b/11307094212638.jpg', '8x38 g', 'Quaker', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/oatmeal-hot-cereals/brown-sugar-instant-oatmeal/p/055577103661', NULL),
('metro055773004892', 'Frozen Potato, Bacon and Egg Bowl, 5-Minute Breakfast', '5.99', 'https://product-images.metro.ca/images/hfe/h46/12488456863774.jpg', '200 g', 'McCain', 'https://www.metro.ca/en/online-grocery/aisles/frozen/fruit-vegetables/french-fries-onion-rings/frozen-potato-bacon-and-egg-bowl/p/055773004892', NULL),
('metro055789006644', 'Rice Vermicelli', '3.99', 'https://product-images.metro.ca/images/h6a/h79/11432718696478.jpg', '300 g', 'Haiku', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/noodles-vermicelli/rice-vermicelli/p/055789006644', NULL),
('metro055800331878', 'Whitefish and Eggs Dry Cat Food, Grain Free', '14.99', 'https://product-images.metro.ca/images/h00/hf0/11477929164830.jpg', '1.36 kg', 'Beyond', 'https://www.metro.ca/en/online-grocery/aisles/pet-care/cats/dry-cat-food/whitefish-and-eggs-dry-cat-food/p/055800331878', NULL),
('metro055872025187', '2% Milk', '5.29', 'https://product-images.metro.ca/images/h2e/h54/11401280520222.jpg', '2 L', 'Québon', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/055872025187', NULL),
('metro055872035186', '1% Milk', '5.29', 'https://product-images.metro.ca/images/h83/hbd/11401276588062.jpg', '2 L', 'Québon', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/055872035186', NULL),
('metro055872123012', '2% Milk', '1.89', 'https://product-images.metro.ca/images/hd0/h82/11274297344030.jpg', '473 mL', 'Québon', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/055872123012', NULL),
('metro056100035145', 'Baby Powder Scented Antiperspirant And Deodorant Sti...', '5.99', 'https://product-images.metro.ca/images/hce/h87/9894676725790.jpg', '73 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/baby-powder-scented-antiperspirant-and-deodorant-stick/p/056100035145', NULL),
('metro056100035190', 'Baby Powder Scented Antiperspirant and Deodorant Sti...', '5.29', 'https://product-images.metro.ca/images/ha2/h4c/9894673186846.jpg', '45 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/baby-powder-scented-antiperspirant-and-deodorant-stick/p/056100035190', NULL),
('metro056100042495', 'Lavender Scented Gel Deodorant, Fresh Collection', '5.99', 'https://product-images.metro.ca/images/hc3/hec/9517951483934.jpg', '45 g', 'Secret', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/lavender-scented-gel-deodorant/p/056100042495', NULL),
('metro056725138672', 'Jasmine Rice, World Classics', '7.49', 'https://product-images.metro.ca/images/hc7/h73/11693750485022.jpg', '900 g', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/056725138672', NULL),
('metro056725138726', 'Basmati Rice, World Classics', '8.49', 'https://product-images.metro.ca/images/h8b/hf3/12196746231838.jpg', '900 g', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/056725138726', NULL),
('metro056725250107', 'Jasmine Rice', '9.99', 'https://product-images.metro.ca/images/h56/h37/11693779025950.jpg', '1.6 kg', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/056725250107', NULL),
('metro056725250152', 'Basmati Rice', '25.49', 'https://product-images.metro.ca/images/h84/hae/10715505328158.jpg', '3.63 kg', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/056725250152', NULL),
('metro056725250169', 'Jasmine Rice', '25.49', 'https://product-images.metro.ca/images/h8c/h25/10715507228702.jpg', '3.63 kg', 'Dainty', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/056725250169', NULL),
('metro057000000837', 'Frozen Bacon and Egg Scramble with Cheddar Cheese, A...', '6.29', 'https://product-images.metro.ca/images/h55/hf7/11412607696926.jpg', '200 g', 'Crave', 'https://www.metro.ca/en/online-grocery/aisles/frozen/meals-sides/pork-lamb-meals/frozen-bacon-and-egg-scramble-with-cheddar-cheese/p/057000000837', NULL),
('metro057627000586', 'Authentic Italian Calabrese Bread, baked in store', '2 / ', 'https://product-images.metro.ca/images/h06/h2c/9264452370462.jpg', '200 g', 'Front Street Bakery', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/authentic-italian-calabrese-bread/p/057627000586', NULL),
('metro057700015551', 'Gummy Berries, Swedish Berries', '9.99', 'https://product-images.metro.ca/images/h94/hf3/10823033454622.jpg', '816 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/gummy-berries/p/057700015551', NULL),
('metro057700017913', 'Gummy Berries, Swedish Berries', '2 / ', 'https://product-images.metro.ca/images/hb0/heb/12175838674974.jpg', '154 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/gummy-berries/p/057700017913', NULL),
('metro057700017920', 'Cream Flavoured Gummy Berries, Swedish Berries', '2 / ', 'https://product-images.metro.ca/images/h47/he3/12175837724702.jpg', '154 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/cream-flavoured-gummy-berries/p/057700017920', NULL),
('metro057700018095', 'Gummy Berries, Swedish Berries', '5.79', 'https://product-images.metro.ca/images/h7c/h90/12175795159070.jpg', '315 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/gummy-berries/p/057700018095', NULL),
('metro057700215999', 'Gummy Berries, Swedish Berries', '1.79', 'https://product-images.metro.ca/images/hcb/h0d/9331653083166.jpg', '64 g', 'Maynards', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/candy-gum/gummy-berries/p/057700215999', NULL),
('metro058000002494', 'Original deodorant stick', '3.99', 'https://product-images.metro.ca/images/h10/h17/9517941391390.jpg', '70 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/original-deodorant-stick/p/058000002494', NULL),
('metro058000007710', 'Active fresh deodorant stick', '5.99', 'https://product-images.metro.ca/images/hdf/hcf/12050596724766.jpg', '85 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/active-fresh-deodorant-stick/p/058000007710', NULL),
('metro058000007727', 'Glacier® Deodorant Stick', '5.99', 'https://product-images.metro.ca/images/hf5/h43/11574048063518.jpg', '85 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/glacier-deodorant-stick/p/058000007727', NULL),
('metro058000009264', 'Original deodorant stick', '5.99', 'https://product-images.metro.ca/images/h5e/hdb/11574053666846.jpg', '85 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/original-deodorant-stick/p/058000009264', NULL),
('metro058000009271', 'Ocean surf deodorant stick', '5.99', 'https://product-images.metro.ca/images/h97/he4/11574051897374.jpg', '85 g', 'Speed Stick', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/ocean-surf-deodorant-stick/p/058000009271', NULL),
('metro058496459482', 'Jasmine Rice, Bistro Express', '3 / ', 'https://product-images.metro.ca/images/h88/hdf/12484447305758.jpg', '240 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/058496459482', NULL),
('metro058496460044', 'Basmati Rice', '6.49', 'https://product-images.metro.ca/images/hfc/hd0/12484497702942.jpg', '400 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/basmati-rice/p/058496460044', NULL),
('metro058496460068', 'Jasmine Rice', '6.49', 'https://product-images.metro.ca/images/h3f/h18/12484491051038.jpg', '460 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/058496460068', NULL),
('metro058496460105', 'Basmati Rice', '9.99', 'https://product-images.metro.ca/images/hdf/h58/12484490690590.jpg', '1.6 kg', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/058496460105', NULL),
('metro058496460129', 'Jasmine Rice', '9.99', 'https://product-images.metro.ca/images/h96/hea/12484494688286.jpg', '1.6 kg', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/058496460129', NULL),
('metro058496464578', 'Jasmine Rice, Bistro Express', '6.29', 'https://product-images.metro.ca/images/hb4/h4b/12484514480158.jpg', '490 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/058496464578', NULL),
('metro058496465865', 'Cheese Risotto', '4.99', 'https://product-images.metro.ca/images/h05/hfd/12629550268446.jpg', '240 g', 'Ben\'s Original', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/cheese-risotto/p/058496465865', NULL),
('metro059000003115', 'Evaporated Milk', '2.99', 'https://product-images.metro.ca/images/h44/h29/12574197579806.jpg', '354 mL', 'Carnation', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/canned-powdered-milk/evaporated-milk/p/059000003115', NULL),
('metro059100008027', 'Pre-Cooked Long Grain White Rice', '7.99', 'https://product-images.metro.ca/images/hf1/h86/12517240012830.jpg', '1.4 kg', 'Minute Rice', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/pre-cooked-long-grain-white-rice/p/059100008027', NULL),
('metro059100008614', 'Ready-to-Serve Basmati Rice', '2 / ', 'https://product-images.metro.ca/images/h37/h65/12517240799262.jpg', '2x125 g', 'Minute Rice', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/ready-to-serve-basmati-rice/p/059100008614', NULL),
('metro059100008621', 'Ready-to-Serve Long Grain and Wild Rice With Fine Herbs', '2 / ', 'https://product-images.metro.ca/images/h18/h7b/12680451784734.jpg', '2x125 g', 'Minute Rice', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/ready-to-serve-long-grain-and-wild-rice-with-fine-herbs/p/059100008621', NULL),
('metro059323011002', 'Mild Roll-On Deodorant', '4.49', 'https://product-images.metro.ca/images/h39/h16/11849307291678.jpg', '50 ml', 'Ombra Spa', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/mild-roll-on-deodorant/p/059323011002', NULL),
('metro059441001428', 'Mascarpone Cheese', '16.99', 'https://product-images.metro.ca/images/hb6/hdb/10821311168542.jpg', '475 g', 'Tre Stelle', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/soft-fresh/mascarpone-cheese/p/059441001428', NULL),
('metro059441006362', 'Bocconcini Cheese', '6.99', 'https://product-images.metro.ca/images/h53/hce/10821287575582.jpg', '200 g', 'Tre Stelle', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/soft-fresh/bocconcini-cheese/p/059441006362', NULL),
('metro059749875981', 'Frozen Mixed Berries', '3 / ', 'https://product-images.metro.ca/images/he8/h9e/9910116810782.jpg', '600 g', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/frozen/fruit-vegetables/fruit/frozen-mixed-berries/p/059749875981', NULL),
('metro059749894326', 'Cream Cheese Brick', '3.49', 'https://product-images.metro.ca/images/h31/h97/10904125243422.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cream-cheese-spreads/cream-cheese-brick/p/059749894326', NULL),
('metro059749894692', 'Cheese Sticks', '3.49', 'https://product-images.metro.ca/images/h14/h02/8821324283934.jpg', '285 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/snacks/salty-snacks/pretzels-cheese-puffs-mixes/cheese-sticks/p/059749894692', NULL),
('metro059749896047', 'Medium Eggs', '4.09', 'https://product-images.metro.ca/images/h22/h62/8833228079134.jpg', '12 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/medium-eggs/p/059749896047', NULL),
('metro059749896054', 'Large White Eggs', '4.09', 'https://product-images.metro.ca/images/h92/h5c/11168816922654.jpg', '12 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/059749896054', NULL),
('metro059749896061', 'Extra Large White Eggs', '5.09', 'https://product-images.metro.ca/images/h9b/h7d/10390687154206.jpg', '12 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/extra-large-white-eggs/p/059749896061', NULL),
('metro059749896078', 'Large White Eggs', '5.99', 'https://product-images.metro.ca/images/h91/h18/11157658206238.jpg', '18 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/059749896078', NULL),
('metro059749897594', 'Pita Breads', '2.49', 'https://product-images.metro.ca/images/hc4/hfe/9519054913566.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/tortillas-flat-breads/pita-bread/pita-breads/p/059749897594', NULL),
('metro059749900898', 'Naan Bread', '2 / ', 'https://product-images.metro.ca/images/h8a/h4f/12716668878878.jpg', '240 g', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/tortillas-flat-breads/flat-bread-naan/naan-bread/p/059749900898', NULL),
('metro059749902359', 'Parboiled Long Grain Rice', '5.99', 'https://product-images.metro.ca/images/h39/h11/10183915044894.jpg', '2 kg', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/parboiled-long-grain-rice/p/059749902359', NULL),
('metro059749902427', 'Long Grain White Rice', '14.99', 'https://product-images.metro.ca/images/hd5/h53/10183914946590.jpg', '8 kg', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/long-grain-white-rice/p/059749902427', NULL),
('metro059749916332', 'Sliced White Bread, Soft', '2 / ', 'https://product-images.metro.ca/images/he2/he1/9760841367582.jpg', '675 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/sliced-white-bread/p/059749916332', NULL),
('metro059749916356', 'Whole Wheat Soft Sandwich Bread', '2 / ', 'https://product-images.metro.ca/images/h8f/h3a/9761057275934.jpg', '675 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/whole-wheat-soft-sandwich-bread/p/059749916356', NULL),
('metro059749931861', 'Goat\'s Milk Cheese, Artisan', '10.99', 'https://product-images.metro.ca/images/h29/h0d/11937049739294.jpg', '250 g', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/goat-sheep/goat-s-milk-cheese/p/059749931861', NULL),
('metro059749942249', 'Bread Crumbs', '2.49', 'https://product-images.metro.ca/images/h5a/h77/11520997949470.jpg', '425 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/bread-crumbs-stuffing/bread-crumbs/p/059749942249', NULL),
('metro059749948838', 'Cheese Crunchies', '3.49', 'https://product-images.metro.ca/images/h95/hcc/11257085886494.jpg', '265 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/snacks/salty-snacks/pretzels-cheese-puffs-mixes/cheese-crunchies/p/059749948838', NULL),
('metro059749954105', 'Garlic and Herb Cream Cheese', '3.49', 'https://product-images.metro.ca/images/ha3/h70/10904139268126.jpg', '227 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cream-cheese-spreads/garlic-and-herb-cream-cheese/p/059749954105', NULL),
('metro059749954259', 'Frozen Swedish Meatballs', '3.49', 'https://product-images.metro.ca/images/h84/h34/8933531779102.jpg', '255 g', 'Irresistibles', 'https://www.metro.ca/en/online-grocery/aisles/frozen/meals-sides/beef-veal-meals/frozen-swedish-meatballs/p/059749954259', NULL),
('metro059749961967', 'Gouda Cheese', '2 / ', 'https://product-images.metro.ca/images/hb9/h72/9519477129246.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/gouda-cheese/p/059749961967', NULL),
('metro059749962421', 'Swiss Cheese', '2 / ', 'https://product-images.metro.ca/images/hc7/h28/9519530115102.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/swiss-cheese/p/059749962421', NULL),
('metro059749965989', 'Basmati Rice', '2.99', 'https://product-images.metro.ca/images/h23/h02/9176615452702.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/059749965989', NULL),
('metro059749969406', 'Old Cheddar Cheese', '2 / ', 'https://product-images.metro.ca/images/hdd/h04/9520127541278.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/old-cheddar-cheese/p/059749969406', NULL),
('metro059749969444', 'Mozzarella Cheese', '2 / ', 'https://product-images.metro.ca/images/h5a/ha8/12578241642526.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/mozzarella-cheese/p/059749969444', NULL),
('metro059749969451', 'Old Marble Cheddar Cheese', '2 / ', 'https://product-images.metro.ca/images/h01/h92/9520127868958.jpg', '400 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/old-marble-cheddar-cheese/p/059749969451', NULL),
('metro059749971256', 'Bread Crumbs, Gluten Free', '7.99', 'https://product-images.metro.ca/images/hb3/h74/9297524752414.jpg', '500 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/bread-crumbs-stuffing/bread-crumbs/p/059749971256', NULL),
('metro059749974134', 'Frozen Mixed Berries, Organic', '3 / ', 'https://product-images.metro.ca/images/h03/h76/10188671025182.jpg', '300 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/organic-groceries/frozen-food/organic-fruits-vegetables/frozen-mixed-berries/p/059749974134', NULL),
('metro059749974288', 'Frozen Mixed Berries, Naturalia', '3 / ', 'https://product-images.metro.ca/images/hc9/h93/10529651720222.jpg', '500 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/frozen/fruit-vegetables/fruit/frozen-mixed-berries/p/059749974288', NULL),
('metro059749976398', 'Cheddar Cheese Slices', '4.29', 'https://product-images.metro.ca/images/hfc/h12/9825122320414.jpg', '410 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/sliced-cheese/cheddar-cheese-slices/p/059749976398', NULL),
('metro059749976411', 'Sliced Swiss Cheese', '4.29', 'https://product-images.metro.ca/images/h81/ha7/9825228029982.jpg', '410 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/sliced-cheese/sliced-swiss-cheese/p/059749976411', NULL),
('metro059749976817', 'Organic Large Brown Eggs, Free Range', '7.79', 'https://product-images.metro.ca/images/hbd/hd0/11205101813790.jpg', '12 un', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/organic-large-brown-eggs/p/059749976817', NULL),
('metro059749976879', 'Large Eggs, Value Pack', '9.79', 'https://product-images.metro.ca/images/hb3/h7a/10784759742494.jpg', '30 un', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-eggs/p/059749976879', NULL),
('metro059749978873', '1% Cottage Cheese', '3.49', 'https://product-images.metro.ca/images/h9a/hdc/10221839122462.jpg', '500 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cottage-cheese-ricotta/1-cottage-cheese/p/059749978873', NULL),
('metro059749981019', 'Basmati Rice', '2.29', 'https://product-images.metro.ca/images/hce/h34/10911186518046.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/basmati-rice/p/059749981019', NULL),
('metro059749981026', 'Jasmine Rice', '2.29', 'https://product-images.metro.ca/images/hfe/h78/10263613014046.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/059749981026', NULL),
('metro059749981033', 'Brown Rice', '2.29', 'https://product-images.metro.ca/images/hee/h4d/10263579197470.jpg', '250 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/brown-rice/p/059749981033', NULL),
('metro059749981057', 'Basmati Rice, Organic', '2 / ', 'https://product-images.metro.ca/images/hd2/h34/10396270198814.jpg', '240 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/basmati-rice/p/059749981057', NULL),
('metro059749985116', 'Red Berries Granola, Naturalia', '4.49', 'https://product-images.metro.ca/images/h11/h56/11122396004382.jpg', '300 g', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/red-berries-granola/p/059749985116', NULL),
('metro059749990738', 'Cheese Bagel', '2 / ', 'https://product-images.metro.ca/images/h93/hf7/11503863300126.jpg', '340 g', 'Selection', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/muffins-bagels-baked-goods/bagels/cheese-bagel/p/059749990738', NULL),
('metro059749992206', 'Large Eggs form Free Run Hens, Naturalia', '5.49', 'https://product-images.metro.ca/images/hed/ha3/12019041271838.jpg', '12 un', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-eggs-form-free-run-hens/p/059749992206', NULL),
('metro059749992237', 'Free Run Hence Large Eggs, Naturalia', '5.49', 'https://product-images.metro.ca/images/h08/hf7/12019061063710.jpg', '12 un', 'Life Smart', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/free-run-hence-large-eggs/p/059749992237', NULL),
('metro060410067659', 'Cheese Snack', '2.25', 'https://product-images.metro.ca/images/hf3/h6c/12245605515294.jpg', '140 g', 'Chester\'s', 'https://www.metro.ca/en/online-grocery/aisles/snacks/salty-snacks/chips/cheese-snack/p/060410067659', NULL),
('metro060466853787', 'Organic Cream Cheese Spread', '3.99', 'https://product-images.metro.ca/images/h07/h84/10882781085726.jpg', '200 g', 'Tre Stelle', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cream-cheese-spreads/organic-cream-cheese-spread/p/060466853787', NULL),
('metro060569007018', 'Klosterbrot Monastery Rye Bread', '4.19', 'https://product-images.metro.ca/images/h8b/h17/9910162358302.jpg', '454 g', 'Dimpflmeier', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/rye-other-grains/klosterbrot-monastery-rye-bread/p/060569007018', NULL),
('metro061077302107', 'Thick Sliced White Bread, Artesano', '2 / ', 'https://product-images.metro.ca/images/hff/h9d/11549760094238.jpg', '600 g', 'Villaggio', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/thick-sliced-white-bread/p/061077302107', NULL),
('metro061077771200', 'Ultra-Soft™ Sliced White Bread', '2 / ', 'https://product-images.metro.ca/images/h84/hb8/11412543504414.jpg', '675 g', 'Pom', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/ultra-soft-sliced-white-bread/p/061077771200', NULL),
('metro061077771248', 'Thick Sliced White Bread, Classico', '2 / ', 'https://product-images.metro.ca/images/hea/h99/10475417698334.jpg', '675 g', 'Villaggio', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/thick-sliced-white-bread/p/061077771248', NULL),
('metro061077781254', 'Sliced Raisin Bread with Cinnamon', '6.49', 'https://product-images.metro.ca/images/hc3/h24/11937065828382.jpg', '600 g', 'Pom', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/sliced-raisin-bread-with-cinnamon/p/061077781254', NULL),
('metro061077940095', 'Multigrain Bread, No Sugar, No Fat Added', '5.09', 'https://product-images.metro.ca/images/h28/ha1/12578143961118.jpg', '520 g', 'Bon Matin', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/multigrain-bread/p/061077940095', NULL),
('metro061200016734', 'Milk Chocolate Bar with Mini Eggs® Candy, Dairy Milk', '4.99', 'https://product-images.metro.ca/images/hb2/hac/10454997565470.jpg', '152 g', 'Cadbury', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chocolate/milk-chocolate-bar-with-mini-eggs-candy/p/061200016734', NULL),
('metro061454251158', 'Pickled Eggs', '5.29', 'https://product-images.metro.ca/images/hbf/hc3/8849235378206.jpg', '6 un', 'Labonté', 'https://www.metro.ca/en/online-grocery/aisles/pantry/canned-jarred/meats/pickled-eggs/p/061454251158', NULL),
('metro061659001251', 'Italian Style Bread Crumbs', '4.29', 'https://product-images.metro.ca/images/h41/h4c/11386248724510.jpg', '680 g', 'Aurora', 'https://www.metro.ca/en/online-grocery/aisles/pantry/herbs-spices-sauces/breading-batters-coatings/italian-style-bread-crumbs/p/061659001251', NULL),
('metro061719011053', 'Large Brown Eggs', '5.29', 'https://product-images.metro.ca/images/h54/hc2/10225164812318.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-brown-eggs/p/061719011053', NULL),
('metro061719011138', 'Free Run Hens Large Brown Eggs', '4.09', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '6 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/free-run-hens-large-brown-eggs/p/061719011138', NULL),
('metro061719011398', 'Free Run Hens Medium Brown Eggs', '9.69', 'https://product-images.metro.ca/images/hd1/h8e/10711377051678.jpg', '24 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/free-run-hens-medium-brown-eggs/p/061719011398', NULL),
('metro061719011558', 'Large White Eggs', '5.99', 'https://product-images.metro.ca/images/h80/h59/10225165500446.jpg', '18 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/061719011558', NULL),
('metro061719011619', 'Medium Brown Eggs, Free Run Hen', '6.89', 'https://product-images.metro.ca/images/h23/h18/10225160781854.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/medium-brown-eggs/p/061719011619', NULL),
('metro061719011695', 'Large White Eggs, Select', '6.49', 'https://product-images.metro.ca/images/h73/h6e/11937053540382.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/061719011695', NULL),
('metro061719011763', 'Large Organic Brown Eggs', '7.79', 'https://product-images.metro.ca/images/h77/h12/11714269872158.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/organic-eggs/large-organic-brown-eggs/p/061719011763', NULL),
('metro061719011930', 'Large White Eggs, Free Run Hens', '5.49', 'https://product-images.metro.ca/images/h5d/h07/10217725165598.jpg', '12 un', 'Nutri', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/large-white-eggs/p/061719011930', NULL),
('metro062020000613', 'Milk Chocolate Eggs with Surprise Toy', '2.99', 'https://product-images.metro.ca/images/ha4/hca/12191645204510.jpg', '3x20 g', 'Kinder Surprise', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chocolate/milk-chocolate-eggs-with-surprise-toy/p/062020000613', NULL),
('metro062020000620', 'Milk Chocolate Eggs with Surprise Toy', '2.99', 'https://product-images.metro.ca/images/h8e/hd2/12191645532190.jpg', '3x20 g', 'Kinder Surprise', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chocolate/milk-chocolate-eggs-with-surprise-toy/p/062020000620', NULL),
('metro062338805702', 'Country Berries Scented Oil', '9.49', 'https://product-images.metro.ca/images/h13/hb8/11714246737950.jpg', '20 mL', 'Air Wick', 'https://www.metro.ca/en/online-grocery/aisles/household-cleaning/general-household/air-fresheners/country-berries-scented-oil/p/062338805702', NULL),
('metro062356540586', 'Basmati Rice', '18.99', 'https://product-images.metro.ca/images/hb2/h0e/9522396463134.jpg', '4.54 kg', '555', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/062356540586', NULL),
('metro062356542504', 'Red Rice', '4.99', 'https://product-images.metro.ca/images/hb5/h58/9394501386270.jpg', '907 g', 'Cedar', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/red-rice/p/062356542504', NULL),
('metro062356547653', 'Jasmine Rice, Phoenicia', '20.49', 'https://product-images.metro.ca/images/h9a/h37/9658277298206.jpg', '8 kg', 'Cedar', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/jasmine-rice/p/062356547653', NULL),
('metro062390120133', 'Burrata Cheese', '15.99', 'https://product-images.metro.ca/images/h98/h30/12555737235486.jpg', '250 g', 'Bella Casara', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/mozzarella-feta/burrata-cheese/p/062390120133', NULL),
('metro063400030350', 'Thick sliced Italian style white bread', '5.49', 'https://product-images.metro.ca/images/h6e/he3/12738851340318.jpg', '675 g', 'D\'Italiano', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/white/thick-sliced-italian-style-white-bread/p/063400030350', NULL),
('metro063400138711', '14 Grains Sliced Bread', '5.49', 'https://product-images.metro.ca/images/hc8/h00/10399727976478.jpg', '600 g', 'Country Harvest', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/whole-wheat-grain/14-grains-sliced-bread/p/063400138711', NULL),
('metro064100079847', 'Red Berries Cereal Jumbo Size, Special K', '10.99', 'https://product-images.metro.ca/images/hde/hb8/10918226788382.jpg', '700 g', 'Kellogg\'s', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/red-berries-cereal-jumbo-size/p/064100079847', NULL),
('metro064100146679', 'Red Berries Cereal, Special K', '8.79', 'https://product-images.metro.ca/images/h3d/h47/11251192037406.jpg', '480 g', 'Kellogg\'s', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/red-berries-cereal/p/064100146679', NULL),
('metro064100779068', 'Red Berries Cereal, Special K', '7.29', 'https://product-images.metro.ca/images/h23/hdb/12488321695774.jpg', '320 g', 'Kellogg\'s', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/red-berries-cereal/p/064100779068', NULL),
('metro064420010124', '2% Milk, Fine-Filtered', '4.99', 'https://product-images.metro.ca/images/h5a/hfc/11241929932830.jpg', '2 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/064420010124', NULL),
('metro064420010247', '1% Milk, Fine-Filtered', '9.69', 'https://product-images.metro.ca/images/hdf/hfe/10221710409758.jpg', '4 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/064420010247', NULL),
('metro064420010315', 'Skim Milk, Fine-Filtered', '3.69', 'https://product-images.metro.ca/images/h8f/hc7/11241731719198.jpg', '1 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/064420010315', NULL),
('metro064420010322', 'Skim Milk, Fine-Filtered', '4.99', 'https://product-images.metro.ca/images/h3a/hc2/11241932029982.jpg', '2 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/064420010322', NULL),
('metro064420010346', 'Skim Milk, Fine-Filtered', '9.69', 'https://product-images.metro.ca/images/h2c/h2b/11714250571806.jpg', '4 L', 'Natrel', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/064420010346', NULL),
('metro065244133211', '1% Milk, Organic Nordic', '6.99', 'https://product-images.metro.ca/images/h7a/h33/11292676259870.jpg', '2 L', 'Nutrinor', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/065244133211', NULL),
('metro065244133228', '2% Milk, Organic Nordic', '7.99', 'https://product-images.metro.ca/images/h50/h5a/11292677832734.jpg', '2 L', 'Nutrinor', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/065244133228', NULL),
('metro065333002107', 'Cat litter deodorizer', '3.79', 'https://product-images.metro.ca/images/h14/ha1/9910100590622.jpg', '500 g', 'Arm & Hammer', 'https://www.metro.ca/en/online-grocery/aisles/pet-care/cats/wet-cat-food-care/cat-litter-deodorizer/p/065333002107', NULL),
('metro065633158146', 'Triple Berry Flavoured Oat Cereal, Oatmeal Crisp', '3.99', 'https://product-images.metro.ca/images/h85/h3f/10715456339998.jpg', '399 g', 'General Mills', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/triple-berry-flavoured-oat-cereal/p/065633158146', NULL),
('metro065633197978', 'Rice Cereals, Chex', '5.49', 'https://product-images.metro.ca/images/hce/h94/11714398060574.jpg', '340 g', 'General Mills', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/rice-cereals/p/065633197978', NULL),
('metro065651003831', 'Peeled Hard Boiled Eggs, Eggs2go!', '1.99', 'https://product-images.metro.ca/images/hc7/hba/9526465003550.jpg', '2x88 g', 'Burnbrae Farms', 'https://www.metro.ca/en/online-grocery/aisles/deli-prepared-meals/ready-meals-sides/appetizers-sides/peeled-hard-boiled-eggs/p/065651003831', NULL),
('metro065651013007', 'Salt and Pepper Hard Boiled Peeled Eggs, Eggs 2 go!', '1.99', 'https://product-images.metro.ca/images/he7/ha1/9751135158302.jpg', '84 g', 'Burnbrae Farms', 'https://www.metro.ca/en/online-grocery/aisles/deli-prepared-meals/ready-meals-sides/appetizers-sides/salt-and-pepper-hard-boiled-peeled-eggs/p/065651013007', NULL),
('metro065651024225', 'Hard Boiled Peeled Eggs, Eggs2go!', '3.99', 'https://product-images.metro.ca/images/h5c/hcd/9527580098590.jpg', '6 un', 'Burnbrae Farms', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/eggs/whole-eggs/hard-boiled-peeled-eggs/p/065651024225', NULL),
('metro066721026385', 'Cadbury Mini Eggs and Chocolate Chip Cookies', '6.49', 'https://product-images.metro.ca/images/he9/hf4/10389209055262.jpg', '460 g', 'Chips Ahoy!', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/cookies-cakes/cadbury-mini-eggs-and-chocolate-chip-cookies/p/066721026385', NULL),
('metro067000004858', 'Mixed Berry Flavoured Sports Drink, Xion4', '2.69', 'https://product-images.metro.ca/images/he1/hf3/12174864941086.jpg', '710 mL', 'Powerade', 'https://www.metro.ca/en/online-grocery/aisles/beverages/sports-energy-drinks/sports-drinks/mixed-berry-flavoured-sports-drink/p/067000004858', NULL),
('metro067400623222', 'Beer Cheese', '10.49', 'https://product-images.metro.ca/images/h68/h3b/12175727362078.jpg', '190 g', 'Oka', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/firm-semi-soft/beer-cheese/p/067400623222', NULL),
('metro068100003499', 'Cheese Slices, Singles', '5.79', 'https://product-images.metro.ca/images/hd7/h31/9987151298590.jpg', '410 g', 'Kraft', 'https://www.metro.ca/en/online-grocery/aisles/value-pack/fresh-market/dairy-eggs/cheese-slices/p/068100003499', NULL),
('metro068200010113', '2% Milk, PurFiltre', '2.99', 'https://product-images.metro.ca/images/h83/h1a/11354255753246.jpg', '1 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200010113', NULL),
('metro068200010120', '2% Milk, PurFiltre', '5.29', 'https://product-images.metro.ca/images/hd1/hc0/11354246676510.jpg', '2 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200010120', NULL),
('metro068200010144', '2% Milk, PurFiltre', '9.69', 'https://product-images.metro.ca/images/h63/h64/11354252214302.jpg', '4 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200010144', NULL),
('metro068200010212', '1% Milk, PurFiltre', '2.99', 'https://product-images.metro.ca/images/hdd/h91/11354261520414.jpg', '1 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200010212', NULL),
('metro068200010229', '1% Milk, PurFiltre', '5.29', 'https://product-images.metro.ca/images/h22/ha0/11354256015390.jpg', '2 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200010229', NULL),
('metro068200010243', '1% Milk, PurFiltre', '9.69', 'https://product-images.metro.ca/images/hc9/h93/11354248544286.jpg', '4 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/1-milk/p/068200010243', NULL),
('metro068200010342', 'Skim Milk, PurFiltre', '9.69', 'https://product-images.metro.ca/images/h6f/hb8/11354261028894.jpg', '4 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/1-skim-milk/skim-milk/p/068200010342', NULL),
('metro068200466125', '2% Milk, UltraPur', '6.29', 'https://product-images.metro.ca/images/hf7/h1d/11354282950686.jpg', '1.5 L', 'Lactantia', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200466125', NULL),
('metro068200550909', '2% Milk', '7.56', 'https://product-images.metro.ca/images/h83/he5/12263402536990.jpg', '4 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200550909', NULL),
('metro068200550916', '2% Milk', '4.29', 'https://product-images.metro.ca/images/h7a/h85/12230526304286.jpg', '2 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200550916', NULL),
('metro068200550923', '2% Milk', '2.17', 'https://product-images.metro.ca/images/hc1/h4d/12230524043294.jpg', '1 L', 'Beatrice', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/milk-cream-butter/2-whole-milk/2-milk/p/068200550923', NULL),
('metro068200885513', 'Old Cheddar Cheese', '7.49', 'https://product-images.metro.ca/images/h0f/h00/12735377145886.jpg', '400 g', 'Black Diamond', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/packaged-cheese/cheese-blocks/old-cheddar-cheese/p/068200885513', NULL),
('metro068400662907', 'Mayonnaise', '8.95', 'https://product-images.metro.ca/images/hbd/h7e/11344179626014.jpg', '1.42 L', 'Hellmann\'s', 'https://www.metro.ca/en/online-grocery/aisles/pantry/condiments-toppings/mayonnaise-sandwich-spreads/mayonnaise/p/068400662907', NULL),
('metro068505110051', 'Quinoa bread', '2 / ', 'https://product-images.metro.ca/images/h93/he0/10268236218398.jpg', '550 g', 'St-Méthode', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/quinoa-bread/p/068505110051', NULL),
('metro068721004004', 'Raisin bread', '2 / ', 'https://product-images.metro.ca/images/h1e/ha3/11488811810846.jpg', '450 g', 'Sun-Maid', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/raisin-bread/p/068721004004', NULL),
('metro070847896371', 'Wild Berry Tea Flavoured Energy Drink, Rehab', '4.29', 'https://product-images.metro.ca/images/hf1/h77/12436510638110.jpg', '473 mL', 'Monster', 'https://www.metro.ca/en/online-grocery/aisles/beverages/sports-energy-drinks/energy-drinks/wild-berry-tea-flavoured-energy-drink/p/070847896371', NULL),
('metro071464280604', 'Berry Boost™ Fruit Juice Smoothie', '6.99', 'https://product-images.metro.ca/images/hf6/h17/9529687113758.jpg', '946 mL', 'Bolthouse Farms', 'https://www.metro.ca/en/online-grocery/aisles/beverages/juices-drinks/smoothies-nectars/berry-boost-fruit-juice-smoothie/p/071464280604', NULL),
('metro073416004337', 'Wild and Whole Grain Brown Rice Blend', '8.79', 'https://product-images.metro.ca/images/h86/h67/12083895730206.jpg', '454 g', 'Lundberg', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/wild-and-whole-grain-brown-rice-blend/p/073416004337', NULL),
('metro079400020840', 'Dark Temptation® Deodorant Bodyspray', '6.99', 'https://product-images.metro.ca/images/h8f/he0/11461692653598.jpg', '113 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/dark-temptation-deodorant-bodyspray/p/079400020840', NULL),
('metro079400077349', 'Adventure Scented Men Antiperspirant Deodorant Stick...', '5.99', 'https://product-images.metro.ca/images/hbc/h8e/12812627574814.jpg', '76 g', 'Degree', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/adventure-scented-men-antiperspirant-deodorant-stick/p/079400077349', NULL),
('metro079400122636', 'Clean Comfort Antiperspirant Stick, Men+Care', '8.49', 'https://product-images.metro.ca/images/h0e/he4/12812625608734.jpg', '76 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/clean-comfort-antiperspirant-stick/p/079400122636', NULL),
('metro079400264558', 'Apollo® Antiperspirant Stick, Dry', '6.99', 'https://product-images.metro.ca/images/he2/h4e/11570775916574.jpg', '76 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/apollo-antiperspirant-stick/p/079400264558', NULL),
('metro079400264619', 'Apollo® Deodorant Stick, Fresh', '6.99', 'https://product-images.metro.ca/images/h80/h8b/11857598087198.jpg', '85 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/apollo-deodorant-stick/p/079400264619', NULL),
('metro079400446077', 'Cool Essentials Dry Spray Antiperspirant, Advanced Care', '8.99', 'https://product-images.metro.ca/images/h04/ha4/12812623839262.jpg', '107 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/cool-essentials-dry-spray-antiperspirant/p/079400446077', NULL),
('metro079400446190', 'Clean Comfort Dry Spray Antiperspirant, Men+Care', '8.99', 'https://product-images.metro.ca/images/hd2/hed/12812729286686.jpg', '107 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/clean-comfort-dry-spray-antiperspirant/p/079400446190', NULL),
('metro079400462213', 'Aluminum-Free Green Tea and Cucumber Scented Deodora...', '8.99', 'https://product-images.metro.ca/images/h32/h69/12716699942942.jpg', '74 g', 'Dove', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/aluminum-free-green-tea-and-cucumber-scented-deodorant-stick/p/079400462213', NULL);
INSERT INTO `item` (`item_id`, `name`, `price`, `image`, `quantity`, `brand`, `link`, `description`) VALUES
('metro079400534309', 'Phoenix® Deodorant Stick, Fresh', '6.99', 'https://product-images.metro.ca/images/h13/h52/11570785746974.jpg', '85 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/phoenix-deodorant-stick/p/079400534309', NULL),
('metro079400550200', 'Phoenix® Deodorant Bodyspray', '6.99', 'https://product-images.metro.ca/images/h27/he1/11730385633310.jpg', '113 g', 'AXE', 'https://www.metro.ca/en/online-grocery/aisles/health-beauty/bath-body-care/deodorant-antiperspirant/phoenix-deodorant-bodyspray/p/079400550200', NULL),
('metro084213000019', 'Pumpernickel Bread', '4.59', 'https://product-images.metro.ca/images/h55/hc4/11590655639582.jpg', '500 g', 'Mestemacher', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/pumpernickel-bread/p/084213000019', NULL),
('metro084213000729', 'Rye bread', '4.59', 'https://product-images.metro.ca/images/h01/h11/9530440417310.jpg', '500 g', 'Mestemacher', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/rye-other-grains/rye-bread/p/084213000729', NULL),
('metro084213011374', 'Protein Bread', '6.49', 'https://product-images.metro.ca/images/hab/h5f/9651886456862.jpg', '250 g', 'Mestemacher', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/protein-bread/p/084213011374', NULL),
('metro088702009255', 'Mixed Berries Jam', '7.49', 'https://product-images.metro.ca/images/hf0/hdc/9529965051934.jpg', '250 mL', 'Bonne Maman', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/jams-jellies/mixed-berries-jam/p/088702009255', NULL),
('metro204541', 'Raclette Cheese', '7.78', 'https://product-images.metro.ca/images/h11/h96/10967809130526.jpg', '1 piece', 'Oka', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/firm-semi-soft/raclette-cheese/p/204541', NULL),
('metro209271', 'White Bread', '4.69', 'https://product-images.metro.ca/images/h8b/hee/8935511293982.jpg', '540 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/fresh-loaves-breads/white-bread/p/209271', NULL),
('metro215172', 'Belgian bread', '4.69', 'https://product-images.metro.ca/images/h1c/h1c/8860245721118.jpg', '455 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/fresh-loaves-breads/belgian-bread/p/215172', NULL),
('metro231695', 'Light Strawberry Yogurt with Berries and Granola', '4.99', 'https://product-images.metro.ca/images/h64/h5a/9014699589662.jpg', '295 g', 'metrogo!', 'https://www.metro.ca/en/online-grocery/aisles/fruits-vegetables/fresh-cut-fruits-vegetables/light-strawberry-yogurt-with-berries-and-granola/p/231695', NULL),
('metro235557', 'Italian bread', '4.69', 'https://product-images.metro.ca/images/hb7/hf7/9279699877918.jpg', '455 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/italian-bread/p/235557', NULL),
('metro238020', 'Parisian Bread', '4.49', 'https://product-images.metro.ca/images/h1a/h43/10265274056734.jpg', '468 g', 'Merit', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/fresh-loaves-breads/parisian-bread/p/238020', NULL),
('metro238362', 'Red Berries Flavoured Mini Donuts', '3.69', 'https://product-images.metro.ca/images/ha8/h3e/10265603309598.jpg', '4x25 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/red-berries-flavoured-mini-donuts/p/238362', NULL),
('metro242340', 'Red Berries Mini Donuts', '8.49', 'https://product-images.metro.ca/images/h02/h11/11073491599390.jpg', '10x25 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/desserts-pastries/pastries-donuts/red-berries-mini-donuts/p/242340', NULL),
('metro243587', 'Cheese Rolls', '1.49', 'https://product-images.metro.ca/images/hf9/h57/11926819930142.jpg', '1 un', 'metrogo!', 'https://www.metro.ca/en/online-grocery/aisles/cooked-meals/ready-to-eat/prepared-meals/cheese-rolls/p/243587', NULL),
('metro244441', 'Belgian Bread', '4.69', 'https://product-images.metro.ca/images/h09/h16/11122254413854.jpg', '400 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/rye-other-grains/belgian-bread/p/244441', NULL),
('metro244545', 'Italian Bread', '4.69', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '400 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/rye-other-grains/italian-bread/p/244545', NULL),
('metro245293', 'Cheese Rolls', '8.49', '/images/shared/placeholders/icon-no-picture.svg?v=2024.75.r9', '6 un', 'Adonis', 'https://www.metro.ca/en/online-grocery/aisles/cooked-meals/ready-to-eat/prepared-meals/cheese-rolls/p/245293', NULL),
('metro3341500006008', 'Blue Cheese', '9.79', 'https://product-images.metro.ca/images/h29/h4a/11735046193182.jpg', '125 g', 'St-Agur', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/blue-cheese-rocquefort/blue-cheese/p/3341500006008', NULL),
('metro623798006506', 'Swedish Meatball', '10.49', 'https://product-images.metro.ca/images/h9e/hba/9992454963230.jpg', '305 g', '3 fois par jour', 'https://www.metro.ca/en/online-grocery/aisles/deli-prepared-meals/swedish-meatball/p/623798006506', NULL),
('metro627022794054', 'Goji Berry Mixed Nuts', '9.99', 'https://product-images.metro.ca/images/h27/hd9/11849325674526.jpg', '350 g', 'Royal Nuts', 'https://www.metro.ca/en/online-grocery/aisles/fruits-vegetables/dried-fruits-nuts/goji-berry-mixed-nuts/p/627022794054', NULL),
('metro628250431124', 'Berries and Nuts Energy Bar', '2.99', 'https://product-images.metro.ca/images/h26/hf9/11742494720030.jpg', '50 g', 'Näak', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/berries-and-nuts-energy-bar/p/628250431124', NULL),
('metro629145082315', 'Flaxseed Bread', '6.99', 'https://product-images.metro.ca/images/h59/h9f/9961660547102.jpg', '525 g', 'Première Moisson', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/freshly-baked-bread-baguettes/premiere-moisson/flaxseed-bread/p/629145082315', NULL),
('metro672774017470', 'Coconut Milk', '4.19', 'https://product-images.metro.ca/images/ha8/hb3/9742459142174.jpg', '400 mL', 'Blue Dragon', 'https://www.metro.ca/en/online-grocery/aisles/pantry/baking-ingredients/canned-powdered-milk/coconut-milk/p/672774017470', NULL),
('metro672774106167', 'Rice Noodles', '4.69', 'https://product-images.metro.ca/images/hd5/h2d/11198188847134.jpg', '300 g', 'Blue Dragon', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/noodles-vermicelli/rice-noodles/p/672774106167', NULL),
('metro696685100021', 'Seeded Bread', '9.29', 'https://product-images.metro.ca/images/hf9/h0e/11449638191134.jpg', '544 g', 'Carbonaut', 'https://www.metro.ca/en/online-grocery/aisles/frozen/bakery/bread-baked-goods/seeded-bread/p/696685100021', NULL),
('metro725299030414', 'Basmati Rice', '22.99', 'https://product-images.metro.ca/images/hd7/h68/10686005346334.jpg', '4.54 kg', 'Tilda', 'https://www.metro.ca/en/online-grocery/aisles/pantry/pasta-rice-beans/rice/basmati-rice/p/725299030414', NULL),
('metro725299931179', 'Jasmine Rice', '3.69', 'https://product-images.metro.ca/images/h51/h16/12452416815134.jpg', '250 g', 'Tilda', 'https://www.metro.ca/en/online-grocery/aisles/pantry/sides/potato-rice-sides/jasmine-rice/p/725299931179', NULL),
('metro737282363096', 'Wild about Berries Granola Clusters, Morning Crisp', '6.99', 'https://product-images.metro.ca/images/h5b/h40/12192240467998.jpg', '400 g', 'Jordans', 'https://www.metro.ca/en/online-grocery/aisles/pantry/cereals-spreads-syrups/granola-healthier-cereals/wild-about-berries-granola-clusters/p/737282363096', NULL),
('metro773479394870', 'Cheese Bagels', '2 / ', 'https://product-images.metro.ca/images/h9e/h74/12505749389342.jpg', '452 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/muffins-bagels-baked-goods/bagels/cheese-bagels/p/773479394870', NULL),
('metro773889744876', 'Cheese Bagels', '2 / ', 'https://product-images.metro.ca/images/hd3/h74/10823481360414.jpg', '452 g', '', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/muffins-bagels-baked-goods/bagels/cheese-bagels/p/773889744876', NULL),
('metro774304000928', 'Raisin challa twisted bread', '6.99', 'https://product-images.metro.ca/images/h56/h36/12770809151518.jpg', '625 g', 'Snowdon Bakery', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/raisin-challa-twisted-bread/p/774304000928', NULL),
('metro811740000577', 'Kamut Grains & Raisin Sliced Bread', '5.49', 'https://product-images.metro.ca/images/hac/he7/10486549676062.jpg', '550 g', 'Inéwa', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/artisan-specialty/kamut-grains-raisin-sliced-bread/p/811740000577', NULL),
('metro817351001538', 'Burratini Cheese', '8.00', 'https://product-images.metro.ca/images/h82/h35/10816557252638.jpg', '125 g', 'Bella Casara', 'https://www.metro.ca/en/online-grocery/aisles/dairy-eggs/deli-cheese/soft-fresh/burratini-cheese/p/817351001538', NULL),
('metro877693003614', 'Organic Gluten Free Berries Cookies', '4.99', 'https://product-images.metro.ca/images/h5d/hd5/11292931588126.jpg', '120 g', 'Prana', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/cookies-cakes/organic-gluten-free-berries-cookies/p/877693003614', NULL),
('metro885250111115', 'Rye bread', '4.49', 'https://product-images.metro.ca/images/h4a/h9d/9005303037982.jpg', '340 g', 'Dunn\'s', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/packaged-bread/rye-other-grains/rye-bread/p/885250111115', NULL),
('metro890000001264', 'Apple and Berries Sauce Pouches', '2 / ', 'https://product-images.metro.ca/images/h81/h4b/10695653130270.jpg', '4x90 g', 'Gogo Squeez', 'https://www.metro.ca/en/online-grocery/aisles/snacks/sweet-snacks-candy/chewy-bars-fruit-snacks/apple-and-berries-sauce-pouches/p/890000001264', NULL),
('metro890497000412', 'Naan Bread', '4.99', 'https://product-images.metro.ca/images/hb0/h51/12477353656350.jpg', '360 g', 'Stonefire', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/muffins-bagels-baked-goods/croissants-chocolatines/naan-bread/p/890497000412', NULL),
('metro890497000870', 'Naan Bread', '4.99', 'https://product-images.metro.ca/images/h2f/ha8/12477466607646.jpg', '200 g', 'Stonefire', 'https://www.metro.ca/en/online-grocery/aisles/bread-bakery-products/tortillas-flat-breads/flat-bread-naan/naan-bread/p/890497000870', NULL);

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
('metro012044011393', 'deodorant'),
('metro012044038703', 'deodorant'),
('metro012044038857', 'deodorant'),
('metro012044038895', 'deodorant'),
('metro012044038925', 'deodorant'),
('metro018627597490', 'swedish berries'),
('metro037000808510', 'deodorant'),
('metro037000850632', 'deodorant'),
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
('metro055773004892', 'eggs'),
('metro055789006644', 'rice'),
('metro055800331878', 'eggs'),
('metro055872025187', 'milk'),
('metro055872035186', 'milk'),
('metro055872123012', 'milk'),
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
('metro059000003115', 'milk'),
('metro059100008027', 'rice'),
('metro059100008614', 'rice'),
('metro059100008621', 'rice'),
('metro059323011002', 'deodorant'),
('metro059441001428', 'cheese'),
('metro059441006362', 'cheese'),
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
('metro059749948838', 'cheese'),
('metro059749954105', 'cheese'),
('metro059749954259', 'swedish berries'),
('metro059749961967', 'cheese'),
('metro059749962421', 'cheese'),
('metro059749965989', 'rice'),
('metro059749969406', 'cheese'),
('metro059749969444', 'cheese'),
('metro059749969451', 'cheese'),
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
('metro064420010124', 'milk'),
('metro064420010247', 'milk'),
('metro064420010315', 'milk'),
('metro064420010322', 'milk'),
('metro064420010346', 'milk'),
('metro065244133211', 'milk'),
('metro065244133228', 'milk'),
('metro065333002107', 'deodorant'),
('metro065633158146', 'swedish berries'),
('metro065633197978', 'rice'),
('metro065651003831', 'eggs'),
('metro065651013007', 'eggs'),
('metro065651024225', 'eggs'),
('metro066721026385', 'eggs'),
('metro067000004858', 'swedish berries'),
('metro067400623222', 'cheese'),
('metro068100003499', 'cheese'),
('metro068200010113', 'milk'),
('metro068200010120', 'milk'),
('metro068200010144', 'milk'),
('metro068200010212', 'milk'),
('metro068200010229', 'milk'),
('metro068200010243', 'milk'),
('metro068200010342', 'milk'),
('metro068200466125', 'milk'),
('metro068200550909', 'milk'),
('metro068200550916', 'milk'),
('metro068200550923', 'milk'),
('metro068200885513', 'cheese'),
('metro068400662907', 'eggs'),
('metro068505110051', 'bread'),
('metro068721004004', 'bread'),
('metro068721004004', 'raisin bread'),
('metro070847896371', 'swedish berries'),
('metro071464280604', 'swedish berries'),
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
('metro088702009255', 'swedish berries'),
('metro204541', 'cheese'),
('metro209271', 'bread'),
('metro215172', 'bread'),
('metro231695', 'swedish berries'),
('metro235557', 'bread'),
('metro238020', 'bread'),
('metro238362', 'swedish berries'),
('metro242340', 'swedish berries'),
('metro243587', 'cheese'),
('metro244441', 'bread'),
('metro244545', 'bread'),
('metro245293', 'cheese'),
('metro3341500006008', 'cheese'),
('metro623798006506', 'swedish berries'),
('metro627022794054', 'swedish berries'),
('metro628250431124', 'swedish berries'),
('metro629145082315', 'bread'),
('metro672774017470', 'milk'),
('metro672774106167', 'rice'),
('metro696685100021', 'bread'),
('metro725299030414', 'rice'),
('metro725299931179', 'rice'),
('metro737282363096', 'swedish berries'),
('metro773479394870', 'cheese'),
('metro773889744876', 'cheese'),
('metro774304000928', 'raisin bread'),
('metro811740000577', 'raisin bread'),
('metro817351001538', 'cheese'),
('metro877693003614', 'swedish berries'),
('metro885250111115', 'bread'),
('metro890000001264', 'swedish berries'),
('metro890497000412', 'bread'),
('metro890497000870', 'bread');

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
('banana'),
('bread'),
('cheese'),
('deodorant'),
('eggs'),
('metro068200010120'),
('milk'),
('potato'),
('raisin bread'),
('rice'),
('salami'),
('swedish berries'),
('swedish_berries'),
('sweet potato'),
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
