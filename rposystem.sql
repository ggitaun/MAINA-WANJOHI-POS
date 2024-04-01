-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2024 at 02:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rposystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `rpos_admin`
--

CREATE TABLE `rpos_admin` (
  `admin_id` varchar(200) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_admin`
--

INSERT INTO `rpos_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
('10e0b6dc958adfb5b094d8935a13aeadbe783c25', 'System Admin', 'admin@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_customers`
--

CREATE TABLE `rpos_customers` (
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_phoneno` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_customers`
--

INSERT INTO `rpos_customers` (`customer_id`, `customer_name`, `customer_phoneno`, `customer_email`, `customer_password`, `created_at`) VALUES
('13afcf582b7b', 'VYRONE MINO', '0711111111', 'mino@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-03-07 09:31:37.646686'),
('191a4cb3ff46', 'BENJAMIN KARANJA', '0789564353', 'benja@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-03-07 12:17:05.438646'),
('1b54bb9991df', 'NICOLE CHEPKORIR', '0722222222', 'nicole@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-03-07 09:31:19.179703'),
('8d4bb5de0b1b', 'VICTOR MAINA ', '0796139729', 'wanjohi@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-03-07 08:09:31.701015'),
('c53d87d09872', 'HILARY OMONDI', '0789645753', 'omondi@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-03-07 11:53:07.031032'),
('eaa96f5ae72f', 'NIVEA GITAU', '0733333333', 'nivea@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-03-07 09:32:23.624307');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_orders`
--

CREATE TABLE `rpos_orders` (
  `order_id` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `prod_id` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `prod_qty` varchar(200) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_orders`
--

INSERT INTO `rpos_orders` (`order_id`, `order_code`, `customer_id`, `customer_name`, `prod_id`, `prod_name`, `prod_price`, `prod_qty`, `order_status`, `created_at`) VALUES
('355b197119', 'UZQX-2514', '191a4cb3ff46', 'BENJAMIN KARANJA', 'bd200ef837', 'Nescafe Coffee', '1445', '2', 'Paid', '2024-03-08 09:37:57.200925'),
('69b1873da5', 'XTRE-5892', '8d4bb5de0b1b', 'VICTOR MAINA', '2b976e49a0', 'Cheeseburger', '125', '2', '', '2024-03-07 12:19:15.378367'),
('90ab7695f2', 'YSPI-2715', '191a4cb3ff46', 'BENJAMIN KARANJA', 'd9aed17627', 'Crab Cake', '16', '10', 'Paid', '2024-03-08 11:30:47.471636'),
('a40360512b', 'LRHP-7234', '191a4cb3ff46', 'BENJAMIN KARANJA', '31dfcc94cf', 'Pembe Maize Flour', '140', '4', 'Paid', '2024-03-08 11:29:20.073175'),
('bd29dba4bd', 'YLZG-8315', 'eaa96f5ae72f', 'NIVEA GITAU', 'd57cd89073', 'Vaseline Cocoa Radiant', '100', '2', 'Paid', '2024-03-07 11:30:59.275887'),
('ebb6f88fed', 'AEDC-8491', 'c53d87d09872', 'HILARY OMONDI', '0c4b5c0604', 'Spaghetti ', '155', '10', 'Paid', '2024-03-07 12:18:04.733795'),
('fc4cc44e34', 'PFEC-6374', '1b54bb9991df', 'NICOLE CHEPKORIR', '06dc36c1be', 'SunRice Biryani Rice', '250', '4', 'Paid', '2024-03-07 11:35:50.197706');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_pass_resets`
--

CREATE TABLE `rpos_pass_resets` (
  `reset_id` int(20) NOT NULL,
  `reset_code` varchar(200) NOT NULL,
  `reset_token` varchar(200) NOT NULL,
  `reset_email` varchar(200) NOT NULL,
  `reset_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_pass_resets`
--

INSERT INTO `rpos_pass_resets` (`reset_id`, `reset_code`, `reset_token`, `reset_email`, `reset_status`, `created_at`) VALUES
(1, '63KU9QDGSO', '4ac4cee0a94e82a2aedc311617aa437e218bdf68', 'sysadmin@icofee.org', 'Pending', '2020-08-17 15:20:14.318643');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_payments`
--

CREATE TABLE `rpos_payments` (
  `pay_id` varchar(200) NOT NULL,
  `pay_code` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `pay_amt` varchar(200) NOT NULL,
  `pay_method` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_payments`
--

INSERT INTO `rpos_payments` (`pay_id`, `pay_code`, `order_code`, `customer_id`, `pay_amt`, `pay_method`, `created_at`) VALUES
('0bf592', '9UMWLG4BF8', 'EJKA-4501', '35135b319ce3', '8', 'Cash', '2022-09-04 16:31:54.525284'),
('19ee80', 'D4787TRTRH', 'LRHP-7234', '191a4cb3ff46', '560', 'Cash', '2024-03-08 11:29:20.062250'),
('4423d7', 'QWERT0YUZ1', 'JFMB-0731', '35135b319ce3', '11', 'Cash', '2022-09-04 16:37:03.655834'),
('442865', '146XLFSC9V', 'INHG-0875', '9c7fcc067bda', '10', 'Paypal', '2022-09-04 16:35:22.470600'),
('65891b', 'MF2TVJA1PY', 'ZPXD-6951', 'e711dcc579d9', '16', 'Cash', '2022-09-03 13:12:46.959558'),
('69e049', 'PJ7E3RFDR4', 'PFEC-6374', '1b54bb9991df', '1000', 'Cash', '2024-03-07 11:35:50.188705'),
('75ae21', '1QIKVO69SA', 'IUSP-9453', 'fe6bb69bdd29', '10', 'Cash', '2022-09-03 11:50:40.496625'),
('7e1989', 'KLTF3YZHJP', 'QOEH-8613', '29c759d624f9', '9', 'Cash', '2022-09-03 12:02:32.926529'),
('968488', '5E31DQ2NCG', 'COXP-6018', '7c8f2100d552', '22', 'Cash', '2022-09-03 12:17:44.639979'),
('984539', 'LSBNK1WRFU', 'FNAB-9142', '35135b319ce3', '18', 'Paypal', '2022-09-04 16:32:14.852482'),
('9fcee7', 'AZSUNOKEI7', 'OTEV-8532', '3859d26cd9a5', '15', 'Cash', '2022-09-03 13:13:38.855058'),
('c570be', 'REG45DS4C1', 'YLZG-8315', 'eaa96f5ae72f', '200', 'Cash', '2024-03-07 11:30:59.270205'),
('c81d2e', 'WERGFCXZSR', 'AEHM-0653', '06549ea58afd', '8', 'Cash', '2022-09-03 13:26:00.331494'),
('e46e29', 'QMCGSNER3T', 'ONSY-2465', '57b7541814ed', '12', 'Cash', '2022-09-03 08:35:50.172062'),
('ea44f2', 'REG45DS4C1', 'YSPI-2715', '191a4cb3ff46', '160', 'Cash', '2024-03-08 11:30:47.459935'),
('fa8773', 'W56DYS29AJ', 'AEDC-8491', 'c53d87d09872', '1550', 'Cash', '2024-03-07 12:18:04.730159'),
('fc19cd', 'D4787TRTRH', 'UZQX-2514', '191a4cb3ff46', '2890', 'Cash', '2024-03-08 09:37:57.198013');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_products`
--

CREATE TABLE `rpos_products` (
  `prod_id` varchar(200) NOT NULL,
  `prod_code` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_img` varchar(200) NOT NULL,
  `prod_desc` longtext NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_products`
--

INSERT INTO `rpos_products` (`prod_id`, `prod_code`, `prod_name`, `prod_img`, `prod_desc`, `prod_price`, `created_at`) VALUES
('06dc36c1be', 'FCWU-5762', 'SunRice Biryani Rice', 'rice.jfif', 'Sunrise Biryani Rice does not break or crack upon cooking. Consumed by Maharajas and Emperors for generation for the ultimate feast.', '250', '2024-03-07 09:42:07.629440'),
('0c4b5c0604', 'JRZN-9518', 'Spaghetti ', 'spaghetti.jfif', 'A long, thin piece of pasta, spaghetti has a lot of versatility and mixes wonderfully with a variety of sauces. Spaghetti is probably best known for being paired with tomato sauce and meatballs.', '155', '2024-03-07 09:42:22.235966'),
('14c7b6370e', 'QZHM-0391', 'Elianto Cooking Oil', 'elianto.webp', 'Elianto Cooking Oil is a high-quality cooking oil made from pure corn oil. It is a light and healthy oil that is perfect for all types of cooking. It has a neutral taste and is low in saturated fat.', '2400', '2024-03-07 09:41:35.173184'),
('2b976e49a0', 'CEWV-9438', 'Cheeseburger', 'cheeseburgers.jpg', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty. The cheese is usually added to the cooking hamburger patty shortly before serving, which allows the cheese to melt. Cheeseburgers can include variations in structure, ingredients and composition.', '125', '2024-02-28 10:45:47.282634'),
('2fc1079f03', 'TZIQ-5692', 'Colgate Charcoal Toothpaste', 'colgate.jfif', 'The Formula Combines The Colgate Oral Care Science With Charcoal & Mint For A Fresh & Clean Mouth.Uplifting Mint Flavour.Strong Teeth.Healthy Gums.', '120', '2024-03-07 09:26:40.290649'),
('2fdec9bdfb', 'UJAK-9614', 'Ajab Fortified Baking Flour', 'Ajab.jpg_480Wx480H', 'Ajab All-Purpose Flour stands as a versatile essential for home baking, meticulously crafted from premium wheat flour and fortified with vital vitamins and minerals. This fortified flour not only ensures great taste but also enriches your bakes with essential nutritional value, making it a wholesome choice for your culinary creations.', '280', '2024-03-07 09:42:42.927001'),
('31dfcc94cf', 'SYQP-3710', 'Pembe Maize Flour', 'pembe.jfif', 'Pembe Maize Flour contains protein as well as fat. The maize flour has been fortified with vitamins and minerals making it healthier and more nutritious for the whole family.', '140', '2024-03-07 09:44:44.149118'),
('bd200ef837', 'HEIY-6034', 'Nescafe Coffee', 'nescafe.avif', 'Premium instant coffee at home, A must-try for all coffee-lovers. Created using specially selected and carefully roasted beans to create a delectable coffee experience. Delicious and 100% pure coffee that is perfect for any time of day.', '1445', '2024-03-07 09:52:11.697870'),
('d57cd89073', 'ZGQW-9480', 'Vaseline Cocoa Radiant', 'vaseline.jpg', 'Heal and revitalise dry, dull skin thanks to Vaseline Intensive Care Cocoa Radiant Body Oil which combines pure cocoa and replenishing oils to revive dry and dull-looking skin for a healthy glow.', '100', '2024-03-07 09:53:47.491545'),
('d9aed17627', 'FIKD-9703', 'Crab Cake', 'crabcakes.jpg', 'A crab cake is a variety of fishcake that is popular in the United States. It is composed of crab meat and various other ingredients, such as bread crumbs, mayonnaise, mustard, eggs, and seasonings. The cake is then sautÃ©ed, baked, grilled, deep fried, or broiled.', '16', '2022-09-03 12:54:52.120847'),
('f4ce3927bf', 'EAHD-1980', 'Hot Dog', 'hotdog0.jpg', 'A hot dog is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener or a frankfurter. The names of these sausages also commonly refer to their assembled dish.', '4', '2022-09-03 10:53:04.965223');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_staff`
--

CREATE TABLE `rpos_staff` (
  `staff_id` int(20) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `staff_email` varchar(200) NOT NULL,
  `staff_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_staff`
--

INSERT INTO `rpos_staff` (`staff_id`, `staff_name`, `staff_number`, `staff_email`, `staff_password`, `created_at`) VALUES
(3, 'LEONARD JOMBO', 'ZDER-9256', 'jombo@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-03-07 09:35:33.395257'),
(4, 'NEVILLE KEN', 'QMZI-8345', 'neville@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-03-07 09:36:02.506867'),
(5, 'DANIEL SIRO', 'CRQV-2748', 'siro@mail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', '2024-03-07 09:38:00.968649');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rpos_admin`
--
ALTER TABLE `rpos_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `rpos_customers`
--
ALTER TABLE `rpos_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `CustomerOrder` (`customer_id`),
  ADD KEY `ProductOrder` (`prod_id`);

--
-- Indexes for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `rpos_payments`
--
ALTER TABLE `rpos_payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `order` (`order_code`);

--
-- Indexes for table `rpos_products`
--
ALTER TABLE `rpos_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  MODIFY `reset_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD CONSTRAINT `CustomerOrder` FOREIGN KEY (`customer_id`) REFERENCES `rpos_customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOrder` FOREIGN KEY (`prod_id`) REFERENCES `rpos_products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
