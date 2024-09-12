-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 08:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearniv_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment_files`
--

CREATE TABLE `assignment_files` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `folder_id` char(36) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `stu_id` char(36) NOT NULL,
  `stu_name` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assignment_files`
--

INSERT INTO `assignment_files` (`id`, `folder_id`, `file`, `file_name`, `stu_id`, `stu_name`, `created_at`, `updated_at`) VALUES
('20fcf4d7-3b44-4b5a-812b-f6931292a414', 'first test', 'https://res.cloudinary.com/dvfpbqemp/raw/upload/v1682943986/fhzfodd9zlkzd0rwl2rq.html', '2nd assignments', '6bfe9154-bf99-4376-be76-935dac812d6e', 'stu four', '2023-05-01 12:22:32', '2023-05-01 12:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
('2f8c1e7e-69da-4b80-a32f-23d9d62bcd5d', 'AutoCAD', 'autocad', '2023-04-23 13:18:50', '2023-04-23 13:18:50'),
('dabdec3a-58f9-4d14-a3bd-26921e701ce9', 'Designing', 'designing', '2023-04-23 13:19:04', '2023-04-23 13:19:04'),
('ea0a14ea-4fe3-48ec-9eb5-58c6fdb04b9e', 'Development', 'development', '2023-04-23 13:18:41', '2023-04-23 13:18:41'),
('f0538287-46c2-4452-9f44-d1c256f9c436', '3D Max', '3d-max', '2023-04-23 13:18:58', '2023-04-23 13:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `course_id` char(36) NOT NULL,
  `text` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `course_id`, `text`, `created_at`, `updated_at`) VALUES
('11a0a3b3-4e5e-473a-85e9-0a84316f4c64', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', '2023-05-01 14:12:31', '2023-05-01 14:12:31'),
('232468af-989b-4607-8fb9-f028d7bd354b', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'hi', '2023-05-01 14:13:07', '2023-05-01 14:13:07'),
('5ad7def1-bb95-4f2d-9ee3-0436f43ba204', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', '2023-05-01 14:11:59', '2023-05-01 14:11:59'),
('5e21e88c-26d9-4cea-812c-311f4c9c2c95', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'asdsad', '2023-05-01 14:15:30', '2023-05-01 14:15:30'),
('66e47f5c-b65a-498a-b702-4efb5e0a5a10', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'asda', '2023-05-01 14:15:22', '2023-05-01 14:15:22'),
('9efebe9c-12c5-444b-a02b-9e0c4b4865fa', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'asdsad', '2023-05-01 14:22:17', '2023-05-01 14:22:17'),
('a7ef2a63-883d-4abf-9cf2-f9ec7b222a28', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'text isnot design', '2023-05-01 13:58:32', '2023-05-01 13:58:32'),
('aa83eb90-0220-42ba-8778-147380a55fae', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'cehcek', '2023-05-01 14:14:44', '2023-05-01 14:14:44'),
('bbd7a68e-2e88-46bf-abf1-f3d379aea3dd', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'hiiii', '2023-05-01 13:57:45', '2023-05-01 13:57:45'),
('c5f8b339-f450-49e8-a1f8-8ae7a68c9e1a', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'asdsad', '2023-05-01 14:15:08', '2023-05-01 14:15:08'),
('c75acfff-0eea-47dc-987d-30e5b8db9ff4', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'asdsad', '2023-05-01 14:14:19', '2023-05-01 14:14:19'),
('c9cb1029-2da8-454f-bfec-fc2d91f0c5da', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'Cards can be organized into Masonry-like columns with just CSS by wrapping them in .card-columns. Cards are built with CSS column properties instead of flexbox for easier alignment. Cards are ordered from top to bottom and left to right.  Heads up! Your mileage with card columns may vary. To prevent cards breaking across columns, we must set them to display: inline-block as column-break-inside: avoid isn’t a bulletproof solution yet.', '2023-05-01 14:11:06', '2023-05-01 14:11:06'),
('cb072df4-6132-43e9-9a2c-1abc0b0b7134', '6bfe9154-bf99-4376-be76-935dac812d6e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', 'kamal', '2023-05-01 14:13:47', '2023-05-01 14:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(255) NOT NULL,
  `live_link` varchar(400) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `short_desc` text DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `latest_price` float DEFAULT NULL,
  `before_price` float DEFAULT NULL,
  `lessons` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `access_time` enum('Lifetime','Three Months','Six Months','1 Year') DEFAULT 'Lifetime',
  `requirements` text DEFAULT NULL,
  `what_you_will_learn` text DEFAULT NULL,
  `who_is_this_course_for` text DEFAULT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `approved` tinyint(1) DEFAULT 0,
  `in_home_page` tinyint(1) DEFAULT 0,
  `in_home_page_set_at` datetime DEFAULT NULL,
  `is_class` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `live_link`, `slug`, `short_desc`, `overview`, `latest_price`, `before_price`, `lessons`, `duration`, `image`, `access_time`, `requirements`, `what_you_will_learn`, `who_is_this_course_for`, `userId`, `catId`, `approved`, `in_home_page`, `in_home_page_set_at`, `is_class`, `created_at`, `updated_at`) VALUES
('33a810d4-9456-4f6c-a792-d5194ecbc7c9', 'SEO ', NULL, 'seo', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', 0, 0, '10', '2 Hours', NULL, 'Three Months', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '5e3241cd-8b75-4e0c-bae5-2f3227e4e0bf', 'ea0a14ea-4fe3-48ec-9eb5-58c6fdb04b9e', 1, 0, NULL, 0, '2023-04-28 11:54:28', '2023-04-28 11:54:56'),
('8d44f4c7-7659-4122-8296-6df9b0a80aad', 'Nodejs Zero to Hero', 'http://localhost:3001/enroll/workshop', 'nodejs-zero-to-hero', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', 0, 0, '20', '2 weeks', NULL, 'Three Months', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '5e3241cd-8b75-4e0c-bae5-2f3227e4e0bf', 'ea0a14ea-4fe3-48ec-9eb5-58c6fdb04b9e', 1, 0, NULL, 0, '2023-04-28 11:51:38', '2023-05-01 12:32:36'),
('db46782f-c56a-432a-97e1-becb18ab51c8', 'Mastery Reactjs', NULL, 'mastery-reactjs', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', 0, 0, '20', '2 weeks', NULL, 'Three Months', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '5e3241cd-8b75-4e0c-bae5-2f3227e4e0bf', 'ea0a14ea-4fe3-48ec-9eb5-58c6fdb04b9e', 1, 0, NULL, 0, '2023-04-28 11:50:51', '2023-04-28 11:54:58'),
('e70f18bc-8508-4355-bcd6-85dc03bb3c5f', 'HTLM & CSS (framswork)', NULL, 'htlm-css-framswork', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', 0, 0, '10', '4 Hours', NULL, 'Three Months', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '5e3241cd-8b75-4e0c-bae5-2f3227e4e0bf', 'ea0a14ea-4fe3-48ec-9eb5-58c6fdb04b9e', 1, 0, NULL, 0, '2023-04-28 11:53:53', '2023-04-28 11:54:54'),
('fd216ad2-e850-4eb8-8910-02720fc0fbc9', 'Blockchain masters', NULL, 'blockchain-masters', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', 0, 0, '30', '30 weeks', 'https://res.cloudinary.com/dvfpbqemp/image/upload/v1682683014/hli3tozpr0jplnrsiubc.jpg', '1 Year', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '<p><span style=\"color: rgb(77, 81, 86);\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p>', '5e3241cd-8b75-4e0c-bae5-2f3227e4e0bf', 'ea0a14ea-4fe3-48ec-9eb5-58c6fdb04b9e', 1, 0, NULL, 0, '2023-04-28 11:53:04', '2023-04-28 11:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `courses_teachers`
--

CREATE TABLE `courses_teachers` (
  `id` char(36) NOT NULL,
  `courseId` char(36) NOT NULL,
  `userId` char(36) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  `checkId` char(72) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses_teachers`
--

INSERT INTO `courses_teachers` (`id`, `courseId`, `userId`, `created_at`, `updated_at`, `checkId`) VALUES
('7e9f2251-80d2-45ba-8d20-19b1cd4ede38', '2c597fe2-8af3-44d3-a35f-b2271190a095', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c', '2023-03-09 07:43:34', '2023-03-09 07:43:34', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4c2c597fe2-8af3-44d3-a35f-b2271190a095'),
('4f3ff60d-b6c0-4f83-ae7f-724e6adcb280', '2c597fe2-8af3-44d3-a35f-b2271190a095', '27111002-6959-4d1a-be30-20f702857c30', '2023-03-09 08:20:05', '2023-03-09 08:20:05', '27111002-6959-4d1a-be30-20f702857c302c597fe2-8af3-44d3-a35f-b2271190a095'),
('c0240251-db8b-446d-a52c-8e495b81cf64', '2c597fe2-8af3-44d3-a35f-b2271190a095', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4d', '2023-03-09 10:31:08', '2023-03-09 10:31:08', 'ee2ddc7c-08ec-430b-afd0-4da0184bcc4d2c597fe2-8af3-44d3-a35f-b2271190a095'),
('0a35b5c3-9c6e-42c9-bde6-cf1bf714b84d', '2c597fe2-8af3-44d3-a35f-b2271190a095', 'bd54f406-2130-4319-bcfd-8ecadb1bc81d', '2023-03-09 12:28:42', '2023-03-09 12:28:42', 'bd54f406-2130-4319-bcfd-8ecadb1bc81d2c597fe2-8af3-44d3-a35f-b2271190a095'),
('9157d5d1-4584-4945-8602-e189a17d6895', '7ecaf75d-d8ef-4671-bd18-a6c40480b69c', '46bc5f12-85cd-4eb9-8347-38309a52edc8', '2023-04-26 07:11:57', '2023-04-26 07:11:57', '46bc5f12-85cd-4eb9-8347-38309a52edc87ecaf75d-d8ef-4671-bd18-a6c40480b69c'),
('5dd9a9da-5eac-4e8c-b641-d7092e6b2ce2', '7ecaf75d-d8ef-4671-bd18-a6c40480b69c', 'f094decb-cd5a-40d6-9572-6683c6fa006f', '2023-04-26 07:13:52', '2023-04-26 07:13:52', 'f094decb-cd5a-40d6-9572-6683c6fa006f7ecaf75d-d8ef-4671-bd18-a6c40480b69c'),
('dead9bc8-f416-417c-b9a3-72b404e05d14', '9b136520-27d8-41a3-a286-d7679fb8c813', '9ab028fa-eb80-4b8f-9883-bd94c5406c91', '2023-04-28 11:11:09', '2023-04-28 11:11:09', '9ab028fa-eb80-4b8f-9883-bd94c5406c919b136520-27d8-41a3-a286-d7679fb8c813'),
('4d71ceed-899a-4687-84df-3e7252592f7a', '7ecaf75d-d8ef-4671-bd18-a6c40480b69c', '9ab028fa-eb80-4b8f-9883-bd94c5406c91', '2023-04-28 11:25:32', '2023-04-28 11:25:32', '9ab028fa-eb80-4b8f-9883-bd94c5406c917ecaf75d-d8ef-4671-bd18-a6c40480b69c'),
('70a5563b-6f12-4fc1-bc1e-80551388969d', '9b136520-27d8-41a3-a286-d7679fb8c813', 'f094decb-cd5a-40d6-9572-6683c6fa006f', '2023-04-28 11:28:41', '2023-04-28 11:28:41', 'f094decb-cd5a-40d6-9572-6683c6fa006f9b136520-27d8-41a3-a286-d7679fb8c813'),
('9ae9e12a-7dac-41e4-8d21-ff6cb4f19d1c', 'db46782f-c56a-432a-97e1-becb18ab51c8', '2e61ea02-440b-4151-9a6c-17d7f9dcee9a', '2023-04-28 11:55:32', '2023-04-28 11:55:32', '2e61ea02-440b-4151-9a6c-17d7f9dcee9adb46782f-c56a-432a-97e1-becb18ab51c8'),
('e0e9342d-0266-471c-b39d-d2e7fe4b4632', 'db46782f-c56a-432a-97e1-becb18ab51c8', '94e8b47d-bcb4-4934-a341-78ea2424e895', '2023-04-28 11:55:36', '2023-04-28 11:55:36', '94e8b47d-bcb4-4934-a341-78ea2424e895db46782f-c56a-432a-97e1-becb18ab51c8'),
('71fd9d94-7976-439d-ab4b-cc55cdb03cf7', 'db46782f-c56a-432a-97e1-becb18ab51c8', 'c2e47ab8-3a4f-4f3e-b8b4-8c23f3d6ee2c', '2023-04-28 11:55:39', '2023-04-28 11:55:39', 'c2e47ab8-3a4f-4f3e-b8b4-8c23f3d6ee2cdb46782f-c56a-432a-97e1-becb18ab51c8'),
('c0410893-920a-4994-a581-e7fa40b58f1e', 'db46782f-c56a-432a-97e1-becb18ab51c8', 'cede9e4e-0bae-455a-a579-8fa9ca3ef713', '2023-04-28 11:55:44', '2023-04-28 11:55:44', 'cede9e4e-0bae-455a-a579-8fa9ca3ef713db46782f-c56a-432a-97e1-becb18ab51c8'),
('3b9fe630-e972-4600-adb2-58c541f1e401', '8d44f4c7-7659-4122-8296-6df9b0a80aad', '2e61ea02-440b-4151-9a6c-17d7f9dcee9a', '2023-05-01 10:54:24', '2023-05-01 10:54:24', '2e61ea02-440b-4151-9a6c-17d7f9dcee9a8d44f4c7-7659-4122-8296-6df9b0a80aad');

-- --------------------------------------------------------

--
-- Table structure for table `course_assets`
--

CREATE TABLE `course_assets` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lecture_name` varchar(255) DEFAULT NULL,
  `lecture_file` varchar(255) DEFAULT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_assets`
--

INSERT INTO `course_assets` (`id`, `lecture_name`, `lecture_file`, `courseId`, `created_at`, `updated_at`) VALUES
('37f8ada8-2bd0-403e-8bc8-9dff74a79b8a', 'routers and helpers', 'https://res.cloudinary.com/dvfpbqemp/raw/upload/v1682939918/jxvdeolndmjky16yveu8.html', '8d44f4c7-7659-4122-8296-6df9b0a80aad', '2023-05-01 11:14:44', '2023-05-01 11:14:44'),
('3985328b-6062-4109-a312-24cce8123026', 'middlewares', 'https://res.cloudinary.com/dvfpbqemp/raw/upload/v1682939902/gcjbmpbxlgpqxzdamlce.html', '8d44f4c7-7659-4122-8296-6df9b0a80aad', '2023-05-01 11:14:28', '2023-05-01 11:14:28'),
('3b91aac1-d744-4845-b305-fabd53187ab1', 'basics of expressjs', 'https://res.cloudinary.com/dvfpbqemp/raw/upload/v1682939871/qfdjgv83b2o4imdx0arh.html', '8d44f4c7-7659-4122-8296-6df9b0a80aad', '2023-05-01 11:13:56', '2023-05-01 11:13:56'),
('91c2f89a-7323-4568-95fc-ff29c4d45651', 'http vs https', 'https://res.cloudinary.com/dvfpbqemp/raw/upload/v1682939884/azr1zp7lxjj9gt1u7ouj.html', '8d44f4c7-7659-4122-8296-6df9b0a80aad', '2023-05-01 11:14:10', '2023-05-01 11:14:10'),
('bf4016f6-35af-4b48-b940-eebc92ea84d6', 'first assignement', 'https://res.cloudinary.com/dvfpbqemp/raw/upload/v1682938454/tmtjaofzhiyzy542gi12.html', 'db46782f-c56a-432a-97e1-becb18ab51c8', '2023-05-01 10:50:20', '2023-05-01 10:50:20'),
('e84f72d6-d961-49ef-bc11-e05fcd73f30d', 'basics of nodejs', 'https://res.cloudinary.com/dvfpbqemp/raw/upload/v1682939851/vgd6p1o19xsczzfsyacv.html', '8d44f4c7-7659-4122-8296-6df9b0a80aad', '2023-05-01 11:13:37', '2023-05-01 11:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `course_batch`
--

CREATE TABLE `course_batch` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `batchName` char(100) NOT NULL,
  `monday` tinyint(1) NOT NULL DEFAULT 0,
  `tuesday` tinyint(1) NOT NULL DEFAULT 0,
  `wednesday` tinyint(1) NOT NULL DEFAULT 0,
  `thursday` tinyint(1) NOT NULL DEFAULT 0,
  `friday` tinyint(1) NOT NULL DEFAULT 0,
  `startingFrom` char(50) NOT NULL,
  `_to` char(50) NOT NULL,
  `course` char(120) NOT NULL,
  `slug` char(120) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `startingDate` date DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `deactive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_batch`
--

INSERT INTO `course_batch` (`id`, `batchName`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `startingFrom`, `_to`, `course`, `slug`, `created_at`, `updated_at`, `startingDate`, `endingDate`, `deactive`) VALUES
('2147483647', 'React Batch 1', 1, 1, 1, 0, 0, '2pm', '4pm', 'mastery-reactjs', 'react-batch-1', '2023-04-28 11:56:49', '2023-04-28 11:56:49', '2023-04-01', '2023-04-29', 0),
('26fd8ba4-1cc0-4ca7-ba6f-b46820db4233', 'NodeJs & JavaScript 2', 1, 1, 1, 0, 0, '11am', '1pm', 'nodejs-zero-to-hero', 'nodejs-javascript-2', '2023-04-30 11:56:21', '2023-04-30 11:56:50', '2023-04-06', '2023-04-26', 1),
('3087bc0a-0ac2-4733-be00-736dcc261f3a', 'NodeJs 5', 1, 1, 0, 0, 0, '2pm', '4pm', 'nodejs-zero-to-hero', 'nodejs-5', '2023-05-01 10:51:20', '2023-05-01 10:51:20', '2023-05-03', '2023-05-27', 0),
('e3b54583-9b40-4f8a-a106-bb919dfb36b8', 'NodeJs & JavaScript', 1, 1, 0, 0, 0, '11am', '1pm', 'mastery-reactjs', 'nodejs-javascript', '2023-04-30 11:40:48', '2023-04-30 11:41:37', '2023-04-14', '2023-04-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_progresses`
--

CREATE TABLE `course_progresses` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `finished` tinyint(1) DEFAULT 1,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `videoId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drop_students`
--

CREATE TABLE `drop_students` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `stu_cord` char(36) NOT NULL,
  `stu_name` varchar(100) NOT NULL,
  `stu_email` varchar(100) NOT NULL,
  `joining_date` datetime NOT NULL,
  `course` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrolments`
--

CREATE TABLE `enrolments` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bought_price` float DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `buyer_avatar` varchar(255) DEFAULT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` enum('paid','unpaid') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `folder_name` varchar(100) NOT NULL,
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `course_id` char(36) NOT NULL,
  `creator_id` varchar(36) NOT NULL,
  `creator_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`folder_name`, `id`, `course_id`, `creator_id`, `creator_name`, `created_at`, `updated_at`) VALUES
('first test', 'e19ff3fd-08ba-4927-8aec-fd7c8ca36c0e', '8d44f4c7-7659-4122-8296-6df9b0a80aad', '2e61ea02-440b-4151-9a6c-17d7f9dcee9a', '', '2023-05-01 10:54:43', '2023-05-01 10:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_earnings`
--

CREATE TABLE `instructor_earnings` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `earnings` float DEFAULT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` enum('due','paid','cancelled') DEFAULT 'due',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `completed` tinyint(1) DEFAULT 0,
  `short_id` int(11) NOT NULL DEFAULT 0,
  `link` varchar(255) NOT NULL,
  `userId` int(36) NOT NULL,
  `courseId` int(36) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `group_name`, `title`, `completed`, `short_id`, `link`, `userId`, `courseId`, `created_at`, `updated_at`) VALUES
('031c1b2b-a301-481f-b0f3-c4c3afe95b32', 'lesson 3', 'http vs https', 0, 3, 'we will cover some basics in this class', 2147483647, 8, '2023-05-01 12:34:20', '2023-05-01 12:34:20'),
('79d0b44c-1085-4268-a80b-9bb55c478ffe', 'lesson 4', 'expressJs', 0, 4, 'we will cover some basics in this class', 2147483647, 8, '2023-05-01 12:34:42', '2023-05-01 12:34:42'),
('a98fba25-1070-4521-bd0e-ed148a2cd5d8', 'lesson 1', 'basics of javascripts', 1, 1, 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 2147483647, 0, '2023-04-30 18:50:05', '2023-04-30 18:54:43'),
('b45338b3-3f4f-4c17-8fcf-ae59145cd2d4', 'lesson 1', 'NodeJs Basics', 0, 1, 'we will cover some basics in this class', 2147483647, 8, '2023-05-01 12:33:19', '2023-05-01 12:33:19'),
('d144c104-6a48-43ad-958e-0c51a79d820b', 'lesson 2', 'middlewares', 0, 2, 'we will cover some ', 2147483647, 8, '2023-05-01 12:33:44', '2023-05-01 12:33:44'),
('eb7b4e10-ab19-4b96-bf94-acc864b17799', 'lesson 2', 'JSX', 0, 2, 'In publishing and graphic design, Lorem ipsum is a placeholde', 2147483647, 0, '2023-04-30 18:50:38', '2023-04-30 18:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `partner_image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20220807061714-create-user.js'),
('20220809153209-create-category.js'),
('20220810055344-create-testimonial.js'),
('20220810071953-create-partner.js'),
('20220811031005-create-course.js'),
('20220814043222-create-video.js'),
('20220815063929-create-course-asset.js'),
('20220816105113-create-favourite.js'),
('20220817092028-create-enrolment.js'),
('20220817092044-create-instructor-earning.js'),
('20220821065623-create-course-progress.js'),
('20220822101406-create-subscription.js');

-- --------------------------------------------------------

--
-- Table structure for table `studentbatches`
--

CREATE TABLE `studentbatches` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `userId` char(100) NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `batchId` char(100) NOT NULL,
  `checkId` char(75) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `studentbatches`
--

INSERT INTO `studentbatches` (`id`, `userId`, `studentName`, `batchId`, `checkId`, `created_at`, `updated_at`) VALUES
('100827fb-508c-4bc6-876f-ba9d6d548eae', '6bfe9154-bf99-4376-be76-935dac812d6e', 'stu four', '26fd8ba4-1cc0-4ca7-ba6f-b46820db4233', '6bfe9154-bf99-4376-be76-935dac812d6e26fd8ba4-1cc0-4ca7-ba6f-b46820db4233', '2023-04-30 11:56:30', '2023-04-30 11:56:30'),
('2', '2', 'stu one', '2147483647', '2fd906c5-44cb-4af6-a592-c700ededd5202147483647', '2023-04-28 11:57:15', '2023-04-28 11:57:15'),
('2147483647', '57', 'stu two', '2147483647', '57ad45f7-1136-4783-a1a4-bc622b0bb68b2147483647', '2023-04-28 11:57:19', '2023-04-28 11:57:19'),
('35ec13d5-5997-4ed1-b28e-672c947f031d', 'd8f4d169-8dc2-40dd-bd17-c38a80e98967', 'stu three', '3087bc0a-0ac2-4733-be00-736dcc261f3a', 'd8f4d169-8dc2-40dd-bd17-c38a80e989673087bc0a-0ac2-4733-be00-736dcc261f3a', '2023-05-01 10:52:55', '2023-05-01 10:52:55'),
('4', '6bfe9154-bf99-4376-be76-935dac812d6e', 'stu four', '2147483647', '6bfe9154-bf99-4376-be76-935dac812d6e2147483647', '2023-04-28 12:06:14', '2023-04-28 12:06:14'),
('497221fd-843b-48b1-a302-aa2a9274ddfd', 'd8f4d169-8dc2-40dd-bd17-c38a80e98967', 'stu three', '26fd8ba4-1cc0-4ca7-ba6f-b46820db4233', 'd8f4d169-8dc2-40dd-bd17-c38a80e9896726fd8ba4-1cc0-4ca7-ba6f-b46820db4233', '2023-04-30 11:56:29', '2023-04-30 11:56:29'),
('666bf2df-2398-4c9c-b28c-23fbfa494e46', 'd8f4d169-8dc2-40dd-bd17-c38a80e98967', 'stu three', '2147483647', 'd8f4d169-8dc2-40dd-bd17-c38a80e989672147483647', '2023-04-28 12:18:32', '2023-04-28 12:18:32'),
('8', '0', 'stu five', '2147483647', 'fc9847e7-e3ae-43bc-8ab1-d95b9d62af0d2147483647', '2023-04-28 11:57:04', '2023-04-28 11:57:04'),
('86801fb6-86e4-4c43-a64f-61d14d8aeb2e', '57ad45f7-1136-4783-a1a4-bc622b0bb68b', 'stu two', '26fd8ba4-1cc0-4ca7-ba6f-b46820db4233', '57ad45f7-1136-4783-a1a4-bc622b0bb68b26fd8ba4-1cc0-4ca7-ba6f-b46820db4233', '2023-04-30 11:56:33', '2023-04-30 11:56:33'),
('b8c39271-06ee-435a-9745-3295be37d26b', 'fc170c48-a1c7-48fc-ae88-848a3748c6de', 'tesyt user', '2147483647', 'fc170c48-a1c7-48fc-ae88-848a3748c6de2147483647', '2023-04-30 12:34:22', '2023-04-30 12:34:22'),
('e84725e6-e084-47b9-b4aa-f14203d46d07', 'fc170c48-a1c7-48fc-ae88-848a3748c6de', 'tesyt user', '26fd8ba4-1cc0-4ca7-ba6f-b46820db4233', 'fc170c48-a1c7-48fc-ae88-848a3748c6de26fd8ba4-1cc0-4ca7-ba6f-b46820db4233', '2023-04-30 11:56:26', '2023-04-30 11:56:26'),
('ffd39b69-897c-44a5-a31a-e9474fb02844', '094b2f9f-d3ce-40b5-accd-9b6901c592b5', 'student three', '2147483647', '094b2f9f-d3ce-40b5-accd-9b6901c592b52147483647', '2023-04-28 12:18:03', '2023-04-28 12:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `students_applications`
--

CREATE TABLE `students_applications` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `firstName` char(50) NOT NULL,
  `lastName` char(50) NOT NULL,
  `email` char(100) NOT NULL,
  `phoneNumber` char(13) NOT NULL,
  `address` char(100) NOT NULL,
  `idCard` char(50) NOT NULL,
  `city` char(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `parentName` char(50) NOT NULL,
  `parentOccupations` char(100) NOT NULL,
  `parentPhoneNumber` char(14) NOT NULL,
  `interest` char(200) NOT NULL,
  `wantToAchieve` char(200) NOT NULL,
  `course` char(100) NOT NULL,
  `education` char(100) NOT NULL,
  `gender` char(50) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `rejected` tinyint(1) NOT NULL DEFAULT 0,
  `registered` tinyint(1) NOT NULL DEFAULT 0,
  `isPaid` tinyint(1) NOT NULL DEFAULT 0,
  `remarks` char(150) NOT NULL,
  `enrollTo` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students_applications`
--

INSERT INTO `students_applications` (`id`, `firstName`, `lastName`, `email`, `phoneNumber`, `address`, `idCard`, `city`, `dateOfBirth`, `parentName`, `parentOccupations`, `parentPhoneNumber`, `interest`, `wantToAchieve`, `course`, `education`, `gender`, `approved`, `rejected`, `registered`, `isPaid`, `remarks`, `enrollTo`, `created_at`, `updated_at`) VALUES
('32ae82f3-de2c-40f5-b046-5604ab08d8f3', 'test', 'user', 'ascripter70@gmail.com', '12321321321', 'asdsadsa', '1231321312311', 'karachi', '2023-04-12', 'aaaaaaa', 'aaaaaaaaa', 'aaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaa', 'nodejs', 'intermediate', 'male', 0, 1, 0, 0, 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without r', 'program', '2023-04-30 10:46:53', '2023-04-30 10:46:53'),
('da0520bb-7dd9-46e6-aa73-e20918274b7d', 'tesyt', 'user', 'ascripter70@gmail.com', '03001232123', 'karachi', '2312312312321', 'karachi', '2023-04-10', 'ali', 'job', '12321321321', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be u', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be u', 'nodejs', 'bachelor', 'male', 1, 0, 1, 0, '', 'program', '2023-04-30 10:46:17', '2023-04-30 11:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `my_course` varchar(100) DEFAULT NULL,
  `my_batch` char(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `reset_password_token` char(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `reset_password_send_at` datetime DEFAULT NULL,
  `reset_password_at` datetime DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `role` enum('student','admin','instructor','cord') DEFAULT 'student',
  `instructor_status` tinyint(1) DEFAULT NULL,
  `instructor_subject` varchar(255) DEFAULT NULL,
  `instructor_description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `is_profile_public` tinyint(1) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `batchAssigned` int(36) NOT NULL,
  `batchCourse1` varchar(100) NOT NULL,
  `batchCourse2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `my_course`, `my_batch`, `password`, `gender`, `designation`, `bio`, `profile_photo`, `location`, `phone`, `reset_password_token`, `reset_password_send_at`, `reset_password_at`, `website`, `twitter`, `facebook`, `linkedin`, `youtube`, `role`, `instructor_status`, `instructor_subject`, `instructor_description`, `status`, `is_profile_public`, `created_at`, `updated_at`, `batchAssigned`, `batchCourse1`, `batchCourse2`) VALUES
('2dcd45db-7437-4947-9288-e82277246274', 'hadi', 'raza', 'hadiraza@gmail.com', NULL, '', '$2b$10$4ba7Ra.Q9ITP96bt09uTsuJPGiOSj/IyCTboDQhMFJ9F89lTjwhAK', NULL, NULL, NULL, NULL, NULL, NULL, '5bbd41b6-758c-495a-ace8-a975bc9aba29', '2023-04-30 12:32:02', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 1, NULL, NULL, 1, 1, '2023-04-30 12:32:02', '2023-04-30 12:32:02', 0, '', ''),
('2e61ea02-440b-4151-9a6c-17d7f9dcee9a', 'mukhtar', 'Ali', 'teacher1@gmail.com', NULL, '', '$2b$10$8WyuUc4CdejpkIyfOcXBnuSHuVvhY6LCl9VELvqrXkOE.kC0raRHm', NULL, NULL, NULL, NULL, NULL, NULL, '72180336-a0f8-40e5-aa5d-6e5a95eb2fed', '2023-04-28 11:44:35', NULL, NULL, NULL, NULL, NULL, NULL, 'instructor', 1, NULL, NULL, 1, 1, '2023-04-28 11:44:35', '2023-04-28 11:44:35', 0, '', ''),
('2fd906c5-44cb-4af6-a592-c700ededd520', 'stu', 'one', 'stu1@gmail.com', NULL, 'nodejs-5', '$2b$10$mKwaY0mNO0.kzr10N1N8hOsMtpneX6YhD.AZcDtBYsVlHdUC5nsES', NULL, NULL, NULL, NULL, NULL, NULL, 'c3947c08-c5c0-4ad3-9a54-71efcff37cc6', '2023-04-28 11:47:34', NULL, NULL, NULL, NULL, NULL, NULL, 'student', 1, NULL, NULL, 1, 1, '2023-04-28 11:47:34', '2023-05-01 11:25:31', 1, 'mastery-reactjs', ''),
('57ad45f7-1136-4783-a1a4-bc622b0bb68b', 'stu', 'two', 'stu2@gmail.com', NULL, 'nodejs-5', '$2b$10$9tJhBlx5Q4kTiopMo2/OheKI6jpQajIZgTKDNuM18KnEhd5UHYuxy', NULL, NULL, NULL, NULL, NULL, NULL, '348811f9-34b9-4b79-9029-0ce98efc9eb1', '2023-04-28 11:47:50', NULL, NULL, NULL, NULL, NULL, NULL, 'student', 1, NULL, NULL, 1, 1, '2023-04-28 11:47:50', '2023-05-01 11:25:05', 2, 'mastery-reactjs', 'nodejs-zero-to-hero'),
('5e3241cd-8b75-4e0c-bae5-2f3227e4e0bf', 'stu', 'cord', 'stuCord@gmail.com', NULL, '', '$2b$10$LssjL2LsZ0pFKglpvfynTO8ZP.8u7QcQsmSjjUDznxRTloRDrnyq2', NULL, NULL, NULL, NULL, NULL, NULL, '9ba842dd-39a3-4fd7-a00e-a91366293156', '2023-04-28 11:45:21', NULL, NULL, NULL, NULL, NULL, NULL, 'cord', 1, NULL, NULL, 1, 1, '2023-04-28 11:45:21', '2023-04-28 11:45:21', 0, '', ''),
('6bfe9154-bf99-4376-be76-935dac812d6e', 'stu', 'four', 'stu4@gmail.com', NULL, 'nodejs-5', '$2b$10$Mk9CHSkwRaYPgdM/YZ0IquQY4S2Ou1BOl1lCyxVYyT.UF2oJOdiLK', NULL, NULL, NULL, NULL, NULL, NULL, 'a7a1604f-9403-4279-aaa8-3bed3de6f446', '2023-04-28 12:01:54', NULL, NULL, NULL, NULL, NULL, NULL, 'student', 1, NULL, NULL, 1, 1, '2023-04-28 12:01:54', '2023-05-01 11:24:56', 2, 'mastery-reactjs', 'nodejs-zero-to-hero'),
('94e8b47d-bcb4-4934-a341-78ea2424e895', 'hussain', 'Ali', 'teacher2@gmail.com', NULL, '', '$2b$10$YMkSjx5L.KWx2Bsg3JnYNuLJrDQOfvwsL8VHyiQQSUnGrdcP7t5Ju', NULL, NULL, NULL, NULL, NULL, NULL, '2cc40b8f-3ec6-459b-9d90-b8b9155c4f34', '2023-04-28 11:44:45', NULL, NULL, NULL, NULL, NULL, NULL, 'instructor', 1, NULL, NULL, 1, 1, '2023-04-28 11:44:45', '2023-04-28 11:44:45', 0, '', ''),
('c2e47ab8-3a4f-4f3e-b8b4-8c23f3d6ee2c', 'sualeh', 'ali', 'teacher4@gmail.com', NULL, '', '$2b$10$mhdQaEo8o0R.nBOGojluQOOu8W0pFnk6M9Z3dIUKUnjDCqGjWDgYy', NULL, NULL, NULL, NULL, NULL, NULL, '98505402-af5c-4bdd-b87e-d1762a938924', '2023-04-28 11:47:14', NULL, NULL, NULL, NULL, NULL, NULL, 'instructor', 1, NULL, NULL, 1, 1, '2023-04-28 11:47:14', '2023-04-28 11:47:14', 0, '', ''),
('cede9e4e-0bae-455a-a579-8fa9ca3ef713', 'idama', 'ali', 'teacher3@gmail.com', NULL, '', '$2b$10$DOqoCsGDeNLj7tvhlth1t.DXr9hQ0PKZNYQZsI..ctLIpPK8y7at.', NULL, NULL, NULL, NULL, NULL, NULL, 'a73cc21e-87dd-46ac-90e3-269015da05b1', '2023-04-28 11:47:03', NULL, NULL, NULL, NULL, NULL, NULL, 'instructor', 1, NULL, NULL, 1, 1, '2023-04-28 11:47:03', '2023-04-28 11:47:03', 0, '', ''),
('d8f4d169-8dc2-40dd-bd17-c38a80e98967', 'stu', 'three', 'stu3@gmail.com', NULL, 'nodejs-5', '$2b$10$ZDKbv4RB8OMZ8UUf/n8I4uVSJwOApkKE7ARhXqbXtJKVlLKQap0.m', NULL, NULL, NULL, NULL, NULL, NULL, '547537f4-2a9d-4998-9281-ff96116a2709', '2023-04-28 12:18:21', NULL, NULL, NULL, NULL, NULL, NULL, 'student', 1, NULL, NULL, 1, 1, '2023-04-28 12:18:21', '2023-05-01 10:53:59', 2, 'mastery-reactjs', 'nodejs-zero-to-hero'),
('fc170c48-a1c7-48fc-ae88-848a3748c6de', 'tesyt', 'user', 'ascripter70@gmail.com', NULL, 'react-batch-1', '$2b$10$vmcB9XgcwmGq3QemR9AQxuTv3kvOTdig4I81EQBGojd8bLs06oiJK', NULL, NULL, NULL, NULL, NULL, NULL, '52fda415-f03b-4172-8e1c-bfd1cfe3fa27', '2023-04-30 11:02:04', NULL, NULL, NULL, NULL, NULL, NULL, 'student', 1, NULL, NULL, 1, 1, '2023-04-30 11:02:04', '2023-04-30 12:34:42', 2, 'nodejs-zero-to-hero', 'mastery-reactjs'),
('fc9847e7-e3ae-43bc-8ab1-d95b9d62af0d', 'stu', 'five', 'stu5@gmail.com', NULL, 'nodejs-5', '$2b$10$sK1yaYoKPNORj2bavHq4iOWdtlp.sHk6zy/pNEBfMVEHc5Ymi2D.m', NULL, NULL, NULL, NULL, NULL, NULL, 'd5b86f27-2ea8-4c7e-92ae-bdb9a3e4aac5', '2023-04-28 11:48:26', NULL, NULL, NULL, NULL, NULL, NULL, 'student', 1, NULL, NULL, 1, 1, '2023-04-28 11:48:26', '2023-05-01 11:25:01', 1, 'mastery-reactjs', '');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `video_length` float DEFAULT NULL,
  `is_preview` tinyint(1) DEFAULT 0,
  `short_id` int(11) NOT NULL DEFAULT 0,
  `assets_zip` varchar(255) DEFAULT NULL,
  `userId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `courseId` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment_files`
--
ALTER TABLE `assignment_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `userId` (`userId`),
  ADD KEY `catId` (`catId`);

--
-- Indexes for table `course_assets`
--
ALTER TABLE `course_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `course_batch`
--
ALTER TABLE `course_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_progresses`
--
ALTER TABLE `course_progresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `videoId` (`videoId`);

--
-- Indexes for table `drop_students`
--
ALTER TABLE `drop_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolments`
--
ALTER TABLE `enrolments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_earnings`
--
ALTER TABLE `instructor_earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `studentbatches`
--
ALTER TABLE `studentbatches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_applications`
--
ALTER TABLE `students_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `courseId` (`courseId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`catId`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_assets`
--
ALTER TABLE `course_assets`
  ADD CONSTRAINT `course_assets_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_progresses`
--
ALTER TABLE `course_progresses`
  ADD CONSTRAINT `course_progresses_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_progresses_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_progresses_ibfk_3` FOREIGN KEY (`videoId`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrolments`
--
ALTER TABLE `enrolments`
  ADD CONSTRAINT `enrolments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrolments_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructor_earnings`
--
ALTER TABLE `instructor_earnings`
  ADD CONSTRAINT `instructor_earnings_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructor_earnings_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `videos_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
