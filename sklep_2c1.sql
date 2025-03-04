-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Mar 2025, 14:30
-- Wersja serwera: 10.4.18-MariaDB
-- Wersja PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep_2c1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `frame`
--

CREATE TABLE `frame` (
  `frameID` int(11) NOT NULL,
  `nazwaF` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `frame`
--

INSERT INTO `frame` (`frameID`, `nazwaF`) VALUES
(1, 'fullframe'),
(2, 'aps-c'),
(3, '1-inch'),
(4, '1/2.3 inch');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mocowanie`
--

CREATE TABLE `mocowanie` (
  `mocowanieID` int(11) NOT NULL,
  `nazwaM` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `mocowanie`
--

INSERT INTO `mocowanie` (`mocowanieID`, `nazwaM`) VALUES
(1, 'Sony E-mount'),
(2, 'Nikon Z-mount'),
(3, 'Nikon F-mount'),
(4, 'Canon RF-mount'),
(5, 'Canon EF-mount'),
(6, 'Canon EF-S mount'),
(7, 'Canon EF-M mount'),
(8, 'Fujifilm X'),
(9, 'Micro Four Thirds');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obiektywy`
--

CREATE TABLE `obiektywy` (
  `NazwaO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocena` int(11) NOT NULL,
  `opis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mocowanie` int(11) NOT NULL,
  `matryca` int(11) NOT NULL,
  `ogniskowa_1` int(11) NOT NULL,
  `obiektywID` int(11) NOT NULL,
  `ogniskowa_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `obiektywy`
--

INSERT INTO `obiektywy` (`NazwaO`, `ocena`, `opis`, `mocowanie`, `matryca`, `ogniskowa_1`, `obiektywID`, `ogniskowa_2`) VALUES
('Canon EF 50mm f/1.8 STM', 9, 'Lekki i tani obiektyw stałoogniskowy o dużej jasności, idealny do portretów.', 5, 1, 50, 1, 0),
('Nikon AF-S 24-70mm f/2.8E ED VR', 7, 'Profesjonalny obiektyw zoom z doskonałą jakością obrazu i stabilizacją.', 3, 1, 24, 2, 70),
('Sony FE 85mm f/1.4 GM', 3, 'Obiektyw portretowy o wyjątkowej ostrości i bokeh.', 1, 1, 85, 3, 0),
('Tamron 17-28mm f/2.8 Di III RXD', 8, 'Ultraszerokokątny obiektyw z jasną przysłoną, przeznaczony dla aparatów Sony z mocowaniem E.', 1, 1, 17, 4, 28),
('Sigma 70-200mm f/2.8 DG OS HSM Sport', 8, 'Obiektyw teleobiektywowy dla profesjonalistów, świetny do sportu i fotografii przyrody.', 5, 1, 70, 5, 200),
('Canon RF 24-70mm f/2.8L IS USM', 6, 'Obiektyw standardowy zoom o dużej jasności z systemem stabilizacji obrazu.', 4, 1, 24, 6, 70),
('Nikon Z 50mm f/1.8 S', 4, 'Obiektyw stałoogniskowy do aparatów z mocowaniem Z, doskonały do portretów i fotografii niskiej jakości oświetlenia.', 2, 1, 50, 7, 0),
('Sony 16-35mm f/2.8 GM', 5, 'Obiektyw szerokokątny o wyjątkowej jakości obrazu i szybkim autofocusie.', 1, 1, 16, 8, 35),
('Fujifilm XF 18-55mm f/2.8-4 R LM OIS', 10, 'Kompaktowy obiektyw z szerokim zakresem ogniskowych, idealny do codziennego użytku.', 8, 2, 18, 9, 55),
('Olympus M.Zuiko Digital ED 12-40mm f/2.8 PRO', 3, 'Obiektyw standardowy zoom dla systemu Micro Four Thirds o jasnej przysłonie.', 9, 4, 12, 10, 40);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producent`
--

CREATE TABLE `producent` (
  `NazwaF` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocena` int(11) NOT NULL,
  `firmaID` int(11) NOT NULL,
  `data_stworzenia` date DEFAULT NULL,
  `siedziba` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strona_internetowa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `producent`
--

INSERT INTO `producent` (`NazwaF`, `opis`, `ocena`, `firmaID`, `data_stworzenia`, `siedziba`, `strona_internetowa`) VALUES
('Sony', 'Sony to japońska korporacja technologiczna, która jest jednym z liderów w branży elektroniki użytkowej, rozrywki i technologii. Została założona w 1946 roku przez Masaru Ibuka i Akio Moritę. Sony stało się znane dzięki innowacyjnym produktom, takim jak odtwarzacze Walkman, telewizory, kamery, a także konsole do gier, w tym popularne PlayStation.\r\n\r\nFirma działa w różnych segmentach rynku, w tym:\r\n\r\n    Elektronika konsumencka – Sony produkuje szeroki wachlarz produktów, od telewizorów, przez słuchawki, aż po smartfony.\r\n    Film i muzyka – Sony jest właścicielem studia filmowego Columbia Pictures, a także posiada wytwórnię muzyczną Sony Music.\r\n    Gry – PlayStation to jedna z najważniejszych marek w branży gier wideo. Sony także rozwija gry w ramach swojej własnej wytwórni i sieci PlayStation Network.\r\n    Technologie – Sony inwestuje w technologie przyszłości, takie jak sztuczna inteligencja, robotyka, a także zaawansowane rozwiązania w zakresie obrazowania (kamery, sensory, itp.).\r\n\r\nFirma jest również znana z zaawansowanych technologii audio i wideo, produkując sprzęt, który często wyznacza standardy w branży, szczególnie w zakresie jakości obrazu i dźwięku.', 10, 1, '1946-05-07', 'Tokio, Japonia', 'https://www.sony.com'),
('Nikon', 'Nikon to japońska firma technologiczna, która specjalizuje się głównie w produkcji sprzętu optycznego, w tym aparatów fotograficznych, obiektywów, lunet celowniczych, a także urządzeń do pomiarów optycznych. Firma została założona w 1917 roku i początkowo zajmowała się produkcją soczewek optycznych oraz instrumentów precyzyjnych. Dziś Nikon jest jednym z największych producentów aparatów fotograficznych na świecie, szczególnie znanym z wysokiej jakości lustrzanek cyfrowych (DSLR) oraz aparatów bezlusterkowych.\r\n\r\nGłówne obszary działalności Nikona to:\r\n\r\n    Aparaty fotograficzne – Nikon jest uznawany za jednego z liderów na rynku aparatów cyfrowych. Firma produkuje szeroką gamę aparatów, od profesjonalnych lustrzanek i bezlusterkowców, po aparaty kompaktowe i systemy kamer wideo. Ich lustrzanki cyfrowe, takie jak seria Nikon D oraz Nikon Z (bezlusterkowce), cieszą się dużym uznaniem wśród profesjonalistów i amatorów fotografii.\r\n\r\n    Obiektywy i akcesoria – Nikon oferuje szeroką gamę obiektywów, które cieszą się dużym uznaniem za swoją jakość optyczną. Produkty te są wykorzystywane zarówno przez profesjonalnych fotografów, jak i amatorów. Firma produkuje również inne akcesoria fotograficzne, takie jak statywy, torby na sprzęt czy lampy błyskowe.\r\n\r\n    Sprzęt optyczny – Nikon produkuje również lunety, teleskopy, mikroskopy oraz inne urządzenia optyczne, wykorzystywane w nauce, przemyśle i turystyce.\r\n\r\n    Technologia i innowacje – Nikon jest pionierem w dziedzinie technologii obrazu, wprowadzając innowacyjne rozwiązania takie jak zaawansowane sensory, systemy autofokusa oraz technologie stabilizacji obrazu, które podnoszą jakość zdjęć w trudnych warunkach.\r\n\r\n    Przemysł medyczny i naukowy – Firma dostarcza również sprzęt precyzyjny do zastosowań medycznych, takich jak mikroskopy, a także urządzenia wykorzystywane w badaniach naukowych.', 9, 2, '1917-07-25', 'Tokio, Japonia', 'https://www.nikon.com'),
('Canon', 'Canon to japońska firma technologiczna, która jest jednym z wiodących producentów sprzętu optycznego i fotograficznego na świecie. Została założona w 1937 roku, a jej pełna nazwa to Canon Inc. Firma początkowo specjalizowała się w produkcji kamer filmowych, a z czasem rozwinęła swoją ofertę, stając się jednym z liderów w branży aparatów fotograficznych, drukarek, kopiarek i innych urządzeń optycznych.\r\n\r\nOto główne obszary działalności Canon:\r\n\r\n    Aparaty fotograficzne i kamery – Canon jest jednym z największych producentów aparatów cyfrowych, w tym lustrzanek cyfrowych (DSLR) oraz aparatów bezlusterkowych. Seria Canon EOS to jedna z najpopularniejszych wśród profesjonalistów, jak i amatorów. Firma produkuje również kamery wideo, które cieszą się dużym uznaniem wśród twórców filmowych i dziennikarzy.\r\n\r\n    Obiektywy – Canon oferuje szeroką gamę obiektywów do swoich aparatów, które charakteryzują się wyjątkową jakością optyczną i trwałością. Wśród nich znajdują się zarówno obiektywy standardowe, jak i specjalistyczne (np. teleobiektywy, obiektywy szerokokątne), które są wykorzystywane przez profesjonalnych fotografów.\r\n\r\n    Drukarki i urządzenia biurowe – Canon jest jednym z czołowych producentów drukarek, zarówno do użytku domowego, jak i biurowego. Firma produkuje drukarki atramentowe, laserowe, a także urządzenia wielofunkcyjne (drukowanie, skanowanie, kopiowanie). Produkty te są cenione za niezawodność, jakość druku i innowacyjne funkcje.\r\n\r\n    Sprzęt biurowy – Canon produkuje również kopiarek, skanerów, projektorów i innych urządzeń biurowych, które są wykorzystywane w firmach na całym świecie.\r\n\r\n    Obrazowanie medyczne – Canon ma również silną obecność w branży medycznej, oferując sprzęt do obrazowania, w tym aparaty rentgenowskie, ultrasonografy, oraz technologie stosowane w diagnostyce.\r\n\r\n    Technologia i innowacje – Canon inwestuje w rozwój nowych technologii, takich jak sztuczna inteligencja, przetwarzanie obrazu i technologie 3D, które poprawiają jakość produktów i rozszerzają ich możliwości.', 10, 3, '1937-08-10', 'Tokio, Japonia', 'https://www.canon.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkt`
--

CREATE TABLE `produkt` (
  `nazwaP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firmaID` int(11) NOT NULL,
  `cena` decimal(6,2) NOT NULL,
  `opis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocena` int(11) NOT NULL,
  `produktID` int(11) NOT NULL,
  `lustro` tinyint(1) NOT NULL,
  `mocowanie` int(11) NOT NULL,
  `frame` int(11) NOT NULL,
  `MP` int(11) NOT NULL,
  `sizeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `produkt`
--

INSERT INTO `produkt` (`nazwaP`, `firmaID`, `cena`, `opis`, `ocena`, `produktID`, `lustro`, `mocowanie`, `frame`, `MP`, `sizeID`) VALUES
('Sony Alpha 7R V', 1, '699.99', 'pełnoklatkowy aparat bezlusterkowy z zaawansowanymi funkcjami, idealny dla profesjonalistów.', 10, 1, 0, 1, 1, 61, 1),
('Sony Alpha 6400', 1, '499.99', 'kompaktowy aparat bezlusterkowy z szybkim autofokusem, świetny dla vlogerów i fotografów.', 9, 2, 0, 1, 2, 24, 2),
('Sony A7 III', 1, '399.99', 'pełnoklatkowy aparat bezlusterkowy, popularny wśród profesjonalistów, oferujący świetną jakość obrazu i wydajność.', 9, 3, 0, 1, 1, 24, 1),
('Sony ZV-1', 1, '449.99', 'aparat stworzony z myślą o vlogerach i twórcach treści, oferujący łatwą obsługę i świetną jakość wideo.', 9, 4, 0, 1, 3, 20, 3),
('Sony RX100 VII', 1, '679.99', 'zaawansowany aparat kompaktowy, który oferuje funkcje profesjonalnego sprzętu w małej obudowie.', 8, 5, 0, 1, 3, 20, 3),
('Nikon Z 9', 2, '999.99', 'flagowy aparat bezlusterkowy z pełną klatką, stworzony dla profesjonalistów.', 10, 6, 0, 2, 1, 45, 1),
('Nikon D850', 2, '799.99', 'lustrzanka cyfrowa z pełnoklatkowym sensorem, oferująca doskonałą jakość obrazu i rozdzielczość.', 8, 7, 1, 2, 1, 45, 1),
('Nikon Z 6II', 2, '399.99', 'aparat bezlusterkowy z pełną klatką, świetny do zdjęć i wideo, z szybkim autofokusem.', 9, 8, 0, 2, 1, 24, 2),
('Nikon D7500', 2, '1299.99', 'lustrzanka z matrycą APS-C, dobra dla amatorów, oferująca wysoką jakość zdjęć i dużą wydajność.', 9, 9, 1, 2, 2, 20, 2),
('Nikon Coolpix P1000', 2, '99.99', 'aparat kompaktowy z ogromnym zoomem, świetny dla fotografów krajobrazowych i przyrody.', 10, 10, 0, 3, 4, 16, 3),
('Canon EOS R5', 3, '1699.99', 'pełnoklatkowy aparat bezlusterkowy, który oferuje najwyższą jakość obrazu i 8K wideo.', 10, 11, 0, 3, 4, 16, 1),
('Canon EOS 5D Mark IV', 3, '1399.99', 'profesjonalna lustrzanka z pełnoklatkowym sensorem, popularna wśród fotografów ślubnych i portretowych.', 8, 12, 1, 3, 1, 30, 1),
('Canon EOS M50 Mark II', 3, '1299.99', 'bezlusterkowy aparat z matrycą APS-C, świetny do vlogowania i fotografii codziennej.', 8, 13, 0, 4, 2, 24, 1),
('Canon EOS Rebel T8i', 3, '999.99', 'lustrzanka cyfrowa średniej klasy, która jest świetnym wyborem dla amatorów.', 10, 14, 1, 5, 2, 24, 3),
('Canon PowerShot G7 X Mark III', 3, '699.99', 'aparat kompaktowy z dużym sensorem, idealny do vlogowania i twórczości internetowej.', 9, 15, 0, 6, 3, 20, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `size`
--

CREATE TABLE `size` (
  `sizeID` int(11) NOT NULL,
  `nameS` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `size`
--

INSERT INTO `size` (`sizeID`, `nameS`) VALUES
(1, 'big'),
(2, 'medium'),
(3, 'small');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `frame`
--
ALTER TABLE `frame`
  ADD PRIMARY KEY (`frameID`);

--
-- Indeksy dla tabeli `mocowanie`
--
ALTER TABLE `mocowanie`
  ADD PRIMARY KEY (`mocowanieID`);

--
-- Indeksy dla tabeli `obiektywy`
--
ALTER TABLE `obiektywy`
  ADD PRIMARY KEY (`obiektywID`);

--
-- Indeksy dla tabeli `producent`
--
ALTER TABLE `producent`
  ADD PRIMARY KEY (`firmaID`);

--
-- Indeksy dla tabeli `produkt`
--
ALTER TABLE `produkt`
  ADD PRIMARY KEY (`produktID`);

--
-- Indeksy dla tabeli `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`sizeID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `frame`
--
ALTER TABLE `frame`
  MODIFY `frameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `mocowanie`
--
ALTER TABLE `mocowanie`
  MODIFY `mocowanieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `obiektywy`
--
ALTER TABLE `obiektywy`
  MODIFY `obiektywID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `producent`
--
ALTER TABLE `producent`
  MODIFY `firmaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `produkt`
--
ALTER TABLE `produkt`
  MODIFY `produktID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `size`
--
ALTER TABLE `size`
  MODIFY `sizeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
