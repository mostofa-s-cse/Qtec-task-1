-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2023 at 08:59 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evatechinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` longtext COLLATE utf8mb4_unicode_ci,
  `experience_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image`, `mission`, `vision`, `experience`, `experience_image`, `created_at`, `updated_at`) VALUES
(1, '<p>About The Company</p>', '<p>Eva Technology was established in 2021 by a team of young expert software professionals. Eva Technology is the fastest growing IT company in Bangladesh. Consistently delivering mission, our team has been delivering technically challenging projects under tight timelines, while also providing exceptional customer service and support to our clientele. This in turn has led to extremely positive long-term working relationships all over. Our detailed project process was created to ensure our projects are completed on-time, in-budget, and to the client&rsquo;s complete satisfaction. Eva Technology is a customized software service firm located in Dhaka, Bangladesh. We have extensive experience in many diverse areas of software development. Our experienced staff of professionals has worked with a wide array of platforms, languages, and tools in the course of our various projects.</p>', 'uploads-image/about-image/1700029496.jpg', '<p><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">Provide cost-effective high quality innovative solution &amp; services, powered by state of the art technologies, anchored on our basic principles of:</span></p>\r\n<p style=\"text-align: left;\"><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&gt;&gt; </span><span style=\"color: #212529; font-family: Poppins, sans-serif;\"><span style=\"font-size: 18px;\">Explore</span></span></p>\r\n<p style=\"text-align: left;\"><span style=\"color: #212529; font-family: Poppins, sans-serif;\"><span style=\"font-size: 18px;\">&gt;&gt; Innovate</span></span></p>\r\n<p style=\"text-align: left;\"><span style=\"color: #212529; font-family: Poppins, sans-serif;\"><span style=\"font-size: 18px;\">&gt;&gt; Improve</span></span></p>', '<p><span style=\"box-sizing: border-box; font-weight: bolder; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86); color: #f60186;\">Eva Technology</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;respects and seeks to maintain the highest standards of fairness, equality, integrity, and honesty. Our corporate philosophy is:</span></p>\r\n<ul class=\"pt-2\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86); padding-top: 0.5rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Total customer satisfaction, continuous improvement and total involvement.</li>\r\n<li style=\"box-sizing: border-box;\">Constantly and consistently deliver products and services of highest quality.</li>\r\n<li style=\"box-sizing: border-box;\">Keep pace with change and continuously strive for innovation while keeping in step with modern technology and methodology.</li>\r\n<li style=\"box-sizing: border-box;\">Our core value centers on total customer satisfaction and quest towards ensuring good corporate citizenship</li>\r\n</ul>', '<p><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">Dynamic...As a custom software development firm,</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86); color: #f60186;\">Eva Technology</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;has amassed an impressive resume of projects. It&rsquo;s the custom nature of our development projects that has enabled</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86); color: #f60186;\">Eva Technology</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;to acquire vast experience in many diverse areas of software development. Our experience, in conjunction with our quality personnel, enables</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86); color: #f60186;\">Eva Technology</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;to be dynamic enough to tackle almost any software development project.</span><br style=\"box-sizing: border-box; color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\" /><br style=\"box-sizing: border-box; color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\" /><span style=\"box-sizing: border-box; font-weight: bolder; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86); color: #f60186;\">Eva Technology</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;has a proud history of utilizing experience to provide their clients with the best services possible. This difficult task is accomplished by applying experienced personnel to every project.&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86); color: #f60186;\">Eva Technology</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;was founded on the principle of gathering an elite group of software engineers and professionals, and leveraging their collective abilities. Naturally, each of these \"producers\" bring their own particular specialization and experience to the table. Once they join the&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86); color: #f60186;\">Eva Technology</span><span style=\"color: #212529; font-family: Poppins, sans-serif; font-size: 18px; background-color: rgba(255, 255, 255, 0.86);\">&nbsp;team, we cross-train our consultants to diversify and increase their overall skills</span></p>', 'uploads-image/about-image/1700029496.png', '2023-11-15 00:24:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `title`, `number`, `created_at`, `updated_at`) VALUES
(1, 'Years Of Experience', '4', '2023-11-15 00:08:27', NULL),
(2, 'Consultants', '30', '2023-11-15 00:08:58', NULL),
(3, 'Projects', '6', '2023-11-15 00:09:41', NULL),
(4, 'Employers', '5', '2023-11-15 00:10:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads-image/customers/1700555818.png', '1', '2023-11-15 03:26:59', NULL),
(2, 'uploads-image/customers/1700555792.png', '1', '2023-11-15 03:27:16', NULL),
(3, 'uploads-image/customers/1700555774.png', '1', '2023-11-15 03:27:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hires`
--

