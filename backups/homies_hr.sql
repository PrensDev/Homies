-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 11:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homies_hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `applicant_id` varchar(36) NOT NULL,
  `job_post_id` varchar(36) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix_name` varchar(255) DEFAULT NULL,
  `resume` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `evaluated_by` varchar(36) DEFAULT NULL,
  `evaluated_at` datetime DEFAULT NULL,
  `screened_by` varchar(36) DEFAULT NULL,
  `screened_at` datetime DEFAULT NULL,
  `hired_by` varchar(36) DEFAULT NULL,
  `hired_at` varchar(36) DEFAULT NULL,
  `rejected_by` varchar(36) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`applicant_id`, `job_post_id`, `first_name`, `middle_name`, `last_name`, `suffix_name`, `resume`, `contact_number`, `email`, `status`, `evaluated_by`, `evaluated_at`, `screened_by`, `screened_at`, `hired_by`, `hired_at`, `rejected_by`, `rejected_at`, `remarks`, `created_at`, `updated_at`) VALUES
('0cd81e4e-121e-11ed-95b4-6c626d3a5d34', 'd1be37c2-121d-11ed-95b4-6c626d3a5d34', 'Lucy ', '', 'Morgan', '', 'f8d601df4545401882ebdc945d40a957.pdf', '(534) 704-8885', 'lucy.morgan@gmail.com', 'Contract signed', 'ac5d7ba2-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:48:20', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:49:16', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:53:33', NULL, NULL, NULL, '2022-08-02 12:46:19', '2022-08-02 15:13:42'),
('2f2cdc3f-121e-11ed-95b4-6c626d3a5d34', 'd1be37c2-121d-11ed-95b4-6c626d3a5d34', 'Bob ', '', 'Nichols', '', '2a4b0e372d6c4fa4ae89a6a980a641e6.pdf', '(958) 745-1655', 'bob.nichols@gmail.com', 'For interview', 'ac5d7ba2-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:48:16', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:49:13', NULL, NULL, NULL, NULL, NULL, '2022-08-02 12:47:16', '2022-08-02 12:49:13'),
('4a5f7bbf-121e-11ed-95b4-6c626d3a5d34', 'd1be37c2-121d-11ed-95b4-6c626d3a5d34', 'Leon ', '', 'James', '', '5ce1dd1fa04442c4a4f40b8cc1610167.pdf', '(352) 399-6022', 'leon.james@gmail.com', 'For interview', 'ac5d7ba2-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:48:11', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:49:09', NULL, NULL, NULL, NULL, NULL, '2022-08-02 12:48:02', '2022-08-02 12:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
('58c9f044-1200-11ed-95b4-6c626d3a5d34', 'Human Resource Department', 'Human Resource Department', '2022-08-02 09:13:41', '2022-08-02 09:13:41'),
('58dcf294-1200-11ed-95b4-6c626d3a5d34', 'Medical Department', 'Medical Department', '2022-08-02 09:13:41', '2022-08-02 09:13:41'),
('58e9642f-1200-11ed-95b4-6c626d3a5d34', 'Information Technology Department', 'Information Technology Department', '2022-08-02 09:13:41', '2022-08-02 09:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `extension_name` varchar(255) DEFAULT NULL,
  `employment_start_date` date DEFAULT NULL,
  `employment_contract` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `signed_by` varchar(36) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `position_id` varchar(36) NOT NULL,
  `employment_type_id` varchar(255) NOT NULL,
  `onboarding_status` varchar(255) DEFAULT NULL,
  `updated_by` varchar(36) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `user_id`, `first_name`, `middle_name`, `last_name`, `extension_name`, `employment_start_date`, `employment_contract`, `status`, `signed_by`, `contact_number`, `position_id`, `employment_type_id`, `onboarding_status`, `updated_by`, `created_at`, `updated_at`) VALUES
('1a4a927a-1208-11ed-95b4-6c626d3a5d34', 'e23bb537-1207-11ed-95b4-6c626d3a5d34', 'Corey', NULL, 'Hamilton', NULL, NULL, NULL, 'Active', NULL, '(503) 502-5747', 'c2932d68-1204-11ed-95b4-6c626d3a5d34', 'b79d247b-1205-11ed-95b4-6c626d3a5d34', NULL, NULL, '2022-08-02 10:09:12', '2022-08-02 10:09:12'),
('792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2e0d965d-1208-11ed-95b4-6c626d3a5d34', 'Avery', NULL, 'Hamilton', NULL, NULL, NULL, 'Active', NULL, '(389) 784-3330', 'c29f34c5-1204-11ed-95b4-6c626d3a5d34', 'b79d247b-1205-11ed-95b4-6c626d3a5d34', NULL, NULL, '2022-08-02 10:11:52', '2022-08-02 10:11:52'),
('a4252e03-1232-11ed-95b4-6c626d3a5d34', 'a3dfe3ef-1232-11ed-95b4-6c626d3a5d34', 'Lucy ', '', 'Morgan', '', NULL, '8dbe472b53e94617916d80797abf05b7.pdf', 'Inactive', 'c5f7fd5b-1207-11ed-95b4-6c626d3a5d34', '(534) 704-8885', 'c2bdef11-1204-11ed-95b4-6c626d3a5d34', 'b79d247b-1205-11ed-95b4-6c626d3a5d34', 'Pending', NULL, '2022-08-02 15:13:42', '2022-08-02 15:13:42'),
('ac5d7ba2-1208-11ed-95b4-6c626d3a5d34', '9b02e86a-1208-11ed-95b4-6c626d3a5d34', 'Violet', NULL, 'Hale', NULL, NULL, NULL, 'Active', NULL, '(735) 457-5546', 'c2bbe189-1204-11ed-95b4-6c626d3a5d34', 'b79d247b-1205-11ed-95b4-6c626d3a5d34', NULL, NULL, '2022-08-02 10:13:17', '2022-08-02 10:13:17'),
('c5f7fd5b-1207-11ed-95b4-6c626d3a5d34', '88c52ed5-1207-11ed-95b4-6c626d3a5d34', 'Crystal', NULL, 'Rodriguez', NULL, NULL, NULL, 'Active', NULL, '(355)-882-5784', 'c285de94-1204-11ed-95b4-6c626d3a5d34', 'b79d247b-1205-11ed-95b4-6c626d3a5d34', NULL, NULL, '2022-08-02 10:06:51', '2022-08-02 10:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `employment_types`
--

CREATE TABLE `employment_types` (
  `employment_type_id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employment_types`
--

INSERT INTO `employment_types` (`employment_type_id`, `name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
('b79d247b-1205-11ed-95b4-6c626d3a5d34', 'Full Time', 'Full Time', 1, '2022-08-02 09:52:08', '2022-08-02 09:52:08'),
('b7acf1b7-1205-11ed-95b4-6c626d3a5d34', 'Part Time', 'Part Time', 1, '2022-08-02 09:52:08', '2022-08-02 09:52:08'),
('b7b4a281-1205-11ed-95b4-6c626d3a5d34', 'Intern/On-the-job (OJT) Training', 'Intern/On-the-job (OJT) Training', 1, '2022-08-02 09:52:08', '2022-08-02 09:52:08'),
('b7c28988-1205-11ed-95b4-6c626d3a5d34', 'Contractual', 'Contractual', 1, '2022-08-02 09:52:08', '2022-08-02 09:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `internal_users`
--

CREATE TABLE `internal_users` (
  `id` varchar(36) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internal_users`
--

INSERT INTO `internal_users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
('2e0d965d-1208-11ed-95b4-6c626d3a5d34', 'hr.recruit.hiremngr@homies.com', '$2b$12$.iZ4uHzJstT4yiHk/0Gz2.l92V6w69x65v0uxNzKmMefZ1v.Xc7eS', '2022-08-02 10:09:46', NULL),
('88c52ed5-1207-11ed-95b4-6c626d3a5d34', 'hr.head@homies.com', '$2b$12$fovKh/ML5RYqRwYuIyPWWet.pGkTOkERfjp6EASPE4mkqQL3sA4r2', '2022-08-02 10:05:08', NULL),
('9b02e86a-1208-11ed-95b4-6c626d3a5d34', 'hr.recruit.recruiter@homies.com', '$2b$12$3bvjAaZMn/A/uLwbTtDpX.GYUDUPabhr1uhxcXOJlzsYmZoHpq676', '2022-08-02 10:12:48', NULL),
('a3dfe3ef-1232-11ed-95b4-6c626d3a5d34', 'lucy.morgan@gmail.com', 'null', '2022-08-02 15:13:42', NULL),
('e23bb537-1207-11ed-95b4-6c626d3a5d34', 'hr.recruit.manager@homies.com', '$2b$12$rmySi415W/z0G4zRNjVqF.wYzhWIEA11prHQceMuXMX1lzTWXWMoS', '2022-08-02 10:07:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interviewees`
--

CREATE TABLE `interviewees` (
  `interviewee_id` varchar(36) NOT NULL,
  `applicant_id` varchar(36) NOT NULL,
  `interview_schedule_id` varchar(36) DEFAULT NULL,
  `is_interviewed` tinyint(1) DEFAULT NULL,
  `interviewed_at` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interviewees`
--

INSERT INTO `interviewees` (`interviewee_id`, `applicant_id`, `interview_schedule_id`, `is_interviewed`, `interviewed_at`, `remarks`, `created_at`, `updated_at`) VALUES
('8d14a155-121e-11ed-95b4-6c626d3a5d34', '0cd81e4e-121e-11ed-95b4-6c626d3a5d34', '8d0a1ac6-121e-11ed-95b4-6c626d3a5d34', 1, '2022-08-02 12:53:14', NULL, '2022-08-02 12:49:54', '2022-08-02 12:53:15'),
('8d235de6-121e-11ed-95b4-6c626d3a5d34', '2f2cdc3f-121e-11ed-95b4-6c626d3a5d34', '8d0a1ac6-121e-11ed-95b4-6c626d3a5d34', NULL, NULL, NULL, '2022-08-02 12:49:54', '2022-08-02 12:49:54'),
('8d49aad9-121e-11ed-95b4-6c626d3a5d34', '4a5f7bbf-121e-11ed-95b4-6c626d3a5d34', '8d0a1ac6-121e-11ed-95b4-6c626d3a5d34', NULL, NULL, NULL, '2022-08-02 12:49:54', '2022-08-02 12:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `interview_questions`
--

CREATE TABLE `interview_questions` (
  `interview_question_id` varchar(36) NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `added_by` varchar(36) NOT NULL,
  `updated_by` varchar(36) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interview_questions`
--

INSERT INTO `interview_questions` (`interview_question_id`, `question`, `type`, `added_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('049867fc-121f-11ed-95b4-6c626d3a5d34', 'What are your hobbies?', 'Added', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:53:14', '2022-08-02 12:53:14'),
('cbed3d2d-121e-11ed-95b4-6c626d3a5d34', 'Why should we hire you?', 'General', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:51:39', '2022-08-02 12:51:39'),
('d196af0a-121e-11ed-95b4-6c626d3a5d34', 'What are your strengths?', 'General', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:51:49', '2022-08-02 12:51:49'),
('d72d6e31-121e-11ed-95b4-6c626d3a5d34', 'What are your weaknesses?', 'General', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:51:58', '2022-08-02 12:51:58'),
('e370e5be-121e-11ed-95b4-6c626d3a5d34', 'How do you see yourself after 5 years?', 'General', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:52:19', '2022-08-02 12:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedules`
--

CREATE TABLE `interview_schedules` (
  `interview_schedule_id` varchar(36) NOT NULL,
  `job_post_id` varchar(36) NOT NULL,
  `scheduled_date` date NOT NULL,
  `start_session` time NOT NULL,
  `end_session` time NOT NULL,
  `set_by` varchar(36) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interview_schedules`
--

INSERT INTO `interview_schedules` (`interview_schedule_id`, `job_post_id`, `scheduled_date`, `start_session`, `end_session`, `set_by`, `created_at`, `updated_at`) VALUES
('8d0a1ac6-121e-11ed-95b4-6c626d3a5d34', 'd1be37c2-121d-11ed-95b4-6c626d3a5d34', '2022-08-15', '09:00:00', '13:00:00', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:49:54', '2022-08-02 12:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `interview_scores`
--

CREATE TABLE `interview_scores` (
  `interview_score_id` varchar(36) NOT NULL,
  `interviewee_id` varchar(36) NOT NULL,
  `interview_question_id` varchar(36) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `scored_by` varchar(36) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interview_scores`
--

INSERT INTO `interview_scores` (`interview_score_id`, `interviewee_id`, `interview_question_id`, `score`, `scored_by`, `created_at`, `updated_at`) VALUES
('0497941d-121f-11ed-95b4-6c626d3a5d34', '8d14a155-121e-11ed-95b4-6c626d3a5d34', 'cbed3d2d-121e-11ed-95b4-6c626d3a5d34', 95, '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:53:14', '2022-08-02 12:53:14'),
('0498cd4b-121f-11ed-95b4-6c626d3a5d34', '8d14a155-121e-11ed-95b4-6c626d3a5d34', 'd72d6e31-121e-11ed-95b4-6c626d3a5d34', 92, '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:53:14', '2022-08-02 12:53:14'),
('04991422-121f-11ed-95b4-6c626d3a5d34', '8d14a155-121e-11ed-95b4-6c626d3a5d34', 'd196af0a-121e-11ed-95b4-6c626d3a5d34', 94, '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:53:14', '2022-08-02 12:53:14'),
('0499402a-121f-11ed-95b4-6c626d3a5d34', '8d14a155-121e-11ed-95b4-6c626d3a5d34', 'e370e5be-121e-11ed-95b4-6c626d3a5d34', 96, '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:53:14', '2022-08-02 12:53:14'),
('04d9c3a2-121f-11ed-95b4-6c626d3a5d34', '8d14a155-121e-11ed-95b4-6c626d3a5d34', '049867fc-121f-11ed-95b4-6c626d3a5d34', 97, '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:53:15', '2022-08-02 12:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `job_category_id` varchar(36) NOT NULL,
  `name` varchar(36) NOT NULL,
  `description` text NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `created_by` varchar(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`job_category_id`, `name`, `description`, `is_removed`, `created_by`, `created_at`, `updated_at`) VALUES
('59e2a2c9-121d-11ed-95b4-6c626d3a5d34', 'Information, Communication and Techn', 'Information, Communication and Technology', 0, 'ac5d7ba2-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:41:18', '2022-08-02 12:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `job_post_id` varchar(36) NOT NULL,
  `manpower_request_id` varchar(36) NOT NULL,
  `is_salary_visible` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `job_category_id` varchar(36) NOT NULL,
  `posted_by` varchar(36) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`job_post_id`, `manpower_request_id`, `is_salary_visible`, `content`, `expiration_date`, `job_category_id`, `posted_by`, `views`, `created_at`, `updated_at`) VALUES
('d1be37c2-121d-11ed-95b4-6c626d3a5d34', '40594047-121c-11ed-95b4-6c626d3a5d34', 0, '<div style=\"\"><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b>Job:</b>&nbsp;Data Entry Operator II</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b>Job Code:</b>&nbsp;DH-Data Entry Operator II</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b>SCA</b>&nbsp;<b></b><b>Occup</b>&nbsp;<b>:</b>&nbsp;01050 Data Entry Operator</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b>Salary Grade:</b>&nbsp;Federal Wage Determination or Collective Bargaining Agreement</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b>FLSA Status:</b>&nbsp;Non-Exempt</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b>Approval Date:</b>&nbsp;December 2021</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b><br>SUPERVISES:</b></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">There are no direct reports with this position.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b><br>POSITION SUMMARY:</b></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">Under general supervision, this position operates keyboard-controlled data entry devices such as a computer, key-operated magnetic tape, or disc encoder to transcribe data into a format suitable for computer processing. Job task requires skill in operating an alphanumeric keyboard, and an understanding of transcribing procedures and relevant data entry equipment. This position requires the application of experience and judgment in selecting procedures to be followed, and searching for interpreting, selecting, or coding items to be entered from a variety of document sources.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b><br>TYPICAL DUTIES:</b></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">1. *Apply established procedures in the review and processing of electronically stored data.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">2. *Verify data that is automatically populated in the system of record by cross referencing with other data systems and sources to ensure accuracy and completeness.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">3. *Enter any missing data and correct data as necessary for critical data fields based on electronic images data sources.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">4. *Locate available cases in the system of record for First In/First Out (FIFO) processing.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">5. *Review electronic forms and key in data, as required.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">6. *Validate biometrics (fingerprints) and photographs meet production standards and adjust as necessary.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">7. *Process applications and/or data within timelines defined by contract requirements.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">8. *Respond to internal and external customers by phone, email and in person.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">9. Other duties and special projects as assigned.</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><ul style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px; line-height: 1.43; color: rgb(45, 45, 45);\"><li><br><b></b>Denotes<b>&nbsp;</b>Essential Job Function</li></ul><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b><br>MINIMUM QUALIFICATIONS:</b></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">•Two (2) years relevant experience in data entry or clerical field</div><ul style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px; line-height: 1.43; color: rgb(45, 45, 45);\"><li>Computer literacy to use business software, internet, and enter/retrieve data</li><li>Effective customer service skills to respond to questions and requests and escalate more difficult matters appropriately</li><li>Human relations skills to maintain effective relationships with others and work in a team environment</li><li>Effective written and verbal communication skills using appropriate business English</li><li>Ability to obtain and maintain customer or government security clearance</li></ul><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b><br>EDUCATION REQUIREMENTS:</b></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">High School Diploma or GED</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b><br>CERTIFICATES REQUIRED:</b></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">The following licenses or certificates may be required depending on local, state and/or contract requirements:</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><br>Not Applicable</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b><br>PHYSICAL REQUIREMENTS:</b></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b></b>Employees must have the ability to perform the following physical demands for extended periods of time with or without assistance:</div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><br></div><ul style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px; line-height: 1.43; color: rgb(45, 45, 45);\"><li>Utilizing keyboard</li><li>Monitoring computer systems</li><li>Viewing computer monitors and detailed work requiring close vision</li><li>Moving or lifting boxes up to 25 pounds</li><li>Answering/making phone calls</li></ul><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\"><b><br>WORK ENVIRONMENT:</b></div><div style=\"font-family: &quot;Noto Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(45, 45, 45); font-size: 13.3333px;\">Work is primarily performed at a customer’s location in an office/shop environment with limited privacy and some exposure to background noise. Transporting to locations within the worksite may be required. Employees may also be exposed to extreme cold or heat.</div></div>', NULL, '59e2a2c9-121d-11ed-95b4-6c626d3a5d34', 'ac5d7ba2-1208-11ed-95b4-6c626d3a5d34', 1, '2022-08-02 12:44:40', '2022-08-02 12:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `manpower_requests`
--

CREATE TABLE `manpower_requests` (
  `manpower_request_id` varchar(36) NOT NULL,
  `requisition_no` varchar(255) NOT NULL,
  `requested_by` varchar(36) NOT NULL,
  `position_id` varchar(36) NOT NULL,
  `employment_type_id` varchar(255) NOT NULL,
  `request_nature` varchar(255) NOT NULL,
  `staffs_needed` int(11) NOT NULL,
  `min_monthly_salary` float DEFAULT NULL,
  `max_monthly_salary` float DEFAULT NULL,
  `content` text NOT NULL,
  `request_status` varchar(255) NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `signed_by` varchar(36) DEFAULT NULL,
  `signed_at` datetime DEFAULT NULL,
  `reviewed_by` varchar(36) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `rejected_by` varchar(36) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manpower_requests`
--

INSERT INTO `manpower_requests` (`manpower_request_id`, `requisition_no`, `requested_by`, `position_id`, `employment_type_id`, `request_nature`, `staffs_needed`, `min_monthly_salary`, `max_monthly_salary`, `content`, `request_status`, `deadline`, `signed_by`, `signed_at`, `reviewed_by`, `reviewed_at`, `completed_at`, `rejected_by`, `rejected_at`, `remarks`, `created_at`, `updated_at`) VALUES
('40594047-121c-11ed-95b4-6c626d3a5d34', 'REQ-L6BOPJYL-CDJO38', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', 'c2bdef11-1204-11ed-95b4-6c626d3a5d34', 'b79d247b-1205-11ed-95b4-6c626d3a5d34', 'New/Addition', 3, NULL, NULL, '<p>THIS IS A TEST DESCRIPTION</p>', 'Approved', NULL, 'c5f7fd5b-1207-11ed-95b4-6c626d3a5d34', '2022-08-02 12:37:04', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '2022-08-02 12:38:36', NULL, NULL, NULL, NULL, '2022-08-02 12:33:26', '2022-08-02 12:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `onboarding_employee_task`
--

CREATE TABLE `onboarding_employee_task` (
  `onboarding_employee_task_id` varchar(36) NOT NULL,
  `onboarding_employee_id` varchar(36) NOT NULL,
  `onboarding_task_id` varchar(36) NOT NULL,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `assigned_by` varchar(36) NOT NULL,
  `status` varchar(255) NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `completed_by` varchar(36) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `onboarding_tasks`
--

CREATE TABLE `onboarding_tasks` (
  `onboarding_task_id` varchar(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `task_type` varchar(255) NOT NULL,
  `is_general` tinyint(1) NOT NULL,
  `sub_department_id` varchar(36) NOT NULL,
  `added_by` varchar(36) NOT NULL,
  `updated_by` varchar(36) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `onboarding_tasks`
--

INSERT INTO `onboarding_tasks` (`onboarding_task_id`, `title`, `description`, `task_type`, `is_general`, `sub_department_id`, `added_by`, `updated_by`, `is_deleted`, `created_at`, `updated_at`) VALUES
('4805e313-123e-11ed-95b4-6c626d3a5d34', 'Fill up contracts and forms', 'Fill up contracts and forms', 'For new employees', 1, '6cb0ac37-1201-11ed-95b4-6c626d3a5d34', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', 0, '2022-08-02 16:37:02', '2022-08-02 16:37:02'),
('5483a294-123e-11ed-95b4-6c626d3a5d34', 'Meet and greet the new employee', 'Meet and greet the new employee', 'For the team', 1, '6cb0ac37-1201-11ed-95b4-6c626d3a5d34', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', 0, '2022-08-02 16:37:23', '2022-08-02 16:37:23'),
('6291b260-123e-11ed-95b4-6c626d3a5d34', 'Check requirements', 'Check requirements', 'For department manager', 1, '6cb0ac37-1201-11ed-95b4-6c626d3a5d34', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', 0, '2022-08-02 16:37:46', '2022-08-02 16:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `position_id` varchar(36) NOT NULL,
  `sub_department_id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`position_id`, `sub_department_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
('3bebaa8d-1205-11ed-95b4-6c626d3a5d34', 'fca19706-1204-11ed-95b4-6c626d3a5d34', 'Department Head', 'Department Head', '2022-08-02 09:48:40', '2022-08-02 09:48:40'),
('3bf17084-1205-11ed-95b4-6c626d3a5d34', '6cba4e93-1201-11ed-95b4-6c626d3a5d34', 'Department Manager', 'Department Manager', '2022-08-02 09:48:40', '2022-08-02 09:48:40'),
('3bfaac6b-1205-11ed-95b4-6c626d3a5d34', '6cba4e93-1201-11ed-95b4-6c626d3a5d34', 'Critical Nurse (ICU)', 'Critical Nurse (ICU)', '2022-08-02 09:48:40', '2022-08-02 09:48:40'),
('3c048df5-1205-11ed-95b4-6c626d3a5d34', '6cba4e93-1201-11ed-95b4-6c626d3a5d34', 'Physician', 'Physician', '2022-08-02 09:48:40', '2022-08-02 09:48:40'),
('c285de94-1204-11ed-95b4-6c626d3a5d34', '6ca89cf8-1201-11ed-95b4-6c626d3a5d34', 'Department Head', 'Department Head', '2022-08-02 09:45:17', '2022-08-02 09:45:17'),
('c2932d68-1204-11ed-95b4-6c626d3a5d34', '6cb0ac37-1201-11ed-95b4-6c626d3a5d34', 'Department Manager', 'Department Manager', '2022-08-02 09:45:17', '2022-08-02 09:45:17'),
('c29f34c5-1204-11ed-95b4-6c626d3a5d34', '6cb0ac37-1201-11ed-95b4-6c626d3a5d34', 'Hiring Manager', 'Hiring Manager', '2022-08-02 09:45:17', '2022-08-02 09:45:17'),
('c2bbe189-1204-11ed-95b4-6c626d3a5d34', '6cb0ac37-1201-11ed-95b4-6c626d3a5d34', 'Talent Recruiter', 'Talent Recruiter', '2022-08-02 09:45:17', '2022-08-02 09:45:17'),
('c2bdef11-1204-11ed-95b4-6c626d3a5d34', '6cb0ac37-1201-11ed-95b4-6c626d3a5d34', 'Data Encoder', 'Data Encoder', '2022-08-02 09:45:17', '2022-08-02 09:45:17'),
('c2c59c9c-1204-11ed-95b4-6c626d3a5d34', '6cb0ac37-1201-11ed-95b4-6c626d3a5d34', 'Data Encoder II', 'Data Encoder II', '2022-08-02 09:45:17', '2022-08-02 09:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `public_profiles`
--

CREATE TABLE `public_profiles` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix_name` varchar(255) DEFAULT NULL,
  `birth_date` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `house_street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `full_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `public_users`
--

CREATE TABLE `public_users` (
  `id` varchar(36) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_blacklist` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recruitment_notifications`
--

CREATE TABLE `recruitment_notifications` (
  `notification_id` varchar(36) NOT NULL,
  `employee_id` varchar(36) NOT NULL,
  `notification_type` varchar(255) NOT NULL,
  `notification_subtype` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `author_id` varchar(36) DEFAULT NULL,
  `reference_id` varchar(36) DEFAULT NULL,
  `is_unread` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruitment_notifications`
--

INSERT INTO `recruitment_notifications` (`notification_id`, `employee_id`, `notification_type`, `notification_subtype`, `link`, `author_id`, `reference_id`, `is_unread`, `is_removed`, `created_at`) VALUES
('40859f2f-121c-11ed-95b4-6c626d3a5d34', 'c5f7fd5b-1207-11ed-95b4-6c626d3a5d34', 'Manpower Request', 'Request for Manpower', 'manpower-requests/40594047-121c-11ed-95b4-6c626d3a5d34', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', '40594047-121c-11ed-95b4-6c626d3a5d34', 1, 0, '2022-08-02 12:33:26'),
('c21c289b-121c-11ed-95b4-6c626d3a5d34', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', 'Manpower Request', 'Signed Request', 'manpower-requests/40594047-121c-11ed-95b4-6c626d3a5d34', 'c5f7fd5b-1207-11ed-95b4-6c626d3a5d34', '40594047-121c-11ed-95b4-6c626d3a5d34', 1, 0, '2022-08-02 12:37:04'),
('c21c5353-121c-11ed-95b4-6c626d3a5d34', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', 'Manpower Request', 'Signed Request', 'manpower-requests/40594047-121c-11ed-95b4-6c626d3a5d34', 'c5f7fd5b-1207-11ed-95b4-6c626d3a5d34', '40594047-121c-11ed-95b4-6c626d3a5d34', 1, 0, '2022-08-02 12:37:04'),
('f92a3e8d-121c-11ed-95b4-6c626d3a5d34', 'ac5d7ba2-1208-11ed-95b4-6c626d3a5d34', 'Manpower Request', 'Approved Request', 'manpower-requests/40594047-121c-11ed-95b4-6c626d3a5d34', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '40594047-121c-11ed-95b4-6c626d3a5d34', 1, 0, '2022-08-02 12:38:36'),
('f92a659c-121c-11ed-95b4-6c626d3a5d34', '1a4a927a-1208-11ed-95b4-6c626d3a5d34', 'Manpower Request', 'Approved Request', 'manpower-requests/40594047-121c-11ed-95b4-6c626d3a5d34', '792fb7d7-1208-11ed-95b4-6c626d3a5d34', '40594047-121c-11ed-95b4-6c626d3a5d34', 1, 0, '2022-08-02 12:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `resume_id` varchar(36) NOT NULL,
  `applicant_id` varchar(36) NOT NULL,
  `summary` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_awards`
--

CREATE TABLE `resume_awards` (
  `award_id` varchar(36) NOT NULL,
  `resume_id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `issuer` varchar(255) DEFAULT NULL,
  `issue_month` int(11) DEFAULT NULL,
  `issue_year` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_certifications`
--

CREATE TABLE `resume_certifications` (
  `certification_id` varchar(36) NOT NULL,
  `resume_id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `credential_id` varchar(255) DEFAULT NULL,
  `issue_month` int(11) DEFAULT NULL,
  `issue_year` int(11) DEFAULT NULL,
  `experience_month` int(11) DEFAULT NULL,
  `experience_year` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_education`
--

CREATE TABLE `resume_education` (
  `education_id` varchar(36) NOT NULL,
  `resume_id` varchar(36) NOT NULL,
  `school` varchar(255) NOT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `study_field` varchar(255) DEFAULT NULL,
  `start_year` int(11) DEFAULT NULL,
  `end_year` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_experiences`
--

CREATE TABLE `resume_experiences` (
  `experience_id` varchar(36) NOT NULL,
  `resume_id` varchar(36) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `start_month` int(11) DEFAULT NULL,
  `start_year` int(11) NOT NULL,
  `end_month` int(11) DEFAULT NULL,
  `end_year` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_skills`
--

CREATE TABLE `resume_skills` (
  `skill_id` varchar(36) NOT NULL,
  `resume_id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` varchar(36) NOT NULL,
  `subsystem` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `redirect_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `subsystem`, `name`, `redirect_url`) VALUES
('938a0de7-1206-11ed-95b4-6c626d3a5d34', 'Recruitment', 'Department Head', '/rms'),
('939a6406-1206-11ed-95b4-6c626d3a5d34', 'Recruitment', 'Department Manager', '/rms'),
('93a330b5-1206-11ed-95b4-6c626d3a5d34', 'Recruitment', 'Hiring Manager', '/rms'),
('93b3c9ad-1206-11ed-95b4-6c626d3a5d34', 'Recruitment', 'Talent Recruiter', '/rms');

-- --------------------------------------------------------

--
-- Table structure for table `sub_departments`
--

CREATE TABLE `sub_departments` (
  `sub_department_id` varchar(36) NOT NULL,
  `department_id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_departments`
--

INSERT INTO `sub_departments` (`sub_department_id`, `department_id`, `name`, `description`, `location`, `created_at`, `updated_at`) VALUES
('6ca89cf8-1201-11ed-95b4-6c626d3a5d34', '58c9f044-1200-11ed-95b4-6c626d3a5d34', 'Human Resource (HR) Department', 'Human Resource (HR) Department', 'North Fairview, Quezon City', '2022-08-02 09:21:24', '2022-08-02 09:21:24'),
('6cb0ac37-1201-11ed-95b4-6c626d3a5d34', '58c9f044-1200-11ed-95b4-6c626d3a5d34', 'Recruitment Department', 'Recruitment Department', 'North Fairview, Quezon City', '2022-08-02 09:21:24', '2022-08-02 09:21:24'),
('6cba4e93-1201-11ed-95b4-6c626d3a5d34', '58dcf294-1200-11ed-95b4-6c626d3a5d34', 'Intensive Care Unit (ICU) Department', 'Intensive Care Unit (ICU) Department', 'North Fairview, Quezon City', '2022-08-02 09:21:24', '2022-08-02 09:21:24'),
('6cde9348-1201-11ed-95b4-6c626d3a5d34', '58dcf294-1200-11ed-95b4-6c626d3a5d34', 'Out-Patient (OPD) Department', 'Out-Patient (OPD) Department', 'North Fairview, Quezon City', '2022-08-02 09:21:24', '2022-08-02 09:21:24'),
('fca19706-1204-11ed-95b4-6c626d3a5d34', '58dcf294-1200-11ed-95b4-6c626d3a5d34', 'Medical Department', 'Medical Department', 'North Fairview, Quezon City', '2022-08-02 09:46:54', '2022-08-02 09:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`) VALUES
('ec43072c-120c-11ed-95b4-6c626d3a5d34', '88c52ed5-1207-11ed-95b4-6c626d3a5d34', '938a0de7-1206-11ed-95b4-6c626d3a5d34'),
('ec4bad1d-120c-11ed-95b4-6c626d3a5d34', 'e23bb537-1207-11ed-95b4-6c626d3a5d34', '939a6406-1206-11ed-95b4-6c626d3a5d34'),
('ec5a702e-120c-11ed-95b4-6c626d3a5d34', '2e0d965d-1208-11ed-95b4-6c626d3a5d34', '93a330b5-1206-11ed-95b4-6c626d3a5d34'),
('ec8a21a3-120c-11ed-95b4-6c626d3a5d34', '9b02e86a-1208-11ed-95b4-6c626d3a5d34', '93b3c9ad-1206-11ed-95b4-6c626d3a5d34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`applicant_id`),
  ADD UNIQUE KEY `resume` (`resume`),
  ADD KEY `job_post_id` (`job_post_id`),
  ADD KEY `evaluated_by` (`evaluated_by`),
  ADD KEY `screened_by` (`screened_by`),
  ADD KEY `hired_by` (`hired_by`),
  ADD KEY `rejected_by` (`rejected_by`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `employment_contract` (`employment_contract`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `signed_by` (`signed_by`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `employment_type_id` (`employment_type_id`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `employment_types`
--
ALTER TABLE `employment_types`
  ADD PRIMARY KEY (`employment_type_id`);

--
-- Indexes for table `internal_users`
--
ALTER TABLE `internal_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interviewees`
--
ALTER TABLE `interviewees`
  ADD PRIMARY KEY (`interviewee_id`),
  ADD KEY `applicant_id` (`applicant_id`),
  ADD KEY `interview_schedule_id` (`interview_schedule_id`);

--
-- Indexes for table `interview_questions`
--
ALTER TABLE `interview_questions`
  ADD PRIMARY KEY (`interview_question_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD PRIMARY KEY (`interview_schedule_id`),
  ADD KEY `job_post_id` (`job_post_id`),
  ADD KEY `set_by` (`set_by`);

--
-- Indexes for table `interview_scores`
--
ALTER TABLE `interview_scores`
  ADD PRIMARY KEY (`interview_score_id`),
  ADD KEY `interviewee_id` (`interviewee_id`),
  ADD KEY `interview_question_id` (`interview_question_id`),
  ADD KEY `scored_by` (`scored_by`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`job_category_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`job_post_id`),
  ADD KEY `manpower_request_id` (`manpower_request_id`),
  ADD KEY `job_category_id` (`job_category_id`),
  ADD KEY `posted_by` (`posted_by`);

--
-- Indexes for table `manpower_requests`
--
ALTER TABLE `manpower_requests`
  ADD PRIMARY KEY (`manpower_request_id`),
  ADD UNIQUE KEY `requisition_no` (`requisition_no`),
  ADD KEY `requested_by` (`requested_by`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `employment_type_id` (`employment_type_id`),
  ADD KEY `signed_by` (`signed_by`),
  ADD KEY `reviewed_by` (`reviewed_by`),
  ADD KEY `rejected_by` (`rejected_by`);

--
-- Indexes for table `onboarding_employee_task`
--
ALTER TABLE `onboarding_employee_task`
  ADD PRIMARY KEY (`onboarding_employee_task_id`),
  ADD KEY `onboarding_employee_id` (`onboarding_employee_id`),
  ADD KEY `onboarding_task_id` (`onboarding_task_id`),
  ADD KEY `assigned_by` (`assigned_by`),
  ADD KEY `completed_by` (`completed_by`);

--
-- Indexes for table `onboarding_tasks`
--
ALTER TABLE `onboarding_tasks`
  ADD PRIMARY KEY (`onboarding_task_id`),
  ADD KEY `sub_department_id` (`sub_department_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`),
  ADD KEY `sub_department_id` (`sub_department_id`);

--
-- Indexes for table `public_profiles`
--
ALTER TABLE `public_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `public_users`
--
ALTER TABLE `public_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment_notifications`
--
ALTER TABLE `recruitment_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`resume_id`),
  ADD KEY `applicant_id` (`applicant_id`);

--
-- Indexes for table `resume_awards`
--
ALTER TABLE `resume_awards`
  ADD PRIMARY KEY (`award_id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `resume_certifications`
--
ALTER TABLE `resume_certifications`
  ADD PRIMARY KEY (`certification_id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `resume_education`
--
ALTER TABLE `resume_education`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `resume_experiences`
--
ALTER TABLE `resume_experiences`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `resume_skills`
--
ALTER TABLE `resume_skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_departments`
--
ALTER TABLE `sub_departments`
  ADD PRIMARY KEY (`sub_department_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_ibfk_1` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`job_post_id`),
  ADD CONSTRAINT `applicants_ibfk_2` FOREIGN KEY (`evaluated_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `applicants_ibfk_3` FOREIGN KEY (`screened_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `applicants_ibfk_4` FOREIGN KEY (`hired_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `applicants_ibfk_5` FOREIGN KEY (`rejected_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `internal_users` (`id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`signed_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`),
  ADD CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`employment_type_id`) REFERENCES `employment_types` (`employment_type_id`),
  ADD CONSTRAINT `employees_ibfk_5` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `interviewees`
--
ALTER TABLE `interviewees`
  ADD CONSTRAINT `interviewees_ibfk_1` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`applicant_id`),
  ADD CONSTRAINT `interviewees_ibfk_2` FOREIGN KEY (`interview_schedule_id`) REFERENCES `interview_schedules` (`interview_schedule_id`);

--
-- Constraints for table `interview_questions`
--
ALTER TABLE `interview_questions`
  ADD CONSTRAINT `interview_questions_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `interview_questions_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD CONSTRAINT `interview_schedules_ibfk_1` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`job_post_id`),
  ADD CONSTRAINT `interview_schedules_ibfk_2` FOREIGN KEY (`set_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `interview_scores`
--
ALTER TABLE `interview_scores`
  ADD CONSTRAINT `interview_scores_ibfk_1` FOREIGN KEY (`interviewee_id`) REFERENCES `interviewees` (`interviewee_id`),
  ADD CONSTRAINT `interview_scores_ibfk_2` FOREIGN KEY (`interview_question_id`) REFERENCES `interview_questions` (`interview_question_id`),
  ADD CONSTRAINT `interview_scores_ibfk_3` FOREIGN KEY (`scored_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD CONSTRAINT `job_categories_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD CONSTRAINT `job_posts_ibfk_1` FOREIGN KEY (`manpower_request_id`) REFERENCES `manpower_requests` (`manpower_request_id`),
  ADD CONSTRAINT `job_posts_ibfk_2` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`job_category_id`),
  ADD CONSTRAINT `job_posts_ibfk_3` FOREIGN KEY (`posted_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `manpower_requests`
--
ALTER TABLE `manpower_requests`
  ADD CONSTRAINT `manpower_requests_ibfk_1` FOREIGN KEY (`requested_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `manpower_requests_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`),
  ADD CONSTRAINT `manpower_requests_ibfk_3` FOREIGN KEY (`employment_type_id`) REFERENCES `employment_types` (`employment_type_id`),
  ADD CONSTRAINT `manpower_requests_ibfk_4` FOREIGN KEY (`signed_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `manpower_requests_ibfk_5` FOREIGN KEY (`reviewed_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `manpower_requests_ibfk_6` FOREIGN KEY (`rejected_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `onboarding_employee_task`
--
ALTER TABLE `onboarding_employee_task`
  ADD CONSTRAINT `onboarding_employee_task_ibfk_1` FOREIGN KEY (`onboarding_employee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `onboarding_employee_task_ibfk_2` FOREIGN KEY (`onboarding_task_id`) REFERENCES `onboarding_tasks` (`onboarding_task_id`),
  ADD CONSTRAINT `onboarding_employee_task_ibfk_3` FOREIGN KEY (`assigned_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `onboarding_employee_task_ibfk_4` FOREIGN KEY (`completed_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `onboarding_tasks`
--
ALTER TABLE `onboarding_tasks`
  ADD CONSTRAINT `onboarding_tasks_ibfk_1` FOREIGN KEY (`sub_department_id`) REFERENCES `sub_departments` (`sub_department_id`),
  ADD CONSTRAINT `onboarding_tasks_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `onboarding_tasks_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`sub_department_id`) REFERENCES `sub_departments` (`sub_department_id`);

--
-- Constraints for table `public_profiles`
--
ALTER TABLE `public_profiles`
  ADD CONSTRAINT `public_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `public_users` (`id`);

--
-- Constraints for table `recruitment_notifications`
--
ALTER TABLE `recruitment_notifications`
  ADD CONSTRAINT `recruitment_notifications_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `recruitment_notifications_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `resumes`
--
ALTER TABLE `resumes`
  ADD CONSTRAINT `resumes_ibfk_1` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`applicant_id`);

--
-- Constraints for table `resume_awards`
--
ALTER TABLE `resume_awards`
  ADD CONSTRAINT `resume_awards_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`resume_id`);

--
-- Constraints for table `resume_certifications`
--
ALTER TABLE `resume_certifications`
  ADD CONSTRAINT `resume_certifications_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`resume_id`);

--
-- Constraints for table `resume_education`
--
ALTER TABLE `resume_education`
  ADD CONSTRAINT `resume_education_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`resume_id`);

--
-- Constraints for table `resume_experiences`
--
ALTER TABLE `resume_experiences`
  ADD CONSTRAINT `resume_experiences_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`resume_id`);

--
-- Constraints for table `resume_skills`
--
ALTER TABLE `resume_skills`
  ADD CONSTRAINT `resume_skills_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`resume_id`);

--
-- Constraints for table `sub_departments`
--
ALTER TABLE `sub_departments`
  ADD CONSTRAINT `sub_departments_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `internal_users` (`id`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
