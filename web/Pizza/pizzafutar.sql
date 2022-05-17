-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 13. 16:53
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pizzafutar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cim`
--

CREATE TABLE `cim` (
  `id` int(11) NOT NULL,
  `nev` varchar(25) DEFAULT NULL,
  `utca` varchar(27) DEFAULT NULL,
  `hsz` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `cim`
--

INSERT INTO `cim` (`id`, `nev`, `utca`, `hsz`) VALUES
(4, 'Horváth Mercédesz', 'Sztráda utca', '12/2'),
(6, 'Rém Elek', 'Kézműves utca', '47'),
(11, 'Csonka Anna', 'Vak Bottyán utca', '66/a'),
(18, 'Keszthelyi Zsolt', 'Templom utca', '60'),
(29, 'Duma Árpád', 'Vak Bottyán utca', '66/a'),
(34, 'Szűcs Lóránt', 'Akácfa utca', '77'),
(36, 'Sarlós Róbert', 'Diós tér', '29'),
(38, 'Farkas Ildikó', 'Madarász Viktor utca', '8'),
(39, 'Gál Brigitta', 'Tulipán utca', '79'),
(43, 'Kasznár Judit', 'Móra Ferenc utca', '45'),
(44, 'Lengyel Zsófia', 'Clark Ádám utca', '15'),
(47, 'Vida Csongor', 'Márton köz', '28'),
(49, 'Benkő Kata Enikő', 'Taksony utca', '6'),
(61, 'Püski Kata', 'Lázár Vilmos utca', '74'),
(65, 'Balog Orsolya', 'Csordahegy köz', '33/a'),
(75, 'Nagy Tímea', 'Jegenye sor', '37'),
(76, 'Tanács Lilla', 'Szépvölgyi köz', '18'),
(79, 'Kun Anna', 'Zsilip sor', '3'),
(85, 'Bognár Ágnes', 'Napsugár utca', '41'),
(86, 'Dobi Brigitta Krisztina', 'Diófa utca', '7'),
(87, 'Dócz Károly', 'Fehérvári utca', '22'),
(89, 'Szántó Lilla', 'Rippl Rónai utca', '43'),
(93, 'Wollek Ottó', 'Rákóczi utca', '7'),
(95, 'Sebok Franciska', 'Fenyves tér', '47'),
(102, 'Nagy Eszter', 'Cseresznye utca', '86'),
(106, 'Veres Annamária', 'Tünde utca', '53'),
(115, 'Sebők Flóra', 'Bihari utca', '78'),
(125, 'Sós Imre', 'Sándor utca', '49'),
(128, 'Terjéki Zsuzsanna Emese', 'Szőlőhegy út', '81'),
(139, 'Holzi Ervin', 'Sáros utca', '12'),
(149, 'Farkas Lilla', 'Kandó Kálmán utca', '9'),
(154, 'Keresztes Zsolt', 'Álmos utca', '29'),
(155, 'Kopasz Klaudia', 'Bornemissza utca', '75'),
(157, 'Horváth Rita', 'Borvirág utca', '11'),
(169, 'Ladányi Renáta', 'Vasút tér', '73'),
(176, 'Németh Rebeka Anna', 'Kenesei utca', '12'),
(177, 'Bodor Flóra', 'Zsilip sor', '64'),
(179, 'Kaltenbrunner Norbert', 'Blaha Lujza utca', '75'),
(183, 'Tárkány Csilla', 'Csokonai Vitéz Mihály utca', '58'),
(185, 'Varga Emese', 'Lázár Vilmos utca', '12'),
(193, 'Török Patrícia', 'Verebesi utca', '68'),
(199, 'Erdélyi Réka', 'Rákóczi Ferenc utca', '5'),
(204, 'Földesi Kata', 'Kereszt utca', '28'),
(207, 'Horányi Lilla Krisztina', 'Kölcsey Ferenc utca', '51'),
(208, 'Nyakas Dénes', 'Árpád utca', '3'),
(214, 'Lisztes Imre', 'Sándor utca', '45'),
(219, 'Sár Gábor', 'Liszt Ferenc sétány', '41'),
(220, 'Blum Ottó', 'Hajnóczy József utca', '82'),
(224, 'Bitó Réka Emese', 'Somlay Artúr utca', '1'),
(225, 'Dábity Ottó', 'Szabadság utca', '3'),
(226, 'Nik Ferenc', 'Köztársaság utca', '8'),
(227, 'Berta Alexandra', 'Füredi utca', '66/c'),
(247, 'Zólyomi Kristóf', 'Csicsali utca', '66'),
(249, 'Papp Vanessza', 'Őszirózsa utca', '9'),
(250, 'Nagy Réka', 'Noszlopy Gáspár utca', '2'),
(263, 'Hegedüs Laura', 'Csicsali utca', '19'),
(265, 'Pataki Zsolt', 'Helikon utca', '86'),
(268, 'Savanya Dorottya', 'Gergely Jenő utca', '83'),
(270, 'Molnár Gréta', 'Beszédes híd', '53'),
(271, 'Beke Kata', 'Thököly utca', '6'),
(273, 'Lima Id', 'Mogyoró utca', '87'),
(288, 'Olasz Sára Réka', 'Batthyány Lajos utca', '36'),
(291, 'Tari Dóra', 'Szigliget utca', '7'),
(295, 'Molnár Kinga', 'Evező utca', '16'),
(299, 'Lévai Emese Zsuzsanna', 'Rajcsányi Péter utca', '70'),
(303, 'Farkas Kata', 'Bihari utca', '59'),
(304, 'Kovács Anita', 'Rét utca', '65'),
(313, 'Borka Dóra', 'Isztria sétány', '74'),
(319, 'Mészáros Dominika Ágnes', 'Kékfrankos utca', '61'),
(320, 'Nagy Johanna Réka', 'Attila utca', '70'),
(321, 'Takács Nikolett', 'Máté utca', '60'),
(322, 'Juhász Márta', 'Szőlőhegyi utca', '20'),
(323, 'Szabó Fruzsina', 'Barbara utca', '56'),
(326, 'Gyimesi Béla', 'Tölgyessy Artúr utca', '13/a'),
(332, 'Nikk Gábor', 'Turi István utca', '24'),
(337, 'Vass István', 'Zalán utca', '85'),
(338, 'Király Flóra', 'Bartók Béla utca', '16'),
(342, 'Almási Krisztina', 'Barbara utca', '47'),
(347, 'Papp Tímea', 'Bláthy Ottó utca', '47'),
(349, 'Kiss Evelin', 'Vajda János utca', '41'),
(351, 'Minek Pál', 'Jankó János utca', '18'),
(353, 'Koch Péter', 'Rigó utca', '70'),
(357, 'Nádudvari Borbála', 'Városház tér', '78'),
(366, 'Tóth Nóra', 'Állomás tér', '28'),
(377, 'Démon Endre', 'Borostyán utca', '7'),
(380, 'Hódi Anett', 'Rákóczi utca', '21'),
(386, 'Veres Eszter', 'Csúszda utca', '55');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `nev` varchar(14) DEFAULT NULL,
  `meret` varchar(5) DEFAULT NULL,
  `ar` varchar(4) DEFAULT NULL,
  `foto` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `pizza`
--

INSERT INTO `pizza` (`id`, `nev`, `meret`, `ar`, `foto`) VALUES
(1, '4 sajtos', '22', '1150', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(2, '4 sajtos', '30', '1450', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(3, '4 sajtos', '45', '2850', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(4, 'Baconos', '22', '1250', 'https://i.ibb.co/Px966Tj/pexels-kei-photo-2741457.jpg'),
(5, 'Baconos', '30', '1550', 'https://i.ibb.co/Px966Tj/pexels-kei-photo-2741457.jpg'),
(6, 'Baconos', '45', '2950', 'https://i.ibb.co/Px966Tj/pexels-kei-photo-2741457.jpg'),
(7, 'Big Boss', '22', '1150', 'https://i.ibb.co/d5fpq23/pexels-pixabay-263041.jpg'),
(8, 'Big Boss', '30', '1450', 'https://i.ibb.co/d5fpq23/pexels-pixabay-263041.jpg'),
(9, 'Big Boss', '45', '2850', 'https://i.ibb.co/d5fpq23/pexels-pixabay-263041.jpg'),
(10, 'Bitang', '22', '1250', 'https://i.ibb.co/yhBrh2x/pexels-engin-akyurt-2619967.jpg'),
(11, 'Bitang', '30', '1550', 'https://i.ibb.co/yhBrh2x/pexels-engin-akyurt-2619967.jpg'),
(12, 'Bitang', '45', '2950', 'https://i.ibb.co/yhBrh2x/pexels-engin-akyurt-2619967.jpg'),
(13, 'Bolognai', '22', '1150', 'https://i.ibb.co/x59XzpJ/pexels-vincent-rivaud-2147491.jpg'),
(14, 'Bolognai', '30', '1450', 'https://i.ibb.co/x59XzpJ/pexels-vincent-rivaud-2147491.jpg'),
(15, 'Bolognai', '45', '2850', 'https://i.ibb.co/x59XzpJ/pexels-vincent-rivaud-2147491.jpg'),
(16, 'Chee-pollo', '22', '1250', 'https://i.ibb.co/bXZHwpV/pexels-pixabay-208537.jpg'),
(17, 'Chee-pollo', '30', '1550', 'https://i.ibb.co/bXZHwpV/pexels-pixabay-208537.jpg'),
(18, 'Chee-pollo', '45', '2950', 'https://i.ibb.co/bXZHwpV/pexels-pixabay-208537.jpg'),
(19, 'El Bandi', '22', '1150', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(20, 'El Bandi', '30', '1450', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(21, 'El Bandi', '45', '2850', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(22, 'Elvis', '22', '1400', 'https://i.ibb.co/6R6q44P/pexels-pablo-macedo-845798-1.jpg'),
(23, 'Elvis', '30', '1750', 'https://i.ibb.co/6R6q44P/pexels-pablo-macedo-845798-1.jpg'),
(24, 'Elvis', '45', '3150', 'https://i.ibb.co/6R6q44P/pexels-pablo-macedo-845798-1.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `id` int(11) NOT NULL,
  `pizzaid` int(11) NOT NULL,
  `darab` varchar(5) DEFAULT NULL,
  `cimid` int(11) NOT NULL,
  `szallitas` varchar(9) DEFAULT NULL,
  `datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`id`, `pizzaid`, `darab`, `cimid`, `szallitas`, `datum`) VALUES
