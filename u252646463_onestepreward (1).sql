-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 14, 2024 at 08:59 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u252646463_onestepreward`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner_ads`
--

CREATE TABLE `banner_ads` (
  `id` int(11) NOT NULL,
  `display_count` int(11) NOT NULL DEFAULT 0,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_ads`
--

INSERT INTO `banner_ads` (`id`, `display_count`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 16, 'vouchar_img/efewf-ewf.jpg', '2024-09-09 07:20:43', '2024-09-11 11:45:25'),
(2, 16, 'vouchar_img/efewf-ewf.jpg', '2024-09-09 07:51:38', '2024-09-11 11:45:27'),
(3, 15, 'vouchar_img/efewf-ewf.jpg', '2024-09-09 07:51:55', '2024-09-11 11:45:30'),
(8, 0, 'vouchar_img/efewf-ewf.jpg', '2024-09-11 16:11:48', '2024-09-11 11:45:32'),
(9, 0, 'vouchar_img/efewf-ewf.jpg', '2024-09-11 16:11:58', '2024-09-11 11:45:34'),
(10, 0, 'vouchar_img/efewf-ewf.jpg', '2024-09-11 16:13:44', '2024-09-11 11:45:35'),
(11, 0, 'vouchar_img/efewf-ewf.jpg', '2024-09-11 16:14:04', '2024-09-11 11:45:36'),
(12, 0, 'vouchar_img/efewf-ewf.jpg', '2024-09-11 16:17:14', '2024-09-11 11:45:38'),
(13, 0, 'vouchar_img/efewf-ewf.jpg', '2024-09-11 16:17:46', '2024-09-11 11:45:39'),
(14, 0, 'vouchar_img/efewf-ewf.jpg', '2024-09-11 16:21:08', '2024-09-11 11:45:41'),
(15, 0, 'vouchar_img/efewf-ewf.jpg', '2024-09-11 16:21:16', '2024-09-11 11:45:42'),
(17, 0, 'vouchar_img/-.png', '2024-09-12 13:15:48', '2024-09-12 13:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description_short` text NOT NULL,
  `img` varchar(255) DEFAULT 'images/today-gold-rate-in-pakistan.webp',
  `alt_tag` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `meta_title`, `meta_description`, `meta_keyword`, `title`, `slug`, `description_short`, `img`, `alt_tag`, `details`, `created_at`, `updated_at`) VALUES
