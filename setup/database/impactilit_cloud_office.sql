-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 17, 2024 at 09:36 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impactilit_cloud_office`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `workspace_id`, `user_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Akmal installed CloudOffice', '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(2, 0, 1, 'Logged in with email:akmalyousuf35@gmail.com', '2024-09-16 22:16:39', '2024-09-16 22:16:39'),
(3, 0, 1, 'Logged in with email:akmalyousuf35@gmail.com', '2024-09-16 22:49:20', '2024-09-16 22:49:20'),
(4, 0, 1, 'Logged in with email:akmalyousuf35@gmail.com', '2024-09-17 02:45:06', '2024-09-17 02:45:06'),
(5, 0, 1, 'Logged in with email:akmalyousuf35@gmail.com', '2024-09-17 03:16:22', '2024-09-17 03:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `contact_id` int UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` int UNSIGNED NOT NULL DEFAULT '0',
  `manager_id` int UNSIGNED NOT NULL DEFAULT '0',
  `address_id` int UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `all_day` tinyint(1) NOT NULL DEFAULT '0',
  `priority` enum('high','medium','low') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `type` enum('leave','work','system','personal','holiday','other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`id`, `workspace_id`, `uuid`, `user_id`, `contact_id`, `admin_id`, `manager_id`, `address_id`, `title`, `start`, `end`, `all_day`, `priority`, `status`, `type`, `access_key`, `created_at`, `updated_at`) VALUES
(1, 1, '4d262c0d-b7fd-479c-8c07-0496b0ea0391', 1, 0, 0, 0, 0, 'Illo incididunt anim', '1998-06-07 00:00:00', '2004-11-28 00:00:00', 1, 'medium', 'pending', 'other', NULL, '2024-09-16 22:36:23', '2024-09-16 22:36:23'),
(2, 1, '66bdc89c-2979-483c-acc9-034e677d8d77', 1, 0, 0, 0, 0, 'hello', '2024-09-17 00:00:00', '2024-09-27 00:00:00', 1, 'medium', 'pending', 'other', NULL, '2024-09-16 22:37:15', '2024-09-16 22:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_key` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `birthday` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `workspace_id`, `uuid`, `user_id`, `first_name`, `last_name`, `email`, `phone`, `title`, `address`, `city`, `state`, `country`, `zip`, `avatar`, `access_key`, `notes`, `birthday`, `created_at`, `updated_at`) VALUES
(1, 1, '2a4e6370-f090-46ad-8c11-41e7820149ad', 1, 'Demo', 'Example', 'demo@example.com', NULL, 'Sample Contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This is a sample contact. You can delete it.', NULL, '2024-09-16 22:16:25', '2024-09-16 22:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_key` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `last_opened_by` int UNSIGNED NOT NULL DEFAULT '0',
  `last_opened_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `workspace_id`, `uuid`, `user_id`, `type`, `title`, `content`, `is_published`, `slug`, `access_key`, `attachment`, `last_opened_by`, `last_opened_at`, `created_at`, `updated_at`) VALUES
(1, 1, '705c6ce2-2b7a-425f-8cd1-e22065cdc833', 1, 'word', 'Getting Started', '<h2>Getting Started</h2><p>Hey <strong>Akmal!</strong> </p><p>You have just installed CloudOffice. </p><p>It will help you to create, organize, and share your business and personal documents. </p><p>Make word documents and spreadsheets, edit images, quickly share files and screenshots, and more. </p><p>During your installation, the system created some sample documents to get to know your CloudOffice and its modules. This document and other documents generated during installation are sample documents. You may delete them.</p>', 0, NULL, 'u078DOAGYS5way1hr3VvVn57luF83ZQA', NULL, 1, '2024-09-16 22:16:25', '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(2, 1, '0cb3f1f7-c234-4dd1-9d1d-09ffa46d7001', 1, 'word', 'Creating and Sharing Documents', 'You can create documents with rich editors and share them securely with auto-generated unique URLs. To get started, go to \"Documents\" and click \"New Document\" from the top right corner. After creating, click \"Share,\" and you will get a unique URL secured by a randomly generated access key.', 0, NULL, 'dM4HV9U7YlEQnllFJYAYaUlCcwnFrEkN', NULL, 1, '2024-09-16 22:16:25', '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(3, 1, 'c9e3c44b-7d76-44e5-8f99-1710f879b01f', 1, 'word', 'Address Book', 'Keep all your business contacts in your address books. You can also create contacts via API. Go to \"API\" under Settings to generate API keys and guide.', 0, NULL, 'AwEQIhCG5b3l8tpcFwKJE2pdPRLs11HM', NULL, 1, '2024-09-16 22:16:25', '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(4, 1, 'cd8999c1-cd38-4797-9010-a8089711144b', 1, 'word', 'Quick Share', 'Quick share allows you to share zip files, images, and videos without expensive subscriptions, all with your brands. For example, you can instantly share a screenshot, video, or zip file without using a third-party service. It also automatically shows a preview of images and videos. ', 0, NULL, 'NQxGqgj3DcRby3fkKK7xVl38Y3sQ3gyL', NULL, 1, '2024-09-16 22:16:25', '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(5, 1, 'ad30fbd0-1d6f-428c-bfff-7febab390937', 1, 'word', 'Editing an Image', 'Upload your images, and your master images will remain the same on your CloudOffice. Then you can edit them and download your changes.', 0, NULL, 'HxU07A0Yj7DaFBeo8SFwDh59zluSXTFa', NULL, 1, '2024-09-16 22:16:25', '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(6, 1, '5ed2bf03-9537-4632-a59a-b1ebcaeacc60', 1, 'spreadsheet', 'Sample Spreadsheet', '', 0, NULL, 'TuGwa9258RvJ0UiIHqnlDM4K1pVyHUEg', NULL, 1, '2024-09-16 22:16:25', '2024-09-16 22:16:25', '2024-09-16 22:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `directory_id` int UNSIGNED NOT NULL DEFAULT '0',
  `size` int UNSIGNED NOT NULL DEFAULT '0',
  `width` smallint UNSIGNED NOT NULL DEFAULT '0',
  `height` smallint UNSIGNED NOT NULL DEFAULT '0',
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `access_key` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `workspace_id`, `uuid`, `user_id`, `directory_id`, `size`, `width`, `height`, `folder`, `title`, `path`, `mime_type`, `extension`, `description`, `access_key`, `created_at`, `updated_at`) VALUES
(1, 1, '03847d44-4bef-455f-9691-4d5f7b079924', 1, 0, 386925, 0, 0, NULL, 'Sample Image', 'media/sample-image.jpg', 'image/jpeg', 'jpg', NULL, NULL, '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(2, 1, 'aa50fcc8-d2ae-41e1-87bd-a31d1d946742', 1, 0, 45967, 0, 0, NULL, 'download.png', 'media/XZ3DYgShmv2GHztlnoYxCxjOlKFHyp1pE8SM5Ia0.png', 'image/png', 'png', NULL, NULL, '2024-09-17 02:45:32', '2024-09-17 02:45:32'),
(3, 1, 'fb8beccd-d30a-48f3-8f7d-b34ca452d36c', 1, 0, 45967, 0, 0, NULL, 'download.png', 'media/YIhSH3cGQk0wuZlotsxtZgrI1iBI1wAwEmLHc2SL.png', 'image/png', 'png', NULL, NULL, '2024-09-17 03:09:08', '2024-09-17 03:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_test_mode` tinyint(1) NOT NULL DEFAULT '0',
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interval_count` int UNSIGNED NOT NULL DEFAULT '0',
  `storage_space` int UNSIGNED NOT NULL DEFAULT '0',
  `users` int UNSIGNED NOT NULL DEFAULT '0',
  `contacts` int UNSIGNED NOT NULL DEFAULT '0',
  `modules` text COLLATE utf8mb4_unicode_ci,
  `features` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_free` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_plan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_plan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `collection_id` int UNSIGNED NOT NULL DEFAULT '0',
  `single_category_id` int UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `lead_text` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `markdown` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `head` longtext COLLATE utf8mb4_unicode_ci,
  `js` longtext COLLATE utf8mb4_unicode_ci,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_video_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vimeo_video_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reading_time` int UNSIGNED NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_home_page` tinyint(1) NOT NULL DEFAULT '0',
  `is_system_page` tinyint(1) NOT NULL DEFAULT '0',
  `is_pinned` tinyint(1) NOT NULL DEFAULT '0',
  `show_date` tinyint(1) NOT NULL DEFAULT '1',
  `allow_comment` tinyint(1) NOT NULL DEFAULT '0',
  `is_page` tinyint(1) NOT NULL DEFAULT '0',
  `author_id` int UNSIGNED NOT NULL DEFAULT '0',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int UNSIGNED NOT NULL DEFAULT '0',
  `is_cached` tinyint(1) NOT NULL DEFAULT '0',
  `seo_index` tinyint(1) NOT NULL DEFAULT '1',
  `settings` json DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `uuid`, `workspace_id`, `user_id`, `parent_id`, `collection_id`, `single_category_id`, `type`, `template`, `header_type`, `api_name`, `slug`, `name`, `title`, `seo_title`, `excerpt`, `lead_text`, `keywords`, `meta_tag`, `meta_description`, `meta_keywords`, `markdown`, `content`, `head`, `js`, `featured_image`, `featured_video`, `youtube_video_id`, `vimeo_video_id`, `canonical_url`, `reading_time`, `is_published`, `is_home_page`, `is_system_page`, `is_pinned`, `show_date`, `allow_comment`, `is_page`, `author_id`, `sort_order`, `item_id`, `is_cached`, `seo_index`, `settings`, `og_title`, `og_description`, `og_image`, `twitter_card`, `twitter_title`, `twitter_description`, `twitter_image`, `created_at`, `updated_at`) VALUES
(1, 'f4893131-fe6d-49ec-9ca2-23f928a8629b', 1, 0, 0, 0, 0, 'page', NULL, NULL, NULL, 'welcome-to-office-saas', NULL, 'Welcome to Office Saas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '{\"hero_image\": \"media/sample-image.jpg\", \"hero_title\": \"The Office Suite on the Cloud\", \"faq_answers\": [\"The monthly plan is billed monthly and the yearly plan is billed yearly. The yearly plan is 10% off the monthly price.\", \"You can cancel your subscription at any time. If you cancel your subscription, you will continue to have access to your account until the end of your current billing period.\", \"If you cancel your subscription, you will continue to have access to your account until the end of your current billing period. You will not be billed again after your current billing period ends.\", \"You can start a trial by clicking the \\\"Get Started\\\" or the \\\"Sign Up\\\" button on the pricing page. You do not need a credit card to start a trial.\"], \"signup_title\": \"Get Started with a Free Trial\", \"testimonials\": [\"It works well and has all the functions I need. I would recommend it to anyone who needs a simple and easy to use document editor.\", \"I love this product! This is efficient and productive. I can create documents and share them with my colleagues. I can also export them as PDF.\", \"I use this product to share assignments with my students. It is very easy to use and I can see the logs who accessed them.\"], \"faq_questions\": [\"What is the difference between the monthly and yearly plans?\", \"How do I cancel my subscription?\", \"What happens if I cancel my subscription?\", \"How do I start a trial?\"], \"hero_subtitle\": \"A powerful office suite on the cloud featuring writer, spreadsheet, images, file sharing, and more. No software to install. Get started for free now.\", \"signup_reasons\": [\"Works everywhere, whether on a PC, tablet, or mobile device.\", \"Share with a unique access URL with access log data, and No signup is required to access the shared documents.\", \"Cloud Image Editor to crop, resize, and add text to images.\", \"No software to install. No updates to install. No hassle.\", \"No credit card required. No commitment. Cancel anytime.\"], \"hero_button_url\": \"#signup\", \"signup_subtitle\": \"Get Started with CloudOffice for Free\", \"faq_section_name\": \"FAQ\", \"hero_button_text\": \"Get Started\", \"faq_section_title\": \"Frequently Asked Questions\", \"hero_section_name\": \"Hero Section\", \"about_section_name\": \"About\", \"about_section_image\": null, \"about_section_title\": \"More than just Office Suite\", \"signup_section_name\": \"Sign Up\", \"testimonials_author\": [\"Emil S\", \"Oliver K\", \"William H\"], \"faq_section_subtitle\": \"Your questions answered\", \"pricing_section_name\": \"Pricing\", \"pricing_section_title\": \"Pricing\", \"about_section_subtitle\": \"CloudOffice is a simple, lightweight office suite on the Cloud. Create, Edit, and Share to improve your work efficiency: share files, texts, links, and more with access logs. Know who is viewing and from which device and IP. Export to PDF and more.\", \"feature_highlight_title\": \"CloudOffice is made with you in mind!\", \"pricing_section_subtitle\": \"Choose which suite is right for you\", \"testimonials_author_title\": [\"Student, UT\", \"Content Writer, Ray Media\", \"Teacher, UT\"], \"testimonials_section_name\": \"Testimonials\", \"feature_highlight_subtitle\": \"Works everywhere, whether on a PC, tablet, or mobile device.\", \"testimonials_section_title\": \"Testimonials\", \"testimonials_section_subtitle\": \"What our customers say\", \"feature_highlight_section_name\": \"Why CloudOffice?\", \"feature_highlight_feature_1_icon\": \"<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" fill=\\\"none\\\" viewBox=\\\"0 0 24 24\\\" stroke-width=\\\"1.5\\\" stroke=\\\"currentColor\\\" class=\\\"w-6 h-6\\\">\\r\\n  <path stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\" d=\\\"M4.26 10.147a60.436 60.436 0 00-.491 6.347A48.627 48.627 0 0112 20.904a48.627 48.627 0 018.232-4.41 60.46 60.46 0 00-.491-6.347m-15.482 0a50.57 50.57 0 00-2.658-.813A59.905 59.905 0 0112 3.493a59.902 59.902 0 0110.399 5.84c-.896.248-1.783.52-2.658.814m-15.482 0A50.697 50.697 0 0112 13.489a50.702 50.702 0 017.74-3.342M6.75 15a.75.75 0 100-1.5.75.75 0 000 1.5zm0 0v-3.675A55.378 55.378 0 0112 8.443m-7.007 11.55A5.981 5.981 0 006.75 15.75v-1.5\\\" />\\r\\n</svg>\", \"feature_highlight_feature_2_icon\": \"<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" fill=\\\"none\\\" viewBox=\\\"0 0 24 24\\\" stroke-width=\\\"1.5\\\" stroke=\\\"currentColor\\\" class=\\\"w-6 h-6\\\">\\r\\n  <path stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\" d=\\\"M3.75 3v11.25A2.25 2.25 0 006 16.5h2.25M3.75 3h-1.5m1.5 0h16.5m0 0h1.5m-1.5 0v11.25A2.25 2.25 0 0118 16.5h-2.25m-7.5 0h7.5m-7.5 0l-1 3m8.5-3l1 3m0 0l.5 1.5m-.5-1.5h-9.5m0 0l-.5 1.5M9 11.25v1.5M12 9v3.75m3-6v6\\\" />\\r\\n</svg>\", \"feature_highlight_feature_3_icon\": \"<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" fill=\\\"none\\\" viewBox=\\\"0 0 24 24\\\" stroke-width=\\\"1.5\\\" stroke=\\\"currentColor\\\" class=\\\"w-6 h-6\\\">\\r\\n  <path stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\" d=\\\"M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z\\\" />\\r\\n</svg>\", \"feature_highlight_feature_4_icon\": \"<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" fill=\\\"none\\\" viewBox=\\\"0 0 24 24\\\" stroke-width=\\\"1.5\\\" stroke=\\\"currentColor\\\" class=\\\"w-6 h-6\\\">\\r\\n  <path stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\" d=\\\"M12 21v-8.25M15.75 21v-8.25M8.25 21v-8.25M3 9l9-6 9 6m-1.5 12V10.332A48.36 48.36 0 0012 9.75c-2.551 0-5.056.2-7.5.582V21M3 21h18M12 6.75h.008v.008H12V6.75z\\\" />\\r\\n</svg>\", \"feature_highlight_feature_1_title\": \"Student\", \"feature_highlight_feature_2_title\": \"Teacher\", \"feature_highlight_feature_3_title\": \"Personal\", \"feature_highlight_feature_4_title\": \"Business\", \"footer_business_short_description\": \"CloudOffice improves individual and business productivity. It lets you create and share files, texts, spreadsheets, and more.\", \"feature_highlight_feature_1_subtitle\": \"Take study notes. Share with classmates. Export as PDF.\", \"feature_highlight_feature_2_subtitle\": \"Create documents. Share with colleagues. Export as PDF.\", \"feature_highlight_feature_3_subtitle\": \"Create documents. Share with colleagues. Export as PDF.\", \"feature_highlight_feature_4_subtitle\": \"Create documents. Share with colleagues. Export as PDF.\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-16 22:16:25', '2024-09-17 03:11:39'),
(2, '2904f806-c682-4b55-b208-c9aa50904461', 1, 0, 0, 0, 0, 'page', NULL, NULL, 'privacy_policy', 'privacy-policy', NULL, 'Privacy Policy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2 style=\"text-align:center; font-weight:bold;\">PRIVACY NOTICE</h2>\n<p>\n  <br>\n  <strong>Last updated February 11, 2023</strong>\n</p>\n<p>This privacy notice for CloudOnex (\"Company,\" \"we,\" \"us,\" or \"our\"), describes how and why we might collect, store, use, and/or share (\"process\") your information when you use our services (\"Services\"), such as when you: <br>Visit our website at <a href=\"https://www.cloudonex.com\">https://www.cloudonex.com</a>, or any website of ours that links to this privacy notice </p>\n<p>Engage with us in other related ways, including any sales, marketing, or events <br>Questions or concerns?&nbsp;Reading this privacy notice will help you understand your privacy rights and choices. If you do not agree with our policies and practices, please do not use our Services. If you still have any questions or concerns, please contact us at __________. </p>\n<p>&nbsp;</p>\n<p>\n  <br>SUMMARY OF KEY POINTS\n</p>\n<p>\n  <br>This summary provides key points from our privacy notice, but you can find out more details about any of these topics by clicking the link following each key point or by using our table of contents below to find the section you are looking for. You can also click&nbsp;here&nbsp;to go directly to our table of contents.\n</p>\n<p>\n  <br>What personal information do we process? When you visit, use, or navigate our Services, we may process personal information depending on how you interact with CloudOnex and the Services, the choices you make, and the products and features you use. Click&nbsp;here&nbsp;to learn more.\n</p>\n<p>\n  <br>Do we process any sensitive personal information? We do not process sensitive personal information.\n</p>\n<p>\n  <br>Do we receive any information from third parties? We do not receive any information from third parties.\n</p>\n<p>\n  <br>How do we process your information? We process your information to provide, improve, and administer our Services, communicate with you, for security and fraud prevention, and to comply with law. We may also process your information for other purposes with your consent. We process your information only when we have a valid legal reason to do so. Click&nbsp;here&nbsp;to learn more.\n</p>\n<p>\n  <br>In what situations and with which parties do we share personal information? We may share information in specific situations and with specific third parties. Click&nbsp;here&nbsp;to learn more.\n</p>\n<p>\n  <br>What are your rights? Depending on where you are located geographically, the applicable privacy law may mean you have certain rights regarding your personal information. Click&nbsp;here&nbsp;to learn more.\n</p>\n<p>\n  <br>How do you exercise your rights? The easiest way to exercise your rights is by filling out our data subject request form available here, or by contacting us. We will consider and act upon any request in accordance with applicable data protection laws.\n</p>\n<p>\n  <br>Want to learn more about what CloudOnex does with any information we collect? Click&nbsp;here&nbsp;to review the notice in full.\n</p>\n<p>\n  <br>1. WHAT INFORMATION DO WE COLLECT?\n</p>\n<p>\n  <br>Personal information you disclose to us\n</p>\n<p>\n  <br>In Short:&nbsp;We collect personal information that you provide to us.\n</p>\n<p>\n  <br>We collect personal information that you voluntarily provide to us when you register on the Services,&nbsp;express an interest in obtaining information about us or our products and Services, when you participate in activities on the Services, or otherwise when you contact us.\n</p>\n<p>&nbsp;</p>\n<p>Personal Information Provided by You. The personal information that we collect depends on the context of your interactions with us and the Services, the choices you make, and the products and features you use. The personal information we collect may include the following: <br>names </p>\n<p>phone numbers</p>\n<p>email addresses</p>\n<p>usernames</p>\n<p>passwords</p>\n<p>Sensitive Information. We do not process sensitive information.</p>\n<p>&nbsp;</p>\n<p>Payment Data. We may collect data necessary to process your payment if you make purchases, such as your payment instrument number, and the security code associated with your payment instrument. All payment data is stored by __________. You may find their privacy notice link(s) here: __________.</p>\n<p>&nbsp;</p>\n<p>All personal information that you provide to us must be true, complete, and accurate, and you must notify us of any changes to such personal information.</p>\n<p>&nbsp;</p>\n<p>2. HOW DO WE PROCESS YOUR INFORMATION?</p>\n<p>\n  <br>In Short:&nbsp;We process your information to provide, improve, and administer our Services, communicate with you, for security and fraud prevention, and to comply with law. We may also process your information for other purposes with your consent.\n</p>\n<p>\n  <br>We process your personal information for a variety of reasons, depending on how you interact with our Services, including: <br>To facilitate account creation and authentication and otherwise manage user accounts.&nbsp;We may process your information so you can create and log in to your account, as well as keep your account in working order.\n</p>\n<p>\n  <br>To save or protect an individual\'s vital interest. We may process your information when necessary to save or protect an individual’s vital interest, such as to prevent harm.\n</p>\n<p>&nbsp;</p>\n<p>3. WHAT LEGAL BASES DO WE RELY ON TO PROCESS YOUR INFORMATION?</p>\n<p>\n  <br>In Short:&nbsp;We only process your personal information when we believe it is necessary and we have a valid legal reason (i.e., legal basis) to do so under applicable law, like with your consent, to comply with laws, to provide you with services to enter into or fulfill our contractual obligations, to protect your rights, or to fulfill our legitimate business interests.\n</p>\n<p>\n  <br>If you are located in the EU or UK, this section applies to you.\n</p>\n<p>\n  <br>The General Data Protection Regulation (GDPR) and UK GDPR require us to explain the valid legal bases we rely on in order to process your personal information. As such, we may rely on the following legal bases to process your personal information: <br>Consent.&nbsp;We may process your information if you have given us permission (i.e., consent) to use your personal information for a specific purpose. You can withdraw your consent at any time. Click&nbsp;here&nbsp;to learn more.\n</p>\n<p>Legal Obligations. We may process your information where we believe it is necessary for compliance with our legal obligations, such as to cooperate with a law enforcement body or regulatory agency, exercise or defend our legal rights, or disclose your information as evidence in litigation in which we are involved.</p>\n<p>\n  <br>Vital Interests. We may process your information where we believe it is necessary to protect your vital interests or the vital interests of a third party, such as situations involving potential threats to the safety of any person.\n</p>\n<p>&nbsp;</p>\n<p>If you are located in Canada, this section applies to you.</p>\n<p>\n  <br>We may process your information if you have given us specific permission (i.e., express consent) to use your personal information for a specific purpose, or in situations where your permission can be inferred (i.e., implied consent). You can withdraw your consent at any time. Click&nbsp;here&nbsp;to learn more.\n</p>\n<p>\n  <br>In some exceptional cases, we may be legally permitted under applicable law to process your information without your consent, including, for example: <br>If collection is clearly in the interests of an individual and consent cannot be obtained in a timely way\n</p>\n<p>For investigations and fraud detection and prevention</p>\n<p>For business transactions provided certain conditions are met</p>\n<p>If it is contained in a witness statement and the collection is necessary to assess, process, or settle an insurance claim</p>\n<p>For identifying injured, ill, or deceased persons and communicating with next of kin</p>\n<p>If we have reasonable grounds to believe an individual has been, is, or may be victim of financial abuse</p>\n<p>If it is reasonable to expect collection and use with consent would compromise the availability or the accuracy of the information and the collection is reasonable for purposes related to investigating a breach of an agreement or a contravention of the laws of Canada or a province</p>\n<p>If disclosure is required to comply with a subpoena, warrant, court order, or rules of the court relating to the production of records</p>\n<p>If it was produced by an individual in the course of their employment, business, or profession and the collection is consistent with the purposes for which the information was produced</p>\n<p>If the collection is solely for journalistic, artistic, or literary purposes</p>\n<p>If the information is publicly available and is specified by the regulations</p>\n<p>&nbsp;</p>\n<p>4. WHEN AND WITH WHOM DO WE SHARE YOUR PERSONAL INFORMATION?</p>\n<p>\n  <br>In Short:&nbsp;We may share information in specific situations described in this section and/or with the following third parties.\n</p>\n<p>&nbsp;</p>\n<p>We may need to share your personal information in the following situations: <br>Business Transfers. We may share or transfer your information in connection with, or during negotiations of, any merger, sale of company assets, financing, or acquisition of all or a portion of our business to another company. </p>\n<p>&nbsp;</p>\n<p>5. DO WE USE COOKIES AND OTHER TRACKING TECHNOLOGIES?</p>\n<p>\n  <br>In Short:&nbsp;We may use cookies and other tracking technologies to collect and store your information.\n</p>\n<p>\n  <br>We may use cookies and similar tracking technologies (like web beacons and pixels) to access or store information. Specific information about how we use such technologies and how you can refuse certain cookies is set out in our Cookie Notice.\n</p>\n<p>\n  <br>6. IS YOUR INFORMATION TRANSFERRED INTERNATIONALLY?\n</p>\n<p>\n  <br>In Short:&nbsp;We may transfer, store, and process your information in countries other than your own.\n</p>\n<p>\n  <br>Our servers are located in. If you are accessing our Services from outside, please be aware that your information may be transferred to, stored, and processed by us in our facilities and by those third parties with whom we may share your personal information (see \"WHEN AND WITH WHOM DO WE SHARE YOUR PERSONAL INFORMATION?\" above), in &nbsp;and other countries.\n</p>\n<p>\n  <br>If you are a resident in the European Economic Area (EEA) or United Kingdom (UK), then these countries may not necessarily have data protection laws or other similar laws as comprehensive as those in your country. However, we will take all necessary measures to protect your personal information in accordance with this privacy notice and applicable law.\n</p>\n<p>\n  <br>7. HOW LONG DO WE KEEP YOUR INFORMATION?\n</p>\n<p>\n  <br>In Short:&nbsp;We keep your information for as long as necessary to fulfill the purposes outlined in this privacy notice unless otherwise required by law.\n</p>\n<p>\n  <br>We will only keep your personal information for as long as it is necessary for the purposes set out in this privacy notice, unless a longer retention period is required or permitted by law (such as tax, accounting, or other legal requirements). No purpose in this notice will require us keeping your personal information for longer than the period of time in which users have an account with us.\n</p>\n<p>\n  <br>When we have no ongoing legitimate business need to process your personal information, we will either delete or anonymize such information, or, if this is not possible (for example, because your personal information has been stored in backup archives), then we will securely store your personal information and isolate it from any further processing until deletion is possible.\n</p>\n<p>\n  <br>8. WHAT ARE YOUR PRIVACY RIGHTS?\n</p>\n<p>\n  <br>In Short:&nbsp;In some regions, such as the European Economic Area (EEA), United Kingdom (UK), and Canada, you have rights that allow you greater access to and control over your personal information.&nbsp;You may review, change, or terminate your account at any time.\n</p>\n<p>\n  <br>In some regions (like the EEA, UK, and Canada), you have certain rights under applicable data protection laws. These may include the right (i) to request access and obtain a copy of your personal information, (ii) to request rectification or erasure; (iii) to restrict the processing of your personal information; and (iv) if applicable, to data portability. In certain circumstances, you may also have the right to object to the processing of your personal information. You can make such a request by contacting us by using the contact details provided in the section \"HOW CAN YOU CONTACT US ABOUT THIS NOTICE?\" below.\n</p>\n<p>\n  <br>We will consider and act upon any request in accordance with applicable data protection laws. <br>&nbsp; <br>If you are located in the EEA or UK and you believe we are unlawfully processing your personal information, you also have the right to complain to your local data protection supervisory authority. You can find their contact details here: https://ec.europa.eu/justice/data-protection/bodies/authorities/index_en.htm.\n</p>\n<p>\n  <br>If you are located in Switzerland, the contact details for the data protection authorities are available here: https://www.edoeb.admin.ch/edoeb/en/home.html.\n</p>\n<p>\n  <br>Withdrawing your consent: If we are relying on your consent to process your personal information, which may be express and/or implied consent depending on the applicable law, you have the right to withdraw your consent at any time. You can withdraw your consent at any time by contacting us by using the contact details provided in the section \"HOW CAN YOU CONTACT US ABOUT THIS NOTICE?\" below.\n</p>\n<p>\n  <br>However, please note that this will not affect the lawfulness of the processing before its withdrawal nor, when applicable law allows, will it affect the processing of your personal information conducted in reliance on lawful processing grounds other than consent.\n</p>\n<p>\n  <br>Opting out of marketing and promotional communications:&nbsp;You can unsubscribe from our marketing and promotional communications at any time by clicking on the unsubscribe link in the emails that we send, or by contacting us using the details provided in the section \"HOW CAN YOU CONTACT US ABOUT THIS NOTICE?\" below. You will then be removed from the marketing lists. However, we may still communicate with you — for example, to send you service-related messages that are necessary for the administration and use of your account, to respond to service requests, or for other non-marketing purposes.\n</p>\n<p>\n  <br>Account Information\n</p>\n<p>\n  <br>If you would at any time like to review or change the information in your account or terminate your account, you can: <br>Log in to your account settings and update your user account.\n</p>\n<p>Upon your request to terminate your account, we will deactivate or delete your account and information from our active databases. However, we may retain some information in our files to prevent fraud, troubleshoot problems, assist with any investigations, enforce our legal terms and/or comply with applicable legal requirements.</p>\n<p>\n  <br>9. CONTROLS FOR DO-NOT-TRACK FEATURES\n</p>\n<p>\n  <br>Most web browsers and some mobile operating systems and mobile applications include a Do-Not-Track (\"DNT\") feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected. At this stage no uniform technology standard for recognizing and implementing DNT signals has been finalized. As such, we do not currently respond to DNT browser signals or any other mechanism that automatically communicates your choice not to be tracked online. If a standard for online tracking is adopted that we must follow in the future, we will inform you about that practice in a revised version of this privacy notice.\n</p>\n<p>\n  <br>10. DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?\n</p>\n<p>\n  <br>In Short:&nbsp;Yes, if you are a resident of California, you are granted specific rights regarding access to your personal information.\n</p>\n<p>\n  <br>California Civil Code Section 1798.83, also known as the \"Shine The Light\" law, permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information (if any) we disclosed to third parties for direct marketing purposes and the names and addresses of all third parties with which we shared personal information in the immediately preceding calendar year. If you are a California resident and would like to make such a request, please submit your request in writing to us using the contact information provided below.\n</p>\n<p>\n  <br>If you are under 18 years of age, reside in California, and have a registered account with Services, you have the right to request removal of unwanted data that you publicly post on the Services. To request removal of such data, please contact us using the contact information provided below and include the email address associated with your account and a statement that you reside in California. We will make sure the data is not publicly displayed on the Services, but please be aware that the data may not be completely or comprehensively removed from all our systems (e.g., backups, etc.).\n</p>\n<p>\n  <br>CCPA Privacy Notice\n</p>\n<p>\n  <br>The California Code of Regulations defines a \"resident\" as:\n</p>\n<p>\n  <br>(1) every individual who is in the State of California for other than a temporary or transitory purpose and <br>(2) every individual who is domiciled in the State of California who is outside the State of California for a temporary or transitory purpose\n</p>\n<p>\n  <br>All other individuals are defined as \"non-residents.\"\n</p>\n<p>\n  <br>If this definition of \"resident\" applies to you, we must adhere to certain rights and obligations regarding your personal information.\n</p>\n<p>\n  <br>What categories of personal information do we collect?\n</p>\n<p>\n  <br>We have collected the following categories of personal information in the past twelve (12) months:\n</p>\n<p>&nbsp;</p>\n<p>We may also collect other personal information outside of these categories through instances where you interact with us in person, online, or by phone or mail in the context of: <br>Receiving help through our customer support channels; </p>\n<p>Participation in customer surveys or contests; and</p>\n<p>Facilitation in the delivery of our Services and to respond to your inquiries. <br>How do we use and share your personal information? </p>\n<p>\n  <br>More information about our data collection and sharing practices can be found in this privacy notice.\n</p>\n<p>\n  <br>You may contact us or by referring to the contact details at the bottom of this document.\n</p>\n<p>\n  <br>If you are using an authorized agent to exercise your right to opt out we may deny a request if the authorized agent does not submit proof that they have been validly authorized to act on your behalf.\n</p>\n<p>\n  <br>Will your information be shared with anyone else?\n</p>\n<p>\n  <br>We may disclose your personal information with our service providers pursuant to a written contract between us and each service provider. Each service provider is a for-profit entity that processes the information on our behalf, following the same strict privacy protection obligations mandated by the CCPA.\n</p>\n<p>\n  <br>We may use your personal information for our own business purposes, such as for undertaking internal research for technological development and demonstration. This is not considered to be \"selling\" of your personal information.\n</p>\n<p>\n  <br>Your rights with respect to your personal data\n</p>\n<p>\n  <br>Right to request deletion of the data — Request to delete\n</p>\n<p>\n  <br>You can ask for the deletion of your personal information. If you ask us to delete your personal information, we will respect your request and delete your personal information, subject to certain exceptions provided by law, such as (but not limited to) the exercise by another consumer of his or her right to free speech, our compliance requirements resulting from a legal obligation, or any processing that may be required to protect against illegal activities.\n</p>\n<p>\n  <br>Right to be informed — Request to know\n</p>\n<p>\n  <br>Depending on the circumstances, you have a right to know: <br>whether we collect and use your personal information;\n</p>\n<p>the categories of personal information that we collect;</p>\n<p>the purposes for which the collected personal information is used;</p>\n<p>whether we sell or share personal information to third parties;</p>\n<p>the categories of personal information that we sold, shared, or disclosed for a business purpose;</p>\n<p>the categories of third parties to whom the personal information was sold, shared, or disclosed for a business purpose;</p>\n<p>the business or commercial purpose for collecting, selling, or sharing personal information; and</p>\n<p>the specific pieces of personal information we collected about you. <br>In accordance with applicable law, we are not obligated to provide or delete consumer information that is de-identified in response to a consumer request or to re-identify individual data to verify a consumer request. </p>\n<p>\n  <br>Right to Non-Discrimination for the Exercise of a Consumer’s Privacy Rights\n</p>\n<p>\n  <br>We will not discriminate against you if you exercise your privacy rights.\n</p>\n<p>\n  <br>Right to Limit Use and Disclosure of Sensitive Personal Information\n</p>\n<p>&nbsp;</p>\n<p>We do not process consumer\'s sensitive personal information.</p>\n<p>&nbsp;</p>\n<p>Verification process</p>\n<p>\n  <br>Upon receiving your request, we will need to verify your identity to determine you are the same person about whom we have the information in our system. These verification efforts require us to ask you to provide information so that we can match it with information you have previously provided us. For instance, depending on the type of request you submit, we may ask you to provide certain information so that we can match the information you provide with the information we already have on file, or we may contact you through a communication method (e.g., phone or email) that you have previously provided to us. We may also use other verification methods as the circumstances dictate.\n</p>\n<p>\n  <br>We will only use personal information provided in your request to verify your identity or authority to make the request. To the extent possible, we will avoid requesting additional information from you for the purposes of verification. However, if we cannot verify your identity from the information already maintained by us, we may request that you provide additional information for the purposes of verifying your identity and for security or fraud-prevention purposes. We will delete such additionally provided information as soon as we finish verifying you.\n</p>\n<p>\n  <br>Other privacy rights\n</p>\n<p>You may object to the processing of your personal information.</p>\n<p>You may request correction of your personal data if it is incorrect or no longer relevant, or ask to restrict the processing of the information.</p>\n<p>You can designate an authorized agent to make a request under the CCPA on your behalf. We may deny a request from an authorized agent that does not submit proof that they have been validly authorized to act on your behalf in accordance with the CCPA. <br>To exercise these rights, you can contact us&nbsp;or by referring to the contact details at the bottom of this document. If you have a complaint about how we handle your data, we would like to hear from you. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(3, '437afcd3-bf6e-4abf-82fa-e69093a8e363', 1, 0, 0, 0, 0, 'page', NULL, NULL, 'terms_of_service', 'terms-of-service', NULL, 'Terms of Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>Terms and Conditions</strong></h2>\n<p>Welcome to&nbsp;CloudOnex!</p>\n<p>These terms and conditions outline the rules and regulations for the use of&nbsp;CloudOnex\'s Website, located at <a href=\"https://www.cloudonex.com\" target=\"_blank\" rel=\"noopener\">www.cloudonex.com</a>.</p>\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use&nbsp;CloudOnex&nbsp;if you do not agree to take all of the terms and conditions stated on this page.</p>\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &ldquo;Client&rdquo;, &ldquo;You&rdquo; and &ldquo;Your&rdquo; refers to you, the person log on this website and compliant to the Company\'s terms and conditions. &ldquo;The Company&rdquo;, &ldquo;Ourselves&rdquo;, &ldquo;We&rdquo;, &ldquo;Our&rdquo; and &ldquo;Us&rdquo;, refers to our Company. &ldquo;Party&rdquo;, &ldquo;Parties&rdquo;, or &ldquo;Us&rdquo;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\n<h3><strong>Cookies</strong></h3>\n<p>We employ the use of cookies. By accessing&nbsp;CloudOnex, you agreed to use cookies in agreement with the&nbsp;CloudOnex\'s Privacy Policy.</p>\n<p>Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\n<h3><strong>License</strong></h3>\n<p>Unless otherwise stated,&nbsp;CloudOnex&nbsp;and/or its licensors own the intellectual property rights for all material on&nbsp;CloudOnex. All intellectual property rights are reserved. You may access this from&nbsp;CloudOnex&nbsp;for your own personal use subjected to restrictions set in these terms and conditions.</p>\n<p>You must not:</p>\n<ul>\n<li>Republish material from&nbsp;CloudOnex</li>\n<li>Sell, rent or sub-license material from&nbsp;CloudOnex</li>\n<li>Reproduce, duplicate or copy material from&nbsp;CloudOnex</li>\n<li>Redistribute content from&nbsp;CloudOnex</li>\n</ul>\n<p>This Agreement shall begin on the date hereof.</p>\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website.&nbsp;CloudOnex&nbsp;does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of&nbsp;CloudOnex,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws,&nbsp;CloudOnex&nbsp;shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\n<p>CloudOnex&nbsp;reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\n<p>You warrant and represent that:</p>\n<ul>\n<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\n<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\n<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\n<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\n</ul>\n<p>You hereby grant&nbsp;CloudOnex&nbsp;a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\n<h3><strong>Hyperlinking to our Content</strong></h3>\n<p>The following organizations may link to our Website without prior written approval:</p>\n<ul>\n<li>Government agencies;</li>\n<li>Search engines;</li>\n<li>News organizations;</li>\n<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\n<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\n</ul>\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p>\n<p>We may consider and approve other link requests from the following types of organizations:</p>\n<ul>\n<li>commonly-known consumer and/or business information sources;</li>\n<li>dot.com community sites;</li>\n<li>associations or other groups representing charities;</li>\n<li>online directory distributors;</li>\n<li>internet portals;</li>\n<li>accounting, law and consulting firms; and</li>\n<li>educational institutions and trade associations.</li>\n</ul>\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of&nbsp;CloudOnex; and (d) the link is in the context of general resource information.</p>\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p>\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to&nbsp;CloudOnex. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\n<p>Approved organizations may hyperlink to our Website as follows:</p>\n<ul>\n<li>By use of our corporate name; or</li>\n<li>By use of the uniform resource locator being linked to; or</li>\n<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li>\n</ul>\n<p>No use of&nbsp;CloudOnex\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\n<h3><strong>iFrames</strong></h3>\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\n<h3><strong>Content Liability</strong></h3>\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\n<h3><strong>Reservation of Rights</strong></h3>\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\n<h3><strong>Removal of links from our website</strong></h3>\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\n<h3><strong>Disclaimer</strong></h3>\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\n<ul>\n<li>limit or exclude our or your liability for death or personal injury;</li>\n<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\n<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\n<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\n</ul>\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-16 22:16:25', '2024-09-16 22:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `quick_shares`
--

CREATE TABLE `quick_shares` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `contact_id` int UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int UNSIGNED NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `view_count` int UNSIGNED NOT NULL DEFAULT '0',
  `download_count` int UNSIGNED NOT NULL DEFAULT '0',
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_url_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quick_share_access_logs`
--

CREATE TABLE `quick_share_access_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `quick_share_id` int UNSIGNED NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `contact_id` int UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_bot` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `workspace_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'workspace_name', 'CloudOnex 2', '2024-09-16 22:16:25', '2024-09-16 22:49:34'),
(2, 1, 'logo', 'logo/ObkI8XxB33DRYqFc4q4X0cd4DggCgLoOw39SIDkN.png', '2024-09-16 22:16:25', '2024-09-17 03:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_plan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_plan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_monthly` decimal(8,2) UNSIGNED DEFAULT NULL,
  `price_yearly` decimal(8,2) UNSIGNED DEFAULT NULL,
  `price_two_years` decimal(8,2) UNSIGNED DEFAULT NULL,
  `price_three_years` decimal(8,2) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `features` text COLLATE utf8mb4_unicode_ci,
  `modules` text COLLATE utf8mb4_unicode_ci,
  `maximum_allowed_users` int UNSIGNED NOT NULL DEFAULT '0',
  `has_modules` tinyint(1) NOT NULL DEFAULT '0',
  `is_free` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `per_user_pricing` tinyint(1) NOT NULL DEFAULT '0',
  `users_limit` int UNSIGNED NOT NULL DEFAULT '0',
  `max_file_upload_size` int UNSIGNED NOT NULL DEFAULT '0',
  `file_space_limit` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `workspace_id`, `uuid`, `name`, `slug`, `paypal_plan_id`, `stripe_plan_id`, `price_monthly`, `price_yearly`, `price_two_years`, `price_three_years`, `description`, `features`, `modules`, `maximum_allowed_users`, `has_modules`, `is_free`, `is_active`, `is_featured`, `per_user_pricing`, `users_limit`, `max_file_upload_size`, `file_space_limit`, `created_at`, `updated_at`) VALUES
(1, 1, '3792374d-7487-40e7-9445-580ae32a99aa', 'Basic', NULL, NULL, NULL, 4.99, 49.99, NULL, NULL, NULL, '[\"Single User\",\"1GB Storage\",\"Create & Share Documents\",\"Create & Share Spreadsheets\",\"Quick Share\",\"Image Editor\",\"Digital Asset Management\",\"Calendar\",\"Address Book\",\"Basic Support\"]', '{\"documents\":true,\"spreadsheets\":true,\"quick_shares\":true,\"images\":true,\"digital_assets\":true,\"calendar\":true,\"address_book\":true}', 0, 0, 0, 1, 0, 0, 0, 0, 0, '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(2, 1, '23b870d6-84c3-4ac4-9f60-a51c4fc64342', 'Standard', NULL, NULL, NULL, 9.99, 99.99, NULL, NULL, NULL, '[\"2 Users\",\"5GB Storage\",\"Create & Share Documents\",\"Create & Share Spreadsheets\",\"Quick Share\",\"Image Editor\",\"Digital Asset Management\",\"Calendar\",\"Address Book\",\"Standard Support\"]', '{\"documents\":true,\"spreadsheets\":true,\"quick_shares\":true,\"images\":true,\"digital_assets\":true,\"calendar\":true,\"address_book\":true}', 0, 0, 0, 1, 1, 0, 0, 0, 0, '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(3, 1, '4c28ae81-f996-43a2-aed3-046e4860ea76', 'Premium', NULL, NULL, NULL, 19.99, 199.99, NULL, NULL, NULL, '[\"Unlimited Users\",\"10GB Storage\",\"Create & Share Documents\",\"Create & Share Spreadsheets\",\"Quick Share\",\"Image Editor\",\"Digital Asset Management\",\"Calendar\",\"Address Book\",\"Premium Support\"]', '{\"documents\":true,\"spreadsheets\":true,\"quick_shares\":true,\"images\":true,\"digital_assets\":true,\"calendar\":true,\"address_book\":true}', 0, 0, 0, 1, 0, 0, 0, 0, 0, '2024-09-16 22:16:25', '2024-09-16 22:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `gateway_id` int UNSIGNED NOT NULL DEFAULT '0',
  `plan_id` int UNSIGNED NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int UNSIGNED NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_super_admin` tinyint(1) NOT NULL DEFAULT '0',
  `access_key` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `workspace_id`, `uuid`, `role_id`, `first_name`, `last_name`, `email`, `password`, `phone`, `address`, `city`, `state`, `country`, `zip`, `avatar`, `timezone`, `is_super_admin`, `access_key`, `password_reset_token`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, 1, '90c4aec8-e776-458e-91f3-fbbfa61ccf4f', 0, 'Akmal', 'Yousuf', 'akmalyousuf35@gmail.com', '$2y$10$FRXOM3uXgNUbNGEXRICWw.pyUtUuxBkNJC7ZFzgyyuEY6T7mlBXWS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-09-17 09:16:22', '2024-09-16 22:16:25', '2024-09-17 03:16:22'),
(2, 2, '379f290c-6057-489e-ba83-a7adfdcd86eb', 0, 'Zena', 'Hines', 'qapi@mailinator.com', '$2y$10$vgl8/uG2eFRlRFkTMPk9S.RiRbqG2p9Qe23kXGtX72wrBuGk4d1uK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-09-16 22:48:30', '2024-09-16 22:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `workspaces`
--

CREATE TABLE `workspaces` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `is_on_free_trial` tinyint(1) NOT NULL DEFAULT '0',
  `free_trial_days` int UNSIGNED NOT NULL DEFAULT '0',
  `free_trial_ends_at` date DEFAULT NULL,
  `plan_id` int UNSIGNED NOT NULL DEFAULT '0',
  `plan_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_start_date` date DEFAULT NULL,
  `next_renewal_date` date DEFAULT NULL,
  `plan_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `plan_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_interval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_interval_count` int UNSIGNED NOT NULL DEFAULT '0',
  `plan_storage_space` int UNSIGNED NOT NULL DEFAULT '0',
  `plan_users` int UNSIGNED NOT NULL DEFAULT '0',
  `plan_contacts` int UNSIGNED NOT NULL DEFAULT '0',
  `is_on_grace_period` tinyint(1) NOT NULL DEFAULT '0',
  `grace_period_days` int UNSIGNED NOT NULL DEFAULT '0',
  `grace_period_ends_at` date DEFAULT NULL,
  `modules` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workspaces`
--

INSERT INTO `workspaces` (`id`, `uuid`, `owner_id`, `name`, `is_active`, `is_subscribed`, `is_on_free_trial`, `free_trial_days`, `free_trial_ends_at`, `plan_id`, `plan_name`, `plan_type`, `term`, `subscription_start_date`, `next_renewal_date`, `plan_amount`, `plan_currency`, `plan_interval`, `plan_interval_count`, `plan_storage_space`, `plan_users`, `plan_contacts`, `is_on_grace_period`, `grace_period_days`, `grace_period_ends_at`, `modules`, `created_at`, `updated_at`) VALUES
(1, '7273a350-53ed-4a61-b7a0-21e37501b6f6', 1, 'Admin Workspace', 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-09-16 22:16:25', '2024-09-16 22:16:25'),
(2, '5c3ae79a-b038-459a-a828-ab83d56c2b2e', 0, 'Zena\'s workspace', 1, 0, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-09-16 22:48:30', '2024-09-16 22:48:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_shares`
--
ALTER TABLE `quick_shares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_share_access_logs`
--
ALTER TABLE `quick_share_access_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quick_shares`
--
ALTER TABLE `quick_shares`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quick_share_access_logs`
--
ALTER TABLE `quick_share_access_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
