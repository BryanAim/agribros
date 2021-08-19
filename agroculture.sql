-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 11:26 AM
-- Server version: 8.0.19
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agroculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogdata`
--

CREATE TABLE `blogdata` (
  `blogId` int NOT NULL,
  `blogUser` varchar(256) NOT NULL,
  `blogTitle` varchar(256) NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogdata`
--

INSERT INTO `blogdata` (`blogId`, `blogUser`, `blogTitle`, `blogContent`, `blogTime`, `likes`) VALUES
(19, 'ThePhenom', 'First Blog', '<p>Its Awesome website<img alt=\"wink\" src=\"https://cdn.ckeditor.com/4.8.0/full/plugins/smiley/images/wink_smile.png\" style=\"height:23px; width:23px\" title=\"wink\" /></p>\r\n', '2018-02-25 13:09:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogfeedback`
--

CREATE TABLE `blogfeedback` (
  `blogId` int NOT NULL,
  `comment` varchar(256) NOT NULL,
  `commentUser` varchar(256) NOT NULL,
  `commentPic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogfeedback`
--

INSERT INTO `blogfeedback` (`blogId`, `comment`, `commentUser`, `commentPic`, `commentTime`) VALUES
(19, 'Mast yarr', 'ThePhenom', 'profile0.png', '2018-02-25 13:09:54'),
(19, 'Easy to use', 'jemoo', '', '2021-08-19 07:52:37'),
(19, 'Love the service', 'denoo', 'profile0.png', '2021-08-19 07:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `bid` int NOT NULL,
  `bname` varchar(100) NOT NULL,
  `busername` varchar(100) NOT NULL,
  `bpassword` varchar(100) NOT NULL,
  `bhash` varchar(100) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bmobile` varchar(100) NOT NULL,
  `baddress` text NOT NULL,
  `bactive` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`bid`, `bname`, `busername`, `bpassword`, `bhash`, `bemail`, `bmobile`, `baddress`, `bactive`) VALUES
(1, 'James Buyer', 'jemoo', '$2y$10$NZ6xf1CJJswV7fHAmGUwxeRpo2tP6YqsgX19ZTh9W7xNJWjlcPNTK', '202cb962ac59075b964b07152d234b70', 'jemoo@email.com', '0723456789', 'Molo', 1),
(2, 'Dennis buyer', 'denoo', '$2y$10$sKjKz85WEhoHXpNrOWFWf.i2L5WjGA1PdVgcPoCpzd6WmCGH.FJ8e', '1f0e3dad99908345f7439f8ffabdffc4', 'denoo@email.com', '0712345670', 'Nyeri', 0),
(3, 'Catherine buyer', 'cathy', '$2y$10$PNOZLNOs1gy33L6NBFTjkeDSem8h29G6fpTrV75EMqy6HWJNrL1EO', '4a47d2983c8bd392b120b627e0e1cab4', 'cathy@email.com', '0712345679', 'Pwani', 0),
(4, 'Buyer 2', 'buyer2', '$2y$10$dwlMYrnxZW5HQIfhGHLlzeQrM25wSosNScDKSMoa7.3KLoT2C730K', '71a3cb155f8dc89bf3d0365288219936', 'buyer2@gmail.com', '0786879600', 'Nairobi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `fid` int NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `fhash` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `faddress` text NOT NULL,
  `factive` int NOT NULL DEFAULT '0',
  `frating` int NOT NULL DEFAULT '0',
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`fid`, `fname`, `fusername`, `fpassword`, `fhash`, `femail`, `fmobile`, `faddress`, `factive`, `frating`, `picExt`, `picStatus`) VALUES
(3, 'Kaivalya Hemant Mendki', 'ThePhenom', '$2y$10$22ezmzHRa9c5ycHmVm5RpOnlT4LwFaDZar1XhmLRJQKGrcVRhPgti', '61b4a64be663682e8cb037d9719ad8cd', 'kmendki98@gmail.com', '8600611198', 'abcde', 0, 0, 'png', 0),
(4, 'John the Baptist', 'johnthebaptist', '$2y$10$5U0fmtkTTJQQTetIUECQFe845YvYJ1GWB5Cwv0y6Il7b/CCUz/kBm', 'a597e50502f5ff68e3e25b9114205d4a', 'jjj@j.com', '0785656543', 'Nakuru', 0, 0, 'png', 0),
(5, 'farmer 1', 'farmer1', '$2y$10$sd7D489IeRKolsRd.nx.yO/S2BfqpGcN5BfvdPtFgxR3IR5.6ooc6', '3a0772443a0739141292a5429b952fe6', 'farmer1@email.com', '0785678908', 'Kisumu', 0, 0, 'png', 0),
(6, 'farmer 2', 'farmer2', '$2y$10$RUbSFdIHzTL1LfJ.1SX/NesjGcew.Ea3G.jI9vio.bFKv92dMJw1y', 'b706835de79a2b4e80506f582af3676a', 'farmer2@yahoo.com', '0765476589', 'Maralal', 0, 0, 'png', 0),
(7, 'farmer 3', 'farmer3', '$2y$10$WrjZYzB7lFtQIABxOeGAT.MvTR1l7bEzVr0kZUE2MqMZ38dgHasji', '250cf8b51c773f3f8dc8b4be867a9a02', 'farmer3@gmail.com', '0732547890', 'Trans Nzoia', 0, 0, 'png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fproduct`
--

CREATE TABLE `fproduct` (
  `fid` int NOT NULL,
  `pid` int NOT NULL,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fproduct`
--

INSERT INTO `fproduct` (`fid`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`, `picStatus`) VALUES
(4, 31, 'Potatoes Gunia', 'Vegetable', '<p>Fresh out the shamba.</p>\r\n\r\n<p>Location: Molo.</p>\r\n', 600, 'Potatoes Gunia4.jpg', 1),
(5, 32, 'Delicious Tilapia', 'Aqua Product', '<p>Fresh and Delicious.</p>\r\n\r\n<p>Can come in Wholessale.</p>\r\n\r\n<p>Location: Kisumu</p>\r\n', 150, 'Delicious Tilapia5.jpg', 1),
(6, 33, 'Tractor', 'Machinery', '<p>Brand New.</p>\r\n\r\n<p>Suitable for large farms.</p>\r\n\r\n<p>Location: maralal.</p>\r\n', 2000000, 'Tractor6.jpg', 1),
(6, 34, 'Spinach Gunia', 'Vegetable', '<p>Fresh from the farm.</p>\r\n\r\n<p>Location: Maralal</p>\r\n', 500, 'Spinach Gunia6.jpg', 1),
(5, 35, 'Green grams(Ndengu)', 'Grains', '<p>Available in wholesale and retail</p>\r\n', 600, 'Green grams(Ndengu)5.jpeg', 1),
(7, 36, 'Plums', 'Fruit', '<p>Very sweet</p>\r\n', 680, 'Plums7.jpg', 1),
(7, 37, 'Passion Fruits', 'Fruit', '<p>Request for their seeds too</p>\r\n', 150, 'Passion Fruits7.jpg', 1),
(7, 38, 'Watermelons', 'Fruit', '<p>Big and juicy</p>\r\n', 200, 'Watermelons7.jpg', 1),
(7, 39, 'Watermelons', 'Fruit', '<p>Big and Juicy</p>\r\n', 150, 'Watermelons7.jpg', 1),
(6, 40, 'Maize', 'Grains', '<p>Wholesale and retail available</p>\r\n', 900, 'Maize6.jpg', 1),
(5, 41, 'Green Pepper', 'Vegetable', '<p>Free delivery countrywide</p>\r\n', 800, 'Green Pepper5.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likedata`
--

CREATE TABLE `likedata` (
  `blogId` int NOT NULL,
  `blogUserId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likedata`
--

INSERT INTO `likedata` (`blogId`, `blogUserId`) VALUES
(19, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE `mycart` (
  `bid` int NOT NULL,
  `pid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mycart`
--

INSERT INTO `mycart` (`bid`, `pid`) VALUES
(3, 27),
(3, 30),
(4, 41);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `pid` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`pid`, `name`, `rating`, `comment`) VALUES
(41, 'Buyer 2', 5, 'Delivered as promised');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int NOT NULL,
  `bid` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `bid`, `pid`, `name`, `city`, `mobile`, `email`, `pincode`, `addr`) VALUES
(1, 3, 28, 'sa,j,cns', 'sajc', 'sajch', 'kmendki98@gmail.com', 'sacu', 'ckaskjc'),
(2, 1, 27, 'James Buyer', 'molo', '0712345678', 'jemoo@email.com', 'code', 'Molo'),
(3, 2, 29, 'Dennis buyer', 'molo', '0712345670', 'denoo@email.com', 'code', 'Nyeri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogdata`
--
ALTER TABLE `blogdata`
  ADD PRIMARY KEY (`blogId`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `bid` (`bid`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `fproduct`
--
ALTER TABLE `fproduct`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `likedata`
--
ALTER TABLE `likedata`
  ADD KEY `blogId` (`blogId`),
  ADD KEY `blogUserId` (`blogUserId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogdata`
--
ALTER TABLE `blogdata`
  MODIFY `blogId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `bid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `fid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fproduct`
--
ALTER TABLE `fproduct`
  MODIFY `pid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likedata`
--
ALTER TABLE `likedata`
  ADD CONSTRAINT `likedata_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogdata` (`blogId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