(3, 'Where to Find Delicious Fast Food in Pollachi', 'Pollachi is a town that blends tradition with the allure of modern cuisine. As a fast-emerging hub, it boasts a wide array of fast food options.', 'nothing', 'Where to Find Delicious Fast Food in Pollachi', 'where-to-find-delicious-fast-food-in-pollachi', 'Pollachi is a town that blends tradition with the allure of modern cuisine. As a fast-emerging hub, it boasts a wide array of fast food options.', 'images/e.jpg', 'clove', '<p style=\"text-align:justify\">Pollachi is a town that blends tradition with the allure of modern cuisine. As a fast-emerging hub, it boasts a wide array of fast food options, catering to everyone from traditional South Indian food lovers to global fast food enthusiasts. Whether you&rsquo;re a local or a visitor, Pollachi has something to satisfy your fast food cravings. Let&rsquo;s dive into the best places to get delicious fast food in Pollachi, including the renowned <strong>Clove Restaurant</strong>.</p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>Why Pollachi is a Fast Food Haven</strong></h2>\r\n\r\n<h3 style=\"text-align:justify\"><strong>A Blend of Tradition and Modernity</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Pollachi is known for its deep-rooted culture, but in recent years, it has embraced the fast food trend without losing its essence. This unique blend allows people to enjoy both traditional dishes and modern fast food varieties in one place.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>The Rise of Fast Food Culture in Pollachi</strong></h3>\r\n\r\n<p style=\"text-align:justify\">The fast food culture in Pollachi has grown significantly, thanks to the town&rsquo;s young and dynamic population. With new eateries popping up across the town, fast food has become a quick, tasty, and affordable option for many.</p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>Popular Fast Food Options in Pollachi</strong></h2>\r\n\r\n<h3 style=\"text-align:justify\"><strong>South Indian Delights</strong></h3>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Masala Dosa</strong></h4>\r\n\r\n<p style=\"text-align:justify\">A beloved dish across India, the crispy and flavorful Masala Dosa is a must-try when in Pollachi. Paired with tangy sambar and chutneys, it&rsquo;s a perfect fast food choice for breakfast or a light meal.</p>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Idli and Vada</strong></h4>\r\n\r\n<p style=\"text-align:justify\">Steamed rice cakes and crunchy lentil fritters, Idli and Vada are classic South Indian fast food items. Their simplicity and lightness make them ideal for a quick bite.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>North Indian Favorites</strong></h3>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Paneer Tikka</strong></h4>\r\n\r\n<p style=\"text-align:justify\">Paneer Tikka is a popular North Indian appetizer that has found its way into Pollachi&rsquo;s fast food scene. The smoky, grilled paneer marinated in spices makes it a delightful treat.</p>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Chole Bhature</strong></h4>\r\n\r\n<p style=\"text-align:justify\">A heavy but heavenly dish, Chole Bhature combines spicy chickpea curry with fluffy, deep-fried bread. This dish is perfect for those looking for a hearty and filling fast food option.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Global Fast Food Trends</strong></h3>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Burgers and Fries</strong></h4>\r\n\r\n<p style=\"text-align:justify\">Pollachi&rsquo;s fast food outlets offer global favorites like burgers and fries, which have become a hit among the younger crowd. From crispy chicken burgers to veggie options, there&rsquo;s something for everyone.</p>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Pizzas and Pastas</strong></h4>\r\n\r\n<p style=\"text-align:justify\">Global fast food isn&rsquo;t complete without mentioning pizzas and pastas, which have grown in popularity. With a mix of local and international flavors, Pollachi&rsquo;s pizza joints offer a variety of choices.</p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>Exploring Fast Food at Clove Restaurant</strong></h2>\r\n\r\n<h3 style=\"text-align:justify\"><strong>What Makes Clove Stand Out?</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Clove Restaurant, located in Pollachi, is a prime spot for fast food lovers. With a menu that mixes traditional flavors with modern fast food trends, Clove offers a unique dining experience.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Signature Dishes You Must Try</strong></h3>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Clove&#39;s Special Burgers</strong></h4>\r\n\r\n<p style=\"text-align:justify\">Clove&rsquo;s burgers stand out for their juicy patties and gourmet toppings. Whether you prefer chicken, beef, or vegetarian options, Clove has a burger that will tantalize your taste buds.</p>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Traditional Meets Modern: Fusion Dishes</strong></h4>\r\n\r\n<p style=\"text-align:justify\">Clove Restaurant is known for its fusion dishes, where local ingredients meet global fast food trends. Dishes like paneer-stuffed quesadillas and dosa wraps are crowd favorites.</p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>Street Food: A Must-Try Experience in Pollachi</strong></h2>\r\n\r\n<h3 style=\"text-align:justify\"><strong>The Charm of Local Street Vendors</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Street food in Pollachi offers a different kind of charm. The aroma of freshly prepared snacks like bajjis (fried snacks) and samosas fills the air, making it hard to resist.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Top Street Food Locations</strong></h3>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Pollachi Bus Stand Area</strong></h4>\r\n\r\n<p style=\"text-align:justify\">The bus stand area is a bustling hotspot for street food, offering everything from crispy dosas to spicy chaat.</p>\r\n\r\n<h4 style=\"text-align:justify\"><strong>Gandhipuram Road</strong></h4>\r\n\r\n<p style=\"text-align:justify\">Another must-visit for street food lovers, Gandhipuram Road offers a wide variety of street food stalls with delectable treats.</p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>Health-Conscious Fast Food Choices</strong></h2>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Fresh Salads and Wraps</strong></h3>\r\n\r\n<p style=\"text-align:justify\">For those looking for healthier fast food, many outlets in Pollachi, including Clove, offer fresh salads and wraps. These dishes are packed with nutrients and are perfect for a light meal.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Vegan and Gluten-Free Options</strong></h3>\r\n\r\n<p style=\"text-align:justify\">With an increasing demand for vegan and gluten-free fast food, Pollachi&rsquo;s eateries are adapting by offering a variety of such options, including grain-free bowls and plant-based burgers.</p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>Tips for Finding the Best Fast Food in Pollachi</strong></h2>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Look for Local Recommendations</strong></h3>\r\n\r\n<p style=\"text-align:justify\">To find hidden gems, always ask locals for recommendations. Pollachi is full of small eateries that offer some of the best fast food in town.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Explore Online Reviews and Ratings</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Check platforms like Google and Zomato for reviews and ratings. This can help you discover the most popular fast food spots in Pollachi.</p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>Why Clove Restaurant is the Ideal Choice for Fast Food Lovers</strong></h2>\r\n\r\n<h3 style=\"text-align:justify\"><strong>The Perfect Blend of Quality and Taste</strong></h3>\r\n\r\n<p style=\"text-align:justify\">At Clove Restaurant, you&rsquo;ll find a perfect mix of high-quality ingredients and excellent taste. Their fast food options cater to every palate, ensuring a memorable dining experience.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Ambiance and Service: A Cut Above the Rest</strong></h3>\r\n\r\n<p style=\"text-align:justify\">In addition to delicious food, Clove offers a cozy ambiance and friendly service, making it a top choice for fast food in Pollachi.</p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>Conclusion</strong></h2>\r\n\r\n<p style=\"text-align:justify\">Pollachi is a growing hub for fast food lovers, offering everything from traditional South Indian delicacies to international fast food favorites. Whether you&rsquo;re a fan of street food or prefer dining in a restaurant, you won&rsquo;t be disappointed. And if you&rsquo;re looking for a one-of-a-kind fast food experience, make sure to visit <strong>Clove Restaurant</strong>&mdash;it&rsquo;s a local favorite for a reason!</p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>FAQs</strong></h2>\r\n\r\n<h3 style=\"text-align:justify\"><strong>What are the must-try fast food dishes in Pollachi?</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Masala Dosa, Idli, Vada, and fusion dishes at Clove Restaurant are some must-try options.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Is fast food expensive in Pollachi?</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Fast food in Pollachi is quite affordable, with options available for all budgets.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Are there vegetarian fast food options available?</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Yes, many outlets, including Clove, offer a wide variety of vegetarian dishes like paneer tikka and salads.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>Where can I find the best street food in Pollachi?</strong></h3>\r\n\r\n<p style=\"text-align:justify\">The Pollachi Bus Stand area and Gandhipuram Road are known for their fantastic street food vendors.</p>\r\n\r\n<h3 style=\"text-align:justify\"><strong>What makes Clove Restaurant stand out among other fast food places?</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Clove Restaurant offers a unique blend of traditional flavors and modern fast food trends, along with great ambiance and service.</p>', '2024-01-08 01:21:11', '2024-09-05 14:22:33'),
(4, 'The Best Places for a Family Meal in Pollachi', 'Restaurant where culinary excellence meets hospitality in every dish we serve settled in the heart', 'nothing', 'The Best Places for a Family Meal in Pollachi', 'the-best-places-for-a-family-meal-in-pollachi', 'Restaurant where culinary excellence meets hospitality in every dish we serve settled in the heart', 'images/w.jpg', 'The Best Places for a Family Meal in Pollachi', '<p>Pollachi is known not just for its scenic beauty but also for its diverse culinary scene, making it a fantastic place to enjoy meals with family. Whether you&rsquo;re craving traditional South Indian flavors or international cuisine, Pollachi has family-friendly restaurants that offer something for everyone. Let&rsquo;s explore some of the best places for a memorable family meal in this charming town.</p>\r\n\r\n<h2><strong>Why Pollachi is Perfect for Family Dining</strong></h2>\r\n\r\n<h3><strong>A Welcoming Atmosphere for Families</strong></h3>\r\n\r\n<p>Pollachi&rsquo;s restaurants are designed to make family dining enjoyable. From spacious seating arrangements to warm hospitality, these eateries know how to make families feel at home.</p>\r\n\r\n<h3><strong>Variety of Dining Options</strong></h3>\r\n\r\n<p>Whether you&rsquo;re in the mood for traditional South Indian meals, North Indian cuisine, or international dishes, Pollachi&rsquo;s food scene has it all. This variety ensures that every member of the family can find something they love.</p>\r\n\r\n<h2><strong>Top Family-Friendly Restaurants in Pollachi</strong></h2>\r\n\r\n<h3><strong>Clove Restaurant: A Fusion of Tradition and Innovation</strong></h3>\r\n\r\n<p>Clove Restaurant, located in Pollachi, is one of the top choices for families. Its unique blend of traditional and modern cuisine makes it a favorite among locals and visitors alike.</p>\r\n\r\n<h4><strong>Why Clove is Ideal for Families</strong></h4>\r\n\r\n<p>Clove offers a cozy and welcoming environment, perfect for family meals. Their menu is extensive, with dishes that cater to both adults and kids, ensuring that everyone leaves happy.</p>\r\n\r\n<h4><strong>Must-Try Dishes at Clove</strong></h4>\r\n\r\n<p>Clove&rsquo;s signature dishes, such as their fusion pizzas and South Indian-inspired burgers, are must-tries. The restaurant also offers a range of vegetarian and kid-friendly options, making it a great spot for all age groups.</p>\r\n\r\n<h2><strong>Family Dining on a Budget in Pollachi</strong></h2>\r\n\r\n<h3><strong>Affordable Yet Delicious Meals</strong></h3>\r\n\r\n<p>Pollachi offers many restaurants where you can enjoy a delicious family meal without breaking the bank. Places like Hari Mess and Hotel Amutha Surabhi offer affordable, yet flavorful meals.</p>\r\n\r\n<h3><strong>Value for Money Options</strong></h3>\r\n\r\n<p>Restaurants in Pollachi are known for offering great value for money. Most family-friendly spots provide generous portions, making it easy to feed a crowd without overspending.</p>\r\n\r\n<h2><strong>Dining with Kids: Best Choices in Pollachi</strong></h2>\r\n\r\n<h3><strong>Kid-Friendly Menu Items</strong></h3>\r\n\r\n<p>Restaurants like <strong>Clove</strong> offer kid-friendly menu items such as burgers, fries, and pizzas, which are sure to keep the little ones happy.</p>\r\n\r\n<h3><strong>Play Areas and Entertainment for Kids</strong></h3>\r\n\r\n<p>Some family-friendly restaurants in Pollachi also offer play areas or entertainment options for kids, allowing parents to relax while their children stay entertained.</p>\r\n\r\n<h2><strong>Special Occasions: Where to Dine in Pollachi</strong></h2>\r\n\r\n<h3><strong>Celebrating Birthdays or Anniversaries</strong></h3>\r\n\r\n<p>Planning a special occasion like a birthday or anniversary? <strong>Clove Restaurant</strong>&nbsp;are great choices, offering a celebratory ambiance with special dishes to mark the occasion.</p>\r\n\r\n<h3><strong>Ideal Venues for Family Get-Togethers</strong></h3>\r\n\r\n<p>Pollachi is home to several restaurants that can accommodate large family gatherings. With their spacious seating and special menu options, places like Hotel Amutha Surabhi are perfect for family reunions.</p>\r\n\r\n<h2><strong>Healthy Dining Choices for Families</strong></h2>\r\n\r\n<h3><strong>Vegetarian and Vegan Options</strong></h3>\r\n\r\n<p>For health-conscious families, Pollachi offers many restaurants that provide vegetarian and vegan options. Restaurants like Clove feature healthy, yet delicious meals that cater to a variety of dietary preferences.</p>\r\n\r\n<h3><strong>Fresh and Organic Ingredients</strong></h3>\r\n\r\n<p>More and more restaurants in Pollachi are focusing on using fresh, organic ingredients, ensuring that your family enjoys a nutritious meal without sacrificing taste.</p>\r\n\r\n<h2><strong>Street Food for Family Outings</strong></h2>\r\n\r\n<h3><strong>Popular Street Food Spots for Families</strong></h3>\r\n\r\n<p>If you&rsquo;re in the mood for a more casual dining experience, Pollachi&rsquo;s street food scene is worth exploring. Family-friendly spots like the Pollachi Bus Stand area offer a wide variety of local delicacies.</p>\r\n\r\n<h3><strong>Must-Try Local Delicacies</strong></h3>\r\n\r\n<p>Don&rsquo;t miss out on street food favorites like bajjis, samosas, and parottas. These snacks are perfect for a quick, tasty family outing.</p>\r\n\r\n<h2><strong>Tips for Choosing the Best Family Restaurant in Pollachi</strong></h2>\r\n\r\n<h3><strong>Look for Family-Friendly Menus</strong></h3>\r\n\r\n<p>When dining with family, it&rsquo;s essential to choose a restaurant that offers a menu suitable for all ages. Restaurants like Clove and The Slaves offer a wide variety of dishes that cater to everyone in the family.</p>\r\n\r\n<h3><strong>Check Reviews and Recommendations</strong></h3>\r\n\r\n<p>Before heading out, it&rsquo;s a good idea to check online reviews and get recommendations from locals. Websites like Zomato and Google reviews can provide insights into which restaurants are best for family dining.</p>\r\n\r\n<h2><strong>Conclusion</strong></h2>\r\n\r\n<p>Pollachi is an excellent destination for family meals, offering a wide range of restaurants that cater to every taste and budget. Whether you&rsquo;re looking for a casual bite or a special dining experience, Pollachi has something for everyone. So, gather your loved ones and enjoy a delicious family meal in this beautiful town!</p>\r\n\r\n<h2><strong>FAQs</strong></h2>\r\n\r\n<h3><strong>What are the most family-friendly restaurants in Pollachi?</strong></h3>\r\n\r\n<p>Some of the best family-friendly restaurants in Pollachi include <strong>Clove Restaurant.</strong></p>\r\n\r\n<h3><strong>Is it easy to find vegetarian meals for families in Pollachi?</strong></h3>\r\n\r\n<p>Yes, many restaurants in Pollachi, including Clove, offer a variety of vegetarian options, making it easy to find meals that suit your family&rsquo;s dietary preferences.</p>\r\n\r\n<h3><strong>Where can we celebrate special occasions with family in Pollachi?</strong></h3>\r\n\r\n<p>Clove Restaurant and The Slaves are excellent choices for special occasions, offering a festive atmosphere and special menu options.</p>\r\n\r\n<h3><strong>What makes Clove Restaurant stand out for family dining?</strong></h3>\r\n\r\n<p>Clove offers a unique blend of traditional and modern cuisine, along with a welcoming environment that&rsquo;s perfect for families.</p>', '2024-01-15 00:42:22', '2024-09-05 14:36:31'),
(5, 'Best Vegetarian Restaurants in Pollachi: Top Picks for Plant-Based Dining', 'Restaurant where culinary excellence meets hospitality in every dish we serve settled in the heart', 'nothing', 'Best Vegetarian Restaurants in Pollachi: Top Picks for Plant-Based Dining', 'best-vegetarian-restaurants-in-pollachi-top-picks-for-plant-based-dining', 'Restaurant where culinary excellence meets hospitality in every dish we serve settled in the heart', 'images/q.jpg', 'Best Vegetarian Restaurants in Pollachi', '<p>Pollachi, a charming town known for its lush landscapes and rich culture, is also home to a diverse culinary scene. For those who follow a plant-based diet or simply enjoy vegetarian meals, Pollachi offers several excellent dining options. Whether you&#39;re a local or just passing through, here are the top vegetarian restaurants in Pollachi that you should not miss.</p>\r\n\r\n<h2><strong>Why Pollachi is a Great Place for Vegetarian Dining</strong></h2>\r\n\r\n<h3><strong>A Rich Tradition of Vegetarian Cuisine</strong></h3>\r\n\r\n<p>Pollachi&rsquo;s cuisine is heavily influenced by South Indian traditions, which feature a variety of vegetarian dishes. The local diet includes flavorful dishes made with fresh ingredients, making it a haven for vegetarians.</p>\r\n\r\n<h3><strong>Growing Popularity of Plant-Based Options</strong></h3>\r\n\r\n<p>With the rise of health consciousness and environmental awareness, many restaurants in Pollachi are expanding their vegetarian offerings. This trend ensures that vegetarians have plenty of choices, from traditional dishes to innovative new recipes.</p>\r\n\r\n<h2><strong>Top Vegetarian Restaurants in Pollachi</strong></h2>\r\n\r\n<h3><strong>Clove Restaurant: A Vegetarian Delight</strong></h3>\r\n\r\n<p>Clove Restaurant stands out as a top choice for vegetarians in Pollachi. Known for its fusion of traditional and contemporary cuisine, Clove offers a wide range of plant-based dishes that cater to diverse tastes.</p>\r\n\r\n<h4><strong>Why Clove is a Must-Visit for Vegetarians</strong></h4>\r\n\r\n<p>Clove&#39;s menu includes a variety of vegetarian options that highlight local ingredients and innovative cooking techniques. From hearty dosas to creative salads, Clove offers something for every palate.</p>\r\n\r\n<h4><strong>Signature Vegetarian Dishes at Clove</strong></h4>\r\n\r\n<p>Some must-try vegetarian dishes at Clove include the Paneer Tikka, Vegetable Biryani, and their special Avocado Salad. These dishes are not only delicious but also prepared with a focus on health and flavor.</p>\r\n\r\n<h2><strong>Exploring Vegetarian Dining on a Budget</strong></h2>\r\n\r\n<h3><strong>Affordable Vegetarian Meals</strong></h3>\r\n\r\n<p>Pollachi is home to several budget-friendly vegetarian restaurants that offer delicious meals without breaking the bank. Places like Hari Mess and Hotel Amutha Surabhi provide great value for money.</p>\r\n\r\n<h3><strong>Best Value for Money Options</strong></h3>\r\n\r\n<p>When dining out on a budget, look for restaurants that offer generous portions and affordable prices. Many local spots in Pollachi ensure that you get the best bang for your buck.</p>\r\n\r\n<h2><strong>Healthy Vegetarian Dining Choices</strong></h2>\r\n\r\n<h3><strong>Emphasis on Fresh and Organic Ingredients</strong></h3>\r\n\r\n<p>Many restaurants in Pollachi are focusing on fresh, organic ingredients, providing healthy options for vegetarians. Clove Restaurant, in particular, prides itself on using high-quality, fresh ingredients in its dishes.</p>\r\n\r\n<h3><strong>Vegan and Gluten-Free Options</strong></h3>\r\n\r\n<p>For those with specific dietary needs, several restaurants offer vegan and gluten-free options. Always check the menu or ask the staff to ensure that your dietary preferences are accommodated.</p>\r\n\r\n<h2><strong>Tips for Choosing the Best Vegetarian Restaurant in Pollachi</strong></h2>\r\n\r\n<h3><strong>Look for Variety in the Menu</strong></h3>\r\n\r\n<p>When selecting a vegetarian restaurant, consider those that offer a wide range of dishes. This ensures that there&rsquo;s something for everyone, whether you prefer traditional or contemporary cuisine.</p>\r\n\r\n<h3><strong>Check Reviews and Recommendations</strong></h3>\r\n\r\n<p>Before visiting, check online reviews and seek recommendations from locals. Websites like Google Reviews and food blogs can provide valuable insights into the best vegetarian dining spots.</p>\r\n\r\n<h2><strong>Conclusion</strong></h2>\r\n\r\n<p>Pollachi offers a fantastic selection of vegetarian restaurants that cater to various tastes and budgets. Whether you&#39;re in the mood for traditional South Indian dishes or innovative plant-based cuisine, you&rsquo;re sure to find a restaurant that meets your needs. Enjoy exploring these top picks and savor the delightful vegetarian offerings in this beautiful town!</p>\r\n\r\n<h2><strong>FAQs</strong></h2>\r\n\r\n<h3><strong>What are the best vegetarian restaurants in Pollachi?</strong></h3>\r\n\r\n<p>Some top vegetarian restaurants in Pollachi include <strong>Clove Restaurant.</strong></p>\r\n\r\n<h3><strong>Is Clove Restaurant a good choice for vegetarians?</strong></h3>\r\n\r\n<p>Yes, Clove Restaurant offers a diverse range of vegetarian dishes that highlight both traditional and modern flavors.</p>\r\n\r\n<h3><strong>Can I find vegan and gluten-free options in Pollachi?</strong></h3>\r\n\r\n<p>Yes, many restaurants in Pollachi, including Clove Restaurant, provide vegan and gluten-free options.</p>\r\n\r\n<h3><strong>What should I try at Hotel Amutha Surabhi?</strong></h3>\r\n\r\n<p>Hotel Amutha Surabhi is known for its traditional South Indian meals, such as Thali, Masala Dosa, and Sambar.</p>', '2024-01-17 00:10:42', '2024-09-05 14:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `daily_step_histories`
--

CREATE TABLE `daily_step_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `total_steps` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_step_histories`
--

INSERT INTO `daily_step_histories` (`id`, `user_id`, `date`, `total_steps`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-09-08', 3, '2024-09-08 14:40:28', '2024-09-08 09:40:43'),
(3, 1, '2024-09-09', 50000, '2024-09-09 12:53:55', '2024-09-11 07:38:31');

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
(1, '52 Tola Chandi Price In Pakistan- Silver Rate In Pakistan', 'As of today, 3 May 2024, the silver rate in Pakistan is Rs. 2,530  per tola. These rates remain consistent across major cities like Karachi, Lahore.', 'images/a309ca9e0e58df3c4aa7ecd35d5fc049e4572681.webp', '<div class=\"updatSetting\">\r\n<hr />By Staff ⏰ Updated&nbsp; <strong>May 3, 2024</strong>\r\n\r\n<hr /></div>\r\n\r\n<div class=\"pt-3 updatSetting\">\r\n<h2><strong>Current Silver rate in Pakistan today, 3 May 2024, is as follows</strong></h2>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">24k Silver Price</th>\r\n			<th scope=\"col\">IN RS / PKR</th>\r\n			<th scope=\"col\">IN USD/Dollar</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>Rate 1 Gram</strong></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#e74c3c\"><strong>219</strong></span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#27ae60\"><strong>0.78</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>Rate per 10 Grams</strong></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#e74c3c\"><strong>&nbsp;2,160</strong></span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#27ae60\"><strong>7.75</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>Rate per Tola</strong></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#e74c3c\"><strong>2,530</strong></span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#27ae60\"><strong>9.04</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>Rate per Troy Ounce</strong></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#e74c3c\"><strong>6,750</strong></span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#27ae60\"><strong>24.12</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>Rate per Kilogram</strong></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#e74c3c\"><strong>218,610</strong></span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#27ae60\"><strong>775.39</strong></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Silver rate remain same in the whole country. Slight difference of same rupees may notice sometime. To know gold rate, check the link. <a href=\"http://silvergoldrate.pk/gold-rate-in-pakistan\">Silvergoldrate.pk</a></p>\r\n\r\n<p><img alt=\"Chandi Price In Pakistan\" src=\"https://silvergoldrate.pk/images/today-silver-rate-in-pakistan_1702985080.webp\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<h2><strong><span style=\"color:#111111\">Today Silver(Chandi)&nbsp;Rate in Pakistan 29 May&nbsp;</span><span style=\"color:#111111\">2024</span></strong></h2>\r\n\r\n<p>(silver also known as &ldquo;Chandi&rdquo;).</p>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table table-bordered table-hover\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th>Silver Type</th>\r\n			<th>Rate per Gram</th>\r\n			<th>Rate per 10 Grams</th>\r\n			<th>Rate per Tola</th>\r\n			<th>Rate per Troy Ounce</th>\r\n			<th>Rate per Kilogram</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">24K</td>\r\n			<td style=\"text-align:center\">219</td>\r\n			<td style=\"text-align:center\">2,160</td>\r\n			<td style=\"text-align:center\">2,530</td>\r\n			<td style=\"text-align:center\">6,750</td>\r\n			<td style=\"text-align:center\">218,610</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">22K</td>\r\n			<td style=\"text-align:center\">200</td>\r\n			<td style=\"text-align:center\">1,980</td>\r\n			<td style=\"text-align:center\">2,330</td>\r\n			<td style=\"text-align:center\">6,200</td>\r\n			<td style=\"text-align:center\">199,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">21K</td>\r\n			<td style=\"text-align:center\">191</td>\r\n			<td style=\"text-align:center\">1,900</td>\r\n			<td style=\"text-align:center\">2,220</td>\r\n			<td style=\"text-align:center\">6,200</td>\r\n			<td style=\"text-align:center\">190,500</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">18K</td>\r\n			<td style=\"text-align:center\">162</td>\r\n			<td style=\"text-align:center\">1,615</td>\r\n			<td style=\"text-align:center\">1,890</td>\r\n			<td style=\"text-align:center\">5,000</td>\r\n			<td style=\"text-align:center\">162,300</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p>Table has silver rate according to exchange market. A little bit difference may notice across the city. Visit Sona/bullion market before making and deal or purchase so you may know the exact rate of that time from your city market.</p>\r\n\r\n<h2><span style=\"background-color:white\"><strong><span style=\"color:#111111\">Silver Rate in Major Cities in Pakistan</span></strong></span></h2>\r\n\r\n<table class=\"table table-bordered table-hover\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th>City</th>\r\n			<th>Silver Rate per Tola</th>\r\n			<th>Silver Rate per 10 Gram</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Karachi</td>\r\n			<td style=\"text-align:center\">2,530</td>\r\n			<td style=\"text-align:center\">2,160</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Hyderabad</td>\r\n			<td style=\"text-align:center\">2,530</td>\r\n			<td style=\"text-align:center\">2,160</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Lahore</td>\r\n			<td style=\"text-align:center\">2,530</td>\r\n			<td style=\"text-align:center\">2,160</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Multan</td>\r\n			<td style=\"text-align:center\">2,530</td>\r\n			<td style=\"text-align:center\">2,160</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Islamabad</td>\r\n			<td style=\"text-align:center\">2,530</td>\r\n			<td style=\"text-align:center\">2,160</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Faisalabad</td>\r\n			<td style=\"text-align:center\">2,530</td>\r\n			<td style=\"text-align:center\">2,160</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Rawalpindi</td>\r\n			<td style=\"text-align:center\">2,530</td>\r\n			<td style=\"text-align:center\">2,160</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Quetta</td>\r\n			<td style=\"text-align:center\">2,530</td>\r\n			<td style=\"text-align:center\">2,160</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><strong><span style=\"background-color:white\"><span style=\"color:#111111\">52.5 Tola Chandi Price in Different Cities of Pakistan</span></span></strong></h2>\r\n\r\n<table class=\"table table-bordered table-hover\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th>City</th>\r\n			<th>52.5 Tola Chandi City Prices</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">Karachi</td>\r\n			<td style=\"text-align:center\">133,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Hyderabad</td>\r\n			<td style=\"text-align:center\">133,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Lahore</td>\r\n			<td style=\"text-align:center\">133,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Multan</td>\r\n			<td style=\"text-align:center\">133,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Islamabad</td>\r\n			<td style=\"text-align:center\">133,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Faisalabad</td>\r\n			<td style=\"text-align:center\">133,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Rawalpindi</td>\r\n			<td style=\"text-align:center\">133,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Quetta</td>\r\n			<td style=\"text-align:center\">133,800</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><span style=\"background-color:white\"><span style=\"color:#111111\">We are clearing that the silver rate remains the same throughout Pakistan, although you may notice a little bit of a change of </span><strong><span style=\"color:#ff0000\">50 rupees to 200</span></strong><span style=\"color:#111111\"><strong> </strong>rupees across cities.</span></span></p>\r\n\r\n<h2><strong>About Silver</strong></h2>\r\n\r\n<p>Silver is a metal that is valuable after Gold. It is used for many purposes mainly for jewelry and investing purposes. The rate of silver is less than the rate of gold. That&rsquo;s why society chooses silver as compared to gold. It is a very sensitive and delicate metal to use. People love to wear silver and love to gift silver.</p>\r\n\r\n<h2><strong>From where does we get silver</strong></h2>\r\n\r\n<p>Argentite, chlorargyrite and galena are the ores where it is excreted A limited amount of this metal is also found in copper, gold and zinc as impurity.</p>\r\n\r\n<h2><strong>Where silver is used?</strong></h2>\r\n\r\n<p>Silver is liked due to its luster. It is a valuable metal used to make jewelry. People also keep it for investing purposes. It is more affordable than gold because it has much less price than gold.</p>\r\n\r\n<p>For example, 1 Tola of Silver/Chandi has price round about <strong>2,530</strong>&nbsp;<strong>PKR </strong>while of gold it is <strong>237,200&nbsp;</strong>(<a href=\"https://silvergoldrate.pk/gold-rate-in-pakistan\">Silvergoldrate.pk</a>).</p>\r\n\r\n<h3><strong>Others uses</strong></h3>\r\n\r\n<ol>\r\n	<li>For making utensils</li>\r\n	<li>For making coins</li>\r\n	<li>For making jewelry</li>\r\n	<li>It is also used sometimes&nbsp;in&nbsp;embroidery</li>\r\n</ol>\r\n\r\n<h2><strong>Zakat on Silver</strong></h2>\r\n\r\n<p>According to Islamic teaching Gold and Silver are the entities that cause Zakat.</p>\r\n\r\n<p>Zakat is a fixed amount given on a specific amount called &ldquo;Nisaab&rdquo;. Its percentage is fixed that is 0.025%. For silver &ldquo;Nisaab&rdquo; is 52.5 tola (Chandi) or silver.</p>\r\n\r\n<p>And Zakat will be 0.25% of total amount.</p>\r\n\r\n<p>Suppose 1 tola price = 2550 PKR</p>\r\n\r\n<p>Price of 52.5 tola: 2550 x 52.5= 133,875</p>\r\n\r\n<p>Zakat will be: 0.025 x 133, 875= 3,346.</p>\r\n\r\n<p>You can calculate your Zakat according from this formula.</p>\r\n\r\n<h2><strong>Factors influence the silver price in Pakistan</strong></h2>\r\n\r\n<p>The major factors that cause the fluctuation of silver rates in Pakistan are economic stability, political conditions, and changes in the value of the US dollar, as silver is traded internationally in dollars.</p>\r\n\r\n<ol>\r\n	<li>Its demand as compare to gold is less</li>\r\n	<li>Gold price in bullion market effect the silver price</li>\r\n	<li>Political insatiability influence silver price</li>\r\n	<li>Industrial demand changes the silver price in gold market</li>\r\n	<li style=\"text-align:justify\">As there is less supply of silver from international markets, it is the main reason for the change in silver rates in Pakistan.</li>\r\n	<li style=\"text-align:justify\">Due to economic disturbances, people can&rsquo;t afford more amount of silver now, which can impact the silver rates.</li>\r\n	<li style=\"text-align:justify\">The price of gold also affects the silver rate, as the rate of gold rises, it also affects the silver rates.</li>\r\n	<li style=\"text-align:justify\">Due to interest issues, the silver becomes unobtainable.</li>\r\n</ol>\r\n\r\n<h2><strong>Factors influence the silver rate in Worldwide</strong></h2>\r\n\r\n<p>The factors listed below influence the silver rate in Pakistan.</p>\r\n\r\n<p>Factors that influence silver Pakistan:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Supply and demand</p>\r\n	</li>\r\n	<li>\r\n	<p>Gold price</p>\r\n	</li>\r\n	<li>\r\n	<p>Interest rates</p>\r\n	</li>\r\n	<li>\r\n	<p>Inflation</p>\r\n	</li>\r\n	<li>\r\n	<p>Industrial demand</p>\r\n	</li>\r\n	<li>\r\n	<p>Economic trends</p>\r\n	</li>\r\n	<li>\r\n	<p>US Dollar</p>\r\n	</li>\r\n	<li>\r\n	<p>Govt Policies</p>\r\n	</li>\r\n	<li>\r\n	<p>Import and exchange rate</p>\r\n	</li>\r\n</ol>\r\n\r\n<h2><strong>Current Silver Rates in Pakistan</strong></h2>\r\n\r\n<p><span style=\"background-color:white\"><span style=\"color:#111111\">As of Saturday,&nbsp;</span><span style=\"color:#ff0000\"><strong>3 May 2024</strong></span><span style=\"color:#111111\">, the silver rate in Pakistan stands at</span> <strong><span style=\"color:#ff0000\">Rs.&nbsp;2,530 per tola</span></strong><strong>.</strong><span style=\"color:#111111\">These rates can change from city to city. For instance, in Karachi, Hyderabad, Lahore, Multan, Islamabad, Faisalabad, Rawalpindi, and Quetta.</span></span></p>\r\n\r\n<h2><span style=\"background-color:white\"><strong><u>FAQs</u></strong></span></h2>\r\n\r\n<h3><strong><span style=\"color:#111111\">1. What is the most recent silver rate in Pakistan?</span></strong></h3>\r\n\r\n<p>As of today, <strong><span style=\"color:#ff0000\">3 May&nbsp;</span></strong><span style=\"color:#ff0000\"><strong>2024</strong></span>, the silver rate in Pakistan is <span style=\"color:#ff0000\"><strong>Rs. </strong></span><span style=\"background-color:white\"><strong><span style=\"color:#ff0000\">2,530 </span></strong></span><span style=\"color:#ff0000\"><strong>per tola</strong></span>.</p>\r\n\r\n<h3><strong><span style=\"color:#111111\">2. Why does the silver Rate vary?</span></strong></h3>\r\n\r\n<p>The major factors that cause the variations of silver rates in Pakistan are economic stability, political conditions, and changes in the value of the US dollar, as silver is traded internationally in dollars.</p>\r\n\r\n<h3><strong><span style=\"color:#111111\">3. Is the silver rate the same in all cities of Pakistan?</span></strong></h3>\r\n\r\n<p>Yes, the silver rate remains the same throughout Pakistan but you may find a difference of some rupees in different cities.</p>\r\n\r\n<h3><strong><span style=\"color:#111111\">4. How can I keep track of the latest silver rates in Pakistan?</span></strong></h3>\r\n\r\n<p>To keep in touch with the latest silver rates in Pakistan, you can regularly check reliable sources like <a href=\"https://silvergoldrate.pk/\"><strong>silvergoldrate.pk</strong></a>.</p>\r\n\r\n<h3><strong><span style=\"color:#111111\">5. Can silver prices be affected by global factors?</span></strong></h3>\r\n\r\n<p>Yes, silver prices can be affected by global factors.</p>\r\n\r\n<h3><strong><span style=\"color:#111111\">6. How often do silver rates change?</span></strong></h3>\r\n\r\n<p>Silver rates can vary throughout the day, based on market conditions and global factors.</p>\r\n</div>', '<script type=\"application/ld+json\" class=\"rank-math-schema\">\r\n    {\r\n        \"@context\": \"https://schema.org\",\r\n        \"@graph\": [\r\n            {\r\n                \"@type\": [\"WebPage\", \"FAQPage\"],\r\n                \"@id\": \"https://silvergoldrate.pk#webpage\",\r\n                \"url\": \"https://silvergoldrate.pk\",\r\n                \"name\": \"Silver Rate in Pakistan - 52 Tola Chandi Price in Pakistan\",\r\n               \"datePublished\": \"2023-12-21T12:10:00+05:00\",\r\n               \"dateModified\": \"2024-05-03T12:10:00+05:00\",\r\n                \"about\": { \"@id\": \"https://silvergoldrate.pk#person\" },\r\n                \"isPartOf\": { \"@id\": \"https://silvergoldrate.pk#website\" },\r\n                \"primaryImageOfPage\": { \"@id\": \"https://silvergoldrate.pk/images/today-silver-rate-in-pakistan.webp\" },\r\n                \"inLanguage\": \"en-US\",\r\n                \"mainEntity\": [\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk#faq-question-1690965100628\",\r\n                        \"name\": \"1. What is the most recent silver rate in Pakistan?\",\r\n                        \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"As of today, 3 May 2024, the silver rate in Pakistan is Rs. 2,530 per tola.\" }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk#faq-question-1690965151880\",\r\n                        \"name\": \"2. Why does the silver Rate vary?\",\r\n                        \"acceptedAnswer\": {\r\n                            \"@type\": \"Answer\",\r\n                            \"text\": \"The major factors that cause the variations of silver rates in Pakistan are economic stability, political conditions, and changes in the value of the US dollar, as silver is traded internationally in dollars.\"\r\n                        }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk#faq-question-1690965187663\",\r\n                        \"name\": \"3. Is the silver rate the same in all cities of Pakistan?\",\r\n                        \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"Yes, the silver rate remains the same throughout Pakistan but you may find a difference of some rupees in different cities.\" }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk#faq-question-1690965272743\",\r\n                        \"name\": \"4. How can I keep track of the latest silver rates in Pakistan?\",\r\n                        \"acceptedAnswer\": {\r\n                            \"@type\": \"Answer\",\r\n                            \"text\": \"To keep in touch with the latest silver rates in Pakistan, you can regularly check reliable sources like <a href=\\\"https://silvergoldrate.pk\\\">silvergoldrate.pk</a>.\"\r\n                        }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk#faq-question-1690965319486\",\r\n                        \"name\": \"5. Can silver prices be affected by global factors?\",\r\n                        \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"Yes, silver prices can be affected by global factors.\" }\r\n                    },\r\n                    {\r\n                        \"@type\": \"Question\",\r\n                        \"url\": \"https://silvergoldrate.pk#faq-question-1690965419438\",\r\n                        \"name\": \"6. How often do silver rates change?\",\r\n                        \"acceptedAnswer\": { \"@type\": \"Answer\", \"text\": \"Silver rates can vary throughout the day, based on market conditions and global factors.\" }\r\n                    }\r\n                ]\r\n            }\r\n         \r\n        ]\r\n    }\r\n</script>', '2023-12-09 07:33:25', '2024-05-03 18:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `load_business_directory_ads`
--

CREATE TABLE `load_business_directory_ads` (
  `id` int(11) NOT NULL,
  `display_count` int(11) NOT NULL DEFAULT 0,
  `company_name` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `whatapp_number` text DEFAULT NULL,
  `phone_number` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `services_list` text DEFAULT NULL,
  `email_address` text DEFAULT NULL,
  `website_address` text DEFAULT NULL,
  `facebbook_page_url` text DEFAULT NULL,
  `start_date` text DEFAULT NULL,
  `end_date` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `load_business_directory_ads`
--

INSERT INTO `load_business_directory_ads` (`id`, `display_count`, `company_name`, `address`, `whatapp_number`, `phone_number`, `img`, `services_list`, `email_address`, `website_address`, `facebbook_page_url`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(11, 0, 'ABC Advertising', '123 Main St, New York, NY', '+1234567890', '+0987654321', 'vouchar_img/wdwqd-wwqe.png', 'Web Development, SEO, Digital Marketing', 'info@abcadvertising.com', 'https://www.abcadvertising.com', 'https://www.facebook.com/ABCAdvertising', '2024-09-01', '2024-12-01', '2024-09-12 08:40:52', '2024-09-12 08:40:52'),
(12, 0, 'wdwqd', '2332', 'w23213', '213213', 'vouchar_img/wdwqd-wwqe.png', 'e32321, 21321321', 'wewqew', 'wwqe', '213213213', '2024-09-16', '2024-09-13', '2024-09-12 13:41:39', '2024-09-12 13:41:39');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `expires_at`) VALUES
(29, 'App\\Models\\User', 1, 'API Token', '53cc31aa65c577e189da711ef1907f4f44b1e804defbaceaaab4db7375c752db', '[\"*\"]', '2024-09-09 18:10:41', '2024-09-09 17:55:37', '2024-09-09 18:10:41', '2024-09-10 17:55:37');

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
(1, 'saqib', 'codehub82@gmail.com', NULL, '$2y$10$F45lJ4t2..Kj7wqU5c3j3.kAs1jrsOIxbcEt7swWKMlc2g1uFHyyK', NULL, '2023-07-11 04:17:57', '2024-09-07 15:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_vouchers`
--

CREATE TABLE `user_vouchers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `redeemed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_vouchers`
--

INSERT INTO `user_vouchers` (`id`, `user_id`, `voucher_id`, `redeemed_at`, `created_at`, `updated_at`) VALUES
(9, 1, 1, '2024-09-07 16:32:17', '2024-09-07 10:54:47', '2024-09-07 11:38:46'),
(13, 1, 5, '2024-09-18 16:03:46', '2024-09-07 10:54:47', '2024-09-07 11:38:55'),
(15, 1, 5, NULL, '2024-09-11 09:59:11', '2024-09-11 09:59:11'),
(16, 1, 1, NULL, '2024-09-11 12:43:40', '2024-09-11 12:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `discount_value` int(11) NOT NULL,
  `img` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `company_name`, `discount_value`, `img`, `created_at`, `updated_at`) VALUES
(1, 'FREEDELIVERY', 'Delivery Service', 0, 'vouchar_img/123.png', '2024-09-07 10:52:45', '2024-09-10 08:14:52'),
(2, 'SPRINGSALE', 'Gardening Supplies', 15, 'vouchar_img/123.png', '2024-09-07 10:52:45', '2024-09-10 08:14:54'),
(4, 'EVENTDISCOUNT', 'Event Tickets', 25, 'vouchar_img/123.png', '2024-09-07 10:52:45', '2024-09-10 08:14:57'),
(5, 'HAPPYHOUR', 'Restaurant', 50, 'vouchar_img/123.png', '2024-09-07 10:52:45', '2024-09-10 08:14:59'),
(11, 'EVENTDISCOUNT1', 'APKSLOKLOKwq', 23, 'vouchar_img/123.png', '2024-09-10 13:13:50', '2024-09-10 10:10:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner_ads`
--
ALTER TABLE `banner_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_step_histories`
--
ALTER TABLE `daily_step_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `load_business_directory_ads`
--
ALTER TABLE `load_business_directory_ads`
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
-- Indexes for table `user_vouchers`
--
ALTER TABLE `user_vouchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_voucher` (`voucher_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner_ads`
--
ALTER TABLE `banner_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `daily_step_histories`
--
ALTER TABLE `daily_step_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `load_business_directory_ads`
--
ALTER TABLE `load_business_directory_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_vouchers`
--
ALTER TABLE `user_vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daily_step_histories`
--
ALTER TABLE `daily_step_histories`
  ADD CONSTRAINT `daily_step_histories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_vouchers`
--
ALTER TABLE `user_vouchers`
  ADD CONSTRAINT `fk_voucher` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_vouchers_ibfk_1` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
