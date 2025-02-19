-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 19 2025 г., 18:42
-- Версия сервера: 5.7.24
-- Версия PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demoexamzaverach`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `ClientID` int(11) NOT NULL,
  `CompanyName` text NOT NULL,
  `NameClient` text NOT NULL,
  `ClientType` text NOT NULL,
  `Phone` text NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`ClientID`, `CompanyName`, `NameClient`, `ClientType`, `Phone`, `Rating`) VALUES
(1, 'TechWave', 'Сергей Петров', 'ООО', '+79051123456', 8),
(2, 'OptimaCorp', 'Александр Кузьмин', 'ИП', '+79052234567', 6),
(3, 'SmartFoods', 'Екатерина Власова', 'ООО', '+79053345678', 9),
(4, 'InnovativeTech', 'Михаил Иванов', 'ИП', '+79054456789', 7),
(5, 'BrightIdeas', 'Анна Михайлова', 'ООО', '+79055567890', 10),
(6, 'QuantumSolutions', 'Петр Орлов', 'ИП', '+79056678901', 5),
(7, 'FreshMarket', 'Юлия Баранова', 'ООО', '+79057789012', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `ordern`
--

CREATE TABLE `ordern` (
  `ClientID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `ProductData` date NOT NULL,
  `Price` int(11) NOT NULL,
  `ammount` int(11) NOT NULL,
  `summ` int(11) NOT NULL,
  `FinalSum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ordern`
--

INSERT INTO `ordern` (`ClientID`, `ProductID`, `ProductName`, `ProductData`, `Price`, `ammount`, `summ`, `FinalSum`) VALUES
(1, 1, 'Чай зеленый', '2024-11-20', 120, 50, 6000, 5700),
(2, 2, 'Кофе арабика', '2024-11-21', 200, 20, 4000, 3800),
(3, 3, 'Минеральная вода', '2024-11-22', 60, 30, 1800, 1700),
(4, 4, 'Соки апельсиновые', '2024-11-23', 150, 40, 6000, 5700),
(5, 5, 'Шоколад темный', '2024-11-24', 100, 60, 6000, 5700),
(6, 6, 'Орехи кешью', '2024-11-25', 250, 25, 6250, 6000),
(7, 7, 'Фрукты', '2024-11-26', 180, 15, 2700, 2550);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientID`);

--
-- Индексы таблицы `ordern`
--
ALTER TABLE `ordern`
  ADD PRIMARY KEY (`ClientID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `ordern`
--
ALTER TABLE `ordern`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
