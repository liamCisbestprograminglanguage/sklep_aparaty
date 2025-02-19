-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Lut 2025, 10:46
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
-- Baza danych: `skelp_2c1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obiektywy`
--

CREATE TABLE `obiektywy` (
  `NazwaO` varchar(50) NOT NULL,
  `ocena` int(11) NOT NULL,
  `opis` text NOT NULL,
  `mocowanie` text NOT NULL,
  `matryca` text NOT NULL,
  `ogniskowa` text NOT NULL,
  `obiektywID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producent`
--

CREATE TABLE `producent` (
  `NazwaF` varchar(50) NOT NULL,
  `opis` text NOT NULL,
  `ocena` int(11) NOT NULL,
  `firmaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `producent`
--

INSERT INTO `producent` (`NazwaF`, `opis`, `ocena`, `firmaID`) VALUES
('Sony', 'Sony to japońska korporacja technologiczna, która jest jednym z liderów w branży elektroniki użytkowej, rozrywki i technologii. Została założona w 1946 roku przez Masaru Ibuka i Akio Moritę. Sony stało się znane dzięki innowacyjnym produktom, takim jak odtwarzacze Walkman, telewizory, kamery, a także konsole do gier, w tym popularne PlayStation.\r\n\r\nFirma działa w różnych segmentach rynku, w tym:\r\n\r\n    Elektronika konsumencka – Sony produkuje szeroki wachlarz produktów, od telewizorów, przez słuchawki, aż po smartfony.\r\n    Film i muzyka – Sony jest właścicielem studia filmowego Columbia Pictures, a także posiada wytwórnię muzyczną Sony Music.\r\n    Gry – PlayStation to jedna z najważniejszych marek w branży gier wideo. Sony także rozwija gry w ramach swojej własnej wytwórni i sieci PlayStation Network.\r\n    Technologie – Sony inwestuje w technologie przyszłości, takie jak sztuczna inteligencja, robotyka, a także zaawansowane rozwiązania w zakresie obrazowania (kamery, sensory, itp.).\r\n\r\nFirma jest również znana z zaawansowanych technologii audio i wideo, produkując sprzęt, który często wyznacza standardy w branży, szczególnie w zakresie jakości obrazu i dźwięku.', 10, 1),
('Nikon', 'Nikon to japońska firma technologiczna, która specjalizuje się głównie w produkcji sprzętu optycznego, w tym aparatów fotograficznych, obiektywów, lunet celowniczych, a także urządzeń do pomiarów optycznych. Firma została założona w 1917 roku i początkowo zajmowała się produkcją soczewek optycznych oraz instrumentów precyzyjnych. Dziś Nikon jest jednym z największych producentów aparatów fotograficznych na świecie, szczególnie znanym z wysokiej jakości lustrzanek cyfrowych (DSLR) oraz aparatów bezlusterkowych.\r\n\r\nGłówne obszary działalności Nikona to:\r\n\r\n    Aparaty fotograficzne – Nikon jest uznawany za jednego z liderów na rynku aparatów cyfrowych. Firma produkuje szeroką gamę aparatów, od profesjonalnych lustrzanek i bezlusterkowców, po aparaty kompaktowe i systemy kamer wideo. Ich lustrzanki cyfrowe, takie jak seria Nikon D oraz Nikon Z (bezlusterkowce), cieszą się dużym uznaniem wśród profesjonalistów i amatorów fotografii.\r\n\r\n    Obiektywy i akcesoria – Nikon oferuje szeroką gamę obiektywów, które cieszą się dużym uznaniem za swoją jakość optyczną. Produkty te są wykorzystywane zarówno przez profesjonalnych fotografów, jak i amatorów. Firma produkuje również inne akcesoria fotograficzne, takie jak statywy, torby na sprzęt czy lampy błyskowe.\r\n\r\n    Sprzęt optyczny – Nikon produkuje również lunety, teleskopy, mikroskopy oraz inne urządzenia optyczne, wykorzystywane w nauce, przemyśle i turystyce.\r\n\r\n    Technologia i innowacje – Nikon jest pionierem w dziedzinie technologii obrazu, wprowadzając innowacyjne rozwiązania takie jak zaawansowane sensory, systemy autofokusa oraz technologie stabilizacji obrazu, które podnoszą jakość zdjęć w trudnych warunkach.\r\n\r\n    Przemysł medyczny i naukowy – Firma dostarcza również sprzęt precyzyjny do zastosowań medycznych, takich jak mikroskopy, a także urządzenia wykorzystywane w badaniach naukowych.', 9, 2),
('Canon', 'Canon to japońska firma technologiczna, która jest jednym z wiodących producentów sprzętu optycznego i fotograficznego na świecie. Została założona w 1937 roku, a jej pełna nazwa to Canon Inc. Firma początkowo specjalizowała się w produkcji kamer filmowych, a z czasem rozwinęła swoją ofertę, stając się jednym z liderów w branży aparatów fotograficznych, drukarek, kopiarek i innych urządzeń optycznych.\r\n\r\nOto główne obszary działalności Canon:\r\n\r\n    Aparaty fotograficzne i kamery – Canon jest jednym z największych producentów aparatów cyfrowych, w tym lustrzanek cyfrowych (DSLR) oraz aparatów bezlusterkowych. Seria Canon EOS to jedna z najpopularniejszych wśród profesjonalistów, jak i amatorów. Firma produkuje również kamery wideo, które cieszą się dużym uznaniem wśród twórców filmowych i dziennikarzy.\r\n\r\n    Obiektywy – Canon oferuje szeroką gamę obiektywów do swoich aparatów, które charakteryzują się wyjątkową jakością optyczną i trwałością. Wśród nich znajdują się zarówno obiektywy standardowe, jak i specjalistyczne (np. teleobiektywy, obiektywy szerokokątne), które są wykorzystywane przez profesjonalnych fotografów.\r\n\r\n    Drukarki i urządzenia biurowe – Canon jest jednym z czołowych producentów drukarek, zarówno do użytku domowego, jak i biurowego. Firma produkuje drukarki atramentowe, laserowe, a także urządzenia wielofunkcyjne (drukowanie, skanowanie, kopiowanie). Produkty te są cenione za niezawodność, jakość druku i innowacyjne funkcje.\r\n\r\n    Sprzęt biurowy – Canon produkuje również kopiarek, skanerów, projektorów i innych urządzeń biurowych, które są wykorzystywane w firmach na całym świecie.\r\n\r\n    Obrazowanie medyczne – Canon ma również silną obecność w branży medycznej, oferując sprzęt do obrazowania, w tym aparaty rentgenowskie, ultrasonografy, oraz technologie stosowane w diagnostyce.\r\n\r\n    Technologia i innowacje – Canon inwestuje w rozwój nowych technologii, takich jak sztuczna inteligencja, przetwarzanie obrazu i technologie 3D, które poprawiają jakość produktów i rozszerzają ich możliwości.', 10, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkt`
--

CREATE TABLE `produkt` (
  `nazwaP` varchar(50) NOT NULL,
  `firmaID` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  `opis` text NOT NULL,
  `ocena` int(11) NOT NULL,
  `produktID` int(11) NOT NULL,
  `matryca` text NOT NULL,
  `typ` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `produkt`
--

INSERT INTO `produkt` (`nazwaP`, `firmaID`, `cena`, `opis`, `ocena`, `produktID`, `matryca`, `typ`) VALUES
('Sony Alpha 7R V', 1, 600, 'pełnoklatkowy aparat bezlusterkowy z zaawansowanymi funkcjami, idealny dla profesjonalistów.', 10, 1, 'Pełnoklatkowa, 61 MP, typu CMOS.', 'nie'),
('Sony Alpha 6400', 1, 500, 'kompaktowy aparat bezlusterkowy z szybkim autofokusem, świetny dla vlogerów i fotografów.', 9, 2, 'APS-C, 24.2 MP, typu CMOS.', 'nie'),
('Sony A7 III', 1, 400, 'pełnoklatkowy aparat bezlusterkowy, popularny wśród profesjonalistów, oferujący świetną jakość obrazu i wydajność.', 9, 3, 'Pełnoklatkowa, 24.2 MP, typu CMOS.', 'nie'),
('Sony ZV-1', 1, 457, 'aparat stworzony z myślą o vlogerach i twórcach treści, oferujący łatwą obsługę i świetną jakość wideo.', 9, 4, '1-calowa (13.2 x 8.8 mm), 20.1 MP, typu CMOS.', 'nie'),
('Sony RX100 VII', 1, 680, 'zaawansowany aparat kompaktowy, który oferuje funkcje profesjonalnego sprzętu w małej obudowie.', 8, 5, '1-calowa (13.2 x 8.8 mm), 20.1 MP, typu CMOS.', 'nie'),
('Nikon Z 9', 2, 1000, 'flagowy aparat bezlusterkowy z pełną klatką, stworzony dla profesjonalistów.', 10, 6, 'Pełnoklatkowa (Full Frame), 45.7 MP, typu CMOS.', 'nie'),
('Nikon D850', 2, 800, 'lustrzanka cyfrowa z pełnoklatkowym sensorem, oferująca doskonałą jakość obrazu i rozdzielczość.', 8, 7, 'Pełnoklatkowa (Full Frame), 45.7 MP, typu CMOS.', 'tak'),
('Nikon Z 6II', 2, 400, 'aparat bezlusterkowy z pełną klatką, świetny do zdjęć i wideo, z szybkim autofokusem.', 9, 8, 'Pełnoklatkowa (Full Frame), 24.5 MP, typu CMOS.', 'nie'),
('Nikon D7500', 2, 1300, 'lustrzanka z matrycą APS-C, dobra dla amatorów, oferująca wysoką jakość zdjęć i dużą wydajność.', 9, 9, 'APS-C, 20.9 MP, typu CMOS.', 'tak'),
('Nikon Coolpix P1000', 2, 10, 'aparat kompaktowy z ogromnym zoomem, świetny dla fotografów krajobrazowych i przyrody.', 10, 10, '1/2.3 cala, 16 MP, typu CMOS.', 'nie'),
('Canon EOS R5', 3, 1700, 'pełnoklatkowy aparat bezlusterkowy, który oferuje najwyższą jakość obrazu i 8K wideo.', 10, 11, '1/2.3 cala, 16 MP, typu CMOS.', 'nie'),
('Canon EOS 5D Mark IV', 3, 1400, 'profesjonalna lustrzanka z pełnoklatkowym sensorem, popularna wśród fotografów ślubnych i portretowych.', 8, 12, 'Pełnoklatkowa (Full Frame), 30.4 MP, typu CMOS.', 'tak'),
('Canon EOS M50 Mark II', 3, 1300, 'bezlusterkowy aparat z matrycą APS-C, świetny do vlogowania i fotografii codziennej.', 8, 13, 'APS-C, 24.1 MP, typu CMOS.', 'nie'),
('Canon EOS Rebel T8i', 3, 1000, 'lustrzanka cyfrowa średniej klasy, która jest świetnym wyborem dla amatorów.', 10, 14, 'APS-C, 24.1 MP, typu CMOS.', 'tak'),
('Canon PowerShot G7 X Mark III', 3, 700, 'aparat kompaktowy z dużym sensorem, idealny do vlogowania i twórczości internetowej.', 9, 15, '1-calowa (13.2 x 8.8 mm), 20.1 MP, typu CMOS.', 'nie');

--
-- Indeksy dla zrzutów tabel
--

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
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `obiektywy`
--
ALTER TABLE `obiektywy`
  MODIFY `obiektywID` int(11) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