CREATE TABLE `hires` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hires`
--

INSERT INTO `hires` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Long Experience', 'uploads-image/hires/1700554613.png', '1', '2023-11-15 00:31:49', NULL),
(2, 'Focus On Results', 'uploads-image/hires/1700554600.png', '1', '2023-11-15 00:32:29', NULL),
(3, 'Run Technical Audit', 'uploads-image/hires/1700554586.png', '1', '2023-11-15 00:33:01', NULL),
(4, 'Fast Delivery', 'uploads-image/hires/1700554574.png', '1', '2023-11-15 00:33:25', NULL),
(5, 'Satisfied Guarantee', 'uploads-image/hires/1700554561.png', '1', '2023-11-15 00:33:47', NULL),
(6, 'Quick Support', 'uploads-image/hires/1700554548.png', '1', '2023-11-15 00:34:07', NULL),
(7, 'Highly Professional', 'uploads-image/hires/1700554536.png', '1', '2023-11-15 00:34:32', NULL),
(8, 'Excellent UI-UX', 'uploads-image/hires/1700554523.png', '1', '2023-11-15 00:34:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_24_131715_create_social_links_table', 1),
(7, '2023_10_30_063306_create_abouts_table', 1),
(8, '2023_10_30_063314_create_hires_table', 1),
(9, '2023_10_30_063322_create_customers_table', 1),
(10, '2023_10_30_063338_create_reviews_table', 1),
(11, '2023_10_30_063348_create_contacts_table', 1),
(12, '2023_10_30_063356_create_provides_table', 1),
(13, '2023_10_30_063406_create_projects_table', 1),
(14, '2023_10_30_063414_create_sliders_table', 1),
(15, '2023_11_07_081914_create_counters_table', 1),
(16, '2023_11_07_081914_create_site_infos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Domument Management System', '<p>A document management system (DMS) is a system used to receive, track, manage and store documents and reduce paper. Most are capable of keeping a record of the various versions created and modified by different users (history tracking). In the case of the management of digital documents such systems are based on computer programs. The term has some overlap with the concepts of content management systems. It is often viewed as a component of enterprise content management (ECM) systems and related to digital asset management, document imaging, workflow systems and records management systems.</p>\r\n<h4 class=\"text-center\" style=\"color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #ffffff; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Features</h4>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Document storage</li>\r\n<li style=\"box-sizing: border-box;\">Keyword search</li>\r\n<li style=\"box-sizing: border-box;\">Permissioned access to certain documents</li>\r\n<li style=\"box-sizing: border-box;\">Document access monitoring tools</li>\r\n<li style=\"box-sizing: border-box;\">Document edit history and restoration</li>\r\n<li style=\"box-sizing: border-box;\">Auto-delete on outdated documents</li>\r\n<li style=\"box-sizing: border-box;\">Mobile device access</li>\r\n<li style=\"box-sizing: border-box;\">Simple file structure</li>\r\n<li style=\"box-sizing: border-box;\">Searching</li>\r\n</ul>\r\n<h4 class=\"text-center\" style=\"font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Benefits</h4>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Saved time</li>\r\n<li style=\"box-sizing: border-box;\">Security</li>\r\n<li style=\"box-sizing: border-box;\">Scaling</li>\r\n<li style=\"box-sizing: border-box;\">Easy document management</li>\r\n<li style=\"box-sizing: border-box;\">Collaboration</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; color: #212529; background-color: #ffffff;\">&nbsp;</div>', 'uploads-image/projects/1700030286.png', '1', '2023-11-15 00:38:06', NULL),
(2, 'Laboratory Management System', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">The growth of your diagnostic or Laboratory center can be raised real quickly as our Laboratory/diagnostic management software assists you reach your full potential in every aspect including human capital, investment tracing, and productivity accountability, digital image, and most importantly increased customer satisfaction. Laboratory/Diagnostic management software is completely automated to suit every sector of the medical industry. The analytics of every action taken is completely transparent hence providing better reports on what steps reap more profit. It provides real-time visibility of every operational step. By adopting the digital method of management you reduce expenditure, faster operating, reduction in unnecessary time-consuming tasks which means more time from the productive ones.</span></p>\r\n<h4 class=\"text-center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Features</h4>\r\n<p>&nbsp;</p>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Automated web-based solution</li>\r\n<li style=\"box-sizing: border-box;\">Keep in sync every function &amp; facility</li>\r\n<li style=\"box-sizing: border-box;\">Manages appointment and home collection</li>\r\n<li style=\"box-sizing: border-box;\">Multi-user and multi-branch engineering</li>\r\n<li style=\"box-sizing: border-box;\">Interfaced with diagnostic machines</li>\r\n<li style=\"box-sizing: border-box;\">Assesses and analyze referring doctor&rsquo;s reports</li>\r\n<li style=\"box-sizing: border-box;\">The reports are downloadable</li>\r\n<li style=\"box-sizing: border-box;\">Automated communication</li>\r\n<li style=\"box-sizing: border-box;\">Generate comparative patient reports</li>\r\n</ul>\r\n<h4 class=\"text-center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Benefits</h4>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Quicker functioning on every step</li>\r\n<li style=\"box-sizing: border-box;\">Better &amp; faster results as it rectifies any potential errors</li>\r\n<li style=\"box-sizing: border-box;\">High ROI and lower expense in the long run</li>\r\n<li style=\"box-sizing: border-box;\">Improves the diagnosing efficiency</li>\r\n<li style=\"box-sizing: border-box;\">Downloadable reports anytime anywhere</li>\r\n<li style=\"box-sizing: border-box;\">Reduces manual work</li>\r\n<li style=\"box-sizing: border-box;\">Increase in Revenue</li>\r\n<li style=\"box-sizing: border-box;\">Enhance the brand image</li>\r\n<li style=\"box-sizing: border-box;\">Increase customer return rate</li>\r\n</ul>\r\n</div>\r\n</div>', 'uploads-image/projects/1700031895.jpg', '1', '2023-11-15 01:04:55', NULL),
(3, 'Hospital Management System', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">As long as each stage implementation needs to be accurate and explicit, the clinic management system provides certain automation of many vital daily processes. The hospital system software covers the services that unify and simplify the work of healthcare professionals as well as their interactions with patients.</span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">There is always the wide choice of features that can be included in the system. Moreover, the most important thing they are created to streamline various procedures that meet the needs of all the users. The hospital management system feature list is concentrated on providing the smooth experience of patients, staff and hospital authorities. It might seem that their expectations differ, they still are covered by components of the hospital information system. Quality and security still remain the main criteria of the medical industry. It is also known for the constant and rapid changes to improve the efficiency of medical services and satisfaction of the patients.</span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Hospital management has greatly changed over the last decades. Business expertise, modern technologies, connected devices, mobile apps, and knowledge of healthcare are key elements for the implementation of hospital management system project. The number of healthcare providers has increased and the patients have a wide choice of medical specialists. The interactions between the hospital and the patient can be simplified for the convenience of both sides. Each institution has the opportunity to create the efficient, clear and fast delivering healthcare model.</span></p>\r\n<h4 class=\"text-center\" style=\"color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #ffffff; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Features</h4>\r\n<p>&nbsp;</p>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Patient management</li>\r\n<li style=\"box-sizing: border-box;\">Appointment module in hospital management</li>\r\n<li style=\"box-sizing: border-box;\">Facility management</li>\r\n<li style=\"box-sizing: border-box;\">Inventory management</li>\r\n<li style=\"box-sizing: border-box;\">Staff Management</li>\r\n<li style=\"box-sizing: border-box;\">Accounting</li>\r\n<li style=\"box-sizing: border-box;\">Medicine management</li>\r\n<li style=\"box-sizing: border-box;\">Reporting</li>\r\n<li style=\"box-sizing: border-box;\">Laboratory and tests management</li>\r\n<li style=\"box-sizing: border-box;\">Helpdesk &amp; support</li>\r\n</ul>\r\n<h4 class=\"text-center\" style=\"font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Benefits</h4>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Improved Processes</li>\r\n<li style=\"box-sizing: border-box;\">Digital medical records</li>\r\n<li style=\"box-sizing: border-box;\">Staff interaction</li>\r\n<li style=\"box-sizing: border-box;\">Facility management</li>\r\n<li style=\"box-sizing: border-box;\">Financial control and tax planning</li>\r\n<li style=\"box-sizing: border-box;\">Market strategy</li>\r\n<li style=\"box-sizing: border-box;\">Insurance claims processing</li>\r\n<li style=\"box-sizing: border-box;\">Less time consuming</li>\r\n<li style=\"box-sizing: border-box;\">Patient self-service</li>\r\n</ul>\r\n</div>\r\n</div>', 'uploads-image/projects/1700037318.png', '1', '2023-11-15 02:35:18', NULL),
(5, 'Canteen Management System', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Canteen Management System is used to keep a track of food consumption in the canteen. The traditional methods of keeping records such as manual and paper-based process are very time consuming and there can be vast chances of errors in the track record.</span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">It leads to inaccuracy and wastage of food. Canteen Management System is fully automated and helps in making payments, tracking menu items &amp; fast transactions with no errors.</span></p>\r\n<h4 class=\"text-center\" style=\"color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #ffffff; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Features</h4>\r\n<p>&nbsp;</p>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Customizable Menu</li>\r\n<li style=\"box-sizing: border-box;\">Menu Schedule</li>\r\n<li style=\"box-sizing: border-box;\">Auto Selected Item</li>\r\n<li style=\"box-sizing: border-box;\">Food Planning</li>\r\n<li style=\"box-sizing: border-box;\">Product Management</li>\r\n<li style=\"box-sizing: border-box;\">Employees Management</li>\r\n<li style=\"box-sizing: border-box;\">Supplier Management</li>\r\n<li style=\"box-sizing: border-box;\">Accounts</li>\r\n<li style=\"box-sizing: border-box;\">Transaction History</li>\r\n</ul>\r\n<h4 class=\"text-center\" style=\"font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Benefits</h4>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Real-time User Details</li>\r\n<li style=\"box-sizing: border-box;\">Cross-platform Support</li>\r\n<li style=\"box-sizing: border-box;\">Alerts</li>\r\n<li style=\"box-sizing: border-box;\">Completely Scalable and Flexible</li>\r\n<li style=\"box-sizing: border-box;\">Downloadable reports anytime anywhere</li>\r\n<li style=\"box-sizing: border-box;\">Saves Time</li>\r\n<li style=\"box-sizing: border-box;\">Simplified and Error-free</li>\r\n<li style=\"box-sizing: border-box;\">Upgrade Your Security</li>\r\n<li style=\"box-sizing: border-box;\">Automation</li>\r\n</ul>\r\n</div>\r\n</div>', 'uploads-image/projects/1700039911.png', '1', '2023-11-15 03:18:31', NULL),
(6, 'Accounts Management System', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">An accounting management system or accounting management software helps businesses to keep track of all incomes, expenses, and every other financial transaction. It also helps business owners to get the data that they need for making business decisions.</span></p>\r\n<h4 class=\"text-center\" style=\"color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #ffffff; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Features</h4>\r\n<p>&nbsp;</p>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">General Ledger</li>\r\n<li style=\"box-sizing: border-box;\">Clients Management</li>\r\n<li style=\"box-sizing: border-box;\">Accounts Receivable (AR)</li>\r\n<li style=\"box-sizing: border-box;\">Accounts Payable (AP)</li>\r\n<li style=\"box-sizing: border-box;\">Banking and Cash Management</li>\r\n<li style=\"box-sizing: border-box;\">Employees Management</li>\r\n<li style=\"box-sizing: border-box;\">Salary Sheet</li>\r\n<li style=\"box-sizing: border-box;\">Bank Accounts Management</li>\r\n<li style=\"box-sizing: border-box;\">Transaction History</li>\r\n</ul>\r\n<h4 class=\"text-center\" style=\"font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Benefits</h4>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Real-time User Details</li>\r\n<li style=\"box-sizing: border-box;\">Cross-platform Support</li>\r\n<li style=\"box-sizing: border-box;\">Alerts</li>\r\n<li style=\"box-sizing: border-box;\">Completely Scalable and Flexible</li>\r\n<li style=\"box-sizing: border-box;\">Downloadable reports anytime anywhere</li>\r\n<li style=\"box-sizing: border-box;\">Saves Time</li>\r\n<li style=\"box-sizing: border-box;\">Simplified and Error-free</li>\r\n<li style=\"box-sizing: border-box;\">Upgrade Your Security</li>\r\n<li style=\"box-sizing: border-box;\">Automation</li>\r\n</ul>\r\n</div>\r\n</div>', 'uploads-image/projects/1700039999.png', '1', '2023-11-15 03:19:59', NULL),
(7, 'E-Commerce', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Ecommerce development is designing an ecommerce solution unique for each business and following a thorough analysis of business requirements. At ScienceSoft, we research a target audience and plan customer experience diligently to achieve maximum ROI for custom ecommerce website development.</span></p>\r\n<div class=\"text-center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;\">Features</div>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Custom business logic</li>\r\n<li style=\"box-sizing: border-box;\">Custom UI themes</li>\r\n<li style=\"box-sizing: border-box;\">SEO-friendly website architecture</li>\r\n<li style=\"box-sizing: border-box;\">Smooth website navigation</li>\r\n<li style=\"box-sizing: border-box;\">Checkout optimization</li>\r\n<li style=\"box-sizing: border-box;\">On-site personalization</li>\r\n<li style=\"box-sizing: border-box;\">Content advancements</li>\r\n<li style=\"box-sizing: border-box;\">Loyalty and retention tool</li>\r\n</ul>\r\n</div>\r\n<div class=\"text-center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; text-align: left;\">Benefits</div>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box; text-align: left;\">Microservices-Based Development</li>\r\n<li style=\"box-sizing: border-box; text-align: left;\">Cross-platform Support</li>\r\n<li style=\"box-sizing: border-box; text-align: left;\">Alerts</li>\r\n<li style=\"box-sizing: border-box; text-align: left;\">Headless Ecommerce</li>\r\n<li style=\"box-sizing: border-box; text-align: left;\">AI Solutions for Ecommerce</li>\r\n</ul>\r\n</div>', 'uploads-image/projects/1700040076.png', '1', '2023-11-15 03:21:16', NULL),
(8, 'Website Development', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Web development is the work involved in developing a website for the Internet (World Wide Web) or an intranet (a private network).[1] Web development can range from developing a simple single static page of plain text to complex web applications, electronic businesses, and social network services. A more comprehensive list of tasks to which Web development commonly refers, may include Web engineering, Web design, Web content development, client liaison, client-side/server-side scripting, Web server and network security configuration, and e-commerce development.</span></p>\r\n<div class=\"text-center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #ffffff; text-align: left;\">Features</div>\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Customizable Web Application</li>\r\n<li style=\"box-sizing: border-box;\">With Backend &amp; Without Backend</li>\r\n<li style=\"box-sizing: border-box;\">Morden Technology</li>\r\n<li style=\"box-sizing: border-box;\">Responsive</li>\r\n<li style=\"box-sizing: border-box;\">User Friendly</li>\r\n<li style=\"box-sizing: border-box;\">Custome Build UI</li>\r\n</ul>\r\n<div class=\"text-center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; text-align: left;\">Benefits</div>\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">\r\n<div>Provide Support</div>\r\n</li>\r\n<li style=\"box-sizing: border-box;\">\r\n<div>Cross-platform Support</div>\r\n</li>\r\n<li style=\"box-sizing: border-box;\">\r\n<div>Alerts</div>\r\n</li>\r\n</ul>', 'uploads-image/projects/1700040143.png', '1', '2023-11-15 03:22:23', NULL),
(9, 'Pharmacy Management System', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">The pharmacy management software ensures a well-organized functioning, modern invoicing system, revenue management, inventory track mechanism, and boosting up your business. The pharmacy management software also offers one of the time-saving features, which is Pharmacy Billing Software.</span></p>\r\n<h4 class=\"text-center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; color: #212529; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #ffffff; text-align: left;\">Features</h4>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 16px; color: #212529; background-color: #ffffff;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Track Expense</li>\r\n<li style=\"box-sizing: border-box;\">Accounts</li>\r\n<li style=\"box-sizing: border-box;\">Better CRM Management</li>\r\n<li style=\"box-sizing: border-box;\">Inventory Management</li>\r\n<li style=\"box-sizing: border-box;\">Supplier Management</li>\r\n<li style=\"box-sizing: border-box;\">Employee Management</li>\r\n<li style=\"box-sizing: border-box;\">Stock Update</li>\r\n<li style=\"box-sizing: border-box;\">BarCode</li>\r\n<li style=\"box-sizing: border-box;\">Billing System</li>\r\n</ul>\r\n<h4 class=\"text-center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: system-ui, -apple-system, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', \'Liberation Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; text-align: left;\">Benefits</h4>\r\n<div class=\"project-details-discription\" style=\"box-sizing: border-box;\">\r\n<ul class=\"pt-3\" style=\"box-sizing: border-box; padding-left: 2rem; margin-top: 0px; margin-bottom: 1rem; padding-top: 1rem !important;\">\r\n<li style=\"box-sizing: border-box;\">Web-based ordering systems.</li>\r\n<li style=\"box-sizing: border-box;\">Perpetual inventory systems</li>\r\n<li style=\"box-sizing: border-box;\">Financial reporting</li>\r\n<li style=\"box-sizing: border-box;\">Cross Platform Supported</li>\r\n<li style=\"box-sizing: border-box;\">Real-time inventory management</li>\r\n</ul>\r\n</div>\r\n</div>', 'uploads-image/projects/1700453492.png', '1', '2023-11-19 22:11:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provides`
--

