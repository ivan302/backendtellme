-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2018 at 05:07 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tell_me`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Terror', '2018-10-14 03:50:35', '2018-10-14 09:50:35', '2018-10-14 09:50:35'),
(2, 'Abecedario', '2018-10-30 03:43:05', '2018-10-30 03:43:05', NULL),
(3, '212121', '2018-10-14 21:03:38', '2018-10-15 03:03:38', '2018-10-15 03:03:38'),
(4, 'sdsdsd', '2018-10-22 22:06:22', '2018-10-22 22:06:22', '2018-10-22 22:06:22'),
(5, 'Prueba', '2018-10-22 22:06:27', '2018-10-22 22:06:27', '2018-10-22 22:06:27'),
(6, 'Chistes', '2018-10-17 14:33:09', '2018-10-17 14:33:09', '2018-10-17 14:33:09'),
(7, 'Comedia', '2018-10-16 14:51:37', '2018-10-16 14:51:37', '2018-10-16 14:51:37'),
(8, 'chistes 2', '2018-10-17 14:33:06', '2018-10-17 14:33:06', '2018-10-17 14:33:06'),
(9, 'Animales', '2018-10-30 04:28:50', '2018-10-30 04:28:50', NULL),
(10, NULL, '2018-10-17 18:48:30', '2018-10-17 18:48:30', '2018-10-17 18:48:30');

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('arizul96@gmail.com', '$2y$10$HbSdP22cxlZaI8yYwj2.BuhHB5EuiT494g0Mipj2KP/Az5IMWI9X2', '2018-10-15 06:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `id_story` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `description` varchar(8000) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `audio_url` varchar(4000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `id_story`, `name`, `description`, `url`, `audio_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'seccion 1', 'sdfsdf', 'https://i.ytimg.com/vi/IIjjrsepktA/maxresdefault.jpg', '', '2018-10-15 22:32:28', '2018-10-15 22:32:28', '2018-10-15 22:32:28'),
(2, 8, 'Seccion 1', 'Descripción', 'https://66.media.tumblr.com/ef90e18fb5eedc435f6e303d33594ced/tumblr_inline_pgfk0jQ0UC1r63chl_540.gif', '', '2018-10-15 22:32:25', '2018-10-15 22:32:25', '2018-10-15 22:32:25'),
(3, 6, 'df', 'fdfdfd', 'dfd', '', '2018-10-15 00:06:45', '2018-10-15 06:06:45', '2018-10-15 06:06:45'),
(4, 6, 'rere', 'rere', 'isNMfnJf0TJLMYEK.png', '', '2018-10-22 22:05:14', '2018-10-22 22:05:14', '2018-10-22 22:05:14'),
(5, 6, 'Seccion', 'Habia una ves una bonita historia que peto', 'Y8K01fcW34ZhDyHg.png', 'AOtmVgH4E5CkC76B.mp3', '2018-10-22 22:05:21', '2018-10-22 22:05:21', '2018-10-22 22:05:21'),
(6, 9, 'Seccion', 'Que bonita Seccion', 'vvKWkEeANRJBiwD7.png', '', '2018-10-18 16:14:18', '2018-10-18 16:14:18', '2018-10-18 16:14:18'),
(7, 9, 'MIra nomas', 'sdsdsdss', 'Vj240iJ4B34frBCC.png', 'YYqvPo5qJQKVRXWf.mp3', '2018-10-18 16:14:14', '2018-10-18 16:14:14', '2018-10-18 16:14:14'),
(8, 13, 'Segundo', 'Poco espacio disponiblevPoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponiblePoco espacio disponible', 'UQyFMufq7T3tgTY7.png', 'jfSmJIJGBQHNxz65.mp3', '2018-10-18 04:25:28', '2018-10-18 04:25:28', '2018-10-18 04:25:28'),
(9, 13, 'El Capitán', 'Hace mucho tiempo vivió un hombre de mar, el Capitán Bravo. Era muy valiente y jamás mostró temor ante un enemigo. Una vez, navegando los siete mares, el vigía vio que se acercaba un barco pirata, y la tripulación del barco se volvió loca de terror. El capitán Bravo gritó\r\n- Traigan mi camisa roja!!\r\ny llevándola puesta instigó a sus hombres al ataque, y vencieron a los piratas. Unos días más tarde, el vigía vio dos barcos piratas. El capitán pidió nuevamente por su camisa roja, y la victoria volvió a ser suya.', '5sqng6bGJ9uHZUe6.png', NULL, '2018-10-22 22:05:29', '2018-10-22 22:05:29', '2018-10-22 22:05:29'),
(10, 13, 'La duda', 'Esa noche, sus hombres le preguntaron por qué pedia la camisa roja antes de entrar en batalla, y el capitán contestó:\r\n- Si soy herido en combate, la camisa roja no deja ver mi sangre, y mis soldados continúan peleando sin miedo.\r\nTodos los hombres quedaron en silencio, maravillados por el coraje de su capitán.', 'RiX46u0Oo9CRdy8R.png', NULL, '2018-10-22 22:05:33', '2018-10-22 22:05:33', '2018-10-22 22:05:33'),
(11, 13, 'Poop', 'Al amanecer del día siguiente, el vigía vio no uno, no dos sino DIEZ barcos piratas que se acercaban. Toda la tripulación dirigió en silencio sus ojos al capitán, que con voz potente, sin demostrar miedo, gritó:\r\n- Tráingame mis pantalones marrones!', 'mFtlC5CMxOyYsKZF.png', NULL, '2018-10-22 22:05:09', '2018-10-22 22:05:09', '2018-10-22 22:05:09'),
(12, 17, '1', 'Un borrachito que sale de un bar a las 3 de la madrugada, llega a un edificio, timbra en un apartamento y cuando le contestan por el portero eléctrico él pregunta:\r\n-Señora, ¿Su marido ya está en casa?\r\n-Si señor, si está -contesta la señora malhumorada.\r\nEl borracho timbra en otro apartamento y hace la misma pregunta:\r\n-Señora, ¿Su marido ya está en casa?', 'o4pDVUSCBFbfHR3Z.png', NULL, '2018-10-22 22:05:39', '2018-10-22 22:05:39', '2018-10-22 22:05:39'),
(13, 17, '2', 'La señora le contesta que si, y el borracho timbra en otro apartamento, hace la misma pregunta, le dan la misma respuesta, y así por mucho rato hasta que en uno le contestan que el marido no está. El borracho suspira profundamente y dice:', 'Jbf7WqMslYNLGeuF.png', NULL, '2018-10-22 22:05:47', '2018-10-22 22:05:47', '2018-10-22 22:05:47'),
(14, 17, '3', 'Entonces, ¿PODRÍAS BAJAR A VER SI YO SOY TU MARIDO?', 'JqQVkGvLb2t560jF.png', NULL, '2018-10-22 22:05:51', '2018-10-22 22:05:51', '2018-10-22 22:05:51'),
(15, 18, 'A', 'A', 'wQ0OESk6tSPFWqJW.png', 'YUDPtG3u5XIJ0Dq4.mp3', '2018-11-06 03:13:13', '2018-11-06 03:13:13', NULL),
(16, 18, 'a', 'a', 'lAjY9caSzzlKUet8.png', 'BKXVIUruUMIOYe55.mp3', '2018-11-06 03:13:26', '2018-11-06 03:13:26', NULL),
(17, 18, 'E', 'E', 'kYjzRcEjFVPAPLS0.png', '5ByFgXnnxjQQUgh7.mp3', '2018-11-06 03:13:39', '2018-11-06 03:13:39', NULL),
(18, 18, 'e', 'e', 'NxPIaNpRGGdvgKu9.png', 'rx2f75W1zbU1Pp1k.mp3', '2018-11-06 03:13:49', '2018-11-06 03:13:49', NULL),
(19, 18, 'vocal i', 'i', 'QSauC6vOYA9hbhAx.png', 'K5ypVgAmtyqT73Zh.mp3', '2018-11-06 03:14:30', '2018-11-06 03:14:31', NULL),
(20, 18, 'vocal i min', 'i mun', 'hwHopm4nhi1q2r3L.png', 'AMdZI5aRPDG2sVgc.mp3', '2018-11-06 03:14:41', '2018-11-06 03:14:41', NULL),
(21, 18, 'vocal o', 'o may', '2AQDo497JQt3Fi5F.png', 'Q2DWc2nWXhsfmUVu.mp3', '2018-11-06 03:14:54', '2018-11-06 03:14:54', NULL),
(22, 18, 'vocal o min', 'o min', 'ZbTMt8XzKvL5361k.png', 'O14c1t5phwWiSKJr.mp3', '2018-11-06 03:15:09', '2018-11-06 03:15:09', NULL),
(23, 18, 'vocal u', 'vocal u may', 'h7f2bSHIKf0XwQl9.png', '0hkbRN4hPbQrP4VR.mp3', '2018-11-06 03:15:21', '2018-11-06 03:15:21', NULL),
(24, 18, 'u min', 'u min', 'PoTdLT0XxwG1zH3s.png', '88W6dJ7kKvS434ls.mp3', '2018-11-06 03:16:10', '2018-11-06 03:16:10', NULL),
(25, 19, 'perro', 'perro', '5yeA9mVSND8DWcPM.png', 'bDAUkK7bcJBPFV6r.mp3', '2018-11-06 03:18:47', '2018-11-06 03:18:47', NULL),
(26, 19, 'gato', 'gato', 'qNbt0GVbkNfqEAvH.png', NULL, '2018-11-06 03:16:19', '2018-11-06 03:16:19', '2018-11-06 03:16:19'),
(27, 19, 'vaca', 'vaca', 'jEZkTjdDmrX5f2bc.png', NULL, '2018-11-06 03:16:24', '2018-11-06 03:16:24', '2018-11-06 03:16:24'),
(28, 19, 'gallina', 'gallina', 'lxifrTUl6fwx3rDL.png', NULL, '2018-11-06 03:17:39', '2018-11-06 03:17:39', '2018-11-06 03:17:39'),
(29, 19, 'pato', 'pato', 'Fl3PUT8CjYCbzTKU.png', NULL, '2018-11-06 03:17:44', '2018-11-06 03:17:44', '2018-11-06 03:17:44'),
(30, 20, 'camisa', 'camisa', 'sh78hvb0Y0fUxQlO.png', NULL, '2018-11-06 03:17:49', '2018-11-06 03:17:49', '2018-11-06 03:17:49'),
(31, 20, 'pantalón', 'pantalón', '5fGvG8eRTM2lGZND.png', NULL, '2018-11-06 03:17:53', '2018-11-06 03:17:53', '2018-11-06 03:17:53'),
(32, 20, 'falda', 'falda', '48LVJmin4gSVxxQN.png', NULL, '2018-11-06 03:18:21', '2018-11-06 03:18:21', '2018-11-06 03:18:21'),
(33, 20, 'calcetines', 'calcetines', 'tWX8zGtdPx41ajds.png', NULL, '2018-11-06 03:18:25', '2018-11-06 03:18:25', '2018-11-06 03:18:25'),
(34, 20, 'zapato', 'zapato', '07t3yUKxlQVdXzXg.png', NULL, '2018-11-06 03:18:29', '2018-11-06 03:18:29', '2018-11-06 03:18:29'),
(35, 19, 'perro2', 'perro2', NULL, NULL, '2018-11-06 03:38:36', '2018-11-06 03:38:36', '2018-11-06 03:38:36'),
(36, 19, 'perro2', 'perro2', NULL, NULL, '2018-11-06 03:38:40', '2018-11-06 03:38:40', '2018-11-06 03:38:40'),
(37, 19, 'perro2', 'perro2', NULL, NULL, '2018-11-06 03:38:44', '2018-11-06 03:38:44', '2018-11-06 03:38:44'),
(38, 19, 'perro2', 'perro2', NULL, NULL, '2018-11-06 03:38:47', '2018-11-06 03:38:47', '2018-11-06 03:38:47'),
(39, 19, 'perro2', 'perro2', NULL, NULL, '2018-11-06 03:38:52', '2018-11-06 03:38:52', '2018-11-06 03:38:52'),
(40, 19, 'perro', 'perro', 'e7idlBoKgI8y0IA8.png', '6I89RSLXwZD42WNi.mp3', '2018-11-06 03:39:27', '2018-11-06 03:39:27', NULL),
(41, 19, 'perro3', 'perro3', 'fC9ftdmNmWZc4Nx8.png', 'LiiXzT1k9BG6VwsL.mp3', '2018-11-06 03:48:26', '2018-11-06 03:48:26', NULL),
(42, 19, 'gato', 'gato', 'Vqj5RpXev06WU1RG.png', '7g2Rc6Hg2kY46t68.mp3', '2018-11-06 03:52:37', '2018-11-06 03:52:37', NULL),
(43, 19, 'gato2', 'gato2', 'aEGteaqY90wnijPX.png', 'w2NIX2PkVTyYUHOM.mp3', '2018-11-06 03:53:09', '2018-11-06 03:53:09', NULL),
(44, 19, 'gato3', 'gato3', 'rsK0tPvjnMoCUuEi.png', 'J2QK0VqSmFfh6dsR.mp3', '2018-11-06 03:53:49', '2018-11-06 03:53:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `state` int(1) DEFAULT '1',
  `url` varchar(4000) DEFAULT NULL,
  `url_banner` varchar(5000) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `name`, `state`, `url`, `url_banner`, `id_category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'La carreta chillona', 1, NULL, NULL, 1, '2018-10-14 22:13:59', '2018-10-15 04:13:59', '2018-10-15 04:13:59'),
(2, 'sddsds', 1, NULL, NULL, 2, '2018-10-14 21:03:34', '2018-10-15 03:03:34', '2018-10-15 03:03:34'),
(3, 'sasaas', 1, NULL, NULL, 2, '2018-10-14 21:03:28', '2018-10-15 03:03:28', '2018-10-15 03:03:28'),
(4, 'wqqwwq', 1, NULL, NULL, 2, '2018-10-14 21:03:25', '2018-10-15 03:03:25', '2018-10-15 03:03:25'),
(5, 'wwwwwwwww', 1, NULL, NULL, 3, '2018-10-14 21:03:23', '2018-10-15 03:03:23', '2018-10-15 03:03:23'),
(6, 'historia', 1, '97PgBAev2RflkqVP.png', NULL, 5, '2018-10-22 22:04:40', '2018-10-22 22:04:40', '2018-10-22 22:04:40'),
(7, 'gg', 1, NULL, NULL, 2, '2018-10-14 23:28:35', '2018-10-15 05:28:35', '2018-10-15 05:28:35'),
(8, 'dddddd', 1, 'vHuaF4gmFbShunox.png', NULL, 2, '2018-10-16 14:36:46', '2018-10-16 14:36:46', '2018-10-16 14:36:46'),
(9, 'El Capitan y los piratas', 1, 'cmMwJNCTe5hc9GGo.png', NULL, 6, '2018-10-22 22:04:32', '2018-10-22 22:04:32', '2018-10-22 22:04:32'),
(10, 'ee', 1, NULL, NULL, 4, '2018-10-16 02:02:10', '2018-10-16 02:02:10', '2018-10-16 02:02:10'),
(11, 'Otra historia', 1, 'FrK3VNOJHQxrfobR.png', NULL, 4, '2018-10-22 22:04:23', '2018-10-22 22:04:23', '2018-10-22 22:04:23'),
(12, 'ojih', 1, 'udvCl9I6tWgQWe2h.png', NULL, 5, '2018-10-16 14:37:01', '2018-10-16 14:37:01', '2018-10-16 14:37:01'),
(13, 'El Capitan Bravo', 1, 'HJjTMO4cyy5Z07xS.png', NULL, 9, '2018-10-22 21:45:54', '2018-10-22 21:45:54', '2018-10-22 21:45:54'),
(14, 'sddds', 1, NULL, NULL, 4, '2018-10-17 18:51:01', '2018-10-17 18:51:01', '2018-10-17 18:51:01'),
(15, 'ggg', 1, NULL, NULL, 2, '2018-10-17 18:52:16', '2018-10-17 18:52:16', '2018-10-17 18:52:16'),
(16, '666', 1, 'X1zRhu0tmFFxYJCk.png', NULL, 2, '2018-10-18 04:20:23', '2018-10-18 04:20:23', '2018-10-18 04:20:23'),
(17, 'El borrachito', 1, '0joXBSqG6OXj4kef.png', NULL, 9, '2018-10-22 22:04:04', '2018-10-22 22:04:04', '2018-10-22 22:04:04'),
(18, 'Vocales', 1, 'Yipsgj94CRdQ5jtT.png', 'cYilhDlzFvDyC1aK.png', 2, '2018-10-30 04:16:03', '2018-10-30 04:16:03', NULL),
(19, 'Animales', 1, '1SK7JMjaICCw65zr.png', '5DbB0ofg2YqMr8LD.png', 2, '2018-10-30 04:16:46', '2018-10-30 04:16:46', NULL),
(20, 'Vestimenta', 1, 'Bn98lwu0v239aZFq.png', 'DrvPQt920ZZk9OM1.png', 2, '2018-11-02 01:30:26', '2018-11-02 01:30:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ariel Rodrigo Reyes', 'chepito@mail.com', '$2y$10$3f0yWszVUQ1dSoUFVoy.LeY5yj27BuD0Jk.2EdccITNlAIVEHhu4e', 'wuelPw6sG5XT95n0sB1USs7IU1EgbuVUabGqjPSGL8RkogiRe2gL3HGGOn50', '2018-10-14 09:48:14', '2018-10-14 09:48:14'),
(2, 'Ariel Rodrigo Reyes', 'arizul96@gmail.com', '$2y$10$Jj1Eq5Nu0XhE3VUXC1LD/u23ofNsjL/PNht9uZBSoIoQvnFvU2XMm', 'grScY9xJ2oKpjCnpjUJNrtDu0dwHO2aHqk9rbcJdzq1KHLuXntt2IsQY4vY7', '2018-10-15 06:42:38', '2018-10-15 06:42:38'),
(3, 'Miguel Orellana', 'miguel.orellana@udb.edu.sv', '$2y$10$FsG71HkLFKUTiVNwF/Ga1O/QzdFiuDJ4Uh8eEoBhpzYXdY4SKWOD2', 'kBh5AD2fYuv5qtgpuCIWH9EfjVrQhVjnP0cyeZfocUXUdr0LHmHAOjLbG9Bz', '2018-10-15 21:42:15', '2018-10-15 21:42:15'),
(4, 'Diego Sánchez', 'diego@udb.edu.sv', '$2y$10$Mxz8.qqcxYiQ7c49rcWGXeVAmvepqLLeDiAVU4jlI1bB/bziPsQMi', 's62Vks5ayFauG3UyXrBShMuj5Kqn4dxdtFbd6V9H4AICP4i3buEJJuORXb8u', '2018-10-16 04:52:40', '2018-10-16 04:52:40'),
(5, 'Miguel Orellana', 'nyumaiku@gmail.com', '$2y$10$ThpWQ2UngddC1X6Ub4LqZukCtGZR4T4t7XXax/COZ2LP5fbzJX3Hm', NULL, '2018-10-16 14:35:52', '2018-10-16 14:35:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_story` (`id_story`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`id_story`) REFERENCES `story` (`id`);

--
-- Constraints for table `story`
--
ALTER TABLE `story`
  ADD CONSTRAINT `story_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
