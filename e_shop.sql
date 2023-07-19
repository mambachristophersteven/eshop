-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 04:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `position`, `firstname`, `lastname`, `telephone`) VALUES
(1, 'prince22', '1234567', 'Manager', 'Prince', 'Osei', '09988776656'),
(3, 'mashark', '7654321', 'Customer', 'Masharck', 'Sarpong', '0592109877'),
(4, 'vickyvicky', '7654321', 'Customer', 'Victoria', 'Agyekum', '08666552761'),
(5, 'josh', '1234567', '', 'Joshua', 'Azumah', '0563214569'),
(6, 'josh12', '123456', 'Customer', 'Joshua', 'Azumah', '0592106300'),
(7, 'danny', '234567', 'Customer', 'Daniel', 'Sani', '0592106300'),
(8, 'roger', '996633', 'Customer', 'Roger', 'Miller', '0555555555');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `admin_reply` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `quantity`, `total_price`, `status`, `review`, `customer`, `telephone`, `admin_reply`) VALUES
(1, 'Wheat Bread', '5', '60', 'Approved', '', 'mashark', '00887367372', ''),
(2, 'Android Charger', '10', '200', 'Approved', 'Helloooooooooooooooo', 'mashark', '07766545444', ''),
(3, 'Ballpoint Pen', '15', '45', 'Approved', '', 'mashark', '09987765655', ''),
(4, 'Barley Beer', '20', '300', 'Approved', 'The beer is sweet', 'mashark', '8899007555', 'We love your review'),
(5, 'Wheat Bread', '6', '72', 'Approved', '', 'mashark', '02339467282', ''),
(6, 'Ideal Milk', '20', '200', 'Approved', 'This was very goo. I like the delivery time', 'mashark', '09986478474', 'Thank you'),
(7, 'Blue Long Sleeved Shirt', '500', '50000', 'Approved', '', 'mashark', '02556552555', ''),
(9, 'Grey Shoe', '36', '8640', 'Approved', 'Good shoes', 'roger', '0555555555', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `stock` int(255) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `price`, `category`, `image`, `stock`, `date_added`) VALUES
(1, 'Ideal Milk', 'Nestle', '10.00', 'Grocery', '../productsimages/milk.png', 5000, '2023-07-05'),
(2, 'Android Charger', 'Techno', '20.00', 'Electronics', '../productsimages/charger.png', 3000, '2023-07-03'),
(3, 'Wheat Bread', 'Hot Oven', '12.00', 'Grocery', '../productsimages/bread.png', 2400, '2023-07-04'),
(4, 'Ballpoint Pen', 'Bicc', '3.00', 'Stationery', '../productsimages/pen.png', 7000, '2023-07-06'),
(5, 'Barley Beer', 'Gulder', '15.00', 'Beverage', '../productsimages/beer.png', 8000, '2023-07-11'),
(6, 'Blue Long Sleeved Shirt', 'Gucci', '100', 'Clothing', '../products/shirt.png', 5000, '2023-07-13'),
(7, 'Grey Shoe', 'Nike', '240', 'Clothing', '../products/shoe.png', 200, '2023-07-15'),
(8, 'Wooden Table', 'Orca', '75', 'Furniture', '../products/table.png', 94, '2023-07-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
