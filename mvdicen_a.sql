-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2022 at 03:30 PM
-- Server version: 10.2.41-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvdicen_a`
--

-- --------------------------------------------------------

--
-- Table structure for table `2d_categories`
--

CREATE TABLE `2d_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `id_relation` int(11) DEFAULT 0,
  `image` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_categories`
--

INSERT INTO `2d_categories` (`id`, `title`, `url`, `id_relation`, `image`, `date_created`, `date_modified`) VALUES
(1, 'Marketing Online', 'marketing-online', 0, NULL, NULL, NULL),
(2, 'This is powerful', 'this-is-powerful', 1, NULL, NULL, NULL),
(3, 'Marketing', 'marketing', 0, NULL, NULL, NULL),
(4, 'Digital Marketing', 'digital-marketing', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `2d_comments`
--

CREATE TABLE `2d_comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_video` int(11) DEFAULT NULL,
  `id_relation` int(11) DEFAULT 0,
  `score` int(11) DEFAULT 0,
  `ip` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_episodes`
--

CREATE TABLE `2d_episodes` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_relation` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `season` int(11) DEFAULT 1,
  `episode` int(11) DEFAULT 1,
  `type` tinyint(1) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_favorites`
--

CREATE TABLE `2d_favorites` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_video` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_keywords`
--

CREATE TABLE `2d_keywords` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_keywords`
--

INSERT INTO `2d_keywords` (`id`, `title`, `url`, `image`, `date_created`, `date_modified`) VALUES
(1, 'marketing', 'marketing', NULL, '2022-02-16 16:44:58', NULL),
(2, 'cpa', 'cpa', NULL, '2022-02-16 16:45:01', NULL),
(3, 'email marketing', 'email-marketing', NULL, '2022-02-16 16:45:20', NULL),
(4, 'digital marketing', 'digital-marketing', NULL, '2022-02-16 16:45:28', NULL),
(5, 'affiliate marketing', 'affiliate-marketing', NULL, '2022-02-16 16:53:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `2d_likes`
--

CREATE TABLE `2d_likes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_com` int(11) DEFAULT NULL,
  `nb_like` int(11) DEFAULT 0,
  `nb_unlike` int(11) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_menus`
--

CREATE TABLE `2d_menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `ids_menu` varchar(300) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_menus`
--

