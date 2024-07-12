-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql
-- 生成日時: 2024 年 7 月 12 日 16:06
-- サーバのバージョン： 8.0.32
-- PHP のバージョン: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `laravel`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'テント', 14700, NULL, NULL),
(2, 'ミニスモーカー', 4620, NULL, NULL),
(3, 'エアーマット', 3999, NULL, NULL),
(4, 'アウトドアチェア', 2980, NULL, NULL),
(5, '耐火グローブ', 1380, NULL, NULL),
(6, 'ペグ3点セット', 2480, NULL, NULL),
(7, 'クッカーセット', 3289, NULL, NULL),
(8, 'テーブル', 4980, NULL, NULL),
(9, 'ランタンハンガー', 2380, NULL, NULL),
(10, 'ガスバーナー', 2255, NULL, NULL),
(11, 'キャンプマット', 7818, NULL, NULL),
(12, 'アウトドアメッシュテーブル', 6680, NULL, NULL),
(13, 'ポータブル電源 1024Wh', 143000, NULL, NULL),
(14, 'リトルワークスタンド', 95000, NULL, NULL),
(15, 'ハンキングラック', 4980, NULL, NULL),
(16, 'アウトドアワゴン', 9580, NULL, NULL),
(17, 'ガスバーナー', 2255, NULL, NULL),
(18, 'カセットフー', 33000, NULL, NULL),
(19, 'マミー型寝袋', 4280, NULL, NULL),
(20, '折りたたみ椅子', 1650, NULL, NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
