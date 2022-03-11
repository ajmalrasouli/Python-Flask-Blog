-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 11:16 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_no`, `msg`, `date`, `email`) VALUES
(1, 'First Post', '12345678998', 'First Post', '2022-03-01 15:00:47', 'firstpost@gmail.com'),
(2, 'hghfggfhfh', '5464565565', 'ggfhf fghf hgff', '2022-03-01 15:34:53', 'ajmail@hotmail.com'),
(3, 'Haji Man', '07859869434', 'Thanks for the wonderful site dear A.R', '2022-03-01 15:35:51', 'Hajiman@hotmail.com'),
(4, 'hghfggfhfh', '5464565565', 'hggfhg fgfgh fhg', '2022-03-02 12:14:17', 'ajmail@hotmail.com'),
(7, 'fdfdg', '5464565565', 'dfghgfdg fggfd gfg', '2022-03-02 14:45:12', 'ajmail@hotmail.com'),
(8, 'Haji Man', '07859869434', 'Thanks for the wonderful site dear A.R', '2022-03-02 14:48:01', 'Hajiman@hotmail.com'),
(9, 'Khanjan', '764545534', 'This is Wonderful site', '2022-03-03 13:49:37', 'khanjan@gmail.com'),
(10, 'Khanjan', '764545534', 'This is Wonderful site', '2022-03-03 13:54:26', 'khanjan@gmail.com'),
(11, 'Khanjan', '5464565565', 'This is my second comment', '2022-03-03 13:59:02', 'khanjan@gmail.com'),
(12, 'KillerTomato', '4676786799', 'Hi dear Haji', '2022-03-03 14:02:17', 'man.haji2@gmail.com'),
(13, 'KillerTomato', '4676786799', 'Hi dear Haji', '2022-03-03 14:03:28', 'man.haji2@gmail.com'),
(14, 'KillerTomato2', '4676786799', 'Hi dear Haji2', '2022-03-03 14:04:44', 'man.haji2@gmail.com'),
(15, 'David jane', '45678799098', 'Nice site', '2022-03-03 14:22:26', 'Dave@gmail.com'),
(16, 'Gill Hell', '97856453889', 'Message from Gill', '2022-03-03 14:33:46', 'Gillh@hotmail.com'),
(17, 'F1.json', '45678799098', 'tyhjhghtfhf', '2022-03-03 14:35:06', 'Hajiman@hotmail.com'),
(18, 'Jane Man', '0748348897', 'Last Comment in the lesson', '2022-03-03 14:38:24', 'ajmail@hotmail.co.uk');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` varchar(600) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `img_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'Let\'s learn about Flask2', 'First Post', 'first-post', 'THIS IS CONTENT', '2022-03-09 15:17:00', 'RRR.jpg'),
(2, 'This is Second post', 'Second Post', 'second-post', 'POST 2', '2022-03-09 15:17:30', 'HHH.jpg'),
(3, 'This is my Third post', 'Third Post', 'third-post', 'If MAIL_ASCII_ATTACHMENTS is set to True, filenames will be converted to an ASCII equivalent. This can be useful when using a mail relay that modify mail content and mess up Content-Disposition specification when filenames are UTF-8 encoded. The conversion to ASCII is a basic removal of non-ASCII characters. It should be fine for any unicode character that can be decomposed by NFKD into one or more ASCII characters. If you need romanization/transliteration (i.e ß → ss) then your application should do it and pass a proper ASCII string.', '2022-03-03 15:57:30', ''),
(4, 'Handling POST and GET Requests with Flask Tutorial', 'Introduction to Practical Flask', 'fourth-post', 'Now what we do is first see if the request.method was a POST method. Before we attempt to handle a request, we have to see if there even was one. Keep in mind that someone may have either just submitted a log in attempt, or maybe they just simply loaded the login page and then are going to log in.\r\n\r\nSo, we check to see if there was a POST. If so, then we\'re going to look for what the user put into the username and password fields. Since we don\'t quite yet have a database of users, we\'re just going to hard code an acceptable user and their password. In this case, we\'re only going to accept the', '2022-03-04 10:44:40', ''),
(5, 'Improving the Home Page Flask Tutorial', 'Users with Flask intro Tutorial', 'fifth-post', 'In this tutorial with Flask, we cover how to include some of the fancier javascript aspects from Bootstrap. I happen to like the \"modals\" that Bootstrap offers. These are where you click on a link and, instead of loading to another page, the background dims out a bit and there is a sort of \"pop up\" window. This seems to fit fairly well with something like a log in button, but can also fit for a sort of \"more information\" button. Obviously there are many reasons why this might work, however.', '2022-03-04 10:44:40', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
