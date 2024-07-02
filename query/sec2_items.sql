-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql:3306
-- 生成日時: 2024 年 7 月 02 日 00:07
-- サーバのバージョン： 8.0.37
-- PHP のバージョン: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `udemy_practice`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `sec2_items`
--

CREATE TABLE `sec2_items` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `description` text,
  `stock` int NOT NULL DEFAULT '0',
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- テーブルのデータのダンプ `sec2_items`
--

INSERT INTO `sec2_items` (`id`, `name`, `price`, `description`, `stock`, `category_id`, `created_at`) VALUES
(1, '鉛筆', 100, NULL, 5, 1, '2024-07-01 21:40:17'),
(2, '消しゴム', 80, NULL, 20, 1, '2024-07-01 21:40:27'),
(3, 'はさみ', 300, 'ステンレスはさみ', 40, 2, '2024-07-01 21:40:36'),
(4, 'のり', 160, 'スティックのり', 35, 2, '2024-07-01 21:40:36'),
(6, '鉛筆', 100, NULL, 10, 1, '2024-07-01 21:42:25'),
(7, '鉛筆', 100, NULL, 3, 1, '2024-07-01 21:42:25'),
(8, '消しゴム', 80, NULL, 5, 1, '2024-07-01 21:42:25'),
(9, '消しゴム', 90, NULL, 8, 1, '2024-07-01 21:42:25'),
(10, '鉛筆', 100, NULL, 10, 1, '2022-10-10 10:00:00'),
(11, '鉛筆', 100, NULL, 3, 1, '2023-01-01 12:00:00'),
(12, '消しゴム', 80, NULL, 5, 1, '2022-10-20 20:00:00'),
(13, '消しゴム', 90, NULL, 8, 1, '2023-02-01 10:00:00');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `sec2_items`
--
ALTER TABLE `sec2_items`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `sec2_items`
--
ALTER TABLE `sec2_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