CREATE TABLE `provides` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provides`
--

INSERT INTO `provides` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'It Solution', 'It is vital to secure your business with a reputable IT solution services provider', 'uploads-image/provides/1700550338.png', '1', '2023-11-15 00:12:03', NULL),
(2, 'Web Development', 'Responsive Web Design always plays an important role whenever going to promote your website.', 'uploads-image/provides/1700550323.png', '1', '2023-11-15 00:12:45', NULL),
(3, 'Consultancy', 'As consultants, we need to be ruthless in discerning what is important and what is just noise.', 'uploads-image/provides/1700550309.png', '1', '2023-11-15 00:13:28', NULL),
(4, 'SEO Optimizition', 'It’s much easier to double your business by doubling your conversion rate than by doubling your traffic.', 'uploads-image/provides/1700550295.png', '1', '2023-11-15 00:14:18', NULL),
(5, 'Online Marketing', 'Ignoring online marketing is like opening a business but not telling anyone.', 'uploads-image/provides/1700550282.png', '1', '2023-11-15 00:15:07', NULL),
(6, 'Boosting', 'Content builds relationships. Relationship are built on trust. Trust drives revenue.', 'uploads-image/provides/1700550263.png', '1', '2023-11-15 00:15:46', NULL),
(7, 'Creative Design', 'Design can be art. Design can be simple. That’s why it’s so complicated.', 'uploads-image/provides/1700550250.png', '1', '2023-11-15 00:16:36', NULL),
(8, 'E-Commerce', 'Ecommerce isn’t the cherry on the cake, it’s the new cake.', 'uploads-image/provides/1700550235.png', '1', '2023-11-15 00:17:15', NULL),
(9, 'Custom Software', 'Customization Is expensive but it make your system difference.', 'uploads-image/provides/1700550112.png', '1', '2023-11-15 00:17:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `name`, `designation`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '\"Amazing Designs and Quality Work!\"', 'Mohammad Mahbub Hassan', '\"Chairman of OSL-KNS Group\"', 'Great work from Eva Technology, I am so amazed with their service.\r\n I am grateful to them. They have provided quality work for us. I will recommended to other for getting best IT service.', 'uploads-image/reviews/1700040631.png', '1', '2023-11-15 03:30:31', NULL),
(2, '\"Great Service\"', 'Emmabay Enterprise', '\"Iyana Ipaja, Lagos\"', 'Very good experience with Eva Technology. So impress by reactivity and the website result. He took time to understand my request and was really reactive.\r\n I will definitely recommend Eva Technology to my friend. Thanks a lot, you made my day.', 'uploads-image/reviews/1700555987.png', '1', '2023-11-15 03:34:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provide_top_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `provide_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_top_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_top_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_top_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hire` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `image`, `provide_top_title`, `provide_title`, `about_top_title`, `about_title`, `project_top_title`, `project_title`, `customer_top_title`, `customer_title`, `hire`, `created_at`, `updated_at`) VALUES
(1, 'Eva', 'Technology', 'evatechltd1@gmail.com', '+8801766946459', 'Level-3, House-23, Road-2, Sector-3, Uttara, Dhaka-1230', 'uploads-image/site-image/1700453548.jpg', 'Our Services', 'What We Provide', 'About Us', 'About The Company', 'Our Project', 'Our Recently Completed Projects', 'Our Customers', 'Our Client Saying!', 'Why You Should Hire Us ?', '2023-11-19 22:12:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `top_title`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Best IT Solutions', 'IT Solution for Your Business', 'uploads-image/sliders/1700028365.jpg', '1', '2023-11-15 00:06:05', NULL),
(2, 'Best IT Solutions', 'IT Solution for Your Business', 'uploads-image/sliders/1700453846.jpg', '1', '2023-11-15 00:06:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `name`, `link`, `color`, `icon`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Facebook', NULL, '#39569E', 'fab fa-facebook-f', '1', NULL, NULL, NULL, NULL),
(2, 'Youtube', NULL, '#DC472E', 'fab fa-youtube', '1', NULL, NULL, NULL, NULL),
(3, 'Twitter', NULL, '#52AAF4', 'fab fa-twitter', '1', NULL, NULL, NULL, NULL),
(4, 'Instagram', NULL, '#C8359D', 'fab fa-instagram', '1', NULL, NULL, NULL, NULL),
(5, 'LinkedIn', NULL, '#0185AE', 'fab fa-linkedin-in', '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$tWv6gqKC5Z9d9nEtQdn8IOkTmhAmgW0oStevx8HhY8HmAz7x6mKty', NULL, '2023-11-14 23:26:54', '2023-11-14 23:26:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hires`
--
ALTER TABLE `hires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provides`
--
ALTER TABLE `provides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hires`
--
ALTER TABLE `hires`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `provides`
--
ALTER TABLE `provides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
