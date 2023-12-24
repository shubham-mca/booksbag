-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2021 at 07:38 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `checkout_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `name`, `address`, `mobile`, `checkout_id`) VALUES
(1, 2, 'lalit', 'new nagar, Ranchi ,834009,Jharkhand', '8863939455', '611940e250112'),
(2, 2, 'lalit', 'new nagar, Ranchi ,834009,Jharkhand', '8863939455', '6119521090b40'),
(3, 2, 'lalit', 'new nagar, Ranchi ,834009,Jharkhand', '8863939455', '611952d2b04fb'),
(4, 2, 'lalit', 'new nagar, Ranchi ,834009,Jharkhand', '8863939455', '611959e80c8d9'),
(5, 2, 'lalit', 'new nagar, Ranchi ,834009,Jharkhand', '8863939455', '61195a0980a5e'),
(6, 2, 'lalit', 'new nagar, Ranchi ,834009,Jharkhand', '8863939455', '61195a26a3c98'),
(7, 2, 'lalit', 'new nagar, Ranchi ,834009,Jharkhand', '8863939455', '61195a9042e8a'),
(8, 2, 'lalit', 'new nagar, Ranchi ,834009,Jharkhand', '8863939455', '611a8c0d544b5');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `1` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`1`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(100) NOT NULL,
  `book_name` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `author` varchar(200) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `price` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `img`, `author`, `isbn`, `price`, `category`, `quantity`) VALUES
(5, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '500', 'cmp', 5),
(6, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '300', 'cmp', 5),
(7, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'cmp', 5),
(8, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'bs', 5),
(9, 'India At Risk', 'book_img/5.jpg', 'Jaswant Singh', '90053410', '199', 'na', 5),
(10, 'The Red Sari', 'book_img/6.jpg', 'Javier Moro', '90053456', '135', 'na', 5),
(11, 'The power of  Mind', 'book_img/7.jpg', 'Joseph Murphy', '90053459', '231', 'bs', 7),
(12, 'Think And Grow Rich', 'book_img/8.jpg', 'Napoleon Hill', '900534523', '150', 'bs', 8),
(13, 'Siddartha', 'book_img/9.jpg', 'Herman Hesse', '900534987', '299', 'na', 5),
(14, 'Black Holes', 'book_img/10.jpg', 'Stephen Hawking', '900534987', '199', 'na', 5),
(15, 'The Theory Of Everything', 'book_img/11.jpg', 'Stephen Hawking', '900534981', '205', 'st', 5),
(16, 'Relativity', 'book_img/12.jpg', 'Albert Einstein', '900534988', '190', 'st', 5),
(17, 'The Wellness Sense', 'book_img/13.jpg', 'Om Swami', '900534983', '200', 'iw', 5),
(18, 'The Gene', 'book_img/14.jpg', 'Siddarta Mukherjee', '900534789', '215', 'na', 5),
(19, 'Sapiens', 'book_img/15.jpg', 'Yuval Noah Harari', '900534780', '216', 'iw', 5),
(20, 'One Word Kill', 'book_img/16.jpg', 'Mark Lawrence', '900534782', '180', 'aa', 5),
(21, 'Jurrasic Park', 'book_img/17.jpg', 'Michael Crichton\r\n', '900534567', '240', 'aa', 5),
(22, 'The Hobbit', 'book_img/18.jpg', 'J.R.R. Tolkien\r\n\r\n', '900534561', '340', 'aa', 5),
(23, 'The Hunger Games', 'book_img/19.jpg', 'Suzanne Collins\r\n', '90053456', '310', 'na', 5),
(24, 'The Fellowship of the Ring ', 'book_img/20.jpg', 'J.R.R. Tolkien', '900534645', '300', 'na', 5),
(25, 'The Da Vinci Code', 'book_img/21.jpg', 'Dan Brown', '900534678', '230', 'aa', 5),
(26, 'The Girl with the Dragon Tattoo ', 'book_img/21.jpg', 'Stieg Larsson,\r\nReg Keeland ', '900534678', '230', 'na', 5),
(27, 'On Becoming a Leader', 'book_img/22.jpg', 'Warren G. Bennis', '900534672', '230', 'na', 5),
(28, 'Financial Intelligence', 'book_img/23.jpg', 'Karen Berman and Joe Knight ', '900534908', '250', 'na', 5),
(29, ' Growing a Business', 'book_img/24.jpg', 'Paul Hawken ', '900534999', '260', 'bm', 5),
(30, 'What Management Is', 'book_img/25.jpg', 'Joan Magretta', '900534991', '140', 'bm', 5),
(31, 'Rich Dad Poor Dad:', 'book_img/26.jpg', 'Robert T. Kiyosaki', '900534998', '210', 'bm', 5),
(32, 'India in the Age of Ideas', 'book_img/27.jpg', ' 	\r\nSanjeev Sanyal', '900534430', '230', 'bm', 5),
(33, 'Thinking, Fast and Slow ', 'book_img/28.jpg', 'Daniel Kahneman', '900534436', '270', 'bm', 5),
(34, 'The Lean Startup', 'book_img/29.jpg', 'Eric Ries', '900534430', '230', 'bm', 5),
(35, 'Captain Marvel', 'book_img/30.jpg', 'Kelly Sue DeConnick', '900534431', '299', 'com', 5),
(36, 'The Meltdown', 'book_img/31.jpg', 'Jeff Kinney ', '9005344231', '279', 'com', 5),
(37, 'Saga', 'book_img/32.jpg', 'Brian K. Vaughan ', '9005344213', '240', 'com', 5),
(38, 'Ultimate Spider-Man', 'book_img/33.jpg', 'Brian Michael Bendis  ', '9005344215', '230', 'com', 5),
(39, 'Captain America', 'book_img/34.jpg', 'Ed Brubaker ', '90053442345', '220', 'com', 5),
(40, 'All Star Superman', 'book_img/35.jpg', 'Grant Morrison', '900534424', '290', 'com', 5),
(41, 'Wonderstruck', 'book_img/36.jpg', 'Brian Selznick', '900534422', '249', 'com', 5),
(42, 'Ashoka the Great', 'book_img/37.jpg', 'Maple Press ', '900534412', '160', 'nov', 5),
(43, 'Biography: S.C. Bose', 'book_img/38.jpg', 'RPH Editorial Board ', '9005344456', '180', 'nov', 5),
(45, 'The Perfect Murder', 'book_img/40.jpg', 'Ruskin Bond', '90053446', '210', 'nov', 5),
(46, 'Sherlock Holmes vol 2', 'book_img/41.jpg', 'Sir Arthur Conan Doyale ', '900534456', '220', 'nov', 5),
(47, 'Manto:Selected Short Stories', 'book_img/42.jpg', 'Saadat Hasan Manto ', '900534451', '100', 'iw', 5),
(48, 'Wings of Fire', 'book_img/43.jpg', 'Arun Tiwari ', '900534452', '170', 'iw', 5),
(50, 'The Forever War', 'images/160338419847042625_379136152824987_3805429337373540352_n.jpg', 'Lalit Kumar', '', '300', 'sfi', 5),
(51, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '500', 'cmp', 5),
(52, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '300', 'cmp', 5),
(53, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'cmp', 5),
(54, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'bs', 5),
(55, 'India At Risk', 'book_img/5.jpg', 'Jaswant Singh', '90053410', '199', 'bs', 5),
(56, 'The Red Sari', 'book_img/6.jpg', 'Javier Moro', '90053456', '135', 'bs', 5),
(57, 'The power of  Mind', 'book_img/7.jpg', 'Joseph Murphy', '90053459', '231', 'bs', 5),
(58, 'Think And Grow Rich', 'book_img/8.jpg', 'Napoleon Hill', '900534523', '150', 'bs', 5),
(59, 'Siddartha', 'book_img/9.jpg', 'Herman Hesse', '900534987', '299', 'bs', 5),
(60, 'Black Holes', 'book_img/10.jpg', 'Stephen Hawking', '900534987', '199', 'st', 5),
(61, 'The Theory Of Everything', 'book_img/11.jpg', 'Stephen Hawking', '900534981', '205', 'st', 5),
(62, 'Relativity', 'book_img/12.jpg', 'Albert Einstein', '900534988', '190', 'st', 5),
(63, 'The Wellness Sense', 'book_img/13.jpg', 'Om Swami', '900534983', '200', 'iw', 5),
(64, 'The Gene', 'book_img/14.jpg', 'Siddarta Mukherjee', '900534789', '215', 'iw', 5),
(65, 'Sapiens', 'book_img/15.jpg', 'Yuval Noah Harari', '900534780', '216', 'iw', 5),
(66, 'One Word Kill', 'book_img/16.jpg', 'Mark Lawrence', '900534782', '180', 'aa', 5),
(67, 'Jurrasic Park', 'book_img/17.jpg', 'Michael Crichton\r\n', '900534567', '240', 'aa', 5),
(68, 'The Hobbit', 'book_img/18.jpg', 'J.R.R. Tolkien\r\n\r\n', '900534561', '340', 'aa', 5),
(69, 'The Hunger Games', 'book_img/19.jpg', 'Suzanne Collins\r\n', '90053456', '310', 'aa', 5),
(70, 'The Fellowship of the Ring ', 'book_img/20.jpg', 'J.R.R. Tolkien', '900534645', '300', 'aa', 5),
(71, 'The Da Vinci Code', 'book_img/21.jpg', 'Dan Brown', '900534678', '230', 'aa', 5),
(72, 'The Girl with the Dragon Tattoo ', 'book_img/21.jpg', 'Stieg Larsson,\r\nReg Keeland ', '900534678', '230', 'aa', 5),
(73, 'On Becoming a Leader', 'book_img/22.jpg', 'Warren G. Bennis', '900534672', '230', 'bm', 5),
(74, 'Financial Intelligence', 'book_img/23.jpg', 'Karen Berman and Joe Knight ', '900534908', '250', 'bm', 5),
(75, ' Growing a Business', 'book_img/24.jpg', 'Paul Hawken ', '900534999', '260', 'bm', 5),
(76, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '500', 'cmp', 5),
(77, 'Let Us C++', 'book_img/index.jpg', 'Yashwant Kanetkar', '90073467', '300', 'cmp', 5),
(78, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'cmp', 5),
(79, 'Hello World', 'book_img/3.jpg', 'Hannah Fry', '90053400', '300', 'bs', 5),
(80, 'India At Risk', 'book_img/5.jpg', 'Jaswant Singh', '90053410', '199', 'bs', 5),
(81, 'The Red Sari', 'book_img/6.jpg', 'Javier Moro', '90053456', '135', 'bs', 5),
(82, 'The power of  Mind', 'book_img/7.jpg', 'Joseph Murphy', '90053459', '231', 'bs', 5),
(83, 'Think And Grow Rich', 'book_img/8.jpg', 'Napoleon Hill', '900534523', '150', 'bs', 5),
(84, 'Siddartha', 'book_img/9.jpg', 'Herman Hesse', '900534987', '299', 'bs', 5),
(85, 'Black Holes', 'book_img/10.jpg', 'Stephen Hawking', '900534987', '199', 'st', 5),
(86, 'The Theory Of Everything', 'book_img/11.jpg', 'Stephen Hawking', '900534981', '205', 'st', 5),
(87, 'Relativity', 'book_img/12.jpg', 'Albert Einstein', '900534988', '190', 'st', 5),
(88, 'The Wellness Sense', 'book_img/13.jpg', 'Om Swami', '900534983', '200', 'iw', 5),
(89, 'The Gene', 'book_img/14.jpg', 'Siddarta Mukherjee', '900534789', '215', 'iw', 5),
(90, 'Sapiens', 'book_img/15.jpg', 'Yuval Noah Harari', '900534780', '216', 'iw', 5),
(91, 'One Word Kill', 'book_img/16.jpg', 'Mark Lawrence', '900534782', '180', 'aa', 5),
(92, 'Jurrasic Park', 'book_img/17.jpg', 'Michael Crichton\r\n', '900534567', '240', 'aa', 5),
(93, 'The Hobbit', 'book_img/18.jpg', 'J.R.R. Tolkien\r\n\r\n', '900534561', '340', 'aa', 5),
(94, 'The Hunger Games', 'book_img/19.jpg', 'Suzanne Collins\r\n', '90053456', '310', 'aa', 5),
(95, 'The Fellowship of the Ring ', 'book_img/20.jpg', 'J.R.R. Tolkien', '900534645', '300', 'aa', 5),
(96, 'The Da Vinci Code', 'book_img/21.jpg', 'Dan Brown', '900534678', '230', 'aa', 5),
(97, 'The Girl with the Dragon Tattoo ', 'book_img/21.jpg', 'Stieg Larsson,\r\nReg Keeland ', '900534678', '230', 'aa', 5),
(98, 'On Becoming a Leader', 'book_img/22.jpg', 'Warren G. Bennis', '900534672', '230', 'bm', 5),
(99, 'Financial Intelligence', 'book_img/23.jpg', 'Karen Berman and Joe Knight ', '900534908', '250', 'bm', 5),
(100, ' Growing a Business', 'book_img/24.jpg', 'Paul Hawken ', '900534999', '260', 'bm', 5);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(255) NOT NULL,
  `book_id` varchar(100) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `city` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`, `name`, `mobile`, `image`, `city`) VALUES
