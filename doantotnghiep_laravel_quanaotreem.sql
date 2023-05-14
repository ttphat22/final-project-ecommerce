-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 07, 2021 at 09:16 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doantotnghiep_laravel_quanaotreem`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"127\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc: 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95\\r\\n\\r\\nK\\u00edch th\\u01b0\\u1edbc: 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100\\r\\nK\\u00edch th\\u01b0\\u1edbc: 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106\\r\\n\\r\\nK\\u00edch th\\u01b0\\u1edbc: 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112\\r\\n\\r\\nK\\u00edch th\\u01b0\\u1edbc: 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 17:54:30\"},\"new\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"127\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc: 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95\\r\\n\\r\\nK\\u00edch th\\u01b0\\u1edbc: 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100\\r\\nK\\u00edch th\\u01b0\\u1edbc: 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106\\r\\n\\r\\nK\\u00edch th\\u01b0\\u1edbc: 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112\\r\\n\\r\\nK\\u00edch th\\u01b0\\u1edbc: 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 17:54:30\"}}', '2021-03-06 10:54:30', '2021-03-06 10:54:30'),
(2, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"127\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc: 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95 <\\\\n>\\r\\nK\\u00edch th\\u01b0\\u1edbc: 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100\\r\\nK\\u00edch th\\u01b0\\u1edbc: 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106\\r\\nK\\u00edch th\\u01b0\\u1edbc: 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112\\r\\nK\\u00edch th\\u01b0\\u1edbc: 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 17:55:33\"},\"new\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"127\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc: 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95 <\\\\n>\\r\\nK\\u00edch th\\u01b0\\u1edbc: 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100\\r\\nK\\u00edch th\\u01b0\\u1edbc: 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106\\r\\nK\\u00edch th\\u01b0\\u1edbc: 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112\\r\\nK\\u00edch th\\u01b0\\u1edbc: 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 17:55:33\"}}', '2021-03-06 10:55:33', '2021-03-06 10:55:33'),
(3, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"127\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc: 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95 <\\\\n>\\r\\nK\\u00edch th\\u01b0\\u1edbc: 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100\\r\\nK\\u00edch th\\u01b0\\u1edbc: 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106\\r\\nK\\u00edch th\\u01b0\\u1edbc: 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112\\r\\nK\\u00edch th\\u01b0\\u1edbc: 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 17:55:38\"},\"new\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"127\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc: 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95 <\\\\n>\\r\\nK\\u00edch th\\u01b0\\u1edbc: 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100\\r\\nK\\u00edch th\\u01b0\\u1edbc: 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106\\r\\nK\\u00edch th\\u01b0\\u1edbc: 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112\\r\\nK\\u00edch th\\u01b0\\u1edbc: 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 17:55:38\"}}', '2021-03-06 10:55:38', '2021-03-06 10:55:38'),
(4, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"127\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc:\\r\\n 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118.\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 18:00:05\"},\"new\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"127\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc:\\r\\n 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118.\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 18:00:05\"}}', '2021-03-06 11:00:05', '2021-03-06 11:00:05'),
(5, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"40000\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc:\\r\\n 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118.\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 18:00:27\"},\"new\":{\"id\":2,\"pro_name\":\"B\\u1ed9 Qu\\u1ea7n \\u00c1o D\\u1ec5 Th\\u01b0\\u01a1ng \\u0110\\u1ea7y M\\u00e0u S\\u1eafc Cho B\\u00e9 G\\u00e1i Bear Leader\",\"pro_slug\":\"bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader\",\"pro_price\":\"240000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"40000\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__bo-be-gai-1.jpg\",\"pro_view\":1,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"200\",\"pro_import_goods\":0,\"pro_description\":\"T\\u00ean Th\\u01b0\\u01a1ng hi\\u1ec7u: Bear leader\\r\\nPhong c\\u00e1ch: th\\u1eddi trang\\r\\nXu\\u1ea5t x\\u1ee9: CN (Xu\\u1ea5t x\\u1ee9)\\r\\nC\\u1ed5 \\u00e1o: C\\u1ed5 ch\\u1eef O\\r\\nLo\\u1ea1i s\\u1ea3n ph\\u1ea9m: B\\u1ed9\\r\\nKi\\u1ec3u \\u0111\\u00f3ng c\\u1eeda: \\u00c1o chui \\u0111\\u1ea7u\\r\\nS\\u1ed1 m\\u00f4 h\\u00ecnh: ax1505\\r\\nCh\\u1ea5t li\\u1ec7u: V\\u1ea3i b\\u00f4ng\\r\\nCh\\u1ea5t li\\u1ec7u: Polyester\\r\\nGi\\u1edbi t\\u00ednh: Unisex\\r\\nChi\\u1ec1u d\\u00e0i Tay \\u00e1o (cm): \\u0110\\u1ea7y \\u0111\\u1ee7\\r\\nKi\\u1ec3u tay \\u00e1o: Th\\u01b0\\u1eddng xuy\\u00ean\\r\\nPh\\u00f9 h\\u1ee3p: Ph\\u00f9 h\\u1ee3p v\\u1edbi k\\u00edch c\\u1ee1 th\\u1eadt, l\\u1ea5y K\\u00edch th\\u01b0\\u1edbc b\\u00ecnh th\\u01b0\\u1eddng c\\u1ee7a b\\u1ea1n\\r\\nLo\\u1ea1i \\u00e1o kho\\u00e1c ngo\\u00e0i: \\u00e1o kho\\u00e1c\\r\\nKi\\u1ec3u m\\u1eabu: ch\\u1eef\\r\\nT\\u00ean B\\u1ed9 ph\\u1eadn: tr\\u1ebb em\",\"pro_content\":\"K\\u00edch th\\u01b0\\u1edbc:\\r\\n 2t = 90 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):21 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):52 Ng\\u1ef1c * 2(cm):64 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):90-95.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 3t = 100 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):23 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):58 Ng\\u1ef1c * 2(cm):67 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):96-100.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 4t = 110 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):25 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):65 Ng\\u1ef1c * 2(cm):70 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):100-106.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 5t = 120 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):27 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):71 Ng\\u1ef1c * 2(cm):73 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):106-112.\\r\\nK\\u00edch th\\u01b0\\u1edbc:\\r\\n 6t = 130 chi\\u1ec1u d\\u00e0i qu\\u1ea7n \\u00e1o (cm):29 chi\\u1ec1u d\\u00e0i qu\\u1ea7n (cm):78 Ng\\u1ef1c * 2(cm):78 chi\\u1ec1u cao ph\\u00f9 h\\u1ee3p (cm):112-118.\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 17:52:05\",\"pro_number\":200,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-03-06 18:00:27\"}}', '2021-03-06 11:00:27', '2021-03-06 11:00:27'),
(6, 'Product', 'Cập nhật product', 32, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":32,\"pro_name\":\"V\\u00e1y cotton l\\u01b0ng chun x\\u00f2e b\\u00e9 g\\u00e1i AmPrin V511 - V512\",\"pro_slug\":\"vay-cotton-lung-chun-xoe-be-gai-amprin-v511-v512\",\"pro_price\":\"190000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__dam-be-gai-10.jpg\",\"pro_view\":16,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":1,\"pro_number_import\":\"150\",\"pro_import_goods\":0,\"pro_description\":null,\"pro_content\":\"Chi\\u1ebfc v\\u00e1y V511-V512 \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf \\u0111\\u1eb7c bi\\u1ec7t qua \\u0111i\\u1ec3m nh\\u1ea5n b\\u1eb1ng m\\u1ed9t \\u0111\\u01b0\\u1eddng vi\\u1ec1n b\\u00e8o quanh v\\u00e1y. \\u0110\\u01b0\\u1eddng vi\\u1ec1n b\\u00e8o s\\u1ebd t\\u1ea1o \\u0111\\u1ed9 ph\\u1ed3ng x\\u00e8o cho chi\\u1ebfc v\\u00e1y th\\u00eam ph\\u1ea7n \\u1ea5n t\\u01b0\\u1ee3ng trong c\\u00e1c outfit \\u0111\\u1ebfn tr\\u01b0\\u1eddng ho\\u1eb7c c\\u00e1c ho\\u1ea1t \\u0111\\u1ed9ng ngo\\u00e0i kho\\u00e1 m\\u00e0 Amprin mang l\\u1ea1i cho c\\u00e1c b\\u00e9. \\r\\n\\r\\nTH\\u00d4NG TIN S\\u1ea2N PH\\u1ea8M\\r\\n- B\\u1ed9 s\\u01b0u t\\u1eadp: Love Garden\\r\\n- M\\u00e0u s\\u1eafc: Xanh\\r\\n- Ki\\u1ec3u: Ch\\u00e2n v\\u00e1y x\\u00f2e\\r\\n- Xu\\u1ea5t x\\u1ee9: Vi\\u1ec7t Nam\\r\\n- Nh\\u00e3n hi\\u1ec7u: AmPrin\\r\\n\\r\\nH\\u01af\\u1edaNG D\\u1eaaN S\\u1eec D\\u1ee4NG\\r\\n- Gi\\u1eb7t m\\u00e1y \\u1edf ch\\u1ebf \\u0111\\u1ed9 nh\\u1eb9, nhi\\u1ec7t \\u0111\\u1ed9 th\\u01b0\\u1eddng.\\r\\n- Kh\\u00f4ng s\\u1eed d\\u1ee5ng h\\u00f3a ch\\u1ea5t t\\u1ea9y r\\u1eeda m\\u1ea1nh.\\r\\n- Ph\\u01a1i trong b\\u00f3ng m\\u00e1t, tr\\u00e1nh ti\\u1ebfp x\\u00fac tr\\u1ef1c ti\\u1ebfp v\\u1edbi \\u00e1nh n\\u1eafng.\\r\\n- L\\u00e0 \\u1edf nhi\\u1ec7t \\u0111\\u1ed9 trung b\\u00ecnh 150 \\u0111\\u1ed9 C.\\r\\n- Gi\\u1eb7t v\\u1edbi s\\u1ea3n ph\\u1ea9m c\\u00f9ng m\\u00e0u\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 23:23:06\",\"pro_number\":150,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-05-03 05:00:13\"},\"new\":{\"id\":32,\"pro_name\":\"V\\u00e1y cotton l\\u01b0ng chun x\\u00f2e b\\u00e9 g\\u00e1i AmPrin V511 - V512\",\"pro_slug\":\"vay-cotton-lung-chun-xoe-be-gai-amprin-v511-v512\",\"pro_price\":\"190000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__dam-be-gai-10.jpg\",\"pro_view\":16,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":1,\"pro_number_import\":\"150\",\"pro_import_goods\":0,\"pro_description\":null,\"pro_content\":\"Chi\\u1ebfc v\\u00e1y V511-V512 \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf \\u0111\\u1eb7c bi\\u1ec7t qua \\u0111i\\u1ec3m nh\\u1ea5n b\\u1eb1ng m\\u1ed9t \\u0111\\u01b0\\u1eddng vi\\u1ec1n b\\u00e8o quanh v\\u00e1y. \\u0110\\u01b0\\u1eddng vi\\u1ec1n b\\u00e8o s\\u1ebd t\\u1ea1o \\u0111\\u1ed9 ph\\u1ed3ng x\\u00e8o cho chi\\u1ebfc v\\u00e1y th\\u00eam ph\\u1ea7n \\u1ea5n t\\u01b0\\u1ee3ng trong c\\u00e1c outfit \\u0111\\u1ebfn tr\\u01b0\\u1eddng ho\\u1eb7c c\\u00e1c ho\\u1ea1t \\u0111\\u1ed9ng ngo\\u00e0i kho\\u00e1 m\\u00e0 Amprin mang l\\u1ea1i cho c\\u00e1c b\\u00e9. \\r\\n\\r\\nTH\\u00d4NG TIN S\\u1ea2N PH\\u1ea8M\\r\\n- B\\u1ed9 s\\u01b0u t\\u1eadp: Love Garden\\r\\n- M\\u00e0u s\\u1eafc: Xanh\\r\\n- Ki\\u1ec3u: Ch\\u00e2n v\\u00e1y x\\u00f2e\\r\\n- Xu\\u1ea5t x\\u1ee9: Vi\\u1ec7t Nam\\r\\n- Nh\\u00e3n hi\\u1ec7u: AmPrin\\r\\n\\r\\nH\\u01af\\u1edaNG D\\u1eaaN S\\u1eec D\\u1ee4NG\\r\\n- Gi\\u1eb7t m\\u00e1y \\u1edf ch\\u1ebf \\u0111\\u1ed9 nh\\u1eb9, nhi\\u1ec7t \\u0111\\u1ed9 th\\u01b0\\u1eddng.\\r\\n- Kh\\u00f4ng s\\u1eed d\\u1ee5ng h\\u00f3a ch\\u1ea5t t\\u1ea9y r\\u1eeda m\\u1ea1nh.\\r\\n- Ph\\u01a1i trong b\\u00f3ng m\\u00e1t, tr\\u00e1nh ti\\u1ebfp x\\u00fac tr\\u1ef1c ti\\u1ebfp v\\u1edbi \\u00e1nh n\\u1eafng.\\r\\n- L\\u00e0 \\u1edf nhi\\u1ec7t \\u0111\\u1ed9 trung b\\u00ecnh 150 \\u0111\\u1ed9 C.\\r\\n- Gi\\u1eb7t v\\u1edbi s\\u1ea3n ph\\u1ea9m c\\u00f9ng m\\u00e0u\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 23:23:06\",\"pro_number\":150,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-05-03 05:00:13\"}}', '2021-05-02 22:00:13', '2021-05-02 22:00:13'),
(7, 'Product', 'Cập nhật product', 31, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":31,\"pro_name\":\"Set v\\u00e1y nhung- \\u00e1o len t\\u0103m tay ph\\u00f2ng cho b\\u00e9 \\u0111i\\u1ec7u \\u0111\\u00e0\",\"pro_slug\":\"set-vay-nhung-ao-len-tam-tay-phong-cho-be-dieu-da\",\"pro_price\":\"125000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__dam-be-gai-9.jpg\",\"pro_view\":6,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"40\",\"pro_import_goods\":0,\"pro_description\":null,\"pro_content\":\"M\\u00e3 n\\u00e0y x\\u1ecbn \\u0111\\u00e9t - n\\u00e9t c\\u0103ng - si\\u00eau \\u0111\\u1eb9p - si\\u00eau sang ch\\u1ea3nh ! H\\u00e0ng v\\u1ec1 e b\\u00f3c bao v\\u1ee9t to\\u1eb9t s\\u00e0n ch\\u1ee5p v\\u1ed9i \\u1ea3nh m\\u00e0 n\\u00f3 c\\u00f2n n\\u00e9t c\\u0103ng :)) \\u0110\\u1eb9p lung linh t\\u1eeb ch\\u1ea5t li\\u1ec7u \\u0111\\u1ebfn form d\\u00e1ng B\\u00e1n Shop Cao C\\u1ea5p !!! Sai e nh\\u1eadn ho\\u00e0n :)) \\u200d\\u2640\\ufe0f\\u200d\\u2640\\ufe0f\\u200d\\u2640\\ufe0fSet v\\u00e1y nhung n\\u01a1 - \\u00e1o len t\\u0103m tay ph\\u1ed3ng\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 23:13:28\",\"pro_number\":40,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-05-03 10:50:25\"},\"new\":{\"id\":31,\"pro_name\":\"Set v\\u00e1y nhung- \\u00e1o len t\\u0103m tay ph\\u00f2ng cho b\\u00e9 \\u0111i\\u1ec7u \\u0111\\u00e0\",\"pro_slug\":\"set-vay-nhung-ao-len-tam-tay-phong-cho-be-dieu-da\",\"pro_price\":\"125000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__dam-be-gai-9.jpg\",\"pro_view\":6,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"40\",\"pro_import_goods\":0,\"pro_description\":null,\"pro_content\":\"M\\u00e3 n\\u00e0y x\\u1ecbn \\u0111\\u00e9t - n\\u00e9t c\\u0103ng - si\\u00eau \\u0111\\u1eb9p - si\\u00eau sang ch\\u1ea3nh ! H\\u00e0ng v\\u1ec1 e b\\u00f3c bao v\\u1ee9t to\\u1eb9t s\\u00e0n ch\\u1ee5p v\\u1ed9i \\u1ea3nh m\\u00e0 n\\u00f3 c\\u00f2n n\\u00e9t c\\u0103ng :)) \\u0110\\u1eb9p lung linh t\\u1eeb ch\\u1ea5t li\\u1ec7u \\u0111\\u1ebfn form d\\u00e1ng B\\u00e1n Shop Cao C\\u1ea5p !!! Sai e nh\\u1eadn ho\\u00e0n :)) \\u200d\\u2640\\ufe0f\\u200d\\u2640\\ufe0f\\u200d\\u2640\\ufe0fSet v\\u00e1y nhung n\\u01a1 - \\u00e1o len t\\u0103m tay ph\\u1ed3ng\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 23:13:28\",\"pro_number\":40,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-05-03 10:50:25\"}}', '2021-05-03 03:50:25', '2021-05-03 03:50:25'),
(8, 'Product', 'Cập nhật product', 32, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":32,\"pro_name\":\"V\\u00e1y cotton l\\u01b0ng chun x\\u00f2e b\\u00e9 g\\u00e1i AmPrin V511 - V512\",\"pro_slug\":\"vay-cotton-lung-chun-xoe-be-gai-amprin-v511-v512\",\"pro_price\":\"190000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__dam-be-gai-10.jpg\",\"pro_view\":19,\"pro_hot\":0,\"pro_manufacturer_id\":\"4\",\"pro_active\":1,\"pro_pay\":1,\"pro_number_import\":\"150\",\"pro_import_goods\":0,\"pro_description\":null,\"pro_content\":\"Chi\\u1ebfc v\\u00e1y V511-V512 \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf \\u0111\\u1eb7c bi\\u1ec7t qua \\u0111i\\u1ec3m nh\\u1ea5n b\\u1eb1ng m\\u1ed9t \\u0111\\u01b0\\u1eddng vi\\u1ec1n b\\u00e8o quanh v\\u00e1y. \\u0110\\u01b0\\u1eddng vi\\u1ec1n b\\u00e8o s\\u1ebd t\\u1ea1o \\u0111\\u1ed9 ph\\u1ed3ng x\\u00e8o cho chi\\u1ebfc v\\u00e1y th\\u00eam ph\\u1ea7n \\u1ea5n t\\u01b0\\u1ee3ng trong c\\u00e1c outfit \\u0111\\u1ebfn tr\\u01b0\\u1eddng ho\\u1eb7c c\\u00e1c ho\\u1ea1t \\u0111\\u1ed9ng ngo\\u00e0i kho\\u00e1 m\\u00e0 Amprin mang l\\u1ea1i cho c\\u00e1c b\\u00e9. \\r\\n\\r\\nTH\\u00d4NG TIN S\\u1ea2N PH\\u1ea8M\\r\\n- B\\u1ed9 s\\u01b0u t\\u1eadp: Love Garden\\r\\n- M\\u00e0u s\\u1eafc: Xanh\\r\\n- Ki\\u1ec3u: Ch\\u00e2n v\\u00e1y x\\u00f2e\\r\\n- Xu\\u1ea5t x\\u1ee9: Vi\\u1ec7t Nam\\r\\n- Nh\\u00e3n hi\\u1ec7u: AmPrin\\r\\n\\r\\nH\\u01af\\u1edaNG D\\u1eaaN S\\u1eec D\\u1ee4NG\\r\\n- Gi\\u1eb7t m\\u00e1y \\u1edf ch\\u1ebf \\u0111\\u1ed9 nh\\u1eb9, nhi\\u1ec7t \\u0111\\u1ed9 th\\u01b0\\u1eddng.\\r\\n- Kh\\u00f4ng s\\u1eed d\\u1ee5ng h\\u00f3a ch\\u1ea5t t\\u1ea9y r\\u1eeda m\\u1ea1nh.\\r\\n- Ph\\u01a1i trong b\\u00f3ng m\\u00e1t, tr\\u00e1nh ti\\u1ebfp x\\u00fac tr\\u1ef1c ti\\u1ebfp v\\u1edbi \\u00e1nh n\\u1eafng.\\r\\n- L\\u00e0 \\u1edf nhi\\u1ec7t \\u0111\\u1ed9 trung b\\u00ecnh 150 \\u0111\\u1ed9 C.\\r\\n- Gi\\u1eb7t v\\u1edbi s\\u1ea3n ph\\u1ea9m c\\u00f9ng m\\u00e0u\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 23:23:06\",\"pro_number\":150,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-05-05 23:09:28\"},\"new\":{\"id\":32,\"pro_name\":\"V\\u00e1y cotton l\\u01b0ng chun x\\u00f2e b\\u00e9 g\\u00e1i AmPrin V511 - V512\",\"pro_slug\":\"vay-cotton-lung-chun-xoe-be-gai-amprin-v511-v512\",\"pro_price\":\"190000\",\"pro_price_entry\":0,\"pro_category_id\":\"2\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-03-06__dam-be-gai-10.jpg\",\"pro_view\":19,\"pro_hot\":0,\"pro_manufacturer_id\":\"4\",\"pro_active\":1,\"pro_pay\":1,\"pro_number_import\":\"150\",\"pro_import_goods\":0,\"pro_description\":null,\"pro_content\":\"Chi\\u1ebfc v\\u00e1y V511-V512 \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf \\u0111\\u1eb7c bi\\u1ec7t qua \\u0111i\\u1ec3m nh\\u1ea5n b\\u1eb1ng m\\u1ed9t \\u0111\\u01b0\\u1eddng vi\\u1ec1n b\\u00e8o quanh v\\u00e1y. \\u0110\\u01b0\\u1eddng vi\\u1ec1n b\\u00e8o s\\u1ebd t\\u1ea1o \\u0111\\u1ed9 ph\\u1ed3ng x\\u00e8o cho chi\\u1ebfc v\\u00e1y th\\u00eam ph\\u1ea7n \\u1ea5n t\\u01b0\\u1ee3ng trong c\\u00e1c outfit \\u0111\\u1ebfn tr\\u01b0\\u1eddng ho\\u1eb7c c\\u00e1c ho\\u1ea1t \\u0111\\u1ed9ng ngo\\u00e0i kho\\u00e1 m\\u00e0 Amprin mang l\\u1ea1i cho c\\u00e1c b\\u00e9. \\r\\n\\r\\nTH\\u00d4NG TIN S\\u1ea2N PH\\u1ea8M\\r\\n- B\\u1ed9 s\\u01b0u t\\u1eadp: Love Garden\\r\\n- M\\u00e0u s\\u1eafc: Xanh\\r\\n- Ki\\u1ec3u: Ch\\u00e2n v\\u00e1y x\\u00f2e\\r\\n- Xu\\u1ea5t x\\u1ee9: Vi\\u1ec7t Nam\\r\\n- Nh\\u00e3n hi\\u1ec7u: AmPrin\\r\\n\\r\\nH\\u01af\\u1edaNG D\\u1eaaN S\\u1eec D\\u1ee4NG\\r\\n- Gi\\u1eb7t m\\u00e1y \\u1edf ch\\u1ebf \\u0111\\u1ed9 nh\\u1eb9, nhi\\u1ec7t \\u0111\\u1ed9 th\\u01b0\\u1eddng.\\r\\n- Kh\\u00f4ng s\\u1eed d\\u1ee5ng h\\u00f3a ch\\u1ea5t t\\u1ea9y r\\u1eeda m\\u1ea1nh.\\r\\n- Ph\\u01a1i trong b\\u00f3ng m\\u00e1t, tr\\u00e1nh ti\\u1ebfp x\\u00fac tr\\u1ef1c ti\\u1ebfp v\\u1edbi \\u00e1nh n\\u1eafng.\\r\\n- L\\u00e0 \\u1edf nhi\\u1ec7t \\u0111\\u1ed9 trung b\\u00ecnh 150 \\u0111\\u1ed9 C.\\r\\n- Gi\\u1eb7t v\\u1edbi s\\u1ea3n ph\\u1ea9m c\\u00f9ng m\\u00e0u\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-03-06 23:23:06\",\"pro_number\":150,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-05-05 23:09:28\"}}', '2021-05-05 16:09:28', '2021-05-05 16:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'doantotnghiep@gmail.com', '$2y$10$zDMJerEadJSBv/OnfEjujOgQF94Ip6JBPYrohY5vDmLPX6EB5nno2', '0988999999', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT '0',
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_menu_id` int(11) NOT NULL DEFAULT '0',
  `a_view` int(11) NOT NULL DEFAULT '0',
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `a_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(2, 'Liệu có cần giặt quần áo lần đầu tiên trước khi mặc?', 'lieu-co-can-giat-quan-ao-lan-dau-tien-truoc-khi-mac', 1, 1, 4, 0, NULL, '2021-03-13__baiviet1.jpg', 'Bạn cần phải giặt quần áo mới của trẻ trong nước nóng để tiêu diệt vi khuẩn và ngăn ngừa nhiễm trùng. Bạn không hề biết được người ta đã xử lý những hoá chất gì trên những mặt hàng đó, quần áo cũng có thể chứa các chất gây dị ứng, kích ứng da bé. Hãy giặt quần áo trong nước nóng ở khoảng 71 độ, sử dụng nước giặt không có bổ sung hương.', '2021-03-13 09:03:03', 1, 0, '2021-03-13 09:04:09'),
(3, 'Nên mua đồ như thế nào cho trẻ?', 'nen-mua-do-nhu-the-nao-cho-tre', 1, 1, 4, 0, NULL, '2021-03-13__kinh-doanh-quan-ao-tre-em.png', 'Những tiêu chí hàng đầu khi mua đồ cho trẻ em là an toàn, đơn giản, thoái mái và thiết thực. Cũng phải dễ dàng cởi bỏ vì đối với trẻ em thì bạn phải thay quần áo cho chúng rất nhiều lần trong ngày. Nếu cần thiết, bạn có thể mua những bộ đồ đặc biệt hơn, cầu kỳ hơn một chút cho những dịp quan trọng: lễ lộc hay tụ họp gia đình…', '2021-03-13 09:04:01', 0, 0, '2021-04-04 04:48:13'),
(4, 'Mẹo chọn quần áo không gây dị ứng cho trẻ', 'meo-chon-quan-ao-khong-gay-di-ung-cho-tre', 1, 1, 5, 0, NULL, '2021-03-13__kk.jpg', '1/ Chất liệu vải may quần áo không gây dị ứng cho trẻ\r\n\r\nVới bé sơ sinh: Mùa hè nên chọn quần áo làm bằng chất liệu cotton dễ thấm hút mồ hôi và không làm hại da bé, chọn loại nỉ dày dặn vào mùa lạnh. Nên chọn size rộng cho bé vì vải cotton thường co lại sau lần giặt đầu tiên.\r\nChọn loại áo loại xé dán hay buộc dây, tránh các áo có cúc dễ khiến da bé bị hằn lên do cúc áo tì vào. Màu trắng, nhạt được khuyên dùng với trẻ sơ sinh do không hoặc chứa rất ít phẩm màu gây hại cho làn da bé. Các mẹ cũng nhớ lộn phần mặt trong quần áo của con ra ngoài để tránh phần vải khâu chà lên da bé trong thời gian đầu mới sinh.\r\nChọn sản phẩm được làm từ các chất liệu thoáng, thấm hút tốt như sợi cotton hoặc sợi thiên nhiên, tránh các loại vải cứng, vải sợi vì có thể khiến bé khó chịu, ngứa ngáy\r\nVới trẻ nhỏ, cần tránh các loại  quần áo đính cườm, đính hạt…dễ khiến bé tò mò và nuốt gây nguy hiểm.\r\n2/ Nhãn sản phẩm\r\n\r\nĐể ý đến nhãn sản phẩm: Đọc kĩ thông tin được ghi trên nhãn của sản phẩm, bao gồm tên hãng sản xuất, thành phần (chất liệu), cách giặt. Chọn mua sản phẩm của những tên tuổi quen thuộc, như các hãng sản xuất trong nước hoặc các hãng nổi tiếng, tùy thuộc vào túi tiền của mẹ, tránh các đồ không rõ nguồn gốc, nhãn mác.\r\nCắt bỏ phần nhãn mác trên quần áo trước khi cho bé mặc vì phần nhãn này có thể cọ xát vào da gây khó chịu cho bé.', '2021-03-13 09:05:58', 0, 1, '2021-04-04 04:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT '0',
  `atb_category_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(19, 'Trắng', 'trang', 1, 1, '2021-03-06 11:21:20', NULL),