(1, 24, '1', 139, '10:05:00', '2022-03-31'),
(6, 19, '1', 386, '10:20:00', '2022-03-31'),
(14, 22, '2', 366, '10:35:00', '2022-03-31'),
(15, 15, '1', 49, '10:35:00', '2022-03-31'),
(25, 21, '1', 79, '10:55:00', '2022-03-31'),
(28, 2, '2', 6, '11:05:00', '2022-03-31'),
(36, 10, '1', 204, '11:25:00', '2022-03-31'),
(38, 1, '1', 65, '11:25:00', '2022-03-31'),
(39, 2, '3', 332, '11:30:00', '2022-03-31'),
(40, 4, '3', 44, '11:30:00', '2022-03-31'),
(41, 7, '1', 347, '11:30:00', '2022-03-31'),
(54, 7, '1', 128, '12:10:00', '2022-03-31'),
(64, 1, '2', 219, '12:35:00', '2022-03-31'),
(76, 18, '2', 18, '12:55:00', '2022-03-31'),
(78, 15, '1', 351, '13:00:00', '2022-03-31'),
(87, 22, '1', 177, '13:15:00', '2022-03-31'),
(92, 8, '1', 291, '13:30:00', '2022-03-31'),
(106, 2, '1', 247, '13:45:00', '2022-03-31'),
(107, 8, '1', 273, '13:45:00', '2022-03-31'),
(108, 17, '1', 95, '13:45:00', '2022-03-31'),
(109, 12, '2', 179, '13:50:00', '2022-03-31'),
(110, 19, '1', 93, '13:55:00', '2022-03-31'),
(111, 12, '2', 193, '13:55:00', '2022-03-31'),
(114, 15, '1', 214, '14:00:00', '2022-03-31'),
(119, 7, '3', 320, '14:10:00', '2022-03-31'),
(124, 18, '3', 288, '14:20:00', '2022-03-31'),
(125, 1, '2', 61, '14:20:00', '2022-03-31'),
(127, 3, '1', 169, '14:20:00', '2022-03-31'),
(133, 24, '1', 39, '14:35:00', '2022-03-31'),
(134, 1, '1', 265, '14:35:00', '2022-03-31'),
(136, 4, '2', 34, '14:45:00', '2022-03-31'),
(152, 24, '1', 29, '15:10:00', '2022-03-31'),
(154, 15, '1', 155, '15:10:00', '2022-03-31'),
(159, 16, '2', 125, '15:15:00', '2022-03-31'),
(161, 23, '3', 43, '15:20:00', '2022-03-31'),
(163, 10, '1', 176, '15:20:00', '2022-03-31'),
(168, 2, '1', 87, '15:30:00', '2022-03-31'),
(175, 11, '1', 270, '15:55:00', '2022-03-31'),
(179, 20, '1', 106, '16:05:00', '2022-03-31'),
(180, 2, '1', 319, '16:05:00', '2022-03-31'),
(183, 6, '1', 183, '16:15:00', '2022-03-31'),
(190, 5, '2', 321, '16:30:00', '2022-03-31'),
(204, 6, '2', 185, '17:10:00', '2022-03-31'),
(210, 4, '2', 207, '17:10:00', '2022-03-31'),
(211, 4, '2', 115, '17:10:00', '2022-03-31'),
(212, 4, '1', 38, '17:10:00', '2022-03-31'),
(218, 20, '1', 225, '17:15:00', '2022-03-31'),
(229, 18, '1', 102, '17:40:00', '2022-03-31'),
(239, 2, '2', 377, '17:45:00', '2022-03-31'),
(243, 18, '1', 6, '17:45:00', '2022-03-31'),
(249, 18, '1', 380, '17:55:00', '2022-03-31'),
(252, 13, '1', 75, '17:55:00', '2022-03-31'),
(269, 7, '1', 44, '18:35:00', '2022-03-31'),
(273, 8, '1', 86, '18:40:00', '2022-03-31'),
(284, 21, '1', 263, '18:55:00', '2022-03-31'),
(288, 19, '1', 76, '19:00:00', '2022-03-31'),
(289, 5, '3', 149, '19:05:00', '2022-03-31'),
(293, 15, '1', 323, '19:10:00', '2022-03-31'),
(294, 12, '3', 337, '19:10:00', '2022-03-31'),
(302, 19, '1', 47, '19:25:00', '2022-03-31'),
(308, 14, '1', 157, '19:35:00', '2022-03-31'),
(310, 4, '1', 89, '19:35:00', '2022-03-31'),
(322, 20, '1', 322, '19:35:00', '2022-03-31'),
(332, 12, '2', 268, '19:50:00', '2022-03-31'),
(333, 21, '1', 271, '19:55:00', '2022-03-31'),
(344, 16, '2', 199, '20:20:00', '2022-03-31'),
(346, 11, '1', 208, '20:25:00', '2022-03-31'),
(348, 16, '1', 326, '20:30:00', '2022-03-31'),
(350, 5, '1', 85, '20:35:00', '2022-03-31'),
(351, 7, '1', 313, '20:35:00', '2022-03-31'),
(355, 3, '1', 154, '20:45:00', '2022-03-31'),
(360, 10, '1', 338, '20:45:00', '2022-03-31'),
(364, 7, '1', 357, '20:45:00', '2022-03-31'),
(369, 2, '1', 353, '20:55:00', '2022-03-31'),
(371, 2, '1', 220, '20:55:00', '2022-03-31'),
(373, 11, '3', 303, '20:55:00', '2022-03-31'),
(374, 11, '1', 4, '20:55:00', '2022-03-31'),
(376, 19, '1', 349, '21:00:00', '2022-03-31'),
(378, 9, '1', 342, '21:05:00', '2022-03-31'),
(379, 2, '1', 227, '21:10:00', '2022-03-31'),
(381, 6, '1', 249, '21:10:00', '2022-03-31'),
(387, 23, '1', 226, '21:15:00', '2022-03-31'),
(389, 24, '1', 36, '21:15:00', '2022-03-31'),
(394, 8, '1', 224, '21:15:00', '2022-03-31'),
(396, 3, '1', 11, '21:15:00', '2022-03-31'),
(398, 1, '2', 4, '21:20:00', '2022-03-31'),
(410, 24, '1', 295, '21:55:00', '2022-03-31'),
(411, 22, '1', 304, '21:55:00', '2022-03-31'),
(412, 16, '1', 250, '21:55:00', '2022-03-31'),
(414, 4, '3', 299, '21:55:00', '2022-03-31');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cim`
--
ALTER TABLE `cim`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pizzaid` (`pizzaid`),
  ADD KEY `cimid` (`cimid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cim`
--
ALTER TABLE `cim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT a táblához `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `rendeles`
--
ALTER TABLE `rendeles`
  ADD CONSTRAINT `rendeles_ibfk_1` FOREIGN KEY (`cimid`) REFERENCES `cim` (`id`),
  ADD CONSTRAINT `rendeles_ibfk_2` FOREIGN KEY (`pizzaid`) REFERENCES `pizza` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
