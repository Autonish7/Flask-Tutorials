-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 03:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask-tut`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `date` datetime(6) DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone`, `message`, `date`) VALUES
(1, 'Nishant', 'Testing1.test@gmail.com', '1231230992', 'Hi, I want to add new post', '2022-12-27 11:51:34.000000'),
(2, 'Sangeeta', 'Sangeeta.singh@gmail.com', '7981919191', 'I want a blog on bridal makeup.', '2022-12-27 00:00:00.000000'),
(3, 'Yojna', 'Yojna.Buaji@gmail.com', '667210244', 'Can we a blog on solar energy', '2022-12-27 00:00:00.000000'),
(5, 'Manisha', 'Manisha@Chudail.com', '7634320843', 'Hi can I have a lawyer number', '2022-12-27 00:00:00.000000'),
(7, 'Nikhil Kaushik', 'Nikhil.Radhe@gmail.com', '4533234234', 'Hey can I provide a blog on spirituality', '2022-12-27 12:37:57.738599'),
(9, 'Kaushal', 'Kaushal.mummy@gmail.com', '7283434434', 'Hi, I want to keep calm and do mehandi', '2022-12-27 14:24:47.530772'),
(10, 'Gauri Talwar', 'Gauri.Talwar@gmail.com', '5358542342', 'Hey, can we have blog on beauty products', '2022-12-27 18:55:30.396580'),
(21, 'Money Bhai', 'Money.Bhai@gmail.com', '5657453242', 'How to earn easily- top 100 methods', '2022-12-28 18:37:39.446809');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `sno` int(10) NOT NULL,
  `title` text NOT NULL,
  `content` varchar(500) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `postedby` text NOT NULL,
  `slug` varchar(20) NOT NULL,
  `tagline` varchar(50) NOT NULL,
  `img_file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`sno`, `title`, `content`, `date`, `postedby`, `slug`, `tagline`, `img_file`) VALUES
(1, 'Jinja - The powerful approach', 'Sandboxed execution mode. Every aspect of the template execution is monitored and explicitly whitelisted or blacklisted, whatever is preferred. This makes it possible to execute untrusted templates.\r\nPowerful automatic HTML escaping system for cross site scripting prevention.\r\nTemplate inheritance makes it possible to use the same or a similar layout for all templates.\r\nHigh performance with just in time compilation to Python bytecode. Jinja2 will translate your template sources on first load in', '2022-12-27 11:53:11', 'Nishant Chauhan', 'first-post', '“Be yourself; everyone else is already taken.”', 'Sample1.jpg'),
(2, 'Man must explore, and this is exploration at its greatest', 'Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center — an equal earth which all men occupy as equals. The airman\'s earth, if free men make it, will be truly round: a globe in practice, not in theory.\r\n\r\nScience cuts two ways, of course; its products can be used for both good and ev', '2022-12-27 19:37:11', 'Start Bootstrap', 'sec-post', '“Two things are infinite: the universe and human s', 'Sample2.jpg'),
(3, 'The Final Frontier', 'There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.\r\n\r\nThere can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.\r\n\r\nThe dreams of yesterday are the hopes of', '2022-12-27 19:37:11', 'Nishant Chauhan', 'third-post', '“So many books, so little time.”', 'post-bg.jpg'),
(4, 'Reaching for the Stars', 'As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched it with a finger it would crumble and fall apart. Seeing this has to change a man.', '2022-12-27 19:38:44', 'Sangeeta Singh', 'for-post', '“A room without books is like a body without a sou', 'Sample3.jpg'),
(5, 'Gmail - Email from Google', 'Gmail is a free email service provided by Google. As of 2019, it had 1.5 billion active users worldwide. A user typically accesses Gmail in a web browser or the official mobile app.', '2022-12-27 19:38:44', 'Aruna Irani', 'fifth-post', '“You know you\'re in love when you can\'t fall aslee', 'Sample4.jpg'),
(6, 'Submission of Annual Information Statement', 'You can also download the Acknowledgement receipt from Compliance Portal (AIS Homepage) under the Activity History tab.\r\n\r\nTo open this file, please enter the combination of the PAN (in lower case) and your date of birth, in case of individual taxpayer, or date of incorporation/ formation for non-individual taxpayer, in the format ddmmyyyy without any space. For example- aaaaa1234a21011991 (where PAN is AAAAA1234A and date of birth/incorporation in 21st January 1991).', '2022-12-27 19:40:06', 'ITR Department', 'six-post', '“In three words I can sum up everything I\'ve learn', 'post-bg.jpg'),
(8, 'Less secure apps & your Google Account', 'Important: This deadline does not apply to Google Workspace or Google Cloud I…\r\nFor more information, continue to read.\r\nIf an app or site doesn’t meet our security standards, Google might block', '2022-12-27 19:41:27', 'Gmail team', 'eight-post', '“To live is the rarest thing in the world. Most pe', 'Sample5.jpg'),
(9, 'Alternative to Less Secure Apps Gmail', 'In this article, we will learn about how to use Gmail or SMTP alternative Zoho with java technology.\r\n\r\nIf you have used Less Secure Apps by Google to send an email from your Java, Javascript, PHP, or other technology used for your applications, you probably encountered Less secure app in your developer life. You turned on the allow secure apps toggle button in order to use free SMTP services for sure.', '2022-12-27 19:41:27', 'Rakshit Shah', 'nin-post', '“A friend is someone who knows all about you and s', 'post-bg.jpg'),
(10, 'Coding Ninjas - YouTube', 'Coding Ninjas – Learn coding online at India’s best …\r\nhttps://www.codingninjas.com\r\nWebThe experience and knowledge I learned at Coding Ninjas greatly sharpened my skills and allowed me to pass the HackerRank and technical interview rounds. The placement team', '2022-12-27 19:43:06', 'Coding Ninjas', 'ten-post', '“Live as if you were to die tomorrow. Learn as if ', 'Sample1.jpg'),
(11, 'Problems look mighty small from 150 miles up', 'Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.\r\n\r\nAs I stand out here in the wonders of the unknown at Hadley, I sort of realize there’s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.', '2022-12-27 19:43:06', 'Mahendra Singh Dhoni', 'ele-post', '“Without music, life would be a mistake.”', 'Sample2.jpg'),
(13, 'Microsoft SQL Server Certification Courses Training', 'The age of information has created a strong need for organizations to process and store large amounts of business critical data. To introduce the best possible practices, companies are quick to introduce software that facilitates data storage and retrieval across all \r\napplications and networks employed by the organization. The Microsoft SQL Server is a popular relational database management system in the market. Participants with relevant Microsoft SQL certification credentials are in great dem', '2022-12-28 18:09:02', 'Microsoft', 'Microsoft', 'Administering a SQL Database Infrastructure Certif', 'Sample5.jpg'),
(14, 'Formatting Dates in Python - GeeksforGeeks', 'The datetime.time method. Time values can be represented using the time …\r\nThe datetime.date method. The values for the calendar date can be represented …\r\nConvert string to date using DateTime. Conversion from string to date is many …\r\nConvert dates to strings using DateTime. Date and time are different from …', '2022-12-28 18:34:16', 'GeeksforGeeks', 'Geeks', 'Format a date the way you want - Microsoft Support', 'Sample4.jpg'),
(15, 'Java DateFormat', 'To set the table width in HTML, use the style attribute. The style attribute specifies an inline style for an element. The attribute is used with the HTML <table> tag, with the CSS property width. HTML5 do not support the width attribute of <table>, so the CSS property width is used with the style attribute to set table width.', '2022-12-28 18:43:50', 'Javatpoint', 'Java', 'Java DateFormat - Javatpoint', 'Sample3.jpg'),
(16, 'The home for all developers', 'Welcome to your personal dashboard, where you can find an introduction to how GitHub works, tools to help you build software, and help merging your first lines of code. Share information about yourself by creating a profile README, which appears at the top of your profile page. \r\nUse the github.dev web-based editor from your repository or pull request to create and commit changes.', '2022-12-28 19:47:30', 'Github', 'Github', 'Start a new repository', 'Sample5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
