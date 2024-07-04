-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql
-- 生成日時: 2024 年 6 月 26 日 09:37
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
-- データベース: `udemy_practice`
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
(1, '中島 淳', 'hidaka@sasada.info', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(2, '中村 里佳', 'rkudo@matsumoto.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(3, '山岸 幹', 'uyoshimoto@yamada.biz', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(4, '宇野 明美', 'lsasada@hotmail.co.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(5, '青山 香織', 'anakatsugawa@hotmail.co.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(6, '若松 香織', 'hnishinosono@aota.info', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(7, '吉田 浩', 'naoki.murayama@kobayashi.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(8, '佐々木 聡太郎', 'maaya.kimura@miyazawa.com', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(9, '宇野 康弘', 'lito@hotmail.co.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(10, '近藤 里佳', 'sakamoto.jun@hotmail.co.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(11, '近藤 香織', 'ntanabe@matsumoto.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(12, '渚 舞', 'iuno@mail.goo.ne.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(13, '小林 桃子', 'yaota@tanaka.org', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(14, '廣川 篤司', 'fkijima@nakamura.info', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(15, '浜田 直樹', 'mai.nishinosono@koizumi.com', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(16, '山本 太郎', 'ikiriyama@mail.goo.ne.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(17, '津田 春香', 'kumiko.kobayashi@yamada.com', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(18, '山口 裕美子', 'tfujimoto@kobayashi.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(19, '原田 亮介', 'watanabe.rika@yamada.com', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(20, '小林 京助', 'yuki27@gmail.com', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(21, '宮沢 裕美子', 'kazuya.suzuki@nakajima.biz', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(22, '佐々木 花子', 'kenichi80@miyazawa.com', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(23, '小林 あすか', 'oaota@mail.goo.ne.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(24, '伊藤 結衣', 'mikako45@yahoo.co.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(25, '田中 学', 'satomi69@gmail.com', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(26, '若松 明美', 'yuta70@yahoo.co.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(27, '藤本 篤司', 'umatsumoto@sasaki.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(28, '木村 結衣', 'asuka.miyazawa@gmail.com', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(29, '野村 明美', 'mai.yamada@mail.goo.ne.jp', '2024-06-26 18:36:37', '2024-06-26 18:36:37'),
(30, '西之園 京助', 'imurayama@tanaka.org', '2024-06-26 18:36:37', '2024-06-26 18:36:37');

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
