-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Gru 2019, 15:34
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sharing`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `Id` int(1) NOT NULL,
  `Name` text COLLATE utf8_polish_ci NOT NULL,
  `Category` text COLLATE utf8_polish_ci NOT NULL,
  `Price` varchar(4) COLLATE utf8_polish_ci NOT NULL,
  `Condition` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`Id`, `Name`, `Category`, `Price`, `Condition`) VALUES
(0, '', '', '', ''),
(1, 'Zupa pomidorowa', 'Groceries', '1', 'Dostępne'),
(2, 'Herbata', 'Groceries', '0.5', 'Dostępne'),
(3, 'Jeansy rozmiar 38', 'Clothes', '10', 'Dostępne'),
(4, 'Zabawka pluszowa dinozaur', 'Toys', '2', 'Dostępne'),
(5, 'Kurtka Adidas M', 'Clothes', '10', 'Dostępne'),
(6, 'Obiad raz w tygodniu', 'Services', '5', 'Dostępne'),
(7, 'Pomoc w nauce', 'Services', '10', 'Dostępne');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