INSERT INTO `2d_menus` (`id`, `title`, `ids_menu`, `date_created`, `date_modified`) VALUES
(4, 'Mevue Links', 'p:1,p:3,p:2,d:3', '2022-02-28 16:05:43', '2022-02-28 16:23:46'),
(5, 'Posts', 'pc:1', '2022-02-28 16:07:37', '2022-02-28 16:07:45'),
(7, 'Resources', 'p:5', '2022-02-28 16:23:13', '2022-02-28 16:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `2d_newsletter`
--

CREATE TABLE `2d_newsletter` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `is_member` tinyint(1) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_newsletter`
--

INSERT INTO `2d_newsletter` (`id`, `email`, `is_member`, `status`, `ip`, `date_created`, `date_modified`) VALUES
(1, 'hello@plrhustle.com', 0, 1, '65.152.28.2', '2022-02-22 18:01:33', '2022-02-22 18:01:33'),
(2, 'info@belchermedia.email', 0, 1, '74.134.8.226', '2022-02-23 16:02:42', '2022-02-23 16:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `2d_notes`
--

CREATE TABLE `2d_notes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_video` int(11) DEFAULT NULL,
  `note` float DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_notifications`
--

CREATE TABLE `2d_notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `id_relation` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_notifications`
--

INSERT INTO `2d_notifications` (`id`, `type`, `new`, `id_relation`, `date_created`, `date_modified`) VALUES
(1, 2, 0, NULL, '2022-02-14 22:22:26', '2022-02-14 22:22:26'),
(2, 5, 0, NULL, '2022-02-14 22:22:55', '2022-02-14 22:22:55'),
(3, 2, 0, NULL, '2022-02-15 09:42:47', '2022-02-15 09:42:47'),
(4, 2, 0, NULL, '2022-02-15 12:16:23', '2022-02-15 12:16:23'),
(5, 2, 0, NULL, '2022-02-17 18:18:40', '2022-02-17 18:18:40'),
(6, 2, 0, NULL, '2022-02-21 00:31:05', '2022-02-21 00:31:05'),
(7, 0, 0, NULL, '2022-02-22 18:01:33', '2022-02-22 18:01:33'),
(8, 2, 0, NULL, '2022-02-23 06:11:44', '2022-02-23 06:11:44'),
(9, 2, 0, NULL, '2022-02-23 12:10:51', '2022-02-23 12:10:51'),
(10, 0, 0, NULL, '2022-02-23 16:02:42', '2022-02-23 16:02:42'),
(11, 1, 0, 2, '2022-02-25 09:59:53', '2022-02-25 09:59:53'),
(12, 5, 0, NULL, '2022-02-25 14:22:29', '2022-02-25 14:22:29'),
(13, 2, 0, NULL, '2022-02-25 14:52:29', '2022-02-25 14:52:29'),
(14, 2, 0, NULL, '2022-02-25 17:29:10', '2022-02-25 17:29:10'),
(15, 2, 0, NULL, '2022-02-26 07:39:03', '2022-02-26 07:39:03'),
(16, 3, 0, NULL, '2022-02-26 09:11:46', '2022-02-26 09:11:46'),
(17, 4, 0, NULL, '2022-02-26 09:11:46', '2022-02-26 09:11:46'),
(18, 2, 0, NULL, '2022-02-26 09:39:51', '2022-02-26 09:39:51'),
(19, 3, 0, NULL, '2022-02-26 09:41:01', '2022-02-26 09:41:01'),
(20, 4, 0, NULL, '2022-02-26 09:41:01', '2022-02-26 09:41:01'),
(21, 2, 0, NULL, '2022-02-27 02:35:24', '2022-02-27 02:35:24'),
(22, 3, 0, NULL, '2022-02-27 02:36:38', '2022-02-27 02:36:38'),
(23, 4, 0, NULL, '2022-02-27 02:36:38', '2022-02-27 02:36:38'),
(24, 1, 0, 3, '2022-02-27 09:17:47', '2022-02-27 09:17:47'),
(25, 1, 0, 1, '2022-02-27 09:18:14', '2022-02-27 09:18:14'),
(26, 1, 0, 4, '2022-02-27 09:18:37', '2022-02-27 09:18:37'),
(27, 1, 0, 2, '2022-02-27 09:18:45', '2022-02-27 09:18:45'),
(28, 1, 0, 5, '2022-02-28 14:24:09', '2022-02-28 14:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `2d_pages`
--

CREATE TABLE `2d_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `sub_page` int(11) DEFAULT 0,
  `layout` tinyint(1) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_pages`
--

INSERT INTO `2d_pages` (`id`, `title`, `url`, `content`, `sub_page`, `layout`, `date_created`, `date_modified`) VALUES
(1, 'About Us', 'about-us', '<p>Mevue is a learning platform where successful black creators help you master new skills to expand your knowledge. </p>', NULL, NULL, '2022-02-16 17:00:50', '2022-02-16 17:00:50'),
(2, 'Terms of Service', 'terms-of-service', '<p>Our platform is subscription-based and the content we share is extremely valuable. Once you become a paying subscriber you\'re not edible for a refund unless you submit a request in 1 hour or less. To avoid fraud at all costs, we have put strict rules into place and all rules must be followed to avoid legal actions.</p>', NULL, NULL, '2022-02-16 17:03:13', '2022-02-16 17:03:13'),
(3, 'Privacy Policy ', 'privacy-policy', '<p><h1>Privacy Policy for https://mv.dicen.net/</h1></p>\r\n<p><p>At https://mv.dicen.net/, accessible from https://mv.dicen.net/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by https://mv.dicen.net/ and how we use it.</p></p>\r\n<p><p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p></p>\r\n<p><h2>Log Files</h2></p>\r\n<p><p>https://mv.dicen.net/ follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information. Our Privacy Policy was created with the help of the <a href=\"https://www.privacypolicyonline.com/privacy-policy-generator/\">Privacy Policy Generator</a>.</p></p>\r\n<p><h2>Cookies and Web Beacons</h2></p>\r\n<p><p>Like any other website, https://mv.dicen.net/ uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p></p>\r\n<p><p>For more general information on cookies, please read <a href=\"https://www.generateprivacypolicy.com/#cookies\">\"Cookies\" article from the Privacy Policy Generator</a>.</p></p>\r\n<p><h2>Google DoubleClick DART Cookie</h2></p>\r\n<p><p>Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL – <a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p></p>\r\n<p><h2>Our Advertising Partners</h2></p>\r\n<p><p>Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p></p>\r\n<p><ul><br> <li><br> <p>Google</p><br> <p><a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p><br> </li><br></ul></p>\r\n<p><h2>Privacy Policies</h2></p>\r\n<p><P>You may consult this list to find the Privacy Policy for each of the advertising partners of https://mv.dicen.net/.</p></p>\r\n<p><p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on https://mv.dicen.net/, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p></p>\r\n<p><p>Note that https://mv.dicen.net/ has no access to or control over these cookies that are used by third-party advertisers.</p></p>\r\n<p><h2>Third Party Privacy Policies</h2></p>\r\n<p><p>https://mv.dicen.net/\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. </p></p>\r\n<p><p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites. What Are Cookies?</p></p>\r\n<p><h2>Children\'s Information</h2></p>\r\n<p><p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p></p>\r\n<p><p>https://mv.dicen.net/ does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p></p>\r\n<p><h2>Online Privacy Policy Only</h2></p>\r\n<p><p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in https://mv.dicen.net/. This policy is not applicable to any information collected offline or via channels other than this website.</p></p>\r\n<p><h2>Consent</h2></p>\r\n<p><p>By using our website, you hereby consent to our Privacy Policy and agree to its Terms and Conditions.</p></p>', NULL, 0, '2022-02-16 17:05:47', '2022-03-01 14:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `2d_payments`
--

CREATE TABLE `2d_payments` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `subscription_id` varchar(50) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `currency` varchar(5) DEFAULT '',
  `status` tinytext DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `trial_start` timestamp NULL DEFAULT NULL,
  `trial_end` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_playlists`
--

CREATE TABLE `2d_playlists` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `ids_videos` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_posts`
--

CREATE TABLE `2d_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `ids_keywords` varchar(100) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_posts_categories`
--

CREATE TABLE `2d_posts_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `id_relation` int(11) DEFAULT 0,
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_posts_categories`
--

INSERT INTO `2d_posts_categories` (`id`, `title`, `url`, `id_relation`, `description`, `image`, `date_created`, `date_modified`) VALUES
(1, 'Marketing', 'marketing', 0, '', 'https://mevue.com/uploads/images/postscategories/44444.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `2d_posts_comments`
--

CREATE TABLE `2d_posts_comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_relation` int(11) DEFAULT 0,
  `score` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_posts_keywords`
--

CREATE TABLE `2d_posts_keywords` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_posts_keywords`
--

INSERT INTO `2d_posts_keywords` (`id`, `title`, `url`, `description`, `image`, `date_created`, `date_modified`) VALUES
(1, 'marketing', 'marketing', NULL, NULL, '2022-02-28 15:31:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `2d_posts_likes`
--

CREATE TABLE `2d_posts_likes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_com` int(11) DEFAULT NULL,
  `nb_like` int(11) DEFAULT 0,
  `nb_unlike` int(11) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_profiles_comments`
--

CREATE TABLE `2d_profiles_comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `id_user_page` int(11) DEFAULT NULL,
  `id_user_member` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_sessions`
--

CREATE TABLE `2d_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_sessions`
--

INSERT INTO `2d_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('045ks1s0hvp33rlnfpqsingtngocdukk', '43.250.157.219', 1646200864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230303830383b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('m9fmirtb5qhoj3cq5ccm5jvo84eksthb', '103.66.205.177', 1646206975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363937353b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('2ar87ta5j0o78iqn4ekecjgd8fn7s558', '36.75.57.51', 1646206752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363735323b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('ee6dvv9b71d3pgbnn7uvdtomhaqhv83n', '36.75.57.51', 1646206870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363735323b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('4tk5pk1esp7kc0d95kr66p0uipkpe04e', '52.89.103.56', 1646206879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363837393b),
('737j91gbbnmg09roticrkdj31bk4ppbd', '34.217.253.81', 1646206879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363837393b),
('dafkm1v9esj60im7gvisf54bqgnved2i', '52.89.103.56', 1646206880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363838303b7468656d657c733a373a2264656661756c74223b),
('37322krvsb1r2bu7pkltlujj36hcasvv', '34.217.253.81', 1646206880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363838303b7468656d657c733a373a2264656661756c74223b),
('o8fap23g2c86l4ffflmpbkljg1c19p67', '34.217.253.81', 1646206880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363838303b),
('vl5pjg43l1shbf4qt4d4o2pvneg1h9a9', '34.217.253.81', 1646206881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363838313b7468656d657c733a373a2264656661756c74223b),
('l034e718ks9344fs4pg00q75qk6l5uea', '54.203.242.6', 1646206882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363838323b),
('jlepo2funk51c23vi4jq6g2f6dtqrvht', '54.203.242.6', 1646206882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230363838323b7468656d657c733a373a2264656661756c74223b),
('eim3gprftn43mmkfcbg4es8ejit4mo7f', '103.66.205.177', 1646207648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230373634383b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('5alm0n05uahsrb4j030h6jbl7b8978ct', '103.66.205.177', 1646207679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363230373634383b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('h5jgu5vlq5tmepoplqvk9ulkkf0nck51', '101.0.41.85', 1646238184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363233383138343b7468656d657c733a373a2264656661756c74223b),
('q6dl9b1rpql5jrh7jnssa8jcf9iev327', '176.53.223.9', 1646243655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363234333635353b7468656d657c733a373a2264656661756c74223b),
('mulli92sbur4kg2lps9qkemrufva0uv8', '176.53.223.9', 1646243656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363234333635363b7468656d657c733a373a2264656661756c74223b),
('08116qb2joog6s7pcaqugbqlskk5ns60', '101.0.41.85', 1646244175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363234343137353b7468656d657c733a373a2264656661756c74223b),
('ls8irfdv7dfakv85vqqcsko2k477rl2q', '36.75.57.51', 1646263378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363236333230353b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('6ijle2qm8c4vn7lhlvb0tlb2c9kkplil', '176.53.221.202', 1646274530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363237343533303b7468656d657c733a373a2264656661756c74223b),
('gq1gbucljq93nkpuno7a2amvsh947d1n', '176.53.221.202', 1646274531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363237343533313b7468656d657c733a373a2264656661756c74223b),
('76lp4rt39t9u5h5ec3s3hff3j3hodbke', '103.66.205.177', 1646282579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363238323533323b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('kgkupskcmivucosqeovp6as0ilrnbaht', '103.66.205.177', 1646300915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363330303931353b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('tedjpph0pfscvntc7binauc0uih7qhn6', '103.66.205.177', 1646300975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363330303931353b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('gbcrngtkaik449vdgr4tgt3rkd31sgbv', '157.39.245.189', 1646320892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363332303839323b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b),
('emd4tqqe11ln4hcp0103689bicg0chvf', '157.39.245.189', 1646320916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363332303839323b7468656d657c733a373a2264656661756c74223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b75726c7c733a353a2261646d696e223b6e616d655f696d6167657c733a31363a226278735f63303966656361662e706e67223b61646d696e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `2d_stats`
--

CREATE TABLE `2d_stats` (
  `id` int(11) NOT NULL,
  `attribut` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_stats`
--

INSERT INTO `2d_stats` (`id`, `attribut`, `value`, `date_created`) VALUES
(1, 5, 4, '2022-02-14'),
(2, 2, 1, '2022-02-14'),
(3, 4, 1, '2022-02-14'),
(4, 3, 2, '2022-02-14'),
(5, 5, 1, '2022-02-15'),
(6, 5, 4, '2022-02-16'),
(7, 5, 20, '2022-02-17'),
(8, 5, 2, '2022-02-18'),
(9, 5, 10, '2022-02-19'),
(10, 5, 4, '2022-02-21'),
(11, 5, 3, '2022-02-22'),
(12, 5, 13, '2022-02-23'),
(13, 2, 1, '2022-02-25'),
(14, 4, 1, '2022-02-25'),
(15, 5, 2, '2022-02-25'),
(16, 1, 2, '2022-02-25'),
(17, 1, 21, '2022-02-26'),
(18, 5, 3, '2022-02-26'),
(19, 1, 2, '2022-02-27'),
(20, 5, 1, '2022-02-27'),
(21, 5, 2, '2022-02-28'),
(22, 3, 1, '2022-02-28'),
(23, 2, 1, '2022-02-28'),
(24, 5, 1, '2022-03-01'),
(25, 1, 4, '2022-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `2d_stats_cron`
--

CREATE TABLE `2d_stats_cron` (
  `id` int(11) UNSIGNED NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2d_stats_location`
--

CREATE TABLE `2d_stats_location` (
  `id` int(11) UNSIGNED NOT NULL,
  `country_code` varchar(11) DEFAULT NULL,
  `country_name` varchar(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_stats_location`
--

INSERT INTO `2d_stats_location` (`id`, `country_code`, `country_name`, `value`, `date_created`) VALUES
(1, 'US', 'United Stat', 4, '2022-02-14'),
(2, 'IN', 'India', 2, '2022-02-15'),
(3, 'GB', 'United King', 1, '2022-02-15'),
(4, 'KE', 'Kenya', 1, '2022-02-23'),
(5, 'TH', 'Thailand', 1, '2022-02-23'),
(6, 'FR', 'France', 1, '2022-02-25'),
(7, 'PK', 'Pakistan', 2, '2022-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `2d_users`
--

CREATE TABLE `2d_users` (
  `id` int(11) NOT NULL,
  `url` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `passkey` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `subscriber` tinyint(1) DEFAULT NULL,
  `badge` varchar(45) DEFAULT NULL,
  `customer_id` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `google` varchar(45) DEFAULT NULL,
  `linkedin` varchar(45) DEFAULT NULL,
  `location` tinytext DEFAULT NULL,
  `about` tinytext DEFAULT NULL,
  `auth_coms` tinyint(1) DEFAULT 0,
  `playlist_profile` varchar(11) DEFAULT NULL,
  `nb_favs` int(11) DEFAULT 0,
  `nb_notes` int(11) DEFAULT 0,
  `nb_coms` int(11) DEFAULT 0,
  `oauth_provider` varchar(255) DEFAULT '',
  `oauth_uid` varchar(255) DEFAULT '',
  `country_code` varchar(45) DEFAULT NULL,
  `country_name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_users`
--

INSERT INTO `2d_users` (`id`, `url`, `username`, `email`, `password`, `passkey`, `role`, `subscriber`, `badge`, `customer_id`, `status`, `image`, `profile_image`, `ip`, `facebook`, `twitter`, `google`, `linkedin`, `location`, `about`, `auth_coms`, `playlist_profile`, `nb_favs`, `nb_notes`, `nb_coms`, `oauth_provider`, `oauth_uid`, `country_code`, `country_name`, `city`, `date_created`, `date_modified`) VALUES
(1, 'admin', 'admin', 'admin@coffeetheme.com', 'password', 'rffvpa8ikrlku2hewsfy', '1', NULL, NULL, NULL, 1, 'bxs_c09fecaf.png', '1024px-Eo_circle_light-blue_white_letter-s_svg.png', '167.57.135.128', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 1, 'twitter', '844722722856980481', 'FR', 'France', 'Lille', '2017-09-18 02:32:59', '2017-09-18 02:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `2d_videos`
--

CREATE TABLE `2d_videos` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `ids_keywords` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `note` float DEFAULT 0,
  `played` int(11) DEFAULT 0,
  `nb_favs` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `trailer` varchar(200) DEFAULT NULL,
  `type` tinyint(1) DEFAULT 1,
  `file` varchar(200) DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `subscription` tinyint(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2d_videos`
--

INSERT INTO `2d_videos` (`id`, `title`, `url`, `id_category`, `ids_keywords`, `description`, `note`, `played`, `nb_favs`, `image`, `trailer`, `type`, `file`, `embed`, `subscription`, `status`, `date_created`, `date_modified`) VALUES
(7, 'Premium', 'premium', 4, '\"5\"', '<p>Premiuom</p>', 0, 0, NULL, 'https://mv.dicen.net/uploads/images/videos/270147944_326432806004469_6301016854860348199_n.jpg', NULL, 1, 'https://mv.dicen.net/uploads/files/videos/y2mate_com_-_Yiruma_River_Flows_in_You_720p1.mp4', '', 1, 1, '2022-03-01 23:53:52', '2022-03-01 23:54:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2d_categories`
--
ALTER TABLE `2d_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Indexes for table `2d_comments`
--
ALTER TABLE `2d_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_episodes`
--
ALTER TABLE `2d_episodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_favorites`
--
ALTER TABLE `2d_favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_keywords`
--
ALTER TABLE `2d_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id2d_keywords_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Indexes for table `2d_likes`
--
ALTER TABLE `2d_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_menus`
--
ALTER TABLE `2d_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2d_newsletter`
--
ALTER TABLE `2d_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `2d_notes`
--
ALTER TABLE `2d_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_notifications`
--
ALTER TABLE `2d_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2d_pages`
--
ALTER TABLE `2d_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Indexes for table `2d_payments`
--
ALTER TABLE `2d_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2d_playlists`
--
ALTER TABLE `2d_playlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_posts`
--
ALTER TABLE `2d_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Indexes for table `2d_posts_categories`
--
ALTER TABLE `2d_posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Indexes for table `2d_posts_comments`
--
ALTER TABLE `2d_posts_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_posts_keywords`
--
ALTER TABLE `2d_posts_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Indexes for table `2d_posts_likes`
--
ALTER TABLE `2d_posts_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_profiles_comments`
--
ALTER TABLE `2d_profiles_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_sessions`
--
ALTER TABLE `2d_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `2d_stats`
--
ALTER TABLE `2d_stats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `2d_stats_cron`
--
ALTER TABLE `2d_stats_cron`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2d_stats_location`
--
ALTER TABLE `2d_stats_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2d_users`
--
ALTER TABLE `2d_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`),
  ADD UNIQUE KEY `mail_UNIQUE` (`email`);

--
-- Indexes for table `2d_videos`
--
ALTER TABLE `2d_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2d_categories`
--
ALTER TABLE `2d_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `2d_comments`
--
ALTER TABLE `2d_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `2d_episodes`
--
ALTER TABLE `2d_episodes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2d_favorites`
--
ALTER TABLE `2d_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `2d_keywords`
--
ALTER TABLE `2d_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `2d_likes`
--
ALTER TABLE `2d_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2d_menus`
--
ALTER TABLE `2d_menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `2d_newsletter`
--
ALTER TABLE `2d_newsletter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `2d_notes`
--
ALTER TABLE `2d_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `2d_notifications`
--
ALTER TABLE `2d_notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `2d_pages`
--
ALTER TABLE `2d_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `2d_payments`
--
ALTER TABLE `2d_payments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `2d_playlists`
--
ALTER TABLE `2d_playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `2d_posts`
--
ALTER TABLE `2d_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `2d_posts_categories`
--
ALTER TABLE `2d_posts_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `2d_posts_comments`
--
ALTER TABLE `2d_posts_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2d_posts_keywords`
--
ALTER TABLE `2d_posts_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `2d_posts_likes`
--
ALTER TABLE `2d_posts_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2d_profiles_comments`
--
ALTER TABLE `2d_profiles_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2d_stats`
--
ALTER TABLE `2d_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `2d_stats_cron`
--
ALTER TABLE `2d_stats_cron`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2d_stats_location`
--
ALTER TABLE `2d_stats_location`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `2d_users`
--
ALTER TABLE `2d_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `2d_videos`
--
ALTER TABLE `2d_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
