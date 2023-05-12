-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2023 at 12:46 PM
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
-- Database: `cards`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `price` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `name`, `image`, `description`, `price`) VALUES
(1, 'Butter', 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTx6blPu11tXo_ZBG9DAPiw4AXnQVmjOSKdUs8LDW4sCaCArctIqgzZravbhwLzBH6x3U8X6scflV7hQE4', 'Indulge in the rich, velvety texture of our creamy butter, crafted from only the finest ingredients. Perfectly versatile, it adds a luxurious touch to any dish, whether you\'re spreading it on toast, baking delectable treats, or cooking savory meals. Elevate your culinary creations with our premium butter, and savor the delicious taste of pure, wholesome goodness.', 4),
(2, 'Laptop', 'https://www.zdnet.com/a/img/resize/89ad80ef5e62511b5aa4a3fe55a1e0b81463995d/2022/10/05/3d233bf8-95fc-4c1a-98a2-1bfebe867fa0/macbook-air-m2-2022-770x433.jpg?auto=webp&fit=crop&height=360&width=640', 'Experience seamless performance with our cutting-edge laptop, designed to handle all your computing needs. Packed with powerful features and sleek design, it delivers speed and efficiency, from work to play. With crisp visuals, crystal-clear audio, and long-lasting battery, our laptop is the ultimate tool for productivity and entertainment on-the-go.', 550),
(3, 'Backpack', 'https://cdn.thewirecutter.com/wp-content/media/2022/12/laptopbackpacks-2048px-6879.jpg?auto=webp&quality=75&width=1024', 'Stay organized and stylish with our durable backpack, perfect for all your daily adventures. Made from premium materials and designed for comfort, it features multiple compartments and pockets to keep your essentials secure and easily accessible. Whether you\'re commuting, traveling, or exploring the great outdoors, our backpack has got you covered.', 70),
(4, 'Hat', 'https://www.ikea.com/us/en/images/products/knorva-hat-blue__0812162_pe771942_s5.jpg?f=s', 'Elevate your style with our classic hat, perfect for any occasion. Crafted from high-quality materials and designed for comfort, it features a timeless design and a snug fit. Whether you\'re out and about, enjoying the sun, or adding the finishing touch to your outfit, our hat is a must-have accessory for any fashion-conscious individual.', 10),
(5, 'Fridge', 'https://image-us.samsung.com/us/home-appliances/refrigerators/MB/MC6.jpg', 'Keep your food fresh and organized with our spacious and energy-efficient fridge. Designed for modern living, it features advanced cooling technology, smart storage solutions, and a sleek and stylish design. Whether you\'re hosting a dinner party, stocking up on groceries, or simply looking to stay healthy, our fridge is the perfect appliance for your kitchen.', 250);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
