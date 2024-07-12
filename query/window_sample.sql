-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql:3306
-- 生成日時: 2024 年 7 月 12 日 04:46
-- サーバのバージョン： 8.0.38
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
-- テーブルの構造 `window_sample`
--

CREATE TABLE `window_sample` (
  `id` int NOT NULL,
  `employee` varchar(50) DEFAULT NULL,
  `sale` int DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- テーブルのデータのダンプ `window_sample`
--

INSERT INTO `window_sample` (`id`, `employee`, `sale`, `created_at`) VALUES
(1, 'yamada', 200, '2024-03-01'),
(2, 'tanaka', 400, '2024-03-01'),
(3, 'yamada', 100, '2024-04-01'),
(4, 'tanaka', 300, '2024-04-01'),
(5, 'yamada', 200, '2024-04-02'),
(6, 'yamada', 400, '2024-05-01'),
(7, 'tanaka', 500, '2024-05-01'),
(8, 'tanaka', 800, '2024-05-10');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `window_sample`
--
ALTER TABLE `window_sample`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `window_sample`
--
ALTER TABLE `window_sample`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
