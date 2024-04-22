-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 04:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `three_d`
--

-- --------------------------------------------------------

--
-- Table structure for table `groupmsg`
--

CREATE TABLE `groupmsg` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `message_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groupmsg`
--

INSERT INTO `groupmsg` (`id`, `sender`, `message_content`) VALUES
(1, '1', 'asdasd'),
(2, '1', 'asdasd'),
(3, '1', 'sadsad\r\n\r\n\r\n\r\n\r\n\r\n'),
(4, '1', 'qwe\r\n'),
(5, '1', ''),
(6, '1', ''),
(7, '1', ''),
(8, '1', ''),
(9, '1', ''),
(10, '1', ''),
(11, '1', ''),
(12, '1', ''),
(13, '1', 's'),
(14, '1', 'ssssssssssss'),
(15, '1', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(16, '1', ''),
(17, '1', ''),
(18, '1', ''),
(19, '1', ''),
(20, '1', ''),
(21, '1', ''),
(22, '1', 'asd'),
(23, '1', 'qwewqeqwe\r\n'),
(24, '1', ''),
(25, '1', ''),
(26, '1', ''),
(27, '1', ''),
(28, '1', ''),
(29, '1', ''),
(30, '1', ''),
(31, '3', 'hi'),
(32, '3', 'dg'),
(33, '3', 'gggg');

-- --------------------------------------------------------

--
-- Table structure for table `tblveggies`
--

CREATE TABLE `tblveggies` (
  `id` int(8) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `added_by` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblveggies`
--

INSERT INTO `tblveggies` (`id`, `name`, `description`, `price`, `added_by`) VALUES
(61, 'Itlog na green', 'Green lantern ', 56, '  Rodolfo  Cruz Garcia'),
(63, 'Longta', 'Mahaba at mataba', 69, '  Darwin Jay  Ganias Rivera'),
(65, 'Ako ay may ', 'Kipay ako ay si', 691437, '  Kieren  Valencia Velasquez'),
(71, 'Sitwa', 'Pampahaba ng o10', 550, '  Charles Dean   De Guzman Cruz'),
(72, 'angmama mo ay blue', 'bluensya', 80, '  Ivee  Vivar Cuevas'),
(76, 'bartlightyear', 'toy story', 11, '  Ivee  Vivar Cuevas'),
(77, 'Shot', 'Puno', 150, '  Kyla   Lopez'),
(82, 'Ampalaya', 'Momoreica Charantia,bitter gourd', 55, '  Angelica Jane  Villamayor Reyes'),
(83, 'added by me', 'added by you', 12, '  Lester John Lloyd  Orpia Monte'),
(85, 'Tito badang', 'Dalawang beses na yan', 2017, '  Kieren  Valencia Velasquez'),
(88, 'Daddy tyga', 'Malupet kumaldag', 22, '  Renato Jr.  Asilo Perez'),
(89, 'KIKYAM', 'HABANG ITIM', 200, '  Lester John Lloyd  Orpia Monte'),
(90, 'Daddy tyga', 'Malupet kumaldag', 22, '  Renato Jr.  Asilo Perez'),
(91, 'Daddy tyga', 'Malupet kumaldag', 22, '  Renato Jr.  Asilo Perez'),
(92, 'ako ay may lobo', 'lumipad sa langit', 35.78, '  Lester John Lloyd  Orpia Monte'),
(95, 'Steak', 'Yum', 500000, '  Princess Joyce  Gonzales Millena'),
(97, '23', 'Joel palo umika', 3, '  Robec  Enriquez Bundoc'),
(98, 'Gol D. Joel', 'Pilaypilay nomi', 999, '  Eugene Van  Roberto Linsangan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `registration_order_no` int(2) NOT NULL,
  `receipt_no` int(8) NOT NULL,
  `student_no` varchar(16) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `middlename` varchar(32) NOT NULL,
  `address_street` varchar(64) NOT NULL,
  `address_municipality` varchar(64) NOT NULL,
  `address_province` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  `gender` tinyint(1) NOT NULL COMMENT '0-female\r\n1-male',
  `phone_no` varchar(16) NOT NULL,
  `email` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`registration_order_no`, `receipt_no`, `student_no`, `lastname`, `firstname`, `middlename`, `address_street`, `address_municipality`, `address_province`, `dob`, `gender`, `phone_no`, `email`, `username`, `password`) VALUES
(1, 5201641, 'SUM2021-01245', 'Barredo', '  Maranatha', ' Gapac', 'San Pedro', 'General Tinio', 'Nueva Ecija', '2003-05-09', 1, '09060319625', 'Soongapac@gmail.com', 'Soongapac@gmail.com', '09060319625'),
(2, 5202065, '2018100305', 'Binuya', '  Mark Oniel', ' Masil', 'Anyatam', 'San Ildefonso', 'Bulacan', '2000-01-03', 1, '09323167910', 'markonielbinuya@gmail.com', 'markonielbinuya@gmail.com', '09323167910'),
(3, 5201595, 'SUM2021-02033', 'Bundoc', '  Robec ', 'Enriquez', 'Pambuan', 'Gapan City', 'Nueva Ecija', '2003-07-03', 1, '09557331052', 'Elijahross518@gmail.com', 'Elijahross518@gmail.com', '09557331052'),
(4, 5203079, 'SUM2021-00856', 'Canoza', '  Dannyllo John Emerson', ' Manuntag', 'Magsaysay District', 'Cabanatuan City', 'Nueva Ecija', '2003-07-08', 1, '09153130971', 'djemersoncanoza2@gmail.com', 'djemersoncanoza2@gmail.com', '09153130971'),
(5, 5202033, 'SUM2021-01347', 'Castor', '  Lyandre Yver ', 'Valencia', 'Santo Cristo Sur', 'Gapan City', 'Nueva Ecija', '2003-10-10', 1, '09086989673', 'castoryver10@gmail.com', 'castoryver10@gmail.com', '09086989673'),
(6, 5203822, 'SUM2021-00108', 'Colalong', '  Yahzsie Gayle Bep ', 'De Lara', 'Sumacab South', 'Cabanatuan City', 'Nueva Ecija', '2003-03-01', 0, '09452006123', 'yahzsiegayle@gmail.com', 'yahzsiegayle@gmail.com', '09452006123'),
(7, 5202101, '2018103063', 'Cruz', '  Charles Dean  ', 'de Guzman', 'San Anton', 'San Leonardo', 'Nueva Ecija', '1999-12-11', 1, '09338606311', 'charlesdeguzman99@gmail.com', 'charlesdeguzman99@gmail.com', '09338606311'),
(8, 5201811, 'SUM2021-02119', 'Cuevas', '  Ivee', ' Vivar', 'Bitas', 'Cabanatuan City', 'Nueva Ecija', '2002-02-25', 0, '09125031639', 'Iveecuevas25@gmail.com', 'Iveecuevas25@gmail.com', '09125031639'),
(9, 5201451, 'SUM2021-01787', 'De jesus', '  Joel ', 'Roque', 'Poblacion East Ii', 'Aliaga', 'Nueva Ecija', '2003-03-26', 1, '09393256228', 'dejesusjoel268@gmail.com', 'dejesusjoel268@gmail.com', '09393256228'),
(10, 5201935, 'SUM2021-01000', 'Dela Cruz', '  Justine Clarenze ', 'Abon', 'Santo Cristo', 'Quezon', 'Nueva Ecija', '2003-08-18', 1, '09638529367', 'justineclarenze18@gmail.com', 'justineclarenze18@gmail.com', '09638529367'),
(11, 5203077, 'SUM2021-02091', 'Enriquez', '  John Matthew ', 'Alcaraz', 'San Isidro', 'Zaragoza', 'Nueva Ecija', '2001-10-31', 1, '09487641363', 'johnmatthewenriquez1031@gmail.co', 'johnmatthewenriquez1031@gmail.co', '09487641363'),
(12, 5201964, 'SUM2021-00282', 'Fernando', '  John Cedrick', ' Batungbacal', 'Ibabao Bana', 'Cabanatuan City', 'Nueva Ecija', '2002-10-17', 1, '09636009130', 'Fernandojohncedrick13@gmail.com', 'Fernandojohncedrick13@gmail.com', '09636009130'),
(13, 5201949, 'SUM2021-00796', 'Garcia', '  Rodolfo', ' Cruz', 'Panabingan', 'San Antonio', 'Nueva Ecija', '2001-10-30', 1, '09385894553', 'garciacruz300000@gmail.com', 'garciacruz300000@gmail.com', '09385894553'),
(14, 5201834, 'SUM2021-00212', 'Gaspar', '  Ken Jairoh ', 'Reyes', 'Don Mariano Marcos', 'Jaen', 'Nueva Ecija', '2002-05-31', 1, '09563508216', 'kenjairohgaspar@gmail.com', 'kenjairohgaspar@gmail.com', '09563508216'),
(15, 5203785, 'SUM2021-00493', 'Inoue', '  Takahiro ', 'Sta. Maria', 'Pantoc', 'Aliaga', 'Nueva Ecija', '2002-01-16', 1, '09163356010', 'takahiroinoue16@gmail.com', 'takahiroinoue16@gmail.com', '09163356010'),
(16, 5201859, 'SUM2021-00685', 'Jocson', '  Jhon Eric ', 'Agubang', 'Santo Rosario', 'Aliaga', 'Nueva Ecija', '2002-09-28', 1, '09278133539', 'ericjocson345@gmail.com', 'ericjocson345@gmail.com', '09278133539'),
(17, 5202027, 'SUM2021-01318', 'Layco', '  Christopher ', 'John Balilo', 'Bagting', 'Gabaldon', 'Nueva Ecija', '2001-08-20', 1, '09519927044', 'Christopherlayco11@gmail.com', 'Christopherlayco11@gmail.com', '09519927044'),
(18, 5201405, 'SUM2021-01124', 'Linsangan', '  Eugene Van ', 'Roberto', 'Santo Cristo Norte', 'Gapan City', 'Nueva Ecija', '2001-12-04', 1, '09266065981', 'eugenevanlinsangan1204@gmail.com', 'eugenevanlinsangan1204@gmail.com', '09266065981'),
(19, 5201988, 'SUM2021-00708', 'Lopez', '  Kyla ', '', 'San Isidro', 'Zaragoza', 'Nueva Ecija', '2002-09-22', 0, '09385912164', 'viluankyla9@gmail.com', 'viluankyla9@gmail.com', '09385912164'),
(20, 5201823, 'SUM2021-00679', 'Manialong', '  Gabriel', ' Pascual', 'Pantoc', 'Aliaga', 'Nueva Ecija', '2003-01-23', 1, '09954771191', 'whathe201@gmail.com', 'whathe201@gmail.com', '09954771191'),
(21, 5204074, 'SUM2021-01662', 'Millena', '  Princess Joyce ', 'Gonzales', 'Tambo Adorable', 'San Leonardo', 'Nueva Ecija', '2003-01-30', 0, '09352542597', 'princessmillena030@gmail.com', 'princessmillena030@gmail.com', '09352542597'),
(22, 5201410, 'SUM2021-01677', 'Monte', '  Lester John Lloyd', ' Orpia', 'Poblacion East I', 'Aliaga', 'Nueva Ecija', '2002-07-19', 1, '09154569386', 'lalothmonte@gmail.com', 'lalothmonte@gmail.com', '09154569386'),
(23, 5203809, 'SUM2021-00508', 'Olpot', '  Mark Nathaniel ', 'Delavega', 'Poblacion West Iii', 'Aliaga', 'Nueva Ecija', '2002-11-24', 1, '09063717295', 'olpottado@gmail.com', 'olpottado@gmail.com', '09063717295'),
(24, 5201926, 'SUM2021-02335', 'Orenza', '  Meavilyn', ' Hombrobueno', 'Barangay Iii', 'Laur', 'Nueva Ecija', '2002-06-28', 0, '09975588765', 'nylivaemhombrobueno@gmail.com', 'nylivaemhombrobueno@gmail.com', '09975588765'),
(25, 5202171, 'SUM2021-01555', 'Padillla', '  nathaniell ', 'Pestano', 'Maestrang Kikay', 'Talavera', 'Nueva Ecija', '2002-09-20', 1, '09274864058', 'nathpadilla81@gmail.com', 'nathpadilla81@gmail.com', '09274864058'),
(26, 5202141, '2019110120', 'Perez', '  Renato Jr. ', 'Asilo', 'Sumacab Norte', 'Cabanatuan City', 'Nueva Ecija', '2000-11-02', 1, '09161497989', 'rntoprz1102@gmail.com', 'rntoprz1102@gmail.com', '09161497989'),
(27, 5203845, 'SUM2021-00844', 'Prisima', '  Francis ', 'Zafra', 'Vijandre District', 'Cabanatuan City', 'Nueva Ecija', '2002-06-22', 1, '09073493735', 'ryderzone22@gmail.com', 'ryderzone22@gmail.com', '09073493735'),
(28, 5204085, 'SUM2021-01380', 'Ramos', '  JENNY MARIE ', 'PUSE', 'Santo Tomas', 'Aliaga', 'Nueva Ecija', '2003-08-27', 0, '09154628332', 'Jennymarieramos16@gmail.com', 'Jennymarieramos16@gmail.com', '09154628332'),
(29, 5201340, 'SUM2021-00674', 'Reyes', '  Angelica Jane ', 'Villamayor', 'Tikiw', 'San Antonio', 'Nueva Ecija', '2002-09-03', 0, '09350849795', 'cookyinhouse15@gmail.com', 'cookyinhouse15@gmail.com', '09350849795'),
(30, 5201883, 'SUM2021-00278', 'Rivera', '  Darwin Jay ', 'Ganias', 'San Francisco', 'San Antonio', 'Nueva Ecija', '2003-07-28', 1, '09752582818', 'drix7283@gmail.com', 'drix7283@gmail.com', '09752582818'),
(31, 5204020, 'ATC2021-00664', 'SERRANO', '  SHAN MICOLE', ' DIZON', 'San Felipe Matanda', 'Aliaga', 'Nueva Ecija', '2002-10-04', 1, '09759185719', 'deniceairraserrano@gmail.com', 'deniceairraserrano@gmail.com', '09759185719'),
(32, 5203187, 'SUM2021-01619', 'Servaña', '  Leopoldo ', 'C.', 'Plaridel', 'Llanera', 'Nueva Ecija', '2002-08-09', 1, '09981659704', 'polelele09@gmail.com', 'polelele09@gmail.com', '09981659704'),
(33, 5202143, 'SUM2021-00684', 'Seva', '  Michael john ', 'Punzalan', 'Poblacion Centro', 'Aliaga', 'Nueva Ecija', '2002-09-01', 1, '09197657974', 'michaeljohnseva@gmail.com', 'michaeljohnseva@gmail.com', '09197657974'),
(34, 5201933, '2018101731', 'Tabor', '  David ', 'Guzman', 'Santa Lucia Young', 'Zaragoza', 'Nueva Ecija', '1999-11-26', 1, '09512864434', 'dalyn0083@gmail.com', 'dalyn0083@gmail.com', '09512864434'),
(35, 5202042, 'SUM2021-00361', 'Velasquez', '  Kieren ', 'Valencia', 'Rizal', 'Santa Rosa', 'Nueva Ecija', '2003-01-18', 1, '09993040983', 'velasquezkieren@gmail.com', 'velasquezkieren@gmail.com', '09993040983');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groupmsg`
--
ALTER TABLE `groupmsg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblveggies`
--
ALTER TABLE `tblveggies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groupmsg`
--
ALTER TABLE `groupmsg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblveggies`
--
ALTER TABLE `tblveggies`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