(20, 'Đen', 'den', 1, 1, '2021-03-06 11:21:28', NULL),
(21, 'Hồng', 'hong', 1, 1, '2021-03-06 11:21:49', NULL),
(22, 'Vàng', 'vang', 1, 1, '2021-03-06 11:21:54', NULL),
(23, 'Xanh', 'xanh', 1, 1, '2021-03-06 11:22:07', NULL),
(24, 'Đỏ', 'do', 1, 1, '2021-03-06 11:22:23', NULL),
(26, '3-6 tháng tuổi', '3-6-thang-tuoi', 2, 1, '2021-03-06 13:59:36', NULL),
(27, '6-9 tháng tuổi', '6-9-thang-tuoi', 2, 1, '2021-03-06 13:59:58', NULL),
(28, '9-11 tháng tuổi', '9-11-thang-tuoi', 2, 1, '2021-03-06 14:02:32', NULL),
(29, '1 tuổi', '1-tuoi', 2, 1, '2021-03-06 14:03:35', NULL),
(31, '2 tuổi', '2-tuoi', 2, 1, '2021-03-06 14:04:41', NULL),
(32, '3 tuổi', '3-tuoi', 2, 1, '2021-03-06 14:04:47', NULL),
(33, '4 tuổi', '4-tuoi', 2, 1, '2021-03-06 14:06:39', NULL),
(34, '5-7 tuổi', '5-7-tuoi', 2, 1, '2021-03-06 14:07:06', NULL),
(35, '7-9 tuổi', '7-9-tuoi', 2, 1, '2021-03-06 14:07:11', NULL),
(36, '9-12 tuổi', '9-12-tuoi', 2, 1, '2021-03-06 14:07:17', NULL),
(37, 'Tím', 'tim', 1, 1, '2021-03-06 14:28:51', NULL),
(38, 'Cam', 'cam', 1, 1, '2021-03-06 14:28:55', NULL),
(39, 'Xám, ghi', 'xam-ghi', 1, 1, '2021-03-06 14:29:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT '0',
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(2, 'Đầm bé gái', 'dam-be-gai', '2021-03-06__dam-gai.jpg', NULL, NULL, 0, 0, 1, '2021-03-06 08:51:26', '2021-03-06 08:55:31'),
(3, 'Bộ quần áo bé gái', 'bo-quan-ao-be-gai', '2021-03-06__bo-gai.jpg', NULL, NULL, 0, 0, 1, '2021-03-06 08:55:17', NULL),
(4, 'Bộ quần áo bé trai', 'bo-quan-ao-be-trai', '2021-03-06__bo-trai.png', NULL, NULL, 0, 0, 1, '2021-03-06 08:55:56', '2021-03-06 10:23:44'),
(5, 'Bộ quần áo cho trẻ sơ sinh', 'bo-quan-ao-cho-tre-so-sinh', '2021-03-06__bo-so-sinh.jpg', NULL, NULL, 0, 0, 1, '2021-03-06 08:59:37', NULL),
(6, 'Mũ & nón bé gái', 'mu-non-be-gai', '2021-03-06__mu-be-gai.jpg', NULL, NULL, 0, 0, 1, '2021-03-06 09:04:32', NULL),
(7, 'Mũ & nón bé trai', 'mu-non-be-trai', '2021-03-06__mu-be-trai.jpg', NULL, NULL, 0, 0, 1, '2021-03-06 10:18:57', NULL),
(8, 'Găng tay cho bé', 'gang-tay-cho-be', '2021-03-06__gang-tay.jpg', NULL, NULL, 0, 0, 1, '2021-03-06 16:06:39', NULL),
(9, 'Ao Tay Dai', 'ao-tay-dai', '2021-04-01__03man.png', NULL, NULL, 4, 0, 1, '2021-04-01 05:00:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int(11) NOT NULL DEFAULT '0',
  `cmt_product_id` int(11) NOT NULL DEFAULT '0',
  `cmt_admin_id` int(11) NOT NULL DEFAULT '0',
  `cmt_user_id` int(11) NOT NULL DEFAULT '0',
  `cmt_like` int(11) NOT NULL DEFAULT '0',
  `cmt_disk_like` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_4` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, '1', '2021-03-07__banner.jpg', '1', 1, 0, 0, 0, '2021-03-06 18:01:00', NULL),
(2, '1', '2021-03-07__anh-2.jpg', '1', 0, 0, 1, 0, '2021-03-06 18:02:29', '2021-03-06 18:02:29'),
(3, '1', '2021-03-07__banner-2.jpg', '1', 0, 1, 0, 0, '2021-03-06 18:02:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_entered`
--

CREATE TABLE `invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT '0',
  `ie_name_product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT '0',
  `ie_number` int(11) NOT NULL DEFAULT '0',
  `ie_number_sold` int(11) NOT NULL DEFAULT '0',
  `ie_product_id` int(11) NOT NULL DEFAULT '0',
  `ie_money` int(11) NOT NULL DEFAULT '0',
  `ie_status` tinyint(4) NOT NULL DEFAULT '0',
  `ie_meta` text COLLATE utf8mb4_unicode_ci,
  `ie_the_advance` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `m_name`, `m_slug`, `created_at`, `updated_at`) VALUES
(1, 'Hãng 1 2', 'hang-1-2', '2021-05-05 16:03:48', '2021-05-05 16:04:49'),
(3, 'Hãng 3', '', '2021-05-05 16:05:08', NULL),
(4, 'Hãng 4', '', '2021-05-05 16:05:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT '0',
  `mn_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(2, 'Váy xinh', 'vay-xinh', NULL, NULL, NULL, 1, 1, '2021-03-13 08:58:01', '2021-03-13 08:59:13'),
(3, 'Mũ lưỡi trai', 'mu-luoi-trai', NULL, NULL, NULL, 0, 1, '2021-03-13 08:58:58', NULL),
(4, 'Đẹp', 'dep', NULL, NULL, NULL, 0, 0, '2021-03-13 08:59:03', '2021-03-13 08:59:20'),
(5, 'Mẹo', 'meo', NULL, NULL, NULL, 0, 1, '2021-03-13 09:04:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 1),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1),
(36, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 1),
(37, '2020_04_29_112931_create_invoice_entered_in_tables', 1),
(38, '2020_06_17_192357_create_product_invoice_entered_table', 1),
(39, '2020_06_21_112319_create_permission_tables', 1),
(40, '2020_06_21_205241_create_activity_log_table', 1),
(41, '2021_05_05_225202_create_manufacturers_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT '0',
  `od_product_id` int(11) NOT NULL DEFAULT '0',
  `od_sale` int(11) NOT NULL DEFAULT '0',
  `od_qty` tinyint(4) NOT NULL DEFAULT '0',
  `od_price` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 32, 0, 1, 190000, '2021-03-10 10:10:22', NULL),
(2, 2, 30, 0, 1, 140000, '2021-03-10 10:11:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `ph_status` tinyint(4) NOT NULL DEFAULT '0',
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `pi_status` tinyint(4) NOT NULL DEFAULT '0',
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT '0',
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_permission` tinyint(4) NOT NULL DEFAULT '0',
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `group_permission`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'qlsanpham', 'Quản lý sản phẩm', 10, 'admins', '2021-03-10 15:05:07', '2021-03-13 09:26:14'),
(2, 'qldanhmuc', 'Quản lý danh mục', 7, 'admins', '2021-03-13 09:25:42', '2021-03-13 09:26:03'),
(3, 'qldonhang', 'Quản lý đơn hàng', 11, 'admindonhang', '2021-03-13 09:26:41', '2021-03-13 09:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT '0',
  `pro_price_entry` int(11) NOT NULL DEFAULT '0' COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT '0',
  `pro_supplier_id` int(11) NOT NULL DEFAULT '0',
  `pro_admin_id` int(11) NOT NULL DEFAULT '0',
  `pro_sale` tinyint(4) NOT NULL DEFAULT '0',
  `pro_expiration_date` tinyint(4) NOT NULL DEFAULT '10',
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT '0',
  `pro_hot` tinyint(4) NOT NULL DEFAULT '0',
  `pro_manufacturer_id` int(11) NOT NULL DEFAULT '1',
  `pro_active` tinyint(4) NOT NULL DEFAULT '1',
  `pro_pay` int(11) NOT NULL DEFAULT '0',
  `pro_number_import` int(11) NOT NULL DEFAULT '0',
  `pro_import_goods` int(11) NOT NULL DEFAULT '0',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `pro_content` text COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int(11) NOT NULL DEFAULT '0',
  `pro_review_star` int(11) NOT NULL DEFAULT '0',
  `pro_age_review` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT '0',
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_manufacturer_id`, `pro_active`, `pro_pay`, `pro_number_import`, `pro_import_goods`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(3, 'Bộ Quần Áo Dễ Thương Đầy Màu Sắc Cho Bé Gái Bear Leader', 'bo-quan-ao-de-thuong-day-mau-sac-cho-be-gai-bear-leader', 240000, 0, 3, 0, 0, 10, 10, '2021-03-06__bo-be-gai-1.jpg', 4, 0, 1, 1, 0, 200, 0, 'Tên Thương hiệu: Bear leader\r\nPhong cách: thời trang\r\nXuất xứ: CN (Xuất xứ)\r\nCổ áo: Cổ chữ O\r\nLoại sản phẩm: Bộ\r\nKiểu đóng cửa: Áo chui đầu\r\nSố mô hình: ax1505\r\nChất liệu: Vải bông\r\nChất liệu: Polyester\r\nGiới tính: Unisex\r\nChiều dài Tay áo (cm): Đầy đủ\r\nKiểu tay áo: Thường xuyên\r\nPhù hợp: Phù hợp với kích cỡ thật, lấy Kích thước bình thường của bạn\r\nLoại áo khoác ngoài: áo khoác\r\nKiểu mẫu: chữ\r\nTên Bộ phận: trẻ em', 'Tên Thương hiệu: Bear leader\r\nPhong cách: thời trang\r\nXuất xứ: CN (Xuất xứ)\r\nCổ áo: Cổ chữ O\r\nLoại sản phẩm: Bộ\r\nKiểu đóng cửa: Áo chui đầu\r\nSố mô hình: ax1505\r\nChất liệu: Vải bông\r\nChất liệu: Polyester\r\nGiới tính: Unisex\r\nChiều dài Tay áo (cm): Đầy đủ\r\nKiểu tay áo: Thường xuyên\r\nPhù hợp: Phù hợp với kích cỡ thật, lấy Kích thước bình thường của bạn\r\nLoại áo khoác ngoài: áo khoác\r\nKiểu mẫu: chữ\r\nTên Bộ phận: trẻ em', 0, 0, 0, '2021-03-06 11:03:41', 200, NULL, NULL, 0, '2021-03-06 14:37:00'),
(4, 'Bộ dài tay thun lạnh Pee Ka Boo cho bé trai và bé gái 2-13kg hình gấu chất vải mềm mịn đủ màu sắc xinh xắn Baby-S – SBVN039', 'bo-dai-tay-thun-lanh-pee-ka-boo-cho-be-trai-va-be-gai-2-13kg-hinh-gau-chat-vai-mem-min-du-mau-sac-xinh-xan-baby-s-sbvn039', 90000, 0, 3, 0, 0, 5, 10, '2021-03-06__bo-be-gai-2.jpg', 3, 0, 1, 1, 0, 300, 0, NULL, 'Bộ dài tay thun lạnh Pee Ka Boo cho bé trai và bé gái 2-13kg hình gấu\r\nVải thun lạnh co giãn 4 chiều, thấm hút mồ hôi tốt\r\nđộ bền dài lâu, không bị xù lông, an toàn và không gây ngứa ngáy\r\nHình họa tiết được in chuẩn đẹp, rõ nét, bền với thời gian\r\nHàng có sẵn, giao hàng nhanh\r\nHỗ trợ đổi trả nếu hàng bị lỗi/ size không vừa\r\nĐóng gói cẩn thận, chắc chắn\r\nCó QUÀ TẶNG cho TẤT CẢ đơn hàng', 0, 0, 0, '2021-03-06 14:27:59', 300, NULL, NULL, 0, '2021-03-06 14:36:12'),
(5, 'Gấu Leader Cô Gái Flowers - Bộ Quần Áo Mới Mùa Thu Toddler Bé Floral', 'gau-leader-co-gai-flowers-bo-quan-ao-moi-mua-thu-toddler-be-floral', 234000, 0, 3, 0, 0, 25, 10, '2021-03-06__bo-be-gai-3.jpg', 2, 0, 1, 1, 0, 50, 0, 'Mô tả sản phẩm Gấu Leader Cô Gái Flowers Bộ Quần Áo Mới Mùa Thu Toddler Bé Floral Quần Áo Trẻ Em Trang Phục Giản Dị Trẻ Em Quần Áo', 'Tên Thương hiệu: Bear leader\r\nPhong cách: thời trang\r\nXuất xứ: CN (Xuất xứ)\r\nCổ áo: Cổ chữ O\r\nKiểu đóng cửa: Áo chui đầu\r\nSố mô hình: ah4196\r\nChất liệu: Vải bông\r\nChất liệu: Polyester\r\nChất liệu: Vải thun\r\nChất liệu: Acetate\r\nChất liệu: Acrylic\r\nGiới tính: Con Gái\r\nChiều dài Tay áo (cm): Ngắn\r\nKiểu tay áo: Thường xuyên\r\nPhù hợp: Phù hợp với kích cỡ thật, lấy Kích thước bình thường của bạn\r\nLoại áo khoác ngoài: áo khoác\r\nKiểu mẫu: in', 0, 0, 0, '2021-03-06 14:34:57', 50, NULL, NULL, 0, NULL),
(6, 'Đầm Công Chúa Bear Leader Cho Bé Gái 2020 Trang Phục Thêu Hoa Thời Trang Mới Cho Trẻ Em Bé Gái Quần Áo Hoa Dự Tiệc Ngọt Ngào', 'dam-cong-chua-bear-leader-cho-be-gai-2020-trang-phuc-theu-hoa-thoi-trang-moi-cho-tre-em-be-gai-quan-ao-hoa-du-tiec-ngot-ngao', 350000, 0, 2, 0, 0, 20, 10, '2021-03-06__dam-be-gai-1.jpg', 5, 0, 1, 1, 0, 50, 0, NULL, 'Tên Thương hiệu: Bear leader\r\nChất liệu: Vải bông\r\nChất liệu: Polyester\r\nChất liệu: tơ nhân tạo\r\nChiều dài váy: Dài đến đầu gối\r\nCổ áo: Cổ chữ O\r\nKiểu tay áo: Thường xuyên\r\nChiều dài Tay áo (cm): Đầy đủ\r\nPhong cách: Phong cách Trung Quốc\r\nPhù hợp: Phù hợp với kích cỡ thật, lấy Kích thước bình thường của bạn\r\nÁo ngực tích hợp: không\r\nTrang trí: ren\r\nSố mô hình: ah656\r\nKiểu mẫu: Hoa\r\nHình bóng: chữ A', 0, 0, 0, '2021-03-06 14:41:28', 50, NULL, NULL, 0, NULL),
(7, 'Bộ quần áo mùa hè phong cách mới áo T-shirt ngắn tay cổ tròn + quần giả váy hai mảnh phù hợp cho bé gái từ 3-7 tuổi - INTL', 'bo-quan-ao-mua-he-phong-cach-moi-ao-t-shirt-ngan-tay-co-tron-quan-gia-vay-hai-manh-phu-hop-cho-be-gai-tu-3-7-tuoi-intl', 178000, 0, 3, 0, 0, 10, 10, '2021-03-06__bo-be-gai-4.jpg', 2, 0, 1, 1, 0, 80, 0, NULL, 'Giới hạn 3 sản phẩm/khách hàng\r\nTên Thương hiệu: Bear leader\r\nPhong cách: thời trang\r\nCổ áo: Cổ chữ O\r\nLoại sản phẩm: Bộ\r\nKiểu đóng cửa: Áo chui đầu\r\nSố mô hình: AZ839-A', 0, 0, 0, '2021-03-06 14:44:23', 80, NULL, NULL, 0, NULL),
(8, 'BỘ COTTON BA LỖ SỐ THỂ THAO CHO BÉ - KISS PLAZA', 'bo-cotton-ba-lo-so-the-thao-cho-be-kiss-plaza', 0, 0, 4, 0, 0, 0, 10, '2021-03-06__bo-be-trai-1.jpg', 1, 0, 1, 1, 0, 0, 0, NULL, 'Chất liệu cotton thể thao thoáng mát, hoạ tiết số hot hit, phù hợp cho bé trai 4-16kg. Màu sắc 5 màu như hình: đen,xanh ngọc, trắng,đỏ, vàng', 0, 0, 0, '2021-03-06 14:47:24', 0, NULL, NULL, 0, NULL),
(9, 'Bộ đồ hè HTL mẫu voi thêu cho bé', 'bo-do-he-htl-mau-voi-theu-cho-be', 99000, 0, 4, 0, 0, 10, 10, '2021-03-06__bo-be-trai-2.jpg', 1, 0, 1, 1, 0, 100, 0, NULL, 'Các mẹ LƯU Ý:. Các mẹ chọn size phù hợp với bé ở mục phân loại hàng.\r\nChất liệu: Cotton 4C mềm mịn\r\nMẫu mã: đa dạng, có nhiều màu sắc và hình ảnh ngộ nghĩnh', 0, 0, 0, '2021-03-06 14:51:40', 100, NULL, NULL, 0, NULL),
(10, 'Sét bộ quần áo trẻ em thu đông mẫu TNA dành cho bé trai', 'set-bo-quan-ao-tre-em-thu-dong-mau-tna-danh-cho-be-trai', 110000, 0, 4, 0, 0, 0, 10, '2021-03-06__bo-be-trai-3.jpg', 1, 0, 1, 1, 0, 100, 0, NULL, 'CHÀO MỪNG CÁC BẠN ĐẾN VỚI SHOP THỜI TRANG EM BÉ SHOP chuyên cung cấp các sản phẩm dành cho các bé :quần áo bé nam, quần áo bé nữ , dép bé nam, nữ với rất nhiều mẫu mã và kiểu dáng và màu sấc ttha hồ để lựa chọn. ngoài ra shop còn có các sản phẩm như dồ chơi trẻ em, phụ kiện kính, túi xách cho bé . Chất liệu da cá vải không quá dày và quá mỏng thích hợp cho tất cả mừa trong năm . chúng tôi cam kết chất lượng sản phẩm là tốt nhất sẽ đem đến cho các bé những trải nghiệm tuyệt vời để thỏa sức vui chơi và học hỏi . đổi trả hàng cho quý khách khi sản phẩm không đúng chất lượng hoặc đổi lại hàng khi các b đặt nhầm size - Hướng dẫn đặt mua nhiều màu, mẫu, kích thước trong 1 đơn hàng: Bạn phải chọn màu, mẫu hoặc kích thước bạn muốn rồi cho vào giỏ hàng. Sau khi chọn đủ thì vào giỏ hàng để tiến hành mua hàng. Có thể điều chỉnh số lượng mua trong giỏ hàng nếu muốn. - Đối với những sản phẩm có nhiều mẫu, màu sắc, nhiều kích thước. Quý khách vui lòng đặt mua đúng mẫu, màu, kích thước của sản phẩm trên hệ thống để tránh nhầm lẫn. CẢM ƠN VÀ RẤT HÂN HẠNH ĐƯỢC PHỤC VỤ CHO CÁC BẠN!!!!!!', 0, 0, 0, '2021-03-06 14:54:03', 100, NULL, NULL, 0, NULL),
(11, 'Đầm Công Chúa Quần Áo Trẻ Em Bé Gái Váy Hoa Trang Phục Công Chúa Váy Bé Gái Cho 2-6Y', 'dam-cong-chua-quan-ao-tre-em-be-gai-vay-hoa-trang-phuc-cong-chua-vay-be-gai-cho-2-6y', 450000, 0, 2, 0, 0, 5, 10, '2021-03-06__dam-be-gai-2.jpg', 0, 0, 1, 1, 0, 110, 0, NULL, 'Kích thước thẻ: 2t = 90, chiều dài váy: 49cm, Ngực: 54cm, chiều cao phù hợp: 90-96Kích thước thẻ: 3t = 100, Chiều dài váy: 52cm, Ngực: 56cm, chiều cao phù hợp: 96-100Kích thước thẻ: 4t = 110, Chiều dài váy: 55cm, Ngực: 58cm, chiều cao phù hợp: 100-106Kích thước thẻ: 5t = 120, Chiều dài váy: 57cm, Ngực: 60cm, chiều cao phù hợp: 106-112Kích thước thẻ: 6t = 130, Chiều dài váy: 60cm, Ngực: 60cm, chiều cao phù hợp: 112-118', 0, 0, 0, '2021-03-06 14:57:46', 110, NULL, NULL, 0, NULL),
(12, 'NNJXD Váy công chúa ren dành cho bé gái 0-2 tuổi áo tay dài cổ tròn có nơ ở eo trước và sau giá tốt - INTL', 'nnjxd-vay-cong-chua-ren-danh-cho-be-gai-0-2-tuoi-ao-tay-dai-co-tron-co-no-o-eo-truoc-va-sau-gia-tot-intl', 295000, 0, 2, 0, 0, 20, 10, '2021-03-06__dam-be-gai-3.jpg', 1, 0, 1, 1, 0, 50, 0, NULL, 'Gói bao gồm: 1 x Váy cô gái, 1 x Băng đô\r\nTình trạng: 100% thương hiệu mới với thẻ\r\nMàu: Hồng, Đỏ, Xanh\r\nChiều dài váy: Chiều dài đầu gối (Như hình ảnh hiển thị)\r\nLoại tay áo: Dài tay\r\nMô tả: Ren, Thêu, Thêu\r\nMùa: Xuân, Hạ, Thu, Đông\r\nNhân dịp: Khiêu vũ, Tiệc sinh nhật, Lễ hội đám cưới, Ngày lễ, Giáng sinh, Tiệc Halloween, Lễ hội hóa trang', 0, 0, 0, '2021-03-06 14:59:35', 50, NULL, NULL, 0, NULL),
(13, 'Bộ 5 Áo Sơ Sinh Màu Tay Dài Cho Bé', 'bo-5-ao-so-sinh-mau-tay-dai-cho-be', 65, 0, 5, 0, 0, 5, 10, '2021-03-06__bo-so-sinh-1.jpg', 1, 0, 1, 1, 0, 200, 0, NULL, '- Bộ 10 áo sơ sinh màu tay dài cho bé (0 – 3 tháng tuổi) kiểu dáng đơn giản với họa tiết đáng yêu, ngộ nghĩnh.\r\n- Trang phục được may từ chất liệu vải cotton thun mềm mịn, thoáng mát, đảm bảo an toàn cho làn da nhạy cảm của bé nhỏ.\r\n- Kiểu áo tay dài đơn giản, cổ tròn, cài nút vô cùng dễ mặc, tạo cho bé yêu cảm giác thoải mái và dễ chịu nhất khi mặc.\r\n- Áo có nhiều màu sắc và họa tiết đáng yêu, phù hợp với cả bé trai và bé gái.', 0, 0, 0, '2021-03-06 15:04:44', 200, NULL, NULL, 0, NULL),
(14, 'SS170 Bộ cộc La Pomme Paint', 'ss170-bo-coc-la-pomme-paint', 190000, 0, 5, 0, 0, 0, 10, '2021-03-06__bo-so-sinh-2.jpg', 0, 0, 1, 1, 0, 50, 0, NULL, 'Sản phẩm có thiết kế đẹp mắt, chất liệu thoáng mát và an toàn cho trẻ nhỏ.\r\n1.	Chất liệu vải tự nhiên, mềm mịn, thấm hút mồ hôi tốt. \r\n2. An toàn và thân thiện với làn da mỏng manh và nhạy cảm của trẻ sơ sinh.\r\n3.	Kháng khuẩn, kháng mấm mốc – Tăng đề kháng tự nhiên.\r\n4.	Chứng nhận an toàn cho trẻ sơ sinh.', 0, 0, 0, '2021-03-06 15:07:48', 50, NULL, NULL, 0, NULL),
(15, 'Bộ quần áo sơ sinh dài tay màu trắng Bosini, cúc giữa cho bé từ sơ sinh', 'bo-quan-ao-so-sinh-dai-tay-mau-trang-bosini-cuc-giua-cho-be-tu-so-sinh', 42000, 0, 5, 0, 0, 10, 10, '2021-03-06__bo-so-sinh-3.jpg', 0, 0, 1, 1, 0, 100, 0, NULL, '- Bộ quần áo sơ sinh dài tay màu trắng Bosini, cúc giữa cho bé từ sơ sinh đến 11kg được may hoàn toàn từ chất liệu cotton, mềm mại và an toàn cho làn da mỏng manh của bé.\r\n- Họa tiết trên áo có thể thay đổi theo từng đợt hàng\r\n- Tên Sản phẩm : Bộ quần áo sơ sinh dài tay màu trắng Bosini, cúc giữa cho bé từ sơ sinh đến 11kg\r\n- Màu sắc : Màu trắng', 0, 0, 0, '2021-03-06 15:09:20', 100, NULL, NULL, 0, NULL),
(16, 'Áo sơ sinh Bosini tay dài màu trắng cúc lệch đủ size cho bé', 'ao-so-sinh-bosini-tay-dai-mau-trang-cuc-lech-du-size-cho-be', 30000, 0, 5, 0, 0, 5, 10, '2021-03-06__bo-so-sinh-4.jpg', 0, 0, 1, 1, 0, 200, 0, NULL, 'HÀNG CHẤT LƯỢNG - GIÁ XUẤT XƯỞNG\r\n******* GIÁ LẺ = BÁN SỈ **********\r\nẢnh thật, bên ngoài đẹp còn đẹp hơn ảnh. Nếu thấy không đáng với đồng tiền bát gạo, không vừa ý, Shop xin nhận lại hàng trả về và hoàn tiền 100%. Cảm ơn bạn nhiều và ước mong nhận được tình yêu của bạn dành cho Shop', 0, 0, 0, '2021-03-06 15:10:56', 200, NULL, NULL, 0, NULL),
(17, 'Mũ len nhung che tai cho bé 3 TUỔI-7 TUỔI-M55', 'mu-len-nhung-che-tai-cho-be-3-tuoi-7-tuoi-m55', 80000, 0, 6, 0, 0, 20, 10, '2021-03-06__mu-be-gai-1.jpg', 0, 0, 1, 1, 0, 60, 0, NULL, 'Mũ len nhung che tai cho bé 3 TUỔI- 5 TUỔI-M55\r\nChất liệu:len nhung bên ngoài ,bên trong lót bông mềm mại.\r\nMũ còn kết hợp kèm theo 2 bên che tai lót bông mềm ,ấm tai cho bé\r\nMũ len xinh xinh yêu yêu cho bé.Mũ không răm hay ngứa nhé\r\n.Mang lại cảm giác ấm áp mềm mại cho bé\r\nPhù hợp làm quà cho bé khi mùa đông.\r\nMùa đông đang đến, ngoài việc sắm cho bé bộ cánh đáng yêu thì các mẹ cũng nên chọn cho con những phụ kiện xinh xắn, ấm áp.\r\nPhụ kiện đầu tiên không thể thiếu chính là MŨ LENTrong mùa lạnh, bé sẽ bị mất 30 - 50% nhiệt độ cơ thể nếu đầu không được giữ ấm.Vì vậy, việc giữ ấm đầu cho bé rất quan trọng.\r\nChu vi đầu khoảng 50 cm - 53 cm.\r\nMàu sắc : vàng , xanh , hồng\r\nMũ len cho bé khoảng từ 3 tuổi đến 5 tuổi là đội được nhé.\r\nVÌ LÀ NÓN LEN NÊN CÓ THỂ CÓ GIÃN NHA QUÝ KHÁCH', 0, 0, 0, '2021-03-06 15:15:20', 60, NULL, NULL, 0, NULL),
(18, 'MŨ LEN TÓC GIẢ CHO BÉ GÁI', 'mu-len-toc-gia-cho-be-gai', 40000, 0, 6, 0, 0, 30, 10, '2021-03-06__mu-be-gai-2.jpg', 0, 0, 1, 1, 0, 40, 0, NULL, 'Mũ được dệt từ chất len mềm mại, co giãn 4 chiều không gây khó chịu khi đôi, với tạo hình ngộ nghĩnh , cùng hai chòm tóc siêu cute, đảm bảo bé sẽ vô cùng đáng yêu khi đội vàoDO SẢN PHẨM CÓ NHIỀU HỌA TIẾT, SHOP KHÔNG UP HẾT HÌNH LÊN ĐƯỢC, NÊN SHOP XIN PHÉP CÁC MOM GIAO MÀU SẮC, HỌA TIẾT NGẪU NHIÊN NHA.', 0, 0, 0, '2021-03-06 15:17:22', 40, NULL, NULL, 0, NULL),
(19, 'Mũ len mặt mèo xinh cho bé 12 tháng- 4 tuổi-M54', 'mu-len-mat-meo-xinh-cho-be-12-thang-4-tuoi-m54', 75000, 0, 6, 0, 0, 10, 10, '2021-03-06__mu-be-gai-3.jpg', 0, 0, 1, 1, 0, 80, 0, NULL, 'Chất liệu:len\r\nMũ còn kết hợp kèm theo 2 dây bên tai phủ kín ấm áp tai cho bé.\r\nMũ len xinh xinh yêu yêu cho bé.\r\nMũ không răm hay ngứa nhé.\r\nMang lại cảm giác ấm áp mềm mại cho bé.Phù hợp làm quà cho bé khi mùa đông.\r\nMùa đông đang đến, ngoài việc sắm cho bé bộ cánh đáng yêu thì các mẹ cũng nên chọn cho con những phụ kiện xinh xắn, ấm áp.\r\nPhụ kiện đầu tiên không thể thiếu chính là MŨ LEN.\r\nTrong mùa lạnh, bé sẽ bị mất 30 - 50% nhiệt độ cơ thể nếu đầu không được giữ ấm. Vì vậy, việc giữ ấm đầu cho bé rất quan trọng.\r\nMàu sắc : đỏ,vàng,be,hồng.\r\nMũ len cho bé khoảng từ 12 tháng đến 5 tuổi là đội được nhé.\r\nVÌ LÀ NÓN LEN NÊN CÓ THỂ CÓ GIÃN NHA QUÝ KHÁCH', 0, 0, 0, '2021-03-06 15:20:05', 80, NULL, NULL, 0, NULL),
(20, 'Mũ siêu nhân nhện cho bé trai 1-6 tuổi', 'mu-sieu-nhan-nhen-cho-be-trai-1-6-tuoi', 50000, 0, 7, 0, 0, 0, 10, '2021-03-06__mu-be-trai-1.jpg', 0, 0, 1, 1, 0, 60, 0, NULL, 'Các boy sẽ rất thích thú phải ko các mom nhỉ?\r\nĐi học, đi chơi cứ ra đường là mang mũ siêu nhân.\r\nLâu lâu mà được mẹ tặng mũ mới thì thật là thích thú!\r\nCác bạn sẽ vui lắm ấy mẹ.\r\nSẵn kho đang xả hàng mũ em ôm cả vạn luôn. Rẻ quá\r\nCác mom vào mua siêu hời luôn ạ\r\nMũ một sz cho bé 2-7tuổi đội vừa ạ', 0, 0, 0, '2021-03-06 15:21:54', 60, NULL, NULL, 0, NULL),
(21, 'Mũ Nón Lưỡi Trai Sọc Cotton Nhiều Màu Cho Bé', 'mu-non-luoi-trai-soc-cotton-nhieu-mau-cho-be', 60000, 0, 7, 0, 0, 30, 10, '2021-03-06__mu-be-trai-2.jpg', 2, 0, 1, 1, 0, 70, 0, NULL, '✅ Nhiều màu sắc: trắng-xanh, trắng-xám, trắng-đỏ\r\n✅ Chất liệu 100% cotton tháng mát\r\n✅ Phù hợp với cả bé trai lẫn bé gái\r\n✅ Phù hợp cho bé từ 5 tháng tuổi đến 2 tuổi\r\n✅ Miếng dán phía sau đầu giúp điều chỉnh kích thước dễ dàng', 0, 0, 0, '2021-03-06 15:23:32', 70, NULL, NULL, 0, NULL),
(22, 'nón siêu nhân cho bé yêu', 'non-sieu-nhan-cho-be-yeu', 70000, 0, 7, 0, 0, 0, 10, '2021-03-06__mu-be-trai-3.jpg', 0, 0, 1, 1, 0, 100, 0, NULL, 'Thương hiệu: No Brand. SKU: 947778267_VNAMZ-2876738284. Độ tuổi phù hợp: 1-7 tuổi', 0, 0, 0, '2021-03-06 15:26:58', 100, NULL, NULL, 0, NULL),
(23, 'Váy Phù Dâu Công Chúa Dự Tiệc Hoa Ren Voan Cho Bé Gái', 'vay-phu-dau-cong-chua-du-tiec-hoa-ren-voan-cho-be-gai', 250000, 0, 3, 0, 0, 5, 10, '2021-03-06__dam-be-gai-4.jpg', 3, 0, 1, 1, 0, 30, 0, NULL, 'Romper cộc tay dành cho trẻ em cung cấp độ thoáng khí tốt\r\nChất liệu: Dệt\r\nPhong cách: Thời trang, dễ thương\r\nNội dung gói: 1 x Áo khoác cho bé gái, 1 x Mũ nón', 0, 0, 0, '2021-03-06 15:51:24', 30, NULL, NULL, 0, NULL),
(24, 'Váy đầm công chúa cao cấp sang chảnh cho bé', 'vay-dam-cong-chua-cao-cap-sang-chanh-cho-be', 1750000, 0, 2, 0, 0, 0, 10, '2021-03-06__dam-be-gai-5.jpg', 0, 0, 1, 1, 0, 50, 0, NULL, 'Một số tỉnh miền Trung đang bị ảnh hưởng bởi mưa lũ nên những đơn hàng được giao nhận và vận chuyển qua khu vực này sẽ chậm hơn dự kiến.\r\nĐơn 69K Miễn 20kK ship ( Khách nhớ chọn mã Mã Miễn Phí Vận Chuyển)\r\nVáy cho bé được thiết kế với chất liệu vải thô cao cấp.\r\nVới các đường chỉ may tinh sảo,Phù hợp cho bé mặc đi dạ hội, đi học, du lịch cùng gia đình..,\r\nĐây là mẫu thiết kế mới của năm 2020.', 0, 0, 0, '2021-03-06 15:55:34', 50, NULL, NULL, 0, NULL),
(25, 'Bộ đồ chơi tết dài tay chất cotton cao cấp cho bé gái', 'bo-do-choi-tet-dai-tay-chat-cotton-cao-cap-cho-be-gai', 95000, 0, 3, 0, 0, 5, 10, '2021-03-06__bo-be-gai-5.jpg', 1, 0, 1, 1, 0, 80, 0, NULL, 'Màu săc: đỏ và vàng.\r\nĐưởng chỉ may tỉ mỉ, cẩn thận, phù hợp cho bé mặc đi ngủ và đi chơi ( Nhìn là thấy mê)\r\nHàng đẹp chuẩn from nên các mẹ nhớ chọn đúng size, cân nặng cho bé nhé, Váy cho bé có\r\nXuất xứ: Hàng Việt Nam thiết kế.\r\nCAM KẾT : CHẤT LƯỢNG - GIÁ CẢ - UY TÍN\r\nsize từ 0 đến 5 tuổi như sau:', 0, 0, 0, '2021-03-06 15:57:49', 80, NULL, NULL, 0, NULL),
(26, 'Đầm xòe hoa hồng phối ren sang trọng cho bé chất cotton mềm nhẹ mát cho bé thêm lung linh Baby-S – SD076', 'dam-xoe-hoa-hong-phoi-ren-sang-trong-cho-be-chat-cotton-mem-nhe-mat-cho-be-them-lung-linh-baby-s-sd076', 160000, 0, 2, 0, 0, 25, 10, '2021-03-06__dam-be-gai-6.jpg', 0, 0, 1, 1, 0, 80, 0, NULL, '• Xuất xứ: Việt Nam\r\n\r\n• Chất liệu: Cotton mềm nhẹ mát, không phai xù cho bé thoải mái vui chơi – Đầm có lót ren mềm mại\r\n\r\n• Hoạ tiết:\r\n\r\nĐầm dáng xòe có nhấn eo đơn giản cho bé thoải mái khi mặc\r\n\r\nĐầm phối ren ở chân váy sang trọng\r\n\r\nĐầm cánh tiên cho bé thoải mái và xinh yêu hơn khi mặc\r\n\r\nHọa tiết hoa hồng, màu sắc nhã nhặn \r\n\r\nĐầm phù hợp cho bé mặc đi chơi, đi tiệc nhẹ nhàng mà lịch sự, xinh xắn', 0, 0, 0, '2021-03-06 16:00:53', 80, NULL, NULL, 0, NULL),
(27, 'Áo dài cách tân cho bé gấm hoa cao cấp kèm mấn cho bé gái 1-7 tuổi chất gấm hoa loại 1 phối quần phi bóng siêu hot Baby-S – SAD003', 'ao-dai-cach-tan-cho-be-gam-hoa-cao-cap-kem-man-cho-be-gai-1-7-tuoi-chat-gam-hoa-loai-1-phoi-quan-phi-bong-sieu-hot-baby-s-sad003', 190000, 0, 2, 0, 0, 12, 10, '2021-03-06__dam-be-gai-7.jpg', 6, 0, 1, 1, 0, 200, 0, NULL, 'Áo dài gấm hoa cách tân cao cấp kèm mấn cho bé gái 1-7 tuổi chất gấm hoa\r\nXuất xứ: Việt Nam\r\nChất gấm hoa loại 1 bao mềm mịn, lên chuẩn form\r\nQuần chất phi bóng dày dặn, thấm hút mồ hôi bé mặc mát mẻ', 0, 0, 0, '2021-03-06 16:02:28', 200, NULL, NULL, 0, NULL),
(28, 'Áo dài cách tân siêu xinh cho bé gái', 'ao-dai-cach-tan-sieu-xinh-cho-be-gai', 210000, 0, 2, 0, 0, 0, 10, '2021-03-06__dam-be-gai-8.jpg', 7, 0, 1, 1, 0, 26, 0, NULL, 'ÁO DÀI CÁCH TÂN CHO BÉ\r\n- Áo dài cách tân cho bé trai bé gái mẫu mới hot, chất poly dày dặn vân nổi, hình in sắc nét\r\n- Áo dài cách tân bé gái gồm áo dài và chân váy + mấn, áo dài cách tân bé trai chỉ có áo nhé\r\n- Đơn giá sản phẩm tính trên 1 áo\r\n- Form theo cân nặng bình quân, vui lòng xem kỹ bảng size theo cân nặng và độ tuổi của bé để chọn size chính xác. Với bé béo bụng vui lòng chọn nhích size, áo bé gái form nhỏ hơn áo bé trai, vui lòng chọn nhích size\r\n- Sản phẩm được chụp tại shop, ảnh thật, cam kết hàng như hình\r\n- Shop đặt xưởng may số lượng rất lớn nên giá rất ưu đãi, các bạn bấm theo dõi shop để nhận thêm mã giảm giá đặc biệt dành riêng cho khách hàng theo dõi nhé.', 1, 5, 5, '2021-03-06 16:04:49', 26, NULL, NULL, 0, '2021-03-13 08:56:46'),
(29, 'IELGY Áo Thun Ngắn Tay Thường Ngày Cho Bé Gái Áo', 'ielgy-ao-thun-ngan-tay-thuong-ngay-cho-be-gai-ao', 135000, 0, 3, 0, 0, 0, 10, '2021-03-06__bo-be-gai-6.jpg', 3, 0, 1, 1, 0, 100, 0, NULL, 'Hoa văn: hoạt hình phim hoạt hình\r\nPhong cách: Hàn Quốc\r\nKiểu cổ áo: Cổ tròn\r\nGiới tính áp dụng: Nữ\r\nMùa áp dụng: Mùa hè\r\nChiều dài Tay áo: Tay ngắn', 0, 0, 0, '2021-03-06 16:09:26', 100, NULL, NULL, 0, NULL),
(30, 'Set áo kết hợp quần đùi jean dành cho bé gái', 'set-ao-ket-hop-quan-dui-jean-danh-cho-be-gai', 140000, 0, 3, 0, 0, 0, 10, '2021-03-06__bo-be-gai-7.jpg', 15, 0, 1, 1, 1, 40, 0, NULL, 'Áo hai dây và quần đùi jean\r\nÁo hai dây chất vải mềm nhẹ tạo cảm giác mát mẻ cho bé, kết hợp cùng quần jean đùi làm cho thêm cá tính và đáng yêu cho bé.. quần may chất jean mềm thích hợp cho các bé..', 1, 5, 5, '2021-03-06 16:11:21', 37, NULL, NULL, 0, '2021-03-09 11:41:56'),
(31, 'Set váy nhung- áo len tăm tay phòng cho bé điệu đà', 'set-vay-nhung-ao-len-tam-tay-phong-cho-be-dieu-da', 125000, 0, 2, 0, 0, 0, 10, '2021-03-06__dam-be-gai-9.jpg', 8, 0, 1, 1, 0, 40, 0, NULL, 'Mã này xịn đét - nét căng - siêu đẹp - siêu sang chảnh ! Hàng về e bóc bao vứt toẹt sàn chụp vội ảnh mà nó còn nét căng :)) Đẹp lung linh từ chất liệu đến form dáng Bán Shop Cao Cấp !!! Sai e nhận hoàn :)) ‍♀️‍♀️‍♀️Set váy nhung nơ - áo len tăm tay phồng', 0, 0, 0, '2021-03-06 16:13:28', 40, NULL, NULL, 0, '2021-05-03 03:50:25'),
(32, 'Váy cotton lưng chun xòe bé gái AmPrin V511 - V512', 'vay-cotton-lung-chun-xoe-be-gai-amprin-v511-v512', 190000, 0, 2, 0, 0, 0, 10, '2021-03-06__dam-be-gai-10.jpg', 19, 0, 4, 1, 1, 150, 0, NULL, 'Chiếc váy V511-V512 được thiết kế đặc biệt qua điểm nhấn bằng một đường viền bèo quanh váy. Đường viền bèo sẽ tạo độ phồng xèo cho chiếc váy thêm phần ấn tượng trong các outfit đến trường hoặc các hoạt động ngoài khoá mà Amprin mang lại cho các bé. \r\n\r\nTHÔNG TIN SẢN PHẨM\r\n- Bộ sưu tập: Love Garden\r\n- Màu sắc: Xanh\r\n- Kiểu: Chân váy xòe\r\n- Xuất xứ: Việt Nam\r\n- Nhãn hiệu: AmPrin\r\n\r\nHƯỚNG DẪN SỬ DỤNG\r\n- Giặt máy ở chế độ nhẹ, nhiệt độ thường.\r\n- Không sử dụng hóa chất tẩy rửa mạnh.\r\n- Phơi trong bóng mát, tránh tiếp xúc trực tiếp với ánh nắng.\r\n- Là ở nhiệt độ trung bình 150 độ C.\r\n- Giặt với sản phẩm cùng màu', 0, 0, 0, '2021-03-06 16:23:06', 150, NULL, NULL, 0, '2021-05-05 16:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT '0',
  `pa_attribute_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(11, 6, 19),
(12, 6, 21),
(13, 6, 22),
(14, 6, 23),
(15, 6, 24),
(16, 6, 31),
(17, 6, 32),
(18, 6, 33),
(19, 6, 34),
(20, 6, 35),
(21, 6, 36),
(22, 9, 20),
(23, 9, 22),
(24, 9, 23),
(25, 9, 39),
(26, 9, 31),
(27, 9, 32),
(28, 9, 33),
(29, 10, 22),
(30, 10, 23),
(31, 10, 38),
(32, 10, 34),
(33, 10, 35),
(34, 10, 36),
(35, 11, 19),
(36, 11, 21),
(37, 11, 37),
(38, 11, 31),
(39, 11, 32),
(40, 11, 33),
(41, 11, 34),
(42, 12, 21),
(43, 12, 23),
(44, 12, 24),
(45, 12, 29),
(46, 12, 31),
(47, 13, 21),
(48, 13, 22),
(49, 13, 23),
(50, 13, 24),
(51, 13, 26),
(52, 13, 27),
(53, 14, 21),
(54, 14, 22),
(55, 14, 23),
(56, 14, 24),
(57, 14, 37),
(58, 14, 39),
(59, 14, 26),
(60, 14, 27),
(61, 14, 28),
(62, 14, 29),
(63, 16, 26),
(64, 16, 27),
(65, 17, 21),
(66, 17, 22),
(67, 17, 24),
(68, 17, 32),
(69, 17, 33),
(70, 17, 34),
(71, 18, 21),
(72, 18, 22),
(73, 18, 24),
(74, 18, 37),
(75, 19, 19),
(76, 19, 20),
(77, 19, 21),
(78, 19, 22),
(79, 19, 24),
(80, 19, 37),
(81, 19, 29),
(82, 19, 31),
(83, 19, 32),
(84, 19, 33),
(85, 20, 20),
(86, 20, 24),
(87, 20, 29),
(88, 20, 31),
(89, 20, 32),
(90, 20, 33),
(91, 20, 34),
(92, 23, 19),
(93, 23, 21),
(94, 23, 29),
(95, 23, 31),
(96, 26, 31),
(97, 26, 32),
(98, 26, 33),
(99, 26, 34),
(100, 26, 35),
(109, 31, 38),
(110, 31, 39),
(111, 31, 35),
(112, 31, 36),
(113, 32, 20),
(114, 32, 21),
(115, 32, 22),
(116, 32, 23),
(117, 32, 28),
(118, 32, 31),
(119, 32, 32),
(120, 32, 33);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT '0',
  `pk_keyword_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_invoice_entered`
--

CREATE TABLE `product_invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pie_product_id` int(11) NOT NULL DEFAULT '0',
  `pie_invoice_entered_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT '0',
  `r_product_id` int(11) NOT NULL DEFAULT '0',
  `r_number` tinyint(4) NOT NULL DEFAULT '0',
  `r_status` tinyint(4) NOT NULL DEFAULT '0',
  `r_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 1, 30, 5, 0, 'xinh xinh', '2021-03-09 11:41:56', '2021-03-09 11:41:56'),
(2, 1, 28, 5, 0, 'quá tuyệt', '2021-03-13 08:56:46', '2021-03-13 08:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `name_slug`, `guard_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'AdminProduct', 'adminproduct', 'admins', NULL, '2021-03-13 09:27:42', '2021-03-13 09:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT '1',
  `sd_active` tinyint(4) NOT NULL DEFAULT '1',
  `sd_sort` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, '/', '/', '2021-03-07__slide5-h5.jpg', 1, 1, 0, '2021-03-06 17:46:57', '2021-03-10 15:29:22'),
(2, '/', '/', '2021-03-07__slide6-h5.jpg', 1, 1, 0, '2021-03-06 17:47:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT '0',
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn mua hàng', NULL, 1, NULL, 'ok ok', '2021-03-10 15:40:54', NULL),
(2, 'Chăm sóc khách hàng', NULL, 3, NULL, 'Chăm sóc khách hàng', '2021-04-06 17:23:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Hoa Hồng', '0910392929', 'hoahong@gmail.com', '22 Giải Phóng', '2021-03-10 14:21:59', NULL),
(2, 'Nam Phong', '0936484888', 'namphong332@gmail.com', 'Đà Nẵng', '2021-03-13 09:09:35', NULL),
(3, 'Nhã Nhã', '0263847456', 'nhasile@gmail.com', '22 Giải Phóng', '2021-03-13 09:10:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT '0',
  `tst_admin_id` int(11) NOT NULL DEFAULT '0',
  `tst_total_money` int(11) NOT NULL DEFAULT '0',
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT '1',
  `tst_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 190000, 'member 1', 'member1@gmail.com', '0123456789', '222 Huế', NULL, -1, 1, '2021-03-10 10:10:22', '2021-03-10 10:10:45'),
(2, 1, 1, 140000, 'member 1', 'member1@gmail.com', '0123456789', '222 Huế', NULL, 2, 1, '2021-03-10 10:11:22', '2021-03-10 14:27:42'),
(3, 3, 0, 470000, 'Trang Luu', 'thuy123vn@yahoo.com', '6823132883', '310 Burton Dr', 'sfsdfsd', 1, 1, '2021-04-01 03:25:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `count_comment` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'member 1', 'member1@gmail.com', NULL, '$2y$10$7nTGxx93elgUx9/skva1.evdg6zdqE0he0S3Ebx7Mn4lorXWtp4Fe', '0123456789', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"77.0.3865.138\",\"time\":\"2021-03-09T11:40:29.356646Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"77.0.3865.138\",\"time\":\"2021-03-09T14:22:42.388957Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"77.0.3865.138\",\"time\":\"2021-03-10T10:08:55.232804Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"77.0.3865.138\",\"time\":\"2021-03-11T09:04:40.012893Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"77.0.3865.138\",\"time\":\"2021-03-13T08:55:48.794620Z\"}]', 0, '222 Huế', NULL, NULL, '2021-03-08 18:17:26', '2021-03-10 10:09:23'),
(3, 'Thuy Le', 'thuy123vn@yahoo.com', NULL, '$2y$10$qfSQ/MnYCzO5srOom65yZuU.ESka/.eT.TOxSyFb0VcwUtJyTqIHa', '6823132883', 0, NULL, 0, NULL, NULL, NULL, '2021-04-01 03:24:08', NULL),
(4, 'TrungPhuNA', 'phupt.humg.94@gmail.com', NULL, '$2y$10$UdYnYiiqOYkW3dqXBr.N7uHnTSUHAtyjW.ykC6NOnqmDPRp3XCnlO', '0988123456', 0, '[{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_7\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-06T17:23:25.005328Z\"}]', 0, NULL, NULL, NULL, '2021-04-04 04:57:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT '0',
  `uf_user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(1, 30, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Indexes for table `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Indexes for table `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_invoice_entered_pie_product_id_index` (`pie_product_id`),
  ADD KEY `product_invoice_entered_pie_invoice_entered_id_index` (`pie_invoice_entered_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_slug_unique` (`name_slug`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
