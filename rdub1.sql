-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 08. Nov 2018 um 19:24
-- Server-Version: 10.1.36-MariaDB
-- PHP-Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `rdub1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `externekursleiter`
--

CREATE TABLE `externekursleiter` (
  `klnr` int(11) NOT NULL,
  `ename` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `evorname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `firma` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `externekursleiter`
--

INSERT INTO `externekursleiter` (`klnr`, `ename`, `evorname`, `firma`) VALUES
(5, 'Suter', 'Rolf', 'Gigasoft'),
(6, 'Vogt', 'Peter', 'Quasar'),
(7, 'Krieg', 'Stefan', 'Funkenflug'),
(8, 'Freundlich', 'Andreas', 'Harmonie');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `funktionen`
--

CREATE TABLE `funktionen` (
  `fnr` int(11) NOT NULL,
  `funktion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `funktionen`
--

INSERT INTO `funktionen` (`fnr`, `funktion`) VALUES
(1, 'Vorarbeiter'),
(2, 'Meister'),
(3, 'Chemiker'),
(4, 'Bereichsleiter'),
(5, 'Informatiker\r\n');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `internekursleiter`
--

CREATE TABLE `internekursleiter` (
  `klnr` int(11) NOT NULL,
  `pnr` int(11) NOT NULL,
  `kurserfahrung` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `internekursleiter`
--

INSERT INTO `internekursleiter` (`klnr`, `pnr`, `kurserfahrung`) VALUES
(1, 5, 3),
(2, 2, 1),
(3, 6, 4),
(4, 10, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kursbesuche`
--

CREATE TABLE `kursbesuche` (
  `pnr` int(11) NOT NULL,
  `knr` int(11) NOT NULL,
  `klnr` int(11) NOT NULL,
  `datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `kursbesuche`
--

INSERT INTO `kursbesuche` (`pnr`, `knr`, `klnr`, `datum`) VALUES
(1, 6, 4, '2006-08-07'),
(1, 7, 7, '2007-01-12'),
(1, 8, 1, '2008-07-21'),
(2, 7, 7, '2007-09-17'),
(3, 6, 4, '2006-08-07'),
(7, 7, 7, '2007-09-17'),
(8, 1, 3, '2008-08-25'),
(8, 1, 6, '2007-02-03'),
(8, 6, 4, '2007-06-10'),
(8, 7, 7, '2007-09-17'),
(8, 12, 2, '2008-04-15'),
(10, 10, 8, '2007-11-11'),
(11, 8, 1, '2008-07-21');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kurse`
--

CREATE TABLE `kurse` (
  `knr` int(11) NOT NULL,
  `kursbezeichnung` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ktnr` int(11) NOT NULL,
  `kursort` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `kurse`
--

INSERT INTO `kurse` (`knr`, `kursbezeichnung`, `ktnr`, `kursort`) VALUES
(1, 'Arbeitshygiene', 1, '2510.EG.25'),
(2, 'Fuehren einer Gruppe', 2, '1010.4.08'),
(3, 'Praesentationstechnik', 4, '1010.4.08'),
(4, 'Textverarbeitung', 3, '2015.1.10'),
(5, 'Kostenschaetzung', 5, '1010.2.05'),
(6, 'Tabellenkalkulation', 3, '2015.1.10'),
(7, 'Elektrostatische Aufladung', 1, '4001.EG.20'),
(8, 'Datenbanken', 3, '2015.2.05'),
(9, 'Terminplanung', 5, '1010.4.08'),
(10, 'Schwierige Gespraeche fuehren', 2, '1010.2.05'),
(11, 'Abfallentsorgung', 1, '4001.EG.20'),
(12, 'Wartung von Anlagen', 4, '1010.2.05');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kurskontrolle`
--

CREATE TABLE `kurskontrolle` (
  `fnr` int(11) NOT NULL,
  `knr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `kurskontrolle`
--

INSERT INTO `kurskontrolle` (`fnr`, `knr`) VALUES
(1, 1),
(1, 7),
(1, 11),
(1, 12),
(2, 1),
(2, 2),
(2, 6),
(2, 7),
(2, 11),
(2, 12),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 11),
(4, 1),
(4, 2),
(4, 5),
(4, 7),
(4, 9),
(4, 10),
(5, 3),
(5, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kursleiter`
--

CREATE TABLE `kursleiter` (
  `klnr` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `kursleiter`
--

INSERT INTO `kursleiter` (`klnr`, `status`) VALUES
(1, 'I'),
(2, 'I'),
(3, 'I'),
(4, 'I'),
(5, 'E'),
(6, 'E'),
(7, 'E'),
(8, 'E');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kursthemen`
--

CREATE TABLE `kursthemen` (
  `ktnr` int(11) NOT NULL,
  `themengebiet` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `kursthemen`
--

INSERT INTO `kursthemen` (`ktnr`, `themengebiet`) VALUES
(1, 'Sicherheit und Umweltschutz'),
(2, 'Fuehrung und Zusammenarbeit'),
(3, 'PC-Kurse'),
(4, 'Arbeitstechnik'),
(5, 'Projekte'),
(6, 'Schulung');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `personen`
--

CREATE TABLE `personen` (
  `pnr` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vorname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fnr` int(11) NOT NULL,
  `lohnstufe` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `personen`
--

INSERT INTO `personen` (`pnr`, `name`, `vorname`, `fnr`, `lohnstufe`) VALUES
(1, 'Steffen', 'Felix', 3, 5),
(2, 'Mueller', 'Hugo', 1, 1),
(3, 'Meier', 'Hans', 2, 5),
(4, 'Schmid', 'Beat', 3, 4),
(5, 'Steiner', 'Rene', 5, 5),
(6, ' Mueller', 'Franz', 4, 7),
(7, 'Osswald', 'Kurt', 1, 2),
(8, 'Metzger', 'Paul', 1, 1),
(9, 'Scherrer', 'Daniel', 2, 4),
(10, 'Huber', 'Walter', 4, 8),
(11, 'Gerber', 'Roland', 3, 4);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `externekursleiter`
--
ALTER TABLE `externekursleiter`
  ADD PRIMARY KEY (`klnr`);

--
-- Indizes für die Tabelle `funktionen`
--
ALTER TABLE `funktionen`
  ADD PRIMARY KEY (`fnr`);

--
-- Indizes für die Tabelle `internekursleiter`
--
ALTER TABLE `internekursleiter`
  ADD PRIMARY KEY (`klnr`),
  ADD KEY `internekursleiter_personen` (`pnr`);

--
-- Indizes für die Tabelle `kursbesuche`
--
ALTER TABLE `kursbesuche`
  ADD PRIMARY KEY (`pnr`,`knr`,`klnr`),
  ADD KEY `kursbesuche_kursleiter` (`klnr`),
  ADD KEY `kursbesuche_kurse` (`knr`);

--
-- Indizes für die Tabelle `kurse`
--
ALTER TABLE `kurse`
  ADD PRIMARY KEY (`knr`),
  ADD KEY `kurse_kursthemen` (`ktnr`);

--
-- Indizes für die Tabelle `kurskontrolle`
--
ALTER TABLE `kurskontrolle`
  ADD PRIMARY KEY (`fnr`,`knr`),
  ADD KEY `kurskontrolle_kurse` (`knr`);

--
-- Indizes für die Tabelle `kursleiter`
--
ALTER TABLE `kursleiter`
  ADD PRIMARY KEY (`klnr`);

--
-- Indizes für die Tabelle `kursthemen`
--
ALTER TABLE `kursthemen`
  ADD PRIMARY KEY (`ktnr`);

--
-- Indizes für die Tabelle `personen`
--
ALTER TABLE `personen`
  ADD PRIMARY KEY (`pnr`),
  ADD KEY `person_funktion` (`fnr`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `funktionen`
--
ALTER TABLE `funktionen`
  MODIFY `fnr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `kurse`
--
ALTER TABLE `kurse`
  MODIFY `knr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `kursleiter`
--
ALTER TABLE `kursleiter`
  MODIFY `klnr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `kursthemen`
--
ALTER TABLE `kursthemen`
  MODIFY `ktnr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `personen`
--
ALTER TABLE `personen`
  MODIFY `pnr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `externekursleiter`
--
ALTER TABLE `externekursleiter`
  ADD CONSTRAINT `externekursleiter_kursleiter` FOREIGN KEY (`klnr`) REFERENCES `kursleiter` (`klnr`);

--
-- Constraints der Tabelle `internekursleiter`
--
ALTER TABLE `internekursleiter`
  ADD CONSTRAINT `internekursleiter_kursleiter` FOREIGN KEY (`klnr`) REFERENCES `kursleiter` (`klnr`),
  ADD CONSTRAINT `internekursleiter_personen` FOREIGN KEY (`pnr`) REFERENCES `personen` (`pnr`);

--
-- Constraints der Tabelle `kursbesuche`
--
ALTER TABLE `kursbesuche`
  ADD CONSTRAINT `kursbesuche_kurse` FOREIGN KEY (`knr`) REFERENCES `kurse` (`knr`),
  ADD CONSTRAINT `kursbesuche_kursleiter` FOREIGN KEY (`klnr`) REFERENCES `kursleiter` (`klnr`),
  ADD CONSTRAINT `kursbesuche_personen` FOREIGN KEY (`pnr`) REFERENCES `personen` (`pnr`);

--
-- Constraints der Tabelle `kurse`
--
ALTER TABLE `kurse`
  ADD CONSTRAINT `kurse_kursthemen` FOREIGN KEY (`ktnr`) REFERENCES `kursthemen` (`ktnr`);

--
-- Constraints der Tabelle `kurskontrolle`
--
ALTER TABLE `kurskontrolle`
  ADD CONSTRAINT `kurskontrolle_funktionen` FOREIGN KEY (`fnr`) REFERENCES `funktionen` (`fnr`),
  ADD CONSTRAINT `kurskontrolle_kurse` FOREIGN KEY (`knr`) REFERENCES `kurse` (`knr`);

--
-- Constraints der Tabelle `personen`
--
ALTER TABLE `personen`
  ADD CONSTRAINT `person_funktion` FOREIGN KEY (`fnr`) REFERENCES `funktionen` (`fnr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
