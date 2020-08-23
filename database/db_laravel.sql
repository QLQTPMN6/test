-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2020 at 06:48 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: db_laravel
--
CREATE DATABASE IF NOT EXISTS db_laravel DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE db_laravel;

-- --------------------------------------------------------

--
-- Table structure for table failed_jobs
--

CREATE TABLE failed_jobs (
  id bigint(20) UNSIGNED NOT NULL,
  connection text COLLATE utf8mb4_unicode_ci NOT NULL,
  queue text COLLATE utf8mb4_unicode_ci NOT NULL,
  payload longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  exception longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  failed_at timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table migrations
--

CREATE TABLE migrations (
  id int(10) UNSIGNED NOT NULL,
  migration varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  batch int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table migrations
--

INSERT INTO migrations (id, migration, batch) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_22_061807_create_stores_table', 1),
(5, '2020_08_22_062424_create_products_table', 1),
(6, '2020_08_22_063806_create_user__stores_table', 2),
(7, '2020_08_22_063834_create_store__products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table password_resets
--

CREATE TABLE password_resets (
  email varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  token varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table products
--

CREATE TABLE products (
  id bigint(20) UNSIGNED NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  quantity int(11) NOT NULL,
  price double NOT NULL,
  variant varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  deleted_flg int(11) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table products
--

INSERT INTO products (id, `name`, quantity, price, variant, deleted_flg, created_at, updated_at) VALUES
(1, 'Dakota Morissette DVM', 833141, 40.557419, 'Aut.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(2, 'Tressie Wiza MD', 812403170, 22898297.143044, 'Ut.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(3, 'Tito Bahringer III', 5, 12, 'Qui.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(4, 'Brisa Doyle', 9562, 13479.2653882, 'Id.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(5, 'Dr. Lenora Jerde', 6, 75028.89676319, 'Enim.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(6, 'Mr. Marques Wyman', 346, 59198.314831231, 'Qui.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(7, 'Onie Bergnaum PhD', 294, 2549457.3502117, 'At.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(8, 'Maud Littel DDS', 2, 137370.145707, 'Esse.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(9, 'Precious Rodriguez', 56, 816690.13, 'A.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(10, 'Germaine Ullrich V', 7620663, 33773408, 'Est.', 0, '2020-08-22 00:56:21', '2020-08-22 00:56:21'),
(11, 'Kevon Veum', 11, 117114, 'Cum.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22'),
(12, 'Dannie Harvey', 51193, 60, 'Quis.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22'),
(13, 'Lizeth Ryan', 41597263, 532681362.42761, 'Ad.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22'),
(14, 'Prof. Pauline Dach III', 84767, 2364.9803, 'Nisi.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22'),
(15, 'Zechariah Mueller', 907951592, 440662.91584689, 'Et.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22'),
(16, 'Litzy Padberg', 39552, 3.4587662, 'Et.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22'),
(17, 'Antonetta Sipes MD', 7247734, 1918.973724, 'Ex.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22'),
(18, 'Quinten Leuschke', 309, 252802510.89037, 'Sed.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22'),
(19, 'Itzel Sporer', 87, 5916, 'Quo.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22'),
(20, 'Ms. Cecelia Roberts Sr.', 177007023, 174328704.90661, 'Vel.', 0, '2020-08-22 00:56:22', '2020-08-22 00:56:22');

-- --------------------------------------------------------

--
-- Table structure for table stores
--

CREATE TABLE stores (
  id bigint(20) UNSIGNED NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  address varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  phone varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  deleted_flg int(11) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table stores
--

INSERT INTO stores (id, `name`, address, phone, deleted_flg, created_at, updated_at) VALUES
(1, 'Freida Hamill', '6234 Carmen Cape Suite 718\nAlfordstad, AZ 87889-5176', '1-412-309-9044', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(2, 'Aida Fadel', '40842 Ruecker Bridge\nEmersonfurt, HI 88983', '240.809.5350', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(3, 'Trenton Thompson', '423 Kyra Brook\nEast Margarita, MS 52963', '1-736-378-6547 x8522', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(4, 'Mr. Felton Kovacek', '2722 Watsica Valleys Apt. 174\nEbertberg, WA 79988', '938-482-9819', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(5, 'Cordelia Blick', '45329 Cierra Walk\nRickyborough, RI 77167', '1-961-424-1943 x56146', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(6, 'Mrs. Daija O\'Kon MD', '6452 Everett Creek Apt. 509\nSchroederton, WV 89090', '241.587.9261', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(7, 'Dr. Lily Becker', '45043 Christiana Island Apt. 687\nPort Isadore, GA 82649-8836', '(498) 982-5917', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(8, 'Rodrick Crooks', '835 West Club\nO\'Connellshire, MT 75033', '1-479-683-0134 x99180', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(9, 'Macey Klein I', '87605 Terry Roads Apt. 981\nEast Lora, LA 05751-6735', '801.606.4885', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(10, 'Nannie Skiles', '6768 Schaefer Ridge Apt. 333\nMcCluremouth, MD 15421', '1-236-899-2981 x800', 0, '2020-08-22 00:56:55', '2020-08-22 00:56:55'),
(11, 'Prof. Phoebe Cruickshank I', '93692 Mckayla Freeway Suite 492\nSchoenside, KS 96957', '979.537.1849 x28564', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56'),
(12, 'Dr. Genevieve Prohaska', '9238 Damien Squares Suite 788\nWest Isabelleview, HI 67015-8239', '(345) 286-2701 x9051', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56'),
(13, 'Aleen Goyette', '32691 Gaylord Plains Apt. 368\nHamillton, HI 44891', '+1 (324) 659-3916', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56'),
(14, 'Heidi Corkery MD', '2631 Norene Ways\nEast Lydachester, MT 82270', '(551) 950-4746 x111', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56'),
(15, 'Dax Little DDS', '870 Ophelia Via\nKunzeton, WA 55746', '203-700-6659 x678', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56'),
(16, 'Hazel Gleichner', '33938 Pouros Run Suite 497\nNorth Prudence, CO 73631-2254', '+18164849384', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56'),
(17, 'Napoleon Marvin', '175 Jerel Summit\nEast Gwenside, DC 62498-5775', '619.558.7290', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56'),
(18, 'Dr. Rafael Leannon IV', '49554 Virgil Ford Apt. 869\nEast Dortha, WY 35502', '(951) 651-7219 x24429', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56'),
(19, 'Dr. Arjun Muller Jr.', '7647 Orn Isle\nNorth Georgetteville, MT 69752-3780', '1-794-754-6713 x5563', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56'),
(20, 'Prof. Enos Reinger Sr.', '129 Douglas Gardens Suite 123\nHelenaville, WI 96985', '(742) 743-8514', 0, '2020-08-22 00:56:56', '2020-08-22 00:56:56');

-- --------------------------------------------------------

--
-- Table structure for table store__products
--

CREATE TABLE store__products (
  id bigint(20) UNSIGNED NOT NULL,
  store_id bigint(20) UNSIGNED NOT NULL,
  product_id bigint(20) UNSIGNED NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table store__products
--

INSERT INTO store__products (id, store_id, product_id, created_at, updated_at) VALUES
(2, 18, 1, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(5, 12, 11, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(6, 20, 11, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(7, 10, 16, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(8, 11, 3, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(10, 20, 15, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(11, 10, 13, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(12, 17, 10, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(13, 11, 11, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(14, 9, 9, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(15, 19, 17, '2020-08-22 01:06:11', '2020-08-22 01:06:11'),
(16, 10, 14, '2020-08-22 01:06:12', '2020-08-22 01:06:12'),
(17, 19, 9, '2020-08-22 01:06:12', '2020-08-22 01:06:12'),
(18, 14, 5, '2020-08-22 01:06:12', '2020-08-22 01:06:12'),
(19, 18, 5, '2020-08-22 01:06:12', '2020-08-22 01:06:12'),
(20, 8, 20, '2020-08-22 01:06:12', '2020-08-22 01:06:12');

-- --------------------------------------------------------

--
-- Table structure for table users
--

CREATE TABLE users (
  id bigint(20) UNSIGNED NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  email varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  email_verified_at timestamp NULL DEFAULT NULL,
  password varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  remember_token varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  deleted_flg int(11) DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table users
--

INSERT INTO users (id, `name`, email, email_verified_at, `password`, remember_token, deleted_flg, created_at, updated_at) VALUES
(1, 'Dr. Chesley Cassin I', 'patrick.lueilwitz@example.com', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eKqwlDJSlJ', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(2, 'Kaycee Wiza', 'ernestine.turner@example.org', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2BYxFj9DW9', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(3, 'Don Ryan', 'bhagenes@example.net', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8hq7oNqd7w', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(4, 'Citlalli Waelchi', 'mosciski.gabriella@example.net', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2ZUCU6WjwG', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(5, 'Chelsea Jacobson MD', 'mckenzie.fidel@example.net', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eCoTkjq1m2', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(6, 'Griffin Sporer', 'lpowlowski@example.org', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NORl7ylzTv', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(7, 'Dr. Missouri Krajcik V', 'owilliamson@example.org', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qlMRuCtTIQ', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(8, 'Dr. Harley Green', 'jwilkinson@example.net', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gcefmsr3t8', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(9, 'Brenda O\'Hara', 'tframi@example.net', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '30v7sz0iCf', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(10, 'Ross Batz', 'jaqueline33@example.com', '2020-08-22 00:37:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OmF1TvwYfK', 0, '2020-08-22 00:37:52', '2020-08-22 00:37:52'),
(11, 'AnAn', 'an@mail.com', NULL, '$2y$10$U7kQW.X6RyoSBGRlFOzgvexqImHfJfmmtep.KdxTJga7agQK.Jp2a', NULL, NULL, '2020-08-22 03:00:29', '2020-08-22 03:00:29'),
(12, 'AnAn', 'an123@mail.com', NULL, '$2y$10$VXTPL6c1RAUsL3sLWlMT4eq5llxvsmtXcJYUXD2rRSqW29BmyOlVO', NULL, NULL, '2020-08-23 00:05:36', '2020-08-23 02:32:45');

-- --------------------------------------------------------

--
-- Table structure for table user__stores
--

CREATE TABLE user__stores (
  id bigint(20) UNSIGNED NOT NULL,
  user_id bigint(20) UNSIGNED NOT NULL,
  store_id bigint(20) UNSIGNED NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table user__stores
--

INSERT INTO user__stores (id, user_id, store_id, created_at, updated_at) VALUES
(1, 12, 7, '2020-08-22 01:05:39', '2020-08-22 01:05:39'),
(2, 3, 4, '2020-08-22 01:05:39', '2020-08-22 01:05:39'),
(3, 12, 19, '2020-08-22 01:05:39', '2020-08-22 01:05:39'),
(4, 3, 9, '2020-08-22 01:05:39', '2020-08-22 01:05:39'),
(5, 2, 20, '2020-08-22 01:05:39', '2020-08-22 01:05:39'),
(6, 11, 2, '2020-08-22 01:05:39', '2020-08-22 01:05:39'),
(7, 3, 16, '2020-08-22 01:05:39', '2020-08-22 01:05:39'),
(8, 1, 19, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(9, 5, 3, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(10, 4, 20, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(11, 1, 4, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(12, 10, 4, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(13, 3, 1, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(14, 5, 13, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(15, 4, 4, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(16, 10, 17, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(17, 10, 14, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(18, 10, 9, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(19, 5, 10, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(20, 1, 6, '2020-08-22 01:05:40', '2020-08-22 01:05:40'),
(43, 12, 3, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table failed_jobs
--
ALTER TABLE failed_jobs
  ADD PRIMARY KEY (id);

--
-- Indexes for table migrations
--
ALTER TABLE migrations
  ADD PRIMARY KEY (id);

--
-- Indexes for table password_resets
--
ALTER TABLE password_resets
  ADD KEY password_resets_email_index (email);

--
-- Indexes for table products
--
ALTER TABLE products
  ADD PRIMARY KEY (id);

--
-- Indexes for table stores
--
ALTER TABLE stores
  ADD PRIMARY KEY (id);

--
-- Indexes for table store__products
--
ALTER TABLE store__products
  ADD PRIMARY KEY (id),
  ADD KEY store__products_store_id_foreign (store_id),
  ADD KEY store__products_product_id_foreign (product_id);

--
-- Indexes for table users
--
ALTER TABLE users
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY users_email_unique (email);

--
-- Indexes for table user__stores
--
ALTER TABLE user__stores
  ADD PRIMARY KEY (id),
  ADD KEY user__stores_user_id_foreign (user_id),
  ADD KEY user__stores_store_id_foreign (store_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table failed_jobs
--
ALTER TABLE failed_jobs
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table migrations
--
ALTER TABLE migrations
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table products
--
ALTER TABLE products
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table stores
--
ALTER TABLE stores
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table store__products
--
ALTER TABLE store__products
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table users
--
ALTER TABLE users
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table user__stores
--
ALTER TABLE user__stores
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table store__products
--
ALTER TABLE store__products
  ADD CONSTRAINT store__products_product_id_foreign FOREIGN KEY (product_id) REFERENCES products (id),
  ADD CONSTRAINT store__products_store_id_foreign FOREIGN KEY (store_id) REFERENCES stores (id);

--
-- Constraints for table user__stores
--
ALTER TABLE user__stores
  ADD CONSTRAINT user__stores_store_id_foreign FOREIGN KEY (store_id) REFERENCES stores (id),
  ADD CONSTRAINT user__stores_user_id_foreign FOREIGN KEY (user_id) REFERENCES `users` (id);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
