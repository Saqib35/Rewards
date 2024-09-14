-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 08:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sliver`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gold_rates_by_day`
--

CREATE TABLE `gold_rates_by_day` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description_short` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `alt_tag` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `First_rate` varchar(255) DEFAULT NULL,
  `Second_rate` varchar(255) DEFAULT NULL,
  `schema_day` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gold_rates_by_month`
--

CREATE TABLE `gold_rates_by_month` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description_short` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'images/today-gold-rate-in-pakistan-monlthy-.webp',
  `alt_tag` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `schemaa_month` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gold_rates_by_week`
--

CREATE TABLE `gold_rates_by_week` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description_short` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'images/gold-rate-weekly-update.webp',
  `alt_tag` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `schema_week` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

CREATE TABLE `home_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `content` text NOT NULL,
  `home_schema` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_pages`
--

INSERT INTO `home_pages` (`id`, `meta_title`, `meta_description`, `img`, `content`, `home_schema`, `created_at`, `updated_at`) VALUES
(1, '52 Tola Chandi Price In Pakistan- Silver Rate In Pakistan', 'As of today, 16 December 2023, the silver rate in Pakistan is Rs. 2,600 per tola. These rates remain consistent across major cities like Karachi, Lahore,', 'images/19aca8ac58bf5dcc16cadb81321d40bf000d270f.webp', '<div class=\"updatSetting\">\r\n<hr />By Staff ⏰ Updated <strong>December 16, 2023</strong>\r\n\r\n<hr /></div>\r\n\r\n<div class=\"pt-3 updatSetting\">\r\n<h2><span style=\"font-size:20px\"><strong><em><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">The Silver rate in Pakistan today, 16 December 2023, is as follows</span></em></strong></span></h2>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">Rs&nbsp;227&nbsp;per 1 gram</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">Rs&nbsp;2,272&nbsp;per 10 grams</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">Rs&nbsp;2,650&nbsp;per tola</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">Rs&nbsp;7,067&nbsp;per 1 ounce</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">Rs&nbsp;227,195&nbsp;per 1 kilogram</span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">You may feel light differences in rates, otherwise the silver rates in the whole country remain the same.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">You can also check&nbsp;</span><a href=\"https://silvergoldrate.pk/gold-rate-in-pakistan\"><span style=\"font-size:12.0pt\"><span style=\"color:blue\">today&rsquo;s gold rate</span></span></a><span style=\"font-size:12.0pt\">&nbsp;here.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/images/today-silver-rate-in-pakistan_1702748088.webp\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><span style=\"font-size:20px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"color:#111111\">Today Chandi Rate in Pakistan 16 December 2023</span></strong></span></span></h2>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table table-bordered table-hover\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th>Silver Type</th>\r\n			<th>Rate per Gram</th>\r\n			<th>Rate per 10 Grams</th>\r\n			<th>Rate per Tola</th>\r\n			<th>Rate per Troy Ounce</th>\r\n			<th>Rate per Kilogram</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">24K</td>\r\n			<td style=\"text-align:center\">227</td>\r\n			<td style=\"text-align:center\">2,272</td>\r\n			<td style=\"text-align:center\">2,650</td>\r\n			<td style=\"text-align:center\">7,067</td>\r\n			<td style=\"text-align:center\">227,195</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">22K</td>\r\n			<td style=\"text-align:center\">208</td>\r\n			<td style=\"text-align:center\">2,077</td>\r\n			<td style=\"text-align:center\">2,423</td>\r\n			<td style=\"text-align:center\">6,461</td>\r\n			<td style=\"text-align:center\">207,716</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">21K</td>\r\n			<td style=\"text-align:center\">198</td>\r\n			<td style=\"text-align:center\">1,980</td>\r\n			<td style=\"text-align:center\">2,309</td>\r\n			<td style=\"text-align:center\">6,158</td>\r\n			<td style=\"text-align:center\">197,977</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">18K</td>\r\n			<td style=\"text-align:center\">169</td>\r\n			<td style=\"text-align:center\">1,688</td>\r\n			<td style=\"text-align:center\">1,968</td>\r\n			<td style=\"text-align:center\">5,249</td>\r\n			<td style=\"text-align:center\">168,760</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"color:#111111\">In the above table, you can see silver rates in 24, 22, 21, and 18K above rates are just for a value idea since gold and silver rates vary throughout the day you may see a few hundred rupees difference across the city and before any purchase, make sure rates from your city market for more up to date silver rates.</span></span></span></span></span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"color:#111111\">Silver Rate in Different Cities of Pakistan</span></strong></span></span></span></h2>\r\n\r\n<table class=\"table table-bordered table-hover\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th>City</th>\r\n			<th>Silver Rate per Tola</th>\r\n			<th>Silver Rate per 10 Gram</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Karachi</td>\r\n			<td style=\"text-align:center\">2,650</td>\r\n			<td style=\"text-align:center\">2,272</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Hyderabad</td>\r\n			<td style=\"text-align:center\">2,650</td>\r\n			<td style=\"text-align:center\">2,272</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Lahore</td>\r\n			<td style=\"text-align:center\">2,650</td>\r\n			<td style=\"text-align:center\">2,272</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Multan</td>\r\n			<td style=\"text-align:center\">2,650</td>\r\n			<td style=\"text-align:center\">2,272</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Islamabad</td>\r\n			<td style=\"text-align:center\">2,650</td>\r\n			<td style=\"text-align:center\">2,272</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Faisalabad</td>\r\n			<td style=\"text-align:center\">2,650</td>\r\n			<td style=\"text-align:center\">2,272</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Rawalpindi</td>\r\n			<td style=\"text-align:center\">2,650</td>\r\n			<td style=\"text-align:center\">2,272</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Quetta</td>\r\n			<td style=\"text-align:center\">2,650</td>\r\n			<td style=\"text-align:center\">2,272</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><span style=\"font-size:20px\"><strong><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">52.5 Tola Chandi Price in Different Cities of Pakistan</span></span></span></span></strong></span></h2>\r\n\r\n<table class=\"table table-bordered table-hover\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th>City</th>\r\n			<th>52.5 Tola Chandi City Prices</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Karachi</td>\r\n			<td style=\"text-align:center\">139,125</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Hyderabad</td>\r\n			<td style=\"text-align:center\">139,125</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Lahore</td>\r\n			<td style=\"text-align:center\">139,125</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Multan</td>\r\n			<td style=\"text-align:center\">139,125</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Islamabad</td>\r\n			<td style=\"text-align:center\">139,125</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Faisalabad</td>\r\n			<td style=\"text-align:center\">139,125</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Rawalpindi</td>\r\n			<td style=\"text-align:center\">139,125</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Quetta</td>\r\n			<td style=\"text-align:center\">139,125</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">We are clearing that the silver rate remains the same throughout Pakistan, although you may notice a little bit of a change of </span><span style=\"color:#e74c3c\">50 rupees to 200</span><span style=\"color:#111111\"> rupees across cities.</span></span></span></span></span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Calibri Light&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1f3763\"><strong><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">Factors Affecting Silver Prices</span></span></strong></span></span></span></span></h2>\r\n\r\n<p>The major factors that cause the fluctuation of silver rates in Pakistan are economic stability, political conditions, and changes in the value of the US dollar, as silver is traded internationally in dollars.</p>\r\n\r\n<h3>1. <span style=\"font-size:16px\"><strong>Economic stability:</strong></span> Pakistan&rsquo;s economic stability is one of the major factors which affect the silver rate.</h3>\r\n\r\n<h3>2.<span style=\"font-size:14px\"> </span><span style=\"font-size:16px\"><strong>Political Conditions:</strong></span> As you know Pakistan&rsquo;s<span style=\"color:#e74c3c\"> Political condition is worse than ever in 2023</span>. It affects the silver rates directly uncertain political matters are one of the key factors that affect silver rates.</h3>\r\n\r\n<h3>3. <span style=\"font-size:16px\"><strong>USD Dollar:</strong></span> Changes in the value of the US dollar also impact silver prices in Pakistan, as silver is traded internationally in dollars.</h3>\r\n\r\n<h2><span style=\"font-size:20px\"><strong>Current Silver Rates in Pakistan</strong></span></h2>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">As of Saturday, </span><span style=\"color:#e74c3c\">16 December 2023</span><span style=\"color:#111111\">, the silver rate in Pakistan stands at </span><span style=\"color:#e74c3c\">Rs.&nbsp;2,650 per tola.</span><span style=\"color:#111111\"> These rates can change from city to city. For instance, in Karachi, Hyderabad, Lahore, Multan, Islamabad, Faisalabad, Rawalpindi, and Quetta.</span></span></span></span></span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><strong><u><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">FAQs</span></u></strong></span></span></span></h2>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">1. What is the most recent silver rate in Pakistan?</span></span></strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">As of today,<span style=\"color:#e74c3c\"> 16 December 2023</span>, the silver rate in Pakistan is <span style=\"color:#e74c3c\">Rs. 2,650 per tola.</span></span></span></span></p>\r\n\r\n<h3><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">2. Why does the silver Rate vary?</span></span></span></strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">The major factors that cause the variations of silver rates in Pakistan are economic stability, political conditions, and changes in the value of the US dollar, as silver is traded internationally in dollars.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">3. Is the silver rate the same in all cities of Pakistan?</span></span></span></strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">Yes, the silver rate remains the same throughout Pakistan but you may find a difference of some rupees in different cities.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">4. How can I keep track of the latest silver rates in Pakistan?</span></span></span></strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">To keep in touch with the latest silver rates in Pakistan, you can regularly check reliable sources like <strong>silvergoldrate.pk</strong></span><span style=\"font-size:12.0pt\">.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">5. Can silver prices be affected by global factors?</span></span></span></strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">Yes, silver prices can be affected by global factors.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:#111111\">6. How often do silver rates change?</span></span></span></strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">Silver rates can vary throughout the day, based on market conditions and global factors.</span></span></span></p>\r\n</div>', '<script type=\"application/ld+json\" class=\"rank-math-schema\">\r\n    {\r\n        \"@context\": \"https://schema.org\",\r\n        \"@graph\": [\r\n            {\r\n                \"@type\": [\"WebPage\", \"FAQPage\"],\r\n                \"@id\": \"https://silvergoldrate.pk/#webpage\",\r\n                \"url\": \"https://silvergoldrate.pk/\",\r\n                \"name\": \"Silver Rate in Pakistan - 52 Tola Chandi Price in Pakistan\",\r\n                \"datePublished\": \"2023-12-15T09:24:48+05:00\",\r\n                \"dateModified\": \"2023-12-15T09:24:51+05:00\",\r\n                \"about\": { \"@id\": \"https://silvergoldrate.pk/#person\" },\r\n                \"isPartOf\": { \"@id\": \"https://silvergoldrate.pk/#website\" },\r\n                \"primaryImageOfPage\": { \"@id\": \"https://silvergoldrate.pk/wp-content/uploads/2023/08/today-silver-rate-in-pakistan.webp\" },\r\n                \"inLanguage\": \"en-US\",\r\n                \"mainEntity\": [\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk/#faq-question-1690965100628\",\r\n                        \"name\": \"1. What is the current silver rate in Pakistan?\",\r\n                        \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"As of today, 15 December 2023, the silver rate in Pakistan is Rs. 2,650 per tola. \" }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk/#faq-question-1690965151880\",\r\n                        \"name\": \"2. Why does the silver Rate fluctuate?\",\r\n                        \"acceptedAnswer\": {\r\n                            \"@type\": \"Answer\",\r\n                            \"text\": \"The major factors that cause the fluctuation of silver rates in Pakistan are economic stability, political conditions, and changes in the value of the US dollar, as silver is traded internationally in dollars.\"\r\n                        }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk/#faq-question-1690965187663\",\r\n                        \"name\": \"Is the silver rate the same in all cities of Pakistan?\",\r\n                        \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"Yes, the silver rate remains the same throughout Pakistan but you may find a difference of 50 to 200 rupees in different cities.\" }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk/#faq-question-1690965272743\",\r\n                        \"name\": \"How can I keep track of the latest silver rates in Pakistan?\",\r\n                        \"acceptedAnswer\": {\r\n                            \"@type\": \"Answer\",\r\n                            \"text\": \"To stay updated with the latest silver rates in Pakistan, you can regularly check reliable sources like <a href=\\\"https://silvergoldrate.pk/\\\" data-type=\\\"page\\\" data-id=\\\"269\\\">silvergoldrate.pk</a>.\"\r\n                        }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk/#faq-question-1690965319486\",\r\n                        \"name\": \"Can silver prices be affected by global factors?\",\r\n                        \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"Yes, silver prices can be influenced by global factors.\" }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk/#faq-question-1690965419438\",\r\n                        \"name\": \"How often do silver rates change?\",\r\n                        \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"Silver rates can fluctuate throughout the day, based on market conditions and global factors.\" }\r\n                    }\r\n                ]\r\n            }\r\n         \r\n        ]\r\n    }\r\n</script>', '2023-12-09 07:33:25', '2023-12-16 12:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `home_pages_gold_rate`
--

CREATE TABLE `home_pages_gold_rate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `img` text DEFAULT 'images/today-gold-rate-in-pakistan.webp',
  `content` text NOT NULL,
  `schmea_today` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_pages_gold_rate`
--

INSERT INTO `home_pages_gold_rate` (`id`, `meta_title`, `meta_description`, `img`, `content`, `schmea_today`, `created_at`, `updated_at`) VALUES
(1, 'Gold Rate in Pakistan Today – 16 December 2023', '1 tola gold rate in Pakistan today, 16 December 2023, stands at Rs. 214,700 per tola for 24-karat gold, and Rs. 184,071 for 10 grams.', 'images/374a277814c093d2955b845b78cc28cec7ee6a15.webp', '<div class=\"updatSetting\">\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">Today,<span style=\"color:#e74c3c\"> 1 tola gold rate in Pakistan stands at Rs. 217,800</span> per tola for 24-karat gold, and Rs. <span style=\"color:#e74c3c\">186,900 for 10 grams,</span> according to the latest information coming from the Karachi, Multan, and Lahore bullion markets.</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">These variations are nearly tied to changes in the value of the US dollar, showing the link between currency values and gold rates.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">The gold price is increasing globally at <span style=\"color:#e74c3c\">$2018 per ounce</span>. It is noticeable that gold rates in Pakistan can have some ups and downs a second time due to the global gold market.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">For the recent and most accurate gold rates, you can visit the live markets of your cities.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">If you have an interest in gold, then it is necessary for you to keep yourself up to date. Regularly check the market trends to be aware of the market, i.e., it is up or down.</span></span></span></p>\r\n\r\n<p>If you&rsquo;re curious about <span style=\"color:#e74c3c\"><strong>Yesterday Price</strong></span>, feel free to check it out here.</p>\r\n\r\n<h2><span style=\"font-size:20px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>Today&rsquo;s 24K Gold Prices in Pakistan (16 December 2023):</strong></span></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\">1 gram: <span style=\"color:red\">18,673</span></span></strong></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\">10 grams: <span style=\"color:red\">186,728</span></span></strong></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\">1 tola: <span style=\"color:red\">217,800</span></span></strong></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\">1 ounce: <span style=\"color:red\">580,790</span></span></strong></span></span></li>\r\n	<li><strong>1 kilogram:<span style=\"color:#e74c3c\">&nbsp;</span><span style=\"color:#ff0000; font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">185,544,239</span></span></strong></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#e74c3c\">Please Note: All these Rates Mentioned Here are Just to Get an Idea of what could be the Price in Bullion Markets. Please Visit Your City&rsquo;s Gold Market for the Actual Gold Rate.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"background-color:#bf9109; color:white; padding:10px 20px; text-align:center\"><span style=\"font-size:20px\">Live Gold and Silver Rate in Pakistan</span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th colspan=\"2\" scope=\"col\">Gold 24K Rawa/Pathoor Rate</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Buy</td>\r\n			<td style=\"text-align:center\">Sell</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">0</td>\r\n			<td style=\"text-align:center\">0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th colspan=\"2\" scope=\"col\">Gold 24K Price Rate</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Buy</td>\r\n			<td style=\"text-align:center\">Sell</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">0</td>\r\n			<td style=\"text-align:center\">0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th colspan=\"2\" scope=\"col\">International Gold Rate</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"background-color:#ffffff\">2019.87</span></span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th colspan=\"2\" scope=\"col\">International Silver Rate</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">23.86</span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>The comprehensive table shows how much the gold rate fluctuated throughout the day.</strong></span></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">Pakistan Standard Time (PKT)</th>\r\n			<th scope=\"col\">Gold 24K Per Tola</th>\r\n			<th scope=\"col\">Gold Per Ounce</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">12:10 AM Night</td>\r\n			<td style=\"text-align:center\">PKR 216,300</td>\r\n			<td style=\"text-align:center\">$2000</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">9:10 AM Morning</td>\r\n			<td style=\"text-align:center\">PKR 216,400</td>\r\n			<td style=\"text-align:center\">$2004</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">10:15 AM&nbsp;Morning</td>\r\n			<td style=\"text-align:center\">&nbsp;PKR 216,400</td>\r\n			<td style=\"text-align:center\">$2004</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">2:10 PM&nbsp;Morning</td>\r\n			<td style=\"text-align:center\">&nbsp;PKR 216,400</td>\r\n			<td style=\"text-align:center\">$2004</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"color:#111111\">The gold rate remains same in the whole Pakistan, although you may check a slight difference of a few hundred rupees across cities.</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"color:#111111\">Furthermore, we would like to mention that the gold rate varies hour to hour. So to keep updated with the latest rates visit our site or install our app from the Google Play Store. If you&rsquo;re looking for silver prices, you can find the&nbsp;</span></span><a href=\"https://silvergoldrate.pk/\"><span style=\"font-size:12.0pt\"><span style=\"color:blue\">latest silver rates</span></span></a><span style=\"font-size:12.0pt\"><span style=\"color:#111111\">&nbsp;here.</span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"background-color:#bf9109; color:white; padding:10px 20px; text-align:center\"><span style=\"font-size:20px\">Gold Rate in Pakistan today 16<strong>&nbsp;December 2023</strong></span></h2>\r\n\r\n<p style=\"text-align:justify\">As of today, <span style=\"color:#e74c3c\">9 December 2023</span>, the 1 tola gold price in Pakistan is<span style=\"color:#c0392b\"> </span><span style=\"color:#e74c3c\">Rs. 216,300</span>. The Gold Prices in Pakistan are usually sourced from the Karachi Gold Market.</p>\r\n\r\n<p style=\"text-align:justify\">In Pakistan, gold rates change due to the two big reasons. One major reason is the fluctuations in the dollar rate, and the second reason is the economic instability of Pakistan.</p>\r\n\r\n<p>These two external factors influence the local gold prices and because of these factors, a gold rate may change multiple times per day.</p>\r\n\r\n<p>In the below table, you can check the latest 1 tola Gold Price in Pakistan on<span style=\"color:#e74c3c\">&nbsp;<strong>9 December 2023</strong></span>&nbsp;for different karats.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"background-color:#bf9109; color:white; padding:10px 20px; text-align:center\"><span style=\"font-size:20px\">1 Tola Gold Price Today (16 December 2023)</span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">Gold Type</th>\r\n			<th scope=\"col\">Rate per Gram</th>\r\n			<th scope=\"col\">Rate per 10 Grams</th>\r\n			<th scope=\"col\">Rate per Tola</th>\r\n			<th scope=\"col\">Rate per Troy Ounce</th>\r\n			<th scope=\"col\">Rate per Kilogram</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">24K</td>\r\n			<td style=\"text-align:center\">18,544</td>\r\n			<td style=\"text-align:center\">185,442</td>\r\n			<td style=\"text-align:center\">216,300</td>\r\n			<td style=\"text-align:center\">576,790</td>\r\n			<td style=\"text-align:center\">18,544,239</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">22K</td>\r\n			<td style=\"text-align:center\">16,954</td>\r\n			<td style=\"text-align:center\">169,544</td>\r\n			<td style=\"text-align:center\">197,756</td>\r\n			<td style=\"text-align:center\">527,340</td>\r\n			<td style=\"text-align:center\">16,954,369</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">21K</td>\r\n			<td style=\"text-align:center\">16,159</td>\r\n			<td style=\"text-align:center\">161,594</td>\r\n			<td style=\"text-align:center\">188,484</td>\r\n			<td style=\"text-align:center\">502,615</td>\r\n			<td style=\"text-align:center\">16,159,434</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">18K</td>\r\n			<td style=\"text-align:center\">13775</td>\r\n			<td style=\"text-align:center\">137,746</td>\r\n			<td style=\"text-align:center\">160,667</td>\r\n			<td style=\"text-align:center\">428,439</td>\r\n			<td style=\"text-align:center\">13,774,630</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"background-color:#bf9109; color:white; padding:10px 20px; text-align:center\"><span style=\"font-size:20px\">Gold Price Today In Major Cities Of Pakistan</span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">City</th>\r\n			<th scope=\"col\">24K Rate per Tola</th>\r\n			<th scope=\"col\">22K Rate per Tola</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Hyderabad</td>\r\n			<td style=\"text-align:center\">216,300</td>\r\n			<td style=\"text-align:center\">&nbsp; 196,756</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Lahore</td>\r\n			<td style=\"text-align:center\">216,300</td>\r\n			<td style=\"text-align:center\">&nbsp; 196,756</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Multan</td>\r\n			<td style=\"text-align:center\">216,300</td>\r\n			<td style=\"text-align:center\">&nbsp; 196,756</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Islamabad</td>\r\n			<td style=\"text-align:center\">216,300</td>\r\n			<td style=\"text-align:center\">&nbsp; 196,756</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Faisalabad</td>\r\n			<td style=\"text-align:center\">216,300</td>\r\n			<td style=\"text-align:center\">&nbsp; 196,756</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Rawalpindi</td>\r\n			<td style=\"text-align:center\">216,300</td>\r\n			<td style=\"text-align:center\">&nbsp; 196,756</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Quetta</td>\r\n			<td style=\"text-align:center\">216,300</td>\r\n			<td style=\"text-align:center\">&nbsp; 196,756</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Karachi</td>\r\n			<td style=\"text-align:center\">216,300</td>\r\n			<td style=\"text-align:center\">&nbsp; 196,756</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><span style=\"font-size:20px\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"color:#111111\">Disclaimer:</span></strong></span></span></span></h2>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"color:#ed1515\">The gold rates mentioned above are for information only are not guaranteed to be 100% accurate. We are not taking any responsibility if there is any change in above values later.</span></span></span></span></span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><u>FAQs:</u></strong></span></span></h2>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>1. What is the recent gold rate in Pakistan for 1 tola?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">About today, 16 December 2023, the rate of 1 Tola 24-carat gold in Pakistan is 217,800.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>2. What is the rate of 1 Tola 22-carat gold in Pakistan today?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">As of today, 16 December 2023, the rate of 1 Tola 22-carat gold in Pakistan is PKR 199,127.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>3 .How many grams are in one Tola?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">There are &ldquo;11.664&rdquo; grams in 1 Tola.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>4. How many carats are in a tola?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">1 Pakistan Tola is 12.5g or 11/25 of a t/oz (0.44 t/oz)</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>5. How many Ratti are in one Masha?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">One Masha is equal to 8&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ratti\" target=\"_blank\"><span style=\"color:blue\">Ratti</span></a>.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>6. How much does 1 gram of gold cost in Pakistan?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">As of today, 16 December 2023, 1 gram of gold in Pakistan costs PKR 18,673.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>7. How often does the gold rate change in Pakistan?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">The gold rate in Pakistan can change anytime, and it may fluctuate multiple times per day.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>8. What factors influence the gold rate in Pakistan?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">The gold rate in Pakistan is greatly influenced by variations in the dollar rate and the economic instability of Pakistan.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>9. What is the difference between 24-carat and 22-carat gold?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">24-carat gold is the purest form of gold, containing 99.5% of the precious metal, while 22-carat gold contains 91.6% gold and 8.4% of other metals.</span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong>10. Where to sell gold in Pakistan?</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\">Don&rsquo;t sell gold to local jewelers they won&rsquo;t give you a good price. It is advisable to sell gold in Pakistan at Sarafa Bazar to wholesalers, as they usually offer better prices compared to local jewelers.</span></span></span></p>\r\n\r\n<h2>&nbsp;</h2>', '<script type=\"application/ld+json\" >\r\n            {\r\n                \"@context\": \"https://schema.org\",\r\n                \"@graph\": [\r\n                    {\r\n                        \"@type\": [\"WebPage\", \"FAQPage\"],\r\n                        \"@id\": \"https://silverrate.pk/gold-rate-in-pakistan/#webpage\",\r\n                        \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/\",\r\n                        \"name\": \"Gold Rate in Pakistan Today \\u2013 11 December 2023\",\r\n                        \"datePublished\": \"2023-12-11T15:19:01+05:00\",\r\n                        \"dateModified\": \"2023-12-11T15:19:04+05:00\",\r\n                        \"isPartOf\": { \"@id\": \"https://silverrate.pk/#website\" },\r\n                        \"primaryImageOfPage\": { \"@id\": \"https://silverrate.pk/wp-content/uploads/2023/08/gold-rate-in-pakistan-today.webp\" },\r\n                        \"inLanguage\": \"en-US\",\r\n                        \"mainEntity\": [\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-64a661358faf9\",\r\n                                \"name\": \"What is the current gold rate in Pakistan for 1 tola?\",\r\n                                \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"As of today, 11 December 2023, the rate of 1 Tola 24-carat gold in Pakistan is 214,700.\" }\r\n                            },\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-64a661358faff\",\r\n                                \"name\": \"What is the rate of 1 Tola 22-carat gold in Pakistan today?\",\r\n                                \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"As of today, 11 December 2023, the rate of 1 Tola 22-carat gold in Pakistan is PKR 196,293.\" }\r\n                            },\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-64a661358fb01\",\r\n                                \"name\": \"How many grams are in one Tola?\",\r\n                                \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"In 1 Tola there are \\\"<strong>11.664</strong>\\\" grams.\" }\r\n                            },\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-64a661358fb04\",\r\n                                \"name\": \"How many carats are in a tola?\",\r\n                                \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"carats are used to measure the weight of gemstones (Nagina), not gold. Gold is typically measured in grams or ounces.\" }\r\n                            },\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-64a661358fb05\",\r\n                                \"name\": \"How many Ratti are in one Masha?\",\r\n                                \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"One Masha is equal to 8 <a href=\\\"https://en.wikipedia.org/wiki/Ratti\\\">Ratti</a>.\" }\r\n                            },\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-1688801939426\",\r\n                                \"name\": \"How much does 1 gram of gold cost in Pakistan?\",\r\n                                \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"As of today, 11 December 2023, 1 gram of gold in Pakistan costs PKR 18,407.\" }\r\n                            },\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-1688801999749\",\r\n                                \"name\": \"How often does the gold rate change in Pakistan?\",\r\n                                \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"The gold rate in Pakistan can change anytime, and it may fluctuate multiple times per day.\" }\r\n                            },\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-1688802038099\",\r\n                                \"name\": \"What factors influence the gold rate in Pakistan?\",\r\n                                \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"The gold rate in Pakistan is greatly influenced by fluctuations in the dollar rate and the economic instability of Pakistan.\" }\r\n                            },\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-1688802060484\",\r\n                                \"name\": \"What is the difference between 24-carat and 22-carat gold?\",\r\n                                \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"24-carat gold is the purest form of gold, containing 99.5% of the precious metal, while 22-carat gold contains 91.6% gold and 8.4% of other metals.\" }\r\n                            },\r\n                            {\r\n                                \"@type\": \"Question\",\r\n                                \"url\": \"https://silverrate.pk/gold-rate-in-pakistan/#faq-question-1688802238499\",\r\n                                \"name\": \"Where to sell gold in Pakistan?\",\r\n                                \"acceptedAnswer\": {\r\n                                    \"@type\": \"Answer\",\r\n                                    \"text\": \"Don\'t sell gold to local jewelers they won\'t give you a good price. It is advisable to sell gold in Pakistan at Sarafa Bazar to wholesalers, as they usually offer better prices compared to local jewelers.\"\r\n                                }\r\n                            }\r\n                        ]\r\n                    },\r\n               \r\n                ]\r\n            }\r\n        </script>', '2023-12-09 07:33:04', '2023-12-16 13:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2023_12_08_072252_create_home_pages_gold_rate_table', 1),
(15, '2023_12_08_072252_create_home_pages_table', 1),
(16, '2023_12_08_083443_create_gold_rates_by_days_table', 1),
(17, '2023_12_08_083443_create_gold_rates_by_month_table', 1),
(18, '2023_12_08_083443_create_gold_rates_by_week_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'maher.saqib64@gmail.com', NULL, '$2y$10$BydkqMUJhQ3RyE7AX/ZJru8.s8eqI0NN1YaWb5cL.GOZgPBKL68VK', NULL, '2023-07-11 04:17:57', '2023-07-11 04:17:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gold_rates_by_day`
--
ALTER TABLE `gold_rates_by_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold_rates_by_month`
--
ALTER TABLE `gold_rates_by_month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold_rates_by_week`
--
ALTER TABLE `gold_rates_by_week`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_pages_gold_rate`
--
ALTER TABLE `home_pages_gold_rate`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gold_rates_by_day`
--
ALTER TABLE `gold_rates_by_day`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gold_rates_by_month`
--
ALTER TABLE `gold_rates_by_month`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gold_rates_by_week`
--
ALTER TABLE `gold_rates_by_week`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_pages_gold_rate`
--
ALTER TABLE `home_pages_gold_rate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
