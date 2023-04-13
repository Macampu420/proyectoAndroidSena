-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 06:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `androidpersonalsena`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_persona`
--

CREATE TABLE `tbl_persona` (
  `idPersona` int(11) NOT NULL,
  `foto` varchar(256) DEFAULT NULL,
  `nombresPersona` varchar(100) DEFAULT NULL,
  `apellidosPersona` varchar(100) DEFAULT NULL,
  `correoPersona` varchar(100) DEFAULT NULL,
  `cargpPersona` varchar(100) NOT NULL,
  `descripcionCargo` varchar(256) DEFAULT NULL,
  `idRama` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_persona`
--

INSERT INTO `tbl_persona` (`idPersona`, `foto`, `nombresPersona`, `apellidosPersona`, `correoPersona`, `cargpPersona`, `descripcionCargo`, `idRama`) VALUES
(1, 'https://', 'Panfilo', 'Jimenez', 'example@directivo', 'Coordinador', 'de esta xd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rama`
--

CREATE TABLE `tbl_rama` (
  `idRama` int(11) NOT NULL,
  `nombreRama` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rama`
--

INSERT INTO `tbl_rama` (`idRama`, `nombreRama`) VALUES
(1, 'Directivos'),
(2, 'Instructores'),
(3, 'Personal de apoyo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_persona`
--
ALTER TABLE `tbl_persona`
  ADD PRIMARY KEY (`idPersona`),
  ADD KEY `fk_rama` (`idRama`);

--
-- Indexes for table `tbl_rama`
--
ALTER TABLE `tbl_rama`
  ADD PRIMARY KEY (`idRama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_persona`
--
ALTER TABLE `tbl_persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_rama`
--
ALTER TABLE `tbl_rama`
  MODIFY `idRama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_persona`
--
ALTER TABLE `tbl_persona`
  ADD CONSTRAINT `fk_rama` FOREIGN KEY (`idRama`) REFERENCES `tbl_rama` (`idRama`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
