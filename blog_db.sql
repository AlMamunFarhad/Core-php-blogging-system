-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2025 at 08:54 PM
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
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'PHP'),
(2, 'Javascript'),
(13, 'JAVA'),
(14, 'c++'),
(17, 'CSS3'),
(19, 'OOP'),
(20, 'HTML');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(25, 33, 'Farhad', 'mikky@gmail.com', 'survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960', 'approved', '2025-06-21'),
(26, 32, 'Farhad', 'test@gmail.com', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 'unapproved', '2025-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `like_count` int(11) NOT NULL,
  `dislike_count` int(11) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `like_count`, `dislike_count`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(25, 2, 'This Is Me!', '', 'Farhad', '2025-06-21', '1671551612622 copy.jpg', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Mikky', 0, 0, 0, 'published', 4),
(27, 1, 'The standard chunk of Lorem Ipsum used since', '', 'Farhad', '2023-03-27', '1671883455081.JPG', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Farhad', 0, 0, 0, 'published', 3),
(28, 2, 'software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'abdullah', '2023-03-27', '_DSC00955 (1).jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Farhad', 3, 0, 0, 'published', 5),
(30, 13, 'Contrary to popular belief, Lorem Ipsum is not simply random text.', '', 'abdullah', '2023-03-27', 'farhad2.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'hello', 3, 0, 0, 'published', 3),
(31, 19, 'It is a long established fact that a reader will be distracted', '', 'abdullah', '2025-06-21', '_DSC00952.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham', 'Mikky', 4, 0, 0, 'published', 2),
(32, 2, 'There are many variations of passages of Lorem Ipsum available', '', 'mikky', '2023-03-27', 'farhad4.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Farhad', 4, 0, 3, 'published', 8),
(33, 20, 'Lorem Ipsum is simply dummy text of the printing and typesetting', '', 'mikky', '2025-06-21', 'farhad3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mikky', 4, 0, 1, 'published', 24);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `user_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_role`, `user_image`) VALUES
(19, 'Test', '$2y$10$oIXtXSWm8e/Z9OmXtEU0Nu9W7z.weUHWro/C/pZo0vgzTlK..1ANC', '', '', 'test@example.com', 'admin', ''),
(20, 'Admin', '$2y$10$kbjPYQ2SL3mGQkBXp.9sMOOS8t7L87f0k/ZWNHop08/tpbN3kBEJm', '', '', 'admin@example.com', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, '13oqfg11hlrllm7dikn6gi2438', 1658512379),
(2, 'k6v8meiltfos8ot051o3ng60n1', 1658512376),
(3, 'u2k9crp8p0lmm8a3s98ng4pbf6', 1658509252),
(4, '85k9ul5cg02ctibmdsrns0qdrn', 1658573270),
(5, 'l0lm78rj0furciu06bgg22knfs', 1658572296),
(6, 'ruc973nasn4mec484hlsltfj48', 1658600495),
(7, 'nvakphtuld2v6kvfdtsaqnseaq', 1658611705),
(8, '5tl08hgobge9rt5bokcadrvm9m', 1658699600),
(9, 'vtv24mo1vshhc4av3oum4gsehk', 1658785703),
(10, 'hkepsquu9iqbgp1uj5bo3ujvfq', 1658870479),
(11, 'ftf4urlcde4nfujihkt7ukf8s6', 1658862658),
(12, '3k7ub625rhd5kreuqssu6bbmqm', 1658962995),
(13, '5e784jaocrflumbon034dac5v0', 1659371141),
(14, 'ec1d2996940f2c50061ee0de92d7dab2', 1678033868),
(15, 'fbdfa00ad96cff97e3412fd6a554f8e3', 1678043393),
(16, 'f46524a2d83dfd08a4b1545d83b2ce54', 1678159192),
(17, 'ad2ommoed9nn1b77hmk003nkr2', 1678320913),
(18, 'ec7r8kgbf8ij7fg0bli7d768ag', 1678637732),
(19, 'q6igckj2oiqc8ppimm0ohnhc6f', 1679788592),
(20, 'lv6n5ghbthbib8utbicdm5jcpe', 1679876240),
(21, 'qqseuo9s2r79d9rfmcn0omin6v', 1679885278),
(22, '00476eejukm65r97n59r8c8om2', 1679961013),
(23, 'p8m72ieolv8riqftp3dve4hgge', 1681587872),
(24, '312a807f9rrmdkesqmvdfua0vt', 1685275915),
(25, '6thl2avgiivav0k24hj566rc2l', 1686399380),
(26, 'l10gb5fpk7i8b0cmgmfkeikef3', 1689039447),
(27, 'svetorpejh6aalqprea1d7ddt9', 1690400666),
(28, 'ffhg0ig5kppavrkg2fih4d3i12', 1691951541),
(29, '9oj43vsl4h3gbr562k9bh2ebki', 1693686767),
(30, '9pm7nfnbo87fmoid0nr0ep55ai', 1694525841),
(31, '19kdtd505apubn7e1jv90j8d2k', 1694560693),
(32, 'nv63mslrbnobtu0qeqqgsbn3s3', 1698401200),
(33, 'mor04ukpmhcvs0otsd09100s50', 1750531995),
(34, 'on4rgfgk3v5fg861m21a1lnen8', 1750524891);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
