-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-04-14 00:33:23
-- サーバのバージョン： 10.4.24-MariaDB
-- PHP のバージョン: 8.1.4

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
-- テーブルの構造 `ex_ab_categories`
--

CREATE TABLE `ex_ab_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `ex_ab_categories`
--

INSERT INTO `ex_ab_categories` (`id`, `name`) VALUES
(1, 'テント'),
(2, 'ウェア'),
(3, 'バッグ'),
(4, 'チェア'),
(5, 'ランタン'),
(6, 'クーラーボックス'),
(7, 'アウトドアワゴン'),
(8, 'BBQ用品'),
(9, 'キャンプ用食器'),
(10, 'ストーブ・ヒーター');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `ex_ab_categories`
--
ALTER TABLE `ex_ab_categories`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
