-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 08:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `category_id` int(8) NOT NULL,
  `category_name` text NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Python', 'Python is an interpreted, high-level and general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.', '2020-12-08 13:46:17'),
(2, 'Java', 'Java is a class-based, object-oriented programming language that is designed to Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible', '2020-12-09 11:21:09'),
(3, 'C', 'C is a general-purpose, procedural computer programming language supporting structured programming, lexical variable scope, and recursion, with a static type system. By design, C provides constructs that map efficiently to typical machine instructions.', '2020-12-09 11:21:57'),
(4, 'C++', 'C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or \"C with Classes\".', '2020-12-09 11:22:39'),
(5, 'Javascript', 'JavaScript, often abbreviated as JS, is a programming language that conforms to JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. ', '2020-12-09 11:23:22'),
(6, 'PHP', 'PHP is a general-purpose scripting language especially suited to web developmentPHP is a general-purpose scripting language especially suited to web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994. ', '2020-12-09 11:24:13'),
(7, 'Django', 'Django is a Python-based free and open-source web framework that follows the modDjango is a Python-based free and open-source web framework that follows the model-template-views architectural pattern. ', '2020-12-09 11:25:26'),
(8, 'Spring', 'The Spring Framework is an framework and inversion of control container for the Java platform.The framework core features can be used by any Java application,but there are extensions for building web applications on top of the JavaEE platform.', '2020-12-09 11:26:10'),
(9, 'Flask', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. ', '2020-12-09 11:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(86, 'you can simply print y writing echo', 49, 14, '2020-12-09 13:36:19'),
(87, 'hello mota baby we are help you in a moment', 50, 15, '2020-12-10 13:15:51'),
(88, 'are you mental', 50, 14, '2020-12-10 13:16:48'),
(89, 'first upgrade to windows 10 and then install pyaudio by typing pip install pyaudio', 51, 16, '2021-01-28 12:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

DROP TABLE IF EXISTS `threads`;
CREATE TABLE `threads` (
  `thread_id` int(8) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` text NOT NULL,
  `thread_user_id` int(8) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(49, 'how to print program in php', 'please help me in printing programs in php', '6', 14, '2020-12-09 13:35:51'),
(50, 'pygame error in windows', 'i am not able to install pygame in windows', '1', 15, '2020-12-10 13:14:55'),
(51, 'pyaudio is not supported on windows', 'please tell how to install proper pyaudio in windows', '1', 16, '2021-01-28 12:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(256) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(12, 's@s.com', '$2y$10$epyCPE6Ff82gvPUjTzJifehBB6Ae22RToomB4y3zX5K9FhZI1ohhC', '2020-12-08 14:11:02'),
(13, 'x@x.com', '$2y$10$A7e6qG8MdIIvGpOmwMCjpOecyKPOHLOHzFAyJgR.NBqNHjaEvO4tS', '2020-12-08 14:20:52'),
(14, 'shamsulhaquelic.6270@gmail.com', '$2y$10$ueBFmIzRJ797iBcNKrZ6Oe.mrzMVpC4ZWw6YOGn.oELXqbmEmFlhW', '2020-12-09 12:50:20'),
(15, 'popli@popli.com', '$2y$10$so50KolGhN5ny3ajnqrD/OJY.KI/2FZw.KzH8rYzSwEMpNY7v96P.', '2020-12-10 13:13:22'),
(16, 'shahidansari.2088@gmail.com', '$2y$10$wE.GCS68DtEFQgtTXPswJOwRKzBzDKB3aGTsZViX1PDDrCsFlYj3W', '2020-12-11 13:05:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
