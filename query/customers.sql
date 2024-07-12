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
-- テーブルの構造 `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, '高橋 篤司', 'tsubasa18@watanabe.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(2, '伊藤 和也', 'xkiriyama@yahoo.co.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(3, '井高 智也', 'kazuya.yamada@yahoo.co.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(4, '伊藤 晃', 'vkondo@watanabe.biz', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(5, '杉山 太郎', 'tkiriyama@takahashi.info', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(6, '笹田 洋介', 'tsuda.haruka@yahoo.co.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(7, '青山 花子', 'manabu79@kato.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(8, '大垣 陽一', 'youichi37@gmail.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(9, '石田 花子', 'yumiko.idaka@yahoo.co.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(10, '井上 涼平', 'sugiyama.yuta@nakajima.org', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(11, '津田 七夏', 'yosuke61@gmail.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(12, '加納 陽子', 'kyosuke82@mail.goo.ne.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(13, '渚 結衣', 'kijima.momoko@sato.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(14, '喜嶋 さゆり', 'dkimura@hotmail.co.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(15, '山田 陽一', 'yuta.hamada@gmail.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(16, '若松 太一', 'hideki41@gmail.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(17, '原田 桃子', 'satomi20@miyazawa.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(18, '小泉 七夏', 'idaka.mai@yahoo.co.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(19, '加納 拓真', 'naoto36@gmail.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(20, '渚 香織', 'naoki80@yahoo.co.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(21, '中津川 淳', 'youichi15@kudo.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(22, '松本 直子', 'itanabe@ogaki.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(23, '桐山 さゆり', 'watanabe.osamu@idaka.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(24, '斉藤 太一', 'jun40@kimura.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(25, '山田 太郎', 'mhirokawa@aoyama.info', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(26, '松本 翔太', 'koizumi.akira@hamada.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(27, '佐藤 くみ子', 'yyoshida@yahoo.co.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(28, '西之園 康弘', 'chiyo72@mail.goo.ne.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(29, '大垣 洋介', 'dito@yahoo.co.jp', '2024-07-13 01:04:30', '2024-07-13 01:04:30'),
(30, '近藤 充', 'atsushi30@gmail.com', '2024-07-13 01:04:30', '2024-07-13 01:04:30');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
