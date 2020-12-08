-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 03:01 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'Anand pothraj', 'anandpothraj260201@gmail.com', '8291229434', 'I m the creater of this all things', '2020-11-24 12:04:31'),
(13, 'andy potya', 'andypotya@gmail.com', '9594931257', 'I m andy potya ', '2020-11-24 12:05:37'),
(14, 'anfgjk klnh', 'avffhbfj@gmail.com', '1234112345', 'ho ja na bhai', '2020-11-24 12:56:59'),
(15, 'asxvghin', 'asddcvb@gmail.com', '12345678766', 'i m last attept', '2020-11-24 13:00:58'),
(16, 'lucifer morningstar', 'morningstar@gmail.com', '1234321123', 'hell  OO ladies', '2020-11-24 15:54:06'),
(17, 'padma vithal', 'padmavithal@gmail.com', '1234567867', 'i have a bug dashboard', '2020-11-25 17:22:39'),
(18, 'asdfgh dfvf', 'asxdcsff@gmail.com', '1234567898', 'run hoja', '2020-12-02 14:17:37'),
(19, 'karan veer', 'karanveer@gmail.com', '1234509878', 'hello i cant post', '2020-12-07 18:21:52'),
(20, 'kabir khan', 'kabirkhan@gmail.com', '8234456732', 'hii have dashboard problem\r\n', '2020-12-08 17:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `content`, `img_file`, `date`, `slug`) VALUES
(1, 'Talks happen nationally, farmer protests talked about globally', 'Will farmers get there rights BACK!!!!!!!!!! ', '1.The good news: The meeting between leaders of the agitating farmer organisations and the Centre did happen on Tuesday. The bad news: The nearly-three-hour-long talks remained inconclusive and another round of talks is going to be held tomorrow.\r\n2.This even as Union agriculture minister Narendra Singh Tomar said that the meeting was \"good\". “We wanted a small group to be constituted but farmers’ leaders wanted that the talks should be held with everyone. We do not have a problem with it,\" he added.\r\n3.During the course of the meeting, the Centre — represented by three Union ministers — also sought the names of four to five people from the 35 farmer organisations in attendance and constitute a committee, including representatives from the government as well as agricultural experts to discuss the new legislations.\r\n4.But the farmer representatives rejected the offer, demanding nothing but a rollback. They insisted they wouldn’t suspend the ongoing protests until they got firm assurance from the Centre on repealing the newly enacted laws.', 'farmer.jpg', '2020-12-08 18:08:36', 'first-post'),
(2, 'Who will get the vaccine first????', 'Let’s talk vaccines', '1.Not for everyone: “The government has never spoken about vaccinating the entire country,” said health secretary Rajesh Bhushan on Tuesday. “If we are able to vaccinate a critical mass of people and break the virus transmission, then we may not have to vaccinate the entire population,\" said ICMR DG Dr Balram Bhargava.\r\n2.Trials to continue: The initial findings into an ‘adverse event’ allegedly suffered by an Oxford Covid-19 vaccine trial participant did not necessitate halting of the trials, the Centre said on Tuesday. A 40-year-old man who was a volunteer in the third phase of the “Covidshield” vaccine trial in Chennai has alleged serious side effects.\r\nWhat about us? Several participants in Serum Institute’s Covid vaccine trial who were given the second shot of the vaccine well after the serious adverse event reported by the Chennai trial participant feel betrayed that they were not told about the Chennai incident. Trial participants that TOI spoke to confirmed that none of them had been informed about the adverse event that occurred in Chennai.\r\n3.All is well: Serum Institute said the Covid-19 vaccine won’t be released for mass immunisation unless it is proven immunogenic and safe. In a statement on Tuesday, it said the adverse event in the Chennai participant was not related to the vaccine, and the company was “sympathetic” to his medical condition.', 'vaccine.jpg', '2020-12-08 18:09:26', 'second-post'),
(3, 'Bharat Bandh for tommorow 8th Dec', 'Bharat Bandh', 'Bharat Bandh, Farmers Protest Today Live News Updates: The nationwide bandh called by farmer unions in protest of the Centre\'s three farm laws received widespread support Tuesday as protesters from opposition parties and several other organisations held symbolic \'chakka jam\' demonstrations across the country.', 'bandh.jpeg', '2020-12-08 18:43:29', 'post-bharat-bandh'),
(19, 'Arvind kejriwal under arrest', 'CMO Delhi under arrest', 'New Delhi: Delhi Chief Minister Arvind Kejriwal has been placed under \"house arrest\" by the police ever since he met with the protesting farmers yesterday and has been forced to cancel his meetings, the ruling Aam Aadmi Party (AAP) alleged today. The Delhi Police denied the charge.The party alleged that the Chief Minister was deliberately blocked because of the Bharat Bandh called by farmers protesting against the central government\'s new farm laws.Later in the day, Mr Kejriwal sent out a message saying, \"I am glad Bharat Bandh was successful. I prayed for protesting farmers while sitting inside,\" according to a PTI report. \"If I wasn\'t stopped, I would have gone and supported farmers in their Bharat Bandh call,\" he said.The Chief Minister\'s message came at the end of a day full of drama sparked by AAP\'s allegation against the police.', 'arvind-cmo.j', '2020-12-08 18:56:41', 'cmo-post');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
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
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
