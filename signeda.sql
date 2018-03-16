-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2018 at 05:59 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signeda`
--
CREATE DATABASE IF NOT EXISTS `signeda` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `signeda`;

-- --------------------------------------------------------

--
-- Table structure for table `wp1_commentmeta`
--

DROP TABLE IF EXISTS `wp1_commentmeta`;
CREATE TABLE `wp1_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp1_comments`
--

DROP TABLE IF EXISTS `wp1_comments`;
CREATE TABLE `wp1_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp1_comments`
--

INSERT INTO `wp1_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-12 12:43:34', '2018-03-12 12:43:34', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_links`
--

DROP TABLE IF EXISTS `wp1_links`;
CREATE TABLE `wp1_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp1_options`
--

DROP TABLE IF EXISTS `wp1_options`;
CREATE TABLE `wp1_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp1_options`
--

INSERT INTO `wp1_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/signeda', 'yes'),
(2, 'home', 'http://127.0.0.1/signeda', 'yes'),
(3, 'blogname', 'Signeda', 'yes'),
(4, 'blogdescription', 'Запчасти на автомобили из Америки', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mail@mail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:40:"ultimate-product-catalogue/UPCP_Main.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '2', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:67:"E:\\xampp\\htdocs\\signeda/wp-content/themes/twentyseventeen/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'vw-automobile-lite', 'yes'),
(41, 'stylesheet', 'vw-automobile-lite', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp1_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:8:"search-2";i:1;s:24:"upcp_search_bar_widget-2";i:2;s:14:"recent-posts-2";i:3;s:17:"recent-comments-2";i:4;s:10:"archives-2";i:5;s:12:"categories-2";i:6;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:3:{i:1521117815;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1521117837;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1520863701;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1521107086;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1521107092;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";s:18:"vw-automobile-lite";s:7:"1.0.4.7";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(124, 'recently_activated', 'a:0:{}', 'yes'),
(137, 'UPCP_Currency_Symbol_Location', 'After', 'yes'),
(138, 'UPCP_Price_Filter', 'No', 'yes'),
(139, 'UPCP_Sale_Mode', 'Individual', 'yes'),
(140, 'UPCP_Product_Sort', '', 'yes'),
(141, 'UPCP_Product_Search', 'namedesccust', 'yes'),
(142, 'UPCP_Custom_Product_Page', 'No', 'yes'),
(143, 'UPCP_Sidebar_Order', 'Hierarchical', 'yes'),
(144, 'UPCP_Apply_Contents_Filter', 'Yes', 'yes'),
(145, 'UPCP_Maintain_Filtering', 'Yes', 'yes'),
(146, 'UPCP_Thumbnail_Support', 'No', 'yes'),
(147, 'UPCP_Show_Category_Descriptions', 'Yes', 'yes'),
(148, 'UPCP_Show_Catalogue_Information', 'Name', 'yes'),
(149, 'UPCP_Display_Category_Image', 'No', 'yes'),
(150, 'UPCP_Display_SubCategory_Image', 'No', 'yes'),
(151, 'UPCP_Overview_Mode', 'Cats', 'yes'),
(152, 'UPCP_Inner_Filter', 'No', 'yes'),
(153, 'UPCP_Breadcrumbs', 'None', 'yes'),
(154, 'UPCP_Product_Comparison', 'No', 'yes'),
(155, 'UPCP_Product_Inquiry_Form', 'No', 'yes'),
(156, 'UPCP_Product_Inquiry_Cart', 'No', 'yes'),
(157, 'UPCP_Inquiry_Form_Email', '0', 'yes'),
(158, 'UPCP_Product_Reviews', 'No', 'yes'),
(159, 'UPCP_Catalog_Display_Reviews', 'No', 'yes'),
(160, 'UPCP_Lightbox', 'No', 'yes'),
(161, 'UPCP_Lightbox_Mode', 'No', 'yes'),
(162, 'UPCP_Hidden_Drop_Down_Sidebar_On_Mobile', 'No', 'yes'),
(163, 'UPCP_Infinite_Scroll', 'No', 'yes'),
(164, 'UPCP_Products_Per_Page', '1000000', 'yes'),
(165, 'UPCP_Pagination_Location', 'Top', 'yes'),
(166, 'UPCP_CF_Conversion', 'No', 'yes'),
(167, 'UPCP_Access_Role', 'administrator', 'yes'),
(168, 'UPCP_PP_Grid_Width', '90', 'yes'),
(169, 'UPCP_PP_Grid_Height', '35', 'yes'),
(170, 'UPCP_Top_Bottom_Padding', '10', 'yes'),
(171, 'UPCP_Left_Right_Padding', '10', 'yes'),
(172, 'UPCP_WooCommerce_Sync', 'No', 'yes'),
(173, 'UPCP_WooCommerce_Show_Cart_Count', 'No', 'yes'),
(174, 'UPCP_WooCommerce_Checkout', 'No', 'yes'),
(175, 'UPCP_WooCommerce_Cart_Page', 'Checkout', 'yes'),
(176, 'UPCP_WooCommerce_Product_Page', 'No', 'yes'),
(177, 'UPCP_WooCommerce_Back_Link', 'No', 'yes'),
(178, 'UPCP_SEO_Option', 'None', 'yes'),
(179, 'UPCP_SEO_Integration', 'Add', 'yes'),
(180, 'UPCP_SEO_Title', '[page-title] | [product-name]', 'yes'),
(181, 'UPCP_Update_Breadcrumbs', 'No', 'yes'),
(182, 'UPCP_List_View_Click_Action', 'Expand', 'yes'),
(183, 'UPCP_Details_Icon_Type', 'Default', 'yes'),
(184, 'UPCP_Pagination_Background', 'None', 'yes'),
(185, 'UPCP_Pagination_Border', 'none', 'yes'),
(186, 'UPCP_Pagination_Shadow', 'shadow-none', 'yes'),
(187, 'UPCP_Pagination_Gradient', 'gradient-none', 'yes'),
(188, 'UPCP_Pagination_Font', 'none', 'yes'),
(189, 'UPCP_Sidebar_Title_Collapse', 'no', 'yes'),
(190, 'UPCP_Sidebar_Start_Collapsed', 'no', 'yes'),
(191, 'UPCP_Sidebar_Title_Hover', 'none', 'yes'),
(192, 'UPCP_Sidebar_Checkbox_Style', 'none', 'yes'),
(193, 'UPCP_Categories_Control_Type', 'Checkbox', 'yes'),
(194, 'UPCP_SubCategories_Control_Type', 'Checkbox', 'yes'),
(195, 'UPCP_Tags_Control_Type', 'Checkbox', 'yes'),
(196, 'UPCP_Sidebar_Items_Order', 'a:7:{i:0;s:12:"Product Sort";i:1;s:14:"Product Search";i:2;s:12:"Price Filter";i:3;s:10:"Categories";i:4;s:14:"Sub-Categories";i:5;s:4:"Tags";i:6;s:13:"Custom Fields";}', 'yes'),
(197, 'UPCP_Installed_Skins', 'a:0:{}', 'yes'),
(198, 'UPCP_DB_Version', '4.3.4b', 'yes'),
(199, 'UPCP_Full_Version', 'No', 'yes'),
(200, 'UPCP_Color_Scheme', 'Grey', 'yes'),
(201, 'UPCP_Product_Links', 'Same', 'yes'),
(202, 'UPCP_Tag_Logic', 'OR', 'yes'),
(203, 'UPCP_Read_More', 'Yes', 'yes'),
(204, 'UPCP_Pretty_Links', 'No', 'yes'),
(205, 'UPCP_Mobile_SS', 'No', 'yes'),
(206, 'UPCP_Install_Flag', 'No', 'yes'),
(207, 'UPCP_First_Install_Version', '3.6', 'yes'),
(208, 'UPCP_Desc_Chars', '240', 'yes'),
(209, 'UPCP_Case_Insensitive_Search', 'Yes', 'yes'),
(210, 'UPCP_Run_Tutorial', 'No', 'yes'),
(211, 'plugin_error', '', 'yes'),
(212, 'UPCP_Product_Import', 'None', 'yes'),
(213, 'widget_upcp_product_list_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(214, 'widget_upcp_random_products_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(215, 'widget_upcp_recent_products_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(216, 'widget_upcp_popular_products_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(217, 'widget_upcp_search_bar_widget', 'a:2:{i:2;a:3:{s:12:"search_label";s:12:"Search Label";s:18:"search_placeholder";s:18:"Search Placeholder";s:13:"catalogue_url";s:13:"Catalogue URL";}s:12:"_multiwidget";i:1;}', 'yes'),
(218, 'UPCP_Blog_Content', '<h3>Filter WooCommerce Products by Attribute!</h3>\r\n<p>Want visitors to easily search WooCommerce products by attributes, price, tags and more?</p>\r\n<p><a target=''_blank'' href=''http://www.etoilewebdesign.com/product-catalog-woocommerce-sync-tips/''>Read our tips on making your products filterable with the Ultimate Product Catalog plugin!</a></p>', 'yes'),
(219, 'UPCP_Dash_Cache', '1520959279', 'yes'),
(220, 'UPCP_Hide_Dash_Review_Ask', 'No', 'yes'),
(221, 'UPCP_Changelog_Content', '\r\n<h3>4.3.6</h3>\r\n<br />- Added media queries for the new sidebar styles for mobile view\r\n\r\n<h3>4.3.5</h3>\r\n<br />- Included an improved version of the Russian translation for the plugin\r\n<br />- Fixed an issue where some options would be reset when styling settings were updated\r\n<br />- Fixed an issue where "Maintain Filtering" wasn''t working when an item in the breadcrumbs was clicked\r\n<br />- Fixed a Javascript 404 error\r\n\r\n', 'yes'),
(222, 'UPCP_Update_Flag', 'No', 'yes'),
(223, 'UPCP_Currency_Symbol', '', 'yes'),
(224, 'UPCP_Details_Image', '', 'yes'),
(225, 'UPCP_Extra_Elements', 'Category,SubCategory,CustomFields,Blank', 'yes'),
(226, 'UPCP_Social_Media', 'Blank', 'yes'),
(227, 'UPCP_Categories_Label', '', 'yes'),
(228, 'UPCP_SubCategories_Label', '', 'yes'),
(229, 'UPCP_Tags_Label', '', 'yes'),
(230, 'UPCP_Custom_Fields_Label', '', 'yes'),
(231, 'UPCP_Details_Label', '', 'yes'),
(232, 'UPCP_Sort_By_Label', '', 'yes'),
(233, 'UPCP_Price_Ascending_Label', '', 'yes'),
(234, 'UPCP_Price_Descending_Label', '', 'yes'),
(235, 'UPCP_Name_Ascending_Label', '', 'yes'),
(236, 'UPCP_Name_Descending_Label', '', 'yes'),
(237, 'UPCP_Product_Name_Search_Label', '', 'yes'),
(238, 'UPCP_Product_Name_Text_Label', '', 'yes'),
(239, 'UPCP_Back_To_Catalogue_Label', '', 'yes'),
(240, 'UPCP_Updating_Results_Label', '', 'yes'),
(241, 'UPCP_No_Results_Found_Label', '', 'yes'),
(242, 'UPCP_Products_Pagination_Label', '', 'yes'),
(243, 'UPCP_Read_More_Label', '', 'yes'),
(244, 'UPCP_Product_Details_Label', '', 'yes'),
(245, 'UPCP_Additional_Info_Label', '', 'yes'),
(246, 'UPCP_Contact_Us_Label', '', 'yes'),
(247, 'UPCP_Product_Inquiry_Form_Title_Label', '', 'yes'),
(248, 'UPCP_Customer_Reviews_Tab_Label', '', 'yes'),
(249, 'UPCP_Related_Products_Label', '', 'yes'),
(250, 'UPCP_Next_Product_Label', '', 'yes'),
(251, 'UPCP_Previous_Product_Label', '', 'yes'),
(252, 'UPCP_Of_Pagination_Label', '', 'yes'),
(253, 'UPCP_Compare_Label', '', 'yes'),
(254, 'UPCP_Sale_Label', '', 'yes'),
(255, 'UPCP_Side_By_Side_Label', '', 'yes'),
(256, 'UPCP_Inquire_Button_Label', '', 'yes'),
(257, 'UPCP_Add_To_Cart_Button_Label', '', 'yes'),
(258, 'UPCP_Send_Inquiry_Label', '', 'yes'),
(259, 'UPCP_Checkout_Label', '', 'yes'),
(260, 'UPCP_Empty_Cart_Label', '', 'yes'),
(261, 'UPCP_Cart_Items_Label', '', 'yes'),
(262, 'UPCP_Additional_Info_Category_Label', '', 'yes'),
(263, 'UPCP_Additional_Info_SubCategory_Label', '', 'yes'),
(264, 'UPCP_Additional_Info_Tags_Label', '', 'yes'),
(265, 'UPCP_Permalink_Base', '', 'yes'),
(266, 'UPCP_XML_Sitemap_URL', '', 'yes'),
(267, 'UPCP_Update_RR_Rules', 'Yes', 'yes'),
(273, 'WPLANG', '', 'yes'),
(274, 'new_admin_email', 'mail@mail.com', 'yes'),
(283, 'UPCP_Catalogue_Style', 'main-block', 'yes'),
(284, 'UPCP_Compare_Button_Background_Color', '', 'yes'),
(285, 'UPCP_Compare_Button_Text_Color', '', 'yes'),
(286, 'UPCP_Compare_Button_Font_Size', '', 'yes'),
(287, 'UPCP_Compare_Button_Clicked_Background_Color', '', 'yes'),
(288, 'UPCP_Compare_Button_Clicked_Text_Color', '', 'yes'),
(289, 'UPCP_Sale_Button_Background_Color', '', 'yes'),
(290, 'UPCP_Sale_Button_Text_Color', '', 'yes'),
(291, 'UPCP_Sale_Button_Font_Size', '', 'yes'),
(292, 'UPCP_Details_Icon_Color', '', 'yes'),
(293, 'UPCP_Details_Icon_Font_Size', '', 'yes'),
(294, 'UPCP_Thumbnail_View_Image_Height', '', 'yes'),
(295, 'UPCP_Thumbnail_View_Image_Width', '', 'yes'),
(296, 'UPCP_Thumbnail_View_Image_Holder_Height', '', 'yes'),
(297, 'UPCP_Thumbnail_View_Image_Holder_Width', '', 'yes'),
(298, 'UPCP_Thumbnail_View_Image_Border_Color', '', 'yes'),
(299, 'UPCP_Thumbnail_View_Box_Width', '', 'yes'),
(300, 'UPCP_Thumbnail_View_Box_Min_Height', '', 'yes'),
(301, 'UPCP_Thumbnail_View_Box_Max_Height', '', 'yes'),
(302, 'UPCP_Thumbnail_View_Box_Padding', '', 'yes'),
(303, 'UPCP_Thumbnail_View_Box_Margin', '', 'yes'),
(304, 'UPCP_Thumbnail_View_Border_Color', '', 'yes'),
(305, 'UPCP_Thumbnail_View_Title_Font_Size', '', 'yes'),
(306, 'UPCP_Thumbnail_View_Title_Color', '', 'yes'),
(307, 'UPCP_Thumbnail_View_Price_Font_Size', '', 'yes'),
(308, 'UPCP_Thumbnail_View_Price_Color', '', 'yes'),
(309, 'UPCP_Thumbnail_View_Background_Color', '', 'yes'),
(310, 'UPCP_List_View_Image_Height', '', 'yes'),
(311, 'UPCP_List_View_Image_Width', '', 'yes'),
(312, 'UPCP_List_View_Image_Holder_Height', '', 'yes'),
(313, 'UPCP_List_View_Image_Border_Color', '', 'yes'),
(314, 'UPCP_List_View_Item_Margin_Left', '', 'yes'),
(315, 'UPCP_List_View_Item_Margin_Top', '', 'yes'),
(316, 'UPCP_List_View_Item_Padding', '', 'yes'),
(317, 'UPCP_List_View_Item_Color', '', 'yes'),
(318, 'UPCP_List_View_Title_Font_Size', '', 'yes'),
(319, 'UPCP_List_View_Title_Color', '', 'yes'),
(320, 'UPCP_List_View_Price_Font_Size', '', 'yes'),
(321, 'UPCP_List_View_Price_Color', '', 'yes'),
(322, 'UPCP_Detail_View_Image_Height', '', 'yes'),
(323, 'UPCP_Detail_View_Image_Width', '', 'yes'),
(324, 'UPCP_Detail_View_Image_Holder_Height', '', 'yes'),
(325, 'UPCP_Detail_View_Image_Holder_Width', '', 'yes'),
(326, 'UPCP_Detail_View_Image_Border_Color', '', 'yes'),
(327, 'UPCP_Detail_View_Box_Padding', '', 'yes'),
(328, 'UPCP_Detail_View_Box_Margin', '', 'yes'),
(329, 'UPCP_Detail_View_Border_Color', '', 'yes'),
(330, 'UPCP_Detail_View_Title_Font_Size', '', 'yes'),
(331, 'UPCP_Detail_View_Title_Color', '', 'yes'),
(332, 'UPCP_Detail_View_Price_Font_Size', '', 'yes'),
(333, 'UPCP_Detail_View_Price_Color', '', 'yes'),
(334, 'UPCP_Detail_View_Background_Color', '', 'yes'),
(335, 'UPCP_Sidebar_Header_Font', '', 'yes'),
(336, 'UPCP_Sidebar_Header_Font_Size', '', 'yes'),
(337, 'UPCP_Sidebar_Header_Font_Weight', '', 'yes'),
(338, 'UPCP_Sidebar_Header_Color', '', 'yes'),
(339, 'UPCP_Sidebar_Subheader_Font', '', 'yes'),
(340, 'UPCP_Sidebar_Subheader_Font_Size', '', 'yes'),
(341, 'UPCP_Sidebar_Subheader_Font_Weight', '', 'yes'),
(342, 'UPCP_Sidebar_Subheader_Color', '', 'yes'),
(343, 'UPCP_Sidebar_Checkbox_Font', '', 'yes'),
(344, 'UPCP_Sidebar_Checkbox_Font_Size', '', 'yes'),
(345, 'UPCP_Sidebar_Checkbox_Font_Weight', '', 'yes'),
(346, 'UPCP_Sidebar_Checkbox_Color', '', 'yes'),
(347, 'current_theme', 'VW Automobile Lite', 'yes'),
(348, 'theme_mods_vw-automobile-lite', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(349, 'theme_switched', '', 'yes'),
(350, 'UPCP_Product_Page_Serialized', '[{"element_type":"Product Description<div class=\\"gs-delete-handle\\" onclick=\\"remove_element(this);\\"></div><span class=\\"gs-resize-handle gs-resize-handle-both\\"></span>","element_class":"description","element_id":"","col":3,"row":9,"size_x":5,"size_y":4},{"element_type":"Back Link<div class=\\"gs-delete-handle\\" onclick=\\"remove_element(this);\\"></div><span class=\\"gs-resize-handle gs-resize-handle-both\\"></span>","element_class":"back","element_id":"","col":1,"row":1,"size_x":2,"size_y":1},{"element_type":"Additional Images<div class=\\"gs-delete-handle\\" onclick=\\"remove_element(this);\\"></div><span class=\\"gs-resize-handle gs-resize-handle-both\\"></span>","element_class":"additional_images","element_id":"","col":1,"row":2,"size_x":2,"size_y":9},{"element_type":"Main Image<div class=\\"gs-delete-handle\\" onclick=\\"remove_element(this);\\"></div><span class=\\"gs-resize-handle gs-resize-handle-both\\"></span>","element_class":"main_image","element_id":"","col":3,"row":3,"size_x":4,"size_y":6},{"element_type":"Permalink<div class=\\"gs-delete-handle\\" onclick=\\"remove_element(this);\\"></div><span class=\\"gs-resize-handle gs-resize-handle-both\\"></span>","element_class":"product_link","element_id":"","col":6,"row":2,"size_x":1,"size_y":1},{"element_type":"Product Name<div class=\\"gs-delete-handle\\" onclick=\\"remove_element(this);\\"></div><span class=\\"gs-resize-handle gs-resize-handle-both\\"></span>","element_class":"product_name","element_id":"","col":3,"row":2,"size_x":3,"size_y":1},{"element_type":"Blank<div class=\\"gs-delete-handle\\" onclick=\\"remove_element(this);\\"></div><span class=\\"gs-resize-handle gs-resize-handle-both\\"></span>","element_class":"blank","element_id":"","col":7,"row":2,"size_x":1,"size_y":7},{"element_type":"Blank<div class=\\"gs-delete-handle\\" onclick=\\"remove_element(this);\\"></div><span class=\\"gs-resize-handle gs-resize-handle-both\\"></span>","element_class":"blank","element_id":"","col":3,"row":1,"size_x":5,"size_y":1}]', 'yes'),
(351, 'UPCP_Single_Page_Price', 'Yes', 'yes'),
(352, 'UPCP_Custom_Fields_Show_Hide', 'Show', 'yes'),
(353, 'UPCP_Sidebar_Subcat_Collapse', 'no', 'yes'),
(367, '_site_transient_timeout_theme_roots', '1521108890', 'no'),
(368, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:18:"vw-automobile-lite";s:7:"/themes";}', 'no'),
(369, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1521107093;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:40:"ultimate-product-catalogue/UPCP_Main.php";s:5:"4.3.6";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:40:"ultimate-product-catalogue/UPCP_Main.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/ultimate-product-catalogue";s:4:"slug";s:26:"ultimate-product-catalogue";s:6:"plugin";s:40:"ultimate-product-catalogue/UPCP_Main.php";s:11:"new_version";s:5:"4.3.6";s:3:"url";s:57:"https://wordpress.org/plugins/ultimate-product-catalogue/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/ultimate-product-catalogue.zip";s:5:"icons";a:2:{s:2:"1x";s:79:"https://ps.w.org/ultimate-product-catalogue/assets/icon-128x128.png?rev=1805317";s:7:"default";s:79:"https://ps.w.org/ultimate-product-catalogue/assets/icon-128x128.png?rev=1805317";}s:7:"banners";a:2:{s:2:"1x";s:81:"https://ps.w.org/ultimate-product-catalogue/assets/banner-772x250.png?rev=1805914";s:7:"default";s:81:"https://ps.w.org/ultimate-product-catalogue/assets/banner-772x250.png?rev=1805914";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp1_postmeta`
--

