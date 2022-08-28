-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 11:40 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `cmps`
--

CREATE TABLE `cmps` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `cmp` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fullname` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmps`
--

INSERT INTO `cmps` (`id`, `name`, `cmp`, `username`, `fullname`) VALUES
(1, 'f', 'f', 'AshiqurOvi', 'Ashiqur Rahman Ovi');

-- --------------------------------------------------------

--
-- Table structure for table `room_rental_registrations`
--

CREATE TABLE `room_rental_registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `alternat_mobile` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `landmark` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `rent` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `sale` varchar(190) CHARACTER SET utf8mb4 DEFAULT NULL,
  `deposit` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `plot_number` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `rooms` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `accommodation` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `open_for_sharing` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `other` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vacant` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `user_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_rental_registrations`
--

INSERT INTO `room_rental_registrations` (`id`, `fullname`, `mobile`, `alternat_mobile`, `email`, `country`, `city`, `landmark`, `rent`, `sale`, `deposit`, `plot_number`, `rooms`, `address`, `accommodation`, `description`, `image`, `open_for_sharing`, `other`, `vacant`, `created_at`, `updated_at`, `user_id`) VALUES
(13, 'Riyadh Arafin Joy', '01234569873', '01010124258', 'joy@gmail.com', 'Bangladesh', 'Khulna', 'aaaaaa', '15000', '12', '3', '78 nh', '2bhk', 'dsdsd', '4', 'dssd', 'uploads/', NULL, 'zx', 0, '2020-06-01 12:21:43', '2020-06-02 12:21:43', 1),
(14, 'Mainul Hassan', '23456769973', '', 'munna@gmail.com', 'Bangladesh', 'Narail', '', '8000', '12', '33333', '78 nh', '1bhk', 'port road bgm', '', '', 'uploads/', NULL, NULL, 1, '2020-06-01 05:06:43', '2020-06-02 05:06:43', 2),
(15, 'No Name', '2222222222', '', 'noname@gmail.com', 'Bangladesh', 'Dhaka', '', '22000', '12666', '33333', '78 nh', '1bhk', 'port road bgm', 'wifi,pridge', 'good to see', 'uploads/Penguins.jpg', NULL, NULL, 1, '2020-05-30 11:19:09', '2020-05-31 11:19:09', 1),
(16, 'Walter White', '01521202478', '12457896323', 'gmail@saymayname.com', 'Bangladesh', 'dhaka', 'los pollos', '19000', '6000000', '1000', '715', '4bhk', 'Ibrahimpur, Mirpur-14', 'crystal meth', 'nayes', 'uploads/', NULL, NULL, 1, '2020-06-02 17:34:28', '2020-06-02 17:34:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_rental_registrations_apartment`
--

CREATE TABLE `room_rental_registrations_apartment` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `alternat_mobile` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `landmark` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `rent` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `deposit` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `plot_number` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `apartment_name` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ap_number_of_plats` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `rooms` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `floor` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `purpose` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `own` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `area` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `accommodation` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `open_for_sharing` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `other` varchar(191) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vacant` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `user_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_rental_registrations_apartment`
--

INSERT INTO `room_rental_registrations_apartment` (`id`, `fullname`, `mobile`, `alternat_mobile`, `email`, `country`, `city`, `landmark`, `rent`, `deposit`, `plot_number`, `apartment_name`, `ap_number_of_plats`, `rooms`, `floor`, `purpose`, `own`, `area`, `address`, `accommodation`, `description`, `image`, `open_for_sharing`, `other`, `vacant`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Ashiqur Rahman Ovi', '2345676567', '', 'admin@ovi.com', 'Bangladesh', 'Dhaka', 'near Ibrahimpur Bazar', '20000', '22222', '905', '', '101', '3bhk', '2nd', 'Residential', 'rented', '1300sqr feet', 'Ibrahimpur, Mirpur \r\n-14', '', 'well ', 'uploads/Modhumoti_Villa.jpg', NULL, NULL, 1, '2020-06-01 11:20:56', '2020-06-02 11:20:56', 1),
(4, 'Heisenberg', '01521202476', '12457896324', 'ashiqurovi@gmail.com', 'Bangladesh', 'dhaka', 'los pollos', '20000', '1000', '715', '5E', 'f8', '1RK', '1st', 'Residential', 'owner', '1200 ', 'Ibrahimpur, Mirpur-14', 'nai', 'The Danger', 'uploads/', NULL, NULL, 1, '2020-06-02 17:53:57', '2020-06-02 17:53:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `role` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `mobile`, `username`, `email`, `password`, `created_at`, `updated_at`, `role`, `status`) VALUES
(1, 'Ashiqur Rahman Ovi', '01521202470', 'AshiqurOvi', 'admin@ovi.com', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, 'admin', 1),
(2, 'Abrar Hossain', '01234567890', 'Abrar', 'abrar@gmail.com', '9aee390f19345028f03bb16c588550e1', '2020-05-16 06:53:53', '2020-05-27 06:53:53', 'user', 1),
(8, 'Ashiqur', '01521123456', 'Ovi', 'ashiqurovi7@gmail.com', 'c08047dcb8519f19dc45a0550fd2df0a', '2020-06-02 07:08:27', '2020-06-02 07:08:27', 'user', 1),
(9, 'abcd', '01234567891', 'abc', 'google@abc.com', 'c08047dcb8519f19dc45a0550fd2df0a', '2020-06-02 07:13:04', '2020-06-02 07:13:04', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmps`
--
ALTER TABLE `cmps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_rental_registrations`
--
ALTER TABLE `room_rental_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_rental_registrations_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `room_rental_registrations_email_unique` (`email`);

--
-- Indexes for table `room_rental_registrations_apartment`
--
ALTER TABLE `room_rental_registrations_apartment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cmps`
--
ALTER TABLE `cmps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room_rental_registrations`
--
ALTER TABLE `room_rental_registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `room_rental_registrations_apartment`
--
ALTER TABLE `room_rental_registrations_apartment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