(1, 'lali@gmail.com', '$2y$10$42YQjRcX7VqAz6/4hiavfuW7tNDWUcLBMtmHVFyi/RAgc7NrP.Uoq', 'lalit', '8863939456', '', ''),
(2, 'lalitrana2018rr@gmail.com', '$2y$10$ZjPbZTZeMyxAyZsWJw3vje5pKQGPEzlklP/LWrfDTx7EHUn6xPAnO', 'lali', '8863939455', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `sno` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `book_id` varchar(200) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `img` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `date_of_purchase` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`sno`, `order_id`, `book_id`, `book_name`, `img`, `price`, `quantity`, `total_price`, `user_id`, `date_of_purchase`, `status`, `payment_method`, `paid`) VALUES
(1, '12652812302', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '2', '2021-08-15 11:45:26', 'order placed', 'COD', 'no'),
(2, '10315954352', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 1, '231', '2', '2021-08-15 11:46:09', 'order placed', 'COD', 'no'),
(3, '12381294262', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 2, '462', '2', '2021-08-15 11:46:42', 'order placed', 'COD', 'no'),
(4, '16278680302', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 3, '450', '2', '2021-08-15 11:47:12', 'order placed', 'COD', 'no'),
(5, '2653728982', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 3, '693', '2', '2021-08-15 11:48:58', 'order placed', 'COD', 'no'),
(6, '11064773092', '12', 'Think And Grow Rich', 'book_img/8.jpg', '150', 2, '300', '2', '2021-08-15 11:48:58', 'order placed', 'COD', 'no'),
(7, '6285217242', '11', 'The power of  Mind', 'book_img/7.jpg', '231', 3, '693', '2', '2021-08-16 09:32:23', 'order placed', 'COD', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `order_address`
--

CREATE TABLE `order_address` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `order_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_address`
--

INSERT INTO `order_address` (`id`, `address_id`, `order_id`) VALUES
(1, 3, '12652812302'),
(2, 4, '10315954352'),
(3, 5, '12381294262'),
(4, 6, '16278680302'),
(5, 7, '2653728982'),
(6, 7, '11064773092'),
(7, 8, '6285217242');

-- --------------------------------------------------------

--
-- Table structure for table `profile_images`
--

CREATE TABLE `profile_images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `rating_title` varchar(250) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(250) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `email`, `rating_title`, `rating`, `review`, `book_id`, `date`, `time`) VALUES
(1, 'lali@gmail.com', 'awesome book', 5, 'Yes this book is surely helpful', 8, '21-08-21', '07:36:47pm'),
(2, 'lali@gmail.com', 'awesome book', 4, 'the power of mind', 11, '21-08-21', '07:38:11pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`1`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `order_address`
--
ALTER TABLE `order_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `profile_images`
--
ALTER TABLE `profile_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `1` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_address`
--
ALTER TABLE `order_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profile_images`
--
ALTER TABLE `profile_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