DROP TABLE IF EXISTS `wp1_postmeta`;
CREATE TABLE `wp1_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp1_postmeta`
--

INSERT INTO `wp1_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1520868161:1'),
(3, 2, '_edit_last', '1'),
(4, 1, '_edit_lock', '1520862821:1'),
(5, 7, '_wp_trash_meta_status', 'publish'),
(6, 7, '_wp_trash_meta_time', '1520864167'),
(7, 8, '_wp_trash_meta_status', 'publish'),
(8, 8, '_wp_trash_meta_time', '1520867827'),
(9, 9, '_menu_item_type', 'custom'),
(10, 9, '_menu_item_menu_item_parent', '0'),
(11, 9, '_menu_item_object_id', '9'),
(12, 9, '_menu_item_object', 'custom'),
(13, 9, '_menu_item_target', ''),
(14, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(15, 9, '_menu_item_xfn', ''),
(16, 9, '_menu_item_url', 'http://127.0.0.1/signeda/'),
(17, 9, '_menu_item_orphaned', '1520871808'),
(18, 10, '_menu_item_type', 'post_type'),
(19, 10, '_menu_item_menu_item_parent', '0'),
(20, 10, '_menu_item_object_id', '2'),
(21, 10, '_menu_item_object', 'page'),
(22, 10, '_menu_item_target', ''),
(23, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(24, 10, '_menu_item_xfn', ''),
(25, 10, '_menu_item_url', ''),
(26, 10, '_menu_item_orphaned', '1520871808');

-- --------------------------------------------------------

--
-- Table structure for table `wp1_posts`
--

DROP TABLE IF EXISTS `wp1_posts`;
CREATE TABLE `wp1_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp1_posts`
--

INSERT INTO `wp1_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-12 12:43:34', '2018-03-12 12:43:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-03-12 12:43:34', '2018-03-12 12:43:34', '', 0, 'http://127.0.0.1/signeda/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-12 12:43:34', '2018-03-12 12:43:34', '[product-catalogue id=''1'']', 'Каталог', '', 'publish', 'closed', 'open', '', 'cat', '', '', '2018-03-12 13:07:44', '2018-03-12 13:07:44', '', 0, 'http://127.0.0.1/signeda/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-03-12 12:44:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-12 12:44:14', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/signeda/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-12 13:05:17', '2018-03-12 13:05:17', '', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-03-12 13:05:17', '2018-03-12 13:05:17', '', 2, 'http://127.0.0.1/signeda/2018/03/12/2-autosave-v1/', 0, 'revision', '', 0),
(5, 1, '2018-03-12 13:06:50', '2018-03-12 13:06:50', '[product-catalogue="1"]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-12 13:06:50', '2018-03-12 13:06:50', '', 2, 'http://127.0.0.1/signeda/2018/03/12/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-03-12 13:07:44', '2018-03-12 13:07:44', '[product-catalogue id=''1'']', 'Каталог', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-12 13:07:44', '2018-03-12 13:07:44', '', 2, 'http://127.0.0.1/signeda/2018/03/12/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-03-12 16:16:07', '2018-03-12 14:16:07', '{\n    "blogdescription": {\n        "value": "\\u0417\\u0430\\u043f\\u0447\\u0430\\u0441\\u0442\\u0438 \\u0437\\u0430 \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0438 \\u0438\\u0437 \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0438",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-12 14:16:07"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ded49105-eba9-4947-9008-f964ea7af22d', '', '', '2018-03-12 16:16:07', '2018-03-12 14:16:07', '', 0, 'http://127.0.0.1/signeda/2018/03/12/ded49105-eba9-4947-9008-f964ea7af22d/', 0, 'customize_changeset', '', 0),
(8, 1, '2018-03-12 17:17:06', '2018-03-12 15:17:06', '{\n    "blogdescription": {\n        "value": "\\u0417\\u0430\\u043f\\u0447\\u0430\\u0441\\u0442\\u0438 \\u043d\\u0430 \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0438 \\u0438\\u0437 \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0438",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-12 15:17:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c15e4f5-3576-44b9-b1e4-6a9e95bb98ed', '', '', '2018-03-12 17:17:06', '2018-03-12 15:17:06', '', 0, 'http://127.0.0.1/signeda/2018/03/12/9c15e4f5-3576-44b9-b1e4-6a9e95bb98ed/', 0, 'customize_changeset', '', 0),
(9, 1, '2018-03-12 18:23:27', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 18:23:27', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/signeda/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-03-12 18:23:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 18:23:28', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/signeda/?p=10', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_termmeta`
--

DROP TABLE IF EXISTS `wp1_termmeta`;
CREATE TABLE `wp1_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp1_terms`
--

DROP TABLE IF EXISTS `wp1_terms`;
CREATE TABLE `wp1_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp1_terms`
--

INSERT INTO `wp1_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_term_relationships`
--

DROP TABLE IF EXISTS `wp1_term_relationships`;
CREATE TABLE `wp1_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp1_term_relationships`
--

INSERT INTO `wp1_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_term_taxonomy`
--

DROP TABLE IF EXISTS `wp1_term_taxonomy`;
CREATE TABLE `wp1_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp1_term_taxonomy`
--

INSERT INTO `wp1_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_catalogues`
--

DROP TABLE IF EXISTS `wp1_upcp_catalogues`;
CREATE TABLE `wp1_upcp_catalogues` (
  `Catalogue_ID` mediumint(9) NOT NULL,
  `Catalogue_Name` text NOT NULL,
  `Catalogue_Description` text NOT NULL,
  `Catalogue_Layout_Format` text NOT NULL,
  `Catalogue_Custom_CSS` text NOT NULL,
  `Catalogue_Item_Count` mediumint(9) NOT NULL DEFAULT '0',
  `Catalogue_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp1_upcp_catalogues`
--

INSERT INTO `wp1_upcp_catalogues` (`Catalogue_ID`, `Catalogue_Name`, `Catalogue_Description`, `Catalogue_Layout_Format`, `Catalogue_Custom_CSS`, `Catalogue_Item_Count`, `Catalogue_Date_Created`) VALUES
(1, 'Запчасти на автомобили из Америки', 'This is where your description of this catalogue would go.', '', '', 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_catalogue_items`
--

DROP TABLE IF EXISTS `wp1_upcp_catalogue_items`;
CREATE TABLE `wp1_upcp_catalogue_items` (
  `Catalogue_Item_ID` mediumint(9) NOT NULL,
  `Catalogue_ID` mediumint(9) DEFAULT '0',
  `Item_ID` mediumint(9) DEFAULT '0',
  `Category_ID` mediumint(9) DEFAULT '0',
  `SubCategory_ID` mediumint(9) DEFAULT '0',
  `Position` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp1_upcp_catalogue_items`
--

INSERT INTO `wp1_upcp_catalogue_items` (`Catalogue_Item_ID`, `Catalogue_ID`, `Item_ID`, `Category_ID`, `SubCategory_ID`, `Position`) VALUES
(1, 1, 0, 2, 0, 1),
(2, 1, 0, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_categories`
--

DROP TABLE IF EXISTS `wp1_upcp_categories`;
CREATE TABLE `wp1_upcp_categories` (
  `Category_ID` mediumint(9) NOT NULL,
  `Category_Name` text NOT NULL,
  `Category_Description` text NOT NULL,
  `Category_Image` text NOT NULL,
  `Category_Item_Count` mediumint(9) DEFAULT '0',
  `Category_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Category_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Category_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp1_upcp_categories`
--

INSERT INTO `wp1_upcp_categories` (`Category_ID`, `Category_Name`, `Category_Description`, `Category_Image`, `Category_Item_Count`, `Category_Sidebar_Order`, `Category_Date_Created`, `Category_WC_ID`) VALUES
(1, 'Sample Category', 'This is where your description of this category would go.', '', 1, 9999, '0000-00-00 00:00:00', 0),
(2, 'VW', '', 'http://', 3, 9999, '0000-00-00 00:00:00', 0),
(3, 'Toyota', '', 'http://', 1, 9999, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_custom_fields`
--

DROP TABLE IF EXISTS `wp1_upcp_custom_fields`;
CREATE TABLE `wp1_upcp_custom_fields` (
  `Field_ID` mediumint(9) NOT NULL,
  `Field_Name` text NOT NULL,
  `Field_Slug` text NOT NULL,
  `Field_Type` text NOT NULL,
  `Field_Description` text NOT NULL,
  `Field_Values` text NOT NULL,
  `Field_Displays` text NOT NULL,
  `Field_Searchable` text NOT NULL,
  `Field_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Field_Display_Tabbed` text NOT NULL,
  `Field_Control_Type` text NOT NULL,
  `Field_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Field_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp1_upcp_custom_fields`
--

INSERT INTO `wp1_upcp_custom_fields` (`Field_ID`, `Field_Name`, `Field_Slug`, `Field_Type`, `Field_Description`, `Field_Values`, `Field_Displays`, `Field_Searchable`, `Field_Sidebar_Order`, `Field_Display_Tabbed`, `Field_Control_Type`, `Field_Date_Created`, `Field_WC_ID`) VALUES
(1, 'Код товара', 'product-code', 'text', '', '', 'both', 'Yes', 9999, 'Yes', 'Checkbox', '2018-03-12 14:13:39', 0),
(2, 'Код производителя', 'oem-code', 'text', '', '', 'details', 'Yes', 9999, 'Yes', 'Checkbox', '2018-03-12 14:47:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_fields_meta`
--

DROP TABLE IF EXISTS `wp1_upcp_fields_meta`;
CREATE TABLE `wp1_upcp_fields_meta` (
  `Meta_ID` mediumint(9) NOT NULL,
  `Field_ID` mediumint(9) DEFAULT '0',
  `Item_ID` mediumint(9) DEFAULT '0',
  `Meta_Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp1_upcp_fields_meta`
--

INSERT INTO `wp1_upcp_fields_meta` (`Meta_ID`, `Field_ID`, `Item_ID`, `Meta_Value`) VALUES
(10, 1, 4, 'PTY04516BC'),
(11, 2, 4, '5211907912'),
(12, 1, 2, 'PVW20056A'),
(13, 2, 2, '561823031 / 561823031B / 561823031C / 561823031E'),
(14, 1, 3, ''),
(15, 2, 3, ''),
(16, 1, 5, 'PVW30018E'),
(17, 2, 5, '5C6805588B / 5C6805588F / 5C6805588R');

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_items`
--

DROP TABLE IF EXISTS `wp1_upcp_items`;
CREATE TABLE `wp1_upcp_items` (
  `Item_ID` mediumint(9) NOT NULL,
  `Item_Name` text NOT NULL,
  `Item_Slug` text NOT NULL,
  `Item_Description` text,
  `Item_Price` text NOT NULL,
  `Item_Sale_Price` text NOT NULL,
  `Item_Sale_Mode` text NOT NULL,
  `Item_Link` text,
  `Item_Photo_URL` text,
  `Category_ID` mediumint(9) DEFAULT '0',
  `Category_Name` text,
  `Global_Item_ID` mediumint(9) DEFAULT '0',
  `Item_Special_Attr` text,
  `SubCategory_ID` mediumint(9) DEFAULT '0',
  `SubCategory_Name` text,
  `Item_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Item_Views` mediumint(9) DEFAULT '0',
  `Item_Display_Status` text,
  `Item_Related_Products` text,
  `Item_Next_Previous` text,
  `Item_SEO_Description` text,
  `Item_Category_Product_Order` mediumint(9) DEFAULT '9999',
  `Item_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp1_upcp_items`
--

INSERT INTO `wp1_upcp_items` (`Item_ID`, `Item_Name`, `Item_Slug`, `Item_Description`, `Item_Price`, `Item_Sale_Price`, `Item_Sale_Mode`, `Item_Link`, `Item_Photo_URL`, `Category_ID`, `Category_Name`, `Global_Item_ID`, `Item_Special_Attr`, `SubCategory_ID`, `SubCategory_Name`, `Item_Date_Created`, `Item_Views`, `Item_Display_Status`, `Item_Related_Products`, `Item_Next_Previous`, `Item_SEO_Description`, `Item_Category_Product_Order`, `Item_WC_ID`) VALUES
(1, 'Sample Item', '', 'This is where your description of this product would go.', '9.99', '', '', NULL, 'http://127.0.0.1/signeda/wp-content/plugins/ultimate-product-catalogue/images/sample_image.jpg', 1, 'Sample Category', 0, NULL, 0, NULL, '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, 9999, 0),
(2, 'Капот', '', '', '119', '', 'No', '', 'https://www.signeda.lt/image/cache/products/hood-561823031c-p14160-x500.jpg', 2, 'VW', 0, '', 1, 'Passat B7 USA-type 2011-2015', '2018-03-12 13:29:23', 11, 'Show', '', '', '', 9999, 0),
(3, 'Бампер передний', '', '', '99,9', '', 'No', '', 'https://www.signeda.lt/image/cache/products/bumper-front-561807217bgr-p14994-x500.jpg', 2, 'VW', 0, '', 1, 'Passat B7 USA-type 2011-2015', '2018-03-12 13:42:08', 4, 'Show', '', '', '', 9999, 0),
(4, 'Бампер передний', '', '', '110.3', '', 'No', '', 'http://signeda.lt/image/cache/products/bumper-front-5211907912-p28451-x500.jpg', 3, 'Toyota', 0, '', 2, 'Camry 2015-', '2018-03-12 13:52:17', 9, 'Show', '', '', '', 9999, 0),
(5, 'Панель передняя', '', '<p>VW JETTA, 11 &#8211; 15; VW JETTA, 15 &#8211;<br />\n1.8L, 2.0L, EU, USA</p>\n', '33.3', '', 'No', '', 'http://signeda.lt/image/cache/products/front-support-5c6805588b-p12609-x500.jpg', 2, 'VW', 0, '', 3, 'Jetta 2011-2015', '2018-03-12 15:51:50', 1, 'Show', '', '', '', 9999, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_item_images`
--

DROP TABLE IF EXISTS `wp1_upcp_item_images`;
CREATE TABLE `wp1_upcp_item_images` (
  `Item_Image_ID` mediumint(9) NOT NULL,
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_Image_URL` text,
  `Item_Image_Description` text,
  `Item_Image_Order` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_subcategories`
--

DROP TABLE IF EXISTS `wp1_upcp_subcategories`;
CREATE TABLE `wp1_upcp_subcategories` (
  `SubCategory_ID` mediumint(9) NOT NULL,
  `Category_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Category_Name` text NOT NULL,
  `SubCategory_Name` text NOT NULL,
  `SubCategory_Description` text NOT NULL,
  `SubCategory_Image` text NOT NULL,
  `SubCategory_Item_Count` mediumint(9) NOT NULL DEFAULT '0',
  `SubCategory_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `SubCategory_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SubCategory_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp1_upcp_subcategories`
--

INSERT INTO `wp1_upcp_subcategories` (`SubCategory_ID`, `Category_ID`, `Category_Name`, `SubCategory_Name`, `SubCategory_Description`, `SubCategory_Image`, `SubCategory_Item_Count`, `SubCategory_Sidebar_Order`, `SubCategory_Date_Created`, `SubCategory_WC_ID`) VALUES
(1, 2, 'VW', 'Passat B7 USA-type 2011-2015', '', 'http://', 2, 9999, '0000-00-00 00:00:00', 0),
(2, 3, 'Toyota', 'Camry 2015-', '', 'http://', 1, 9999, '0000-00-00 00:00:00', 0),
(3, 2, 'VW', 'Jetta 2011-2015', '', 'http://', 1, 9999, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_tagged_items`
--

DROP TABLE IF EXISTS `wp1_upcp_tagged_items`;
CREATE TABLE `wp1_upcp_tagged_items` (
  `Tagged_Item_ID` mediumint(9) NOT NULL,
  `Tag_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_tags`
--

DROP TABLE IF EXISTS `wp1_upcp_tags`;
CREATE TABLE `wp1_upcp_tags` (
  `Tag_ID` mediumint(9) NOT NULL,
  `Tag_Name` text NOT NULL,
  `Tag_Description` text NOT NULL,
  `Tag_Item_Count` text NOT NULL,
  `Tag_Group_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Tag_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Tag_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Tag_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_tag_groups`
--

DROP TABLE IF EXISTS `wp1_upcp_tag_groups`;
CREATE TABLE `wp1_upcp_tag_groups` (
  `Tag_Group_ID` mediumint(9) NOT NULL,
  `Tag_Group_Name` text NOT NULL,
  `Tag_Group_Description` text NOT NULL,
  `Display_Tag_Group` text NOT NULL,
  `Tag_Group_Order` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp1_upcp_videos`
--

DROP TABLE IF EXISTS `wp1_upcp_videos`;
CREATE TABLE `wp1_upcp_videos` (
  `Item_Video_ID` mediumint(9) NOT NULL,
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_Video_URL` text,
  `Item_Video_Type` text,
  `Item_Video_Order` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp1_usermeta`
--

DROP TABLE IF EXISTS `wp1_usermeta`;
CREATE TABLE `wp1_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp1_usermeta`
--

INSERT INTO `wp1_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp1_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp1_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'upcp_admin_pointers_tutorial-one,upcp_admin_pointers_tutorial-two,upcp_admin_pointers_tutorial-three,upcp_admin_pointers_tutorial-four,upcp_admin_pointers_tutorial-five,upcp_admin_pointers_tutorial-six'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp1_user-settings', 'editor=html'),
(18, 1, 'wp1_user-settings-time', '1520858649'),
(19, 1, 'wp1_dashboard_quick_press_last_post_id', '3'),
(20, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:0:{}'),
(25, 1, 'session_tokens', 'a:1:{s:64:"a0a2a9a4c39b6669ffc74c72cb4802f0728a895898309fc4b3d6e36210c1c703";a:4:{s:10:"expiration";i:1521038556;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36";s:5:"login";i:1520865756;}}'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp1_users`
--

DROP TABLE IF EXISTS `wp1_users`;
CREATE TABLE `wp1_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp1_users`
--

INSERT INTO `wp1_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BQU/NdR4k4yU0i.OeKERBUdVxwbKpW.', 'admin', 'mail@mail.com', '', '2018-03-12 12:43:33', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp1_commentmeta`
--
ALTER TABLE `wp1_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp1_comments`
--
ALTER TABLE `wp1_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp1_links`
--
ALTER TABLE `wp1_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp1_options`
--
ALTER TABLE `wp1_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp1_postmeta`
--
ALTER TABLE `wp1_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp1_posts`
--
ALTER TABLE `wp1_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp1_termmeta`
--
ALTER TABLE `wp1_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp1_terms`
--
ALTER TABLE `wp1_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp1_term_relationships`
--
ALTER TABLE `wp1_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp1_term_taxonomy`
--
ALTER TABLE `wp1_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp1_upcp_catalogues`
--
ALTER TABLE `wp1_upcp_catalogues`
  ADD UNIQUE KEY `id` (`Catalogue_ID`);

--
-- Indexes for table `wp1_upcp_catalogue_items`
--
ALTER TABLE `wp1_upcp_catalogue_items`
  ADD UNIQUE KEY `id` (`Catalogue_Item_ID`);

--
-- Indexes for table `wp1_upcp_categories`
--
ALTER TABLE `wp1_upcp_categories`
  ADD UNIQUE KEY `id` (`Category_ID`);

--
-- Indexes for table `wp1_upcp_custom_fields`
--
ALTER TABLE `wp1_upcp_custom_fields`
  ADD UNIQUE KEY `id` (`Field_ID`);

--
-- Indexes for table `wp1_upcp_fields_meta`
--
ALTER TABLE `wp1_upcp_fields_meta`
  ADD UNIQUE KEY `id` (`Meta_ID`);

--
-- Indexes for table `wp1_upcp_items`
--
ALTER TABLE `wp1_upcp_items`
  ADD UNIQUE KEY `id` (`Item_ID`);

--
-- Indexes for table `wp1_upcp_item_images`
--
ALTER TABLE `wp1_upcp_item_images`
  ADD UNIQUE KEY `id` (`Item_Image_ID`);

--
-- Indexes for table `wp1_upcp_subcategories`
--
ALTER TABLE `wp1_upcp_subcategories`
  ADD UNIQUE KEY `id` (`SubCategory_ID`);

--
-- Indexes for table `wp1_upcp_tagged_items`
--
ALTER TABLE `wp1_upcp_tagged_items`
  ADD UNIQUE KEY `id` (`Tagged_Item_ID`);

--
-- Indexes for table `wp1_upcp_tags`
--
ALTER TABLE `wp1_upcp_tags`
  ADD UNIQUE KEY `id` (`Tag_ID`);

--
-- Indexes for table `wp1_upcp_tag_groups`
--
ALTER TABLE `wp1_upcp_tag_groups`
  ADD UNIQUE KEY `id` (`Tag_Group_ID`);

--
-- Indexes for table `wp1_upcp_videos`
--
ALTER TABLE `wp1_upcp_videos`
  ADD UNIQUE KEY `id` (`Item_Video_ID`);

--
-- Indexes for table `wp1_usermeta`
--
ALTER TABLE `wp1_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp1_users`
--
ALTER TABLE `wp1_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp1_commentmeta`
--
ALTER TABLE `wp1_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp1_comments`
--
ALTER TABLE `wp1_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp1_links`
--
ALTER TABLE `wp1_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp1_options`
--
ALTER TABLE `wp1_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;
--
-- AUTO_INCREMENT for table `wp1_postmeta`
--
ALTER TABLE `wp1_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wp1_posts`
--
ALTER TABLE `wp1_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp1_termmeta`
--
ALTER TABLE `wp1_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp1_terms`
--
ALTER TABLE `wp1_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp1_term_taxonomy`
--
ALTER TABLE `wp1_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp1_upcp_catalogues`
--
ALTER TABLE `wp1_upcp_catalogues`
  MODIFY `Catalogue_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp1_upcp_catalogue_items`
--
ALTER TABLE `wp1_upcp_catalogue_items`
  MODIFY `Catalogue_Item_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp1_upcp_categories`
--
ALTER TABLE `wp1_upcp_categories`
  MODIFY `Category_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp1_upcp_custom_fields`
--
ALTER TABLE `wp1_upcp_custom_fields`
  MODIFY `Field_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp1_upcp_fields_meta`
--
ALTER TABLE `wp1_upcp_fields_meta`
  MODIFY `Meta_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp1_upcp_items`
--
ALTER TABLE `wp1_upcp_items`
  MODIFY `Item_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp1_upcp_item_images`
--
ALTER TABLE `wp1_upcp_item_images`
  MODIFY `Item_Image_ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp1_upcp_subcategories`
--
ALTER TABLE `wp1_upcp_subcategories`
  MODIFY `SubCategory_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp1_upcp_tagged_items`
--
ALTER TABLE `wp1_upcp_tagged_items`
  MODIFY `Tagged_Item_ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp1_upcp_tags`
--
ALTER TABLE `wp1_upcp_tags`
  MODIFY `Tag_ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp1_upcp_tag_groups`
--
ALTER TABLE `wp1_upcp_tag_groups`
  MODIFY `Tag_Group_ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp1_upcp_videos`
--
ALTER TABLE `wp1_upcp_videos`
  MODIFY `Item_Video_ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp1_usermeta`
--
ALTER TABLE `wp1_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp1_users`
--
ALTER TABLE `wp1_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
