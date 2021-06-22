-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 22, 2021 alle 14:51
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fellini-app`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `casts`
--

CREATE TABLE `casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cast_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `casts`
--

INSERT INTO `casts` (`id`, `cast_name`, `film_id`, `created_at`, `updated_at`) VALUES
(1, 'Magali Noël', 1, '2021-06-22 09:09:26', '2021-06-22 09:09:32'),
(2, 'Bruno Zanin', 1, '2021-06-22 09:09:26', '2021-06-22 09:09:33'),
(3, 'Pupella Maggio', 1, '2021-06-22 09:09:27', '2021-06-22 09:09:33'),
(4, 'Marcello Mastroianni', 2, '2021-06-22 09:09:28', '2021-06-22 09:09:34'),
(5, 'Anita Ekberg', 2, '2021-06-22 09:09:29', '2021-06-22 09:09:35'),
(6, 'Anouk Aimée', 2, '2021-06-22 09:09:31', '2021-06-22 09:09:36'),
(7, 'Anthony Quinn', 3, '2021-06-22 09:09:47', '2021-06-22 09:09:46'),
(8, 'Giulietta Masina', 3, '2021-06-22 09:10:19', '2021-06-22 09:10:22'),
(9, 'Richard Basehart', 3, '2021-06-22 09:10:20', '2021-06-22 09:10:24');

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `films`
--

CREATE TABLE `films` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `films`
--

INSERT INTO `films` (`id`, `name`, `director`, `year`, `description`, `imageUrl`, `created_at`, `updated_at`) VALUES
(1, 'Amarcord', 'One year in a small northern Italian coastal town in the late 1930s is presented. The slightly off-kilter cast of characters are affected by time and location', 1973, 'https://m.media-amazon.com/images/M/MV5BZDI2OTg2NDQtMzc0MC00MjRiLWI1NzAtMjY2ZDMwMmUyNzBiXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_UX182_CR0,0,182,268_AL_.jpg', 'Federico Fellini', '2021-06-22 09:08:55', '2021-06-22 09:09:08'),
(2, 'La dolce vita', 'Rome, 1959/60. Marcello Rubini (played by Marcello Mastroianni) is a writer and journalist, the worst kind of journalist - a tabloid journalist, or paparazzo. His job involves him trying to catch celebrities in compromising or embarrassing situations. He ', 1960, 'https://m.media-amazon.com/images/M/MV5BODQ0NzY5NGEtYTc5NC00Yjg4LTg4Y2QtZjE2MTkyYTNmNmU2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY268_CR4,0,182,268_AL_.jpg', 'Federico Fellini', '2021-06-22 09:09:01', '2021-06-22 09:09:12'),
(3, 'La strada', 'Sad story of a waif, Gelsomina, who is sold by her mother to Zampano for 10,000 lire and a few kilos of food. Zampano is a traveling showman who exhibits feats of strength by breaking a chain wrapped around his chest. He performs in village squares and th', 1954, 'https://m.media-amazon.com/images/M/MV5BYjUyOGMyMTQtYTM5Yy00MjFiLTk2OGItMWYwMDc2YmM1YzhiXkEyXkFqcGdeQXVyMjA0MzYwMDY@._V1_UY268_CR5,0,182,268_AL_.jpg', 'Federico Fellini', '2021-06-22 09:09:05', '2021-06-22 09:09:13');

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_22_115220_create_casts_table', 1),
(5, '2021_06_22_115308_create_films_table', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
