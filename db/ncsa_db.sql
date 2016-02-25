-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2016 at 10:44 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone="+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ncsa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `Account_ID` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Account_Type` varchar(15) NOT NULL,
  `On_Hand` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Account_ID`, `Account_Type`, `On_Hand`) VALUES
('admin', 'Administrator', 0),
('0501', 'Student', 0),
('1', 'Student', 0),
('19961810', 'Student', 0),
('19963108', 'Student', 0),
('19971006', 'Student', 0),
('19972211', 'Student', 0),
('19972908', 'Student', 0),
('19973107', 'Student', 0),
('19980404', 'Student', 0),
('19980407', 'Student', 0),
('19980610', 'Student', 0),
('19981006', 'Student', 0),
('19981008', 'Student', 0),
('19981108', 'Student', 0),
('19981208', 'Student', 0),
('19981604', 'Student', 0),
('19981707', 'Student', 0),
('19981807', 'Student', 0),
('19981811', 'Student', 0),
('19981912', 'Student', 0),
('19982005', 'Student', 0),
('19982107', 'Student', 0),
('19982308', 'Student', 0),
('19982407', 'Student', 0),
('19982409', 'Student', 0),
('19982706', 'Student', 0),
('19982807', 'Student', 0),
('19982812', 'Student', 0),
('19990108', 'Student', 0),
('19990203', 'Student', 0),
('19990303', 'Student', 0),
('19990408', 'Student', 0),
('19990412', 'Student', 0),
('19990511', 'Student', 0),
('19990602', 'Student', 0),
('19990708', 'Student', 0),
('19990907', 'Student', 0),
('19990908', 'Student', 0),
('19990909', 'Student', 0),
('19990911', 'Student', 0),
('19991202', 'Student', 0),
('19991307', 'Student', 0),
('199914008', 'Student', 0),
('19991408', 'Student', 0),
('19991410', 'Student', 0),
('19991412', 'Student', 0),
('19991607', 'Student', 0),
('19991712', 'Student', 0),
('19991811', 'Student', 0),
('19992404', 'Student', 0),
('19992703', 'Student', 0),
('19992708', 'Student', 0),
('19992801', 'Student', 0),
('19992907', 'Student', 0),
('19993001', 'Student', 0),
('199930011', 'Student', 0),
('19993011', 'Student', 0),
('2', 'Student', 0),
('20000102', 'Student', 0),
('20000307', 'Student', 0),
('20000706', 'Student', 0),
('20000904', 'Student', 0),
('20000908', 'Student', 0),
('20001007', 'Student', 0),
('20001111', 'Student', 0),
('20001207', 'Student', 0),
('20001304', 'Student', 0),
('200014006', 'Student', 0),
('20001406', 'Student', 0),
('20001505', 'Student', 0),
('20001507', 'Student', 0),
('20001605', 'Student', 0),
('20001711', 'Student', 0),
('20002004', 'Student', 0),
('20002110', 'Student', 0),
('20002301', 'Student', 0),
('20002405', 'Student', 0),
('20002406', 'Student', 0),
('20002611', 'Student', 0),
('200031010', 'Student', 0),
('20003103', 'Student', 0),
('20003110', 'Student', 0),
('20010106', 'Student', 0),
('20010302', 'Student', 0),
('20010306', 'Student', 0),
('20010308', 'Student', 0),
('20010406', 'Student', 0),
('20010609', 'Student', 0),
('20010708', 'Student', 0),
('20010906', 'Student', 0),
('20010909', 'Student', 0),
('20010910', 'Student', 0),
('20011007', 'Student', 0),
('20011205', 'Student', 0),
('20011210', 'Student', 0),
('20011405', 'Student', 0),
('20011412', 'Student', 0),
('20011511', 'Student', 0),
('20011812', 'Student', 0),
('20011901', 'Student', 0),
('20011902', 'Student', 0),
('20011908', 'Student', 0),
('20012012', 'Student', 0),
('20012303', 'Student', 0),
('20012304', 'Student', 0),
('20012502', 'Student', 0),
('20012508', 'Student', 0),
('20012907', 'Student', 0),
('20013009', 'Student', 0),
('20020104', 'Student', 0),
('20020308', 'Student', 0),
('20020901', 'Student', 0),
('200210008', 'Student', 0),
('20021001', 'Student', 0),
('20021007', 'Student', 0),
('20021008', 'Student', 0),
('20021108', 'Student', 0),
('20021212', 'Student', 0),
('20021303', 'Student', 0),
('20021501', 'Student', 0),
('20021506', 'Student', 0),
('20021508', 'Student', 0),
('20021607', 'Student', 0),
('20021709', 'Student', 0),
('20021803', 'Student', 0),
('200219012', 'Student', 0),
('20021910', 'Student', 0),
('20021912', 'Student', 0),
('200220006', 'Student', 0),
('20022006', 'Student', 0),
('20022203', 'Student', 0),
('20022302', 'Student', 0),
('20022312', 'Student', 0),
('20022401', 'Student', 0),
('20022403', 'Student', 0),
('20022507', 'Student', 0),
('20022511', 'Student', 0),
('20022706', 'Student', 0),
('20022709', 'Student', 0),
('20023006', 'Student', 0),
('20023108', 'Student', 0),
('20030101', 'Student', 0),
('20030103', 'Student', 0),
('20030105', 'Student', 0),
('20030106', 'Student', 0),
('20030107', 'Student', 0),
('20030306', 'Student', 0),
('20030308', 'Student', 0),
('20030311', 'Student', 0),
('20030405', 'Student', 0),
('20030510', 'Student', 0),
('20030611', 'Student', 0),
('200310010', 'Student', 0),
('20031010', 'Student', 0),
('20031105', 'Student', 0),
('20031204', 'Student', 0),
('20031206', 'Student', 0),
('20031208', 'Student', 0),
('20031303', 'Student', 0),
('20031409', 'Student', 0),
('20031503', 'Student', 0),
('20031701', 'Student', 0),
('20031705', 'Student', 0),
('20031809', 'Student', 0),
('20032008', 'Student', 0),
('20032103', 'Student', 0),
('20032206', 'Student', 0),
('20032303', 'Student', 0),
('20032304', 'Student', 0),
('20032310', 'Student', 0),
('200324007', 'Student', 0),
('20032407', 'Student', 0),
('20032509', 'Student', 0),
('20032607', 'Student', 0),
('20032703', 'Student', 0),
('20033103', 'Student', 0),
('20033110', 'Student', 0),
('20040000', 'Student', 0),
('20040103', 'Student', 0),
('200402012', 'Student', 0),
('20040203', 'Student', 0),
('20040212', 'Student', 0),
('20040302', 'Student', 0),
('20040409', 'Student', 0),
('20040410', 'Student', 0),
('20040511', 'Student', 0),
('20040705', 'Student', 0),
('20040808', 'Student', 0),
('20040811', 'Student', 0),
('20040904', 'Student', 0),
('20040910', 'Student', 0),
('20041001', 'Student', 0),
('20041201', 'Student', 0),
('200414011', 'Student', 0),
('20041403', 'Student', 0),
('20041411', 'Student', 0),
('20041506', 'Student', 0),
('20041508', 'Student', 0),
('20041612', 'Student', 0),
('20041705', 'Student', 0),
('20042109', 'Student', 0),
('20042204', 'Student', 0),
('200423003', 'Student', 0),
('20042303', 'Student', 0),
('20042406', 'Student', 0),
('20042506', 'Student', 0),
('20042707', 'Student', 0),
('20042801', 'Student', 0),
('20042812', 'Student', 0),
('20042909', 'Student', 0),
('20050203', 'Student', 0),
('20050303', 'Student', 0),
('20050305', 'Student', 0),
('20050311', 'Student', 0),
('20050402', 'Student', 0),
('20050408', 'Student', 0),
('20050505', 'Student', 0),
('20051504', 'Student', 0),
('20051507', 'Student', 0),
('20051608', 'Student', 0),
('20052012', 'Student', 0),
('200522012', 'Student', 0),
('20052212', 'Student', 0),
('20052309', 'Student', 0),
('20052612', 'Student', 0),
('20052708', 'Student', 0),
('20052805', 'Student', 0),
('20053004', 'Student', 0),
('20060000', 'Student', 0),
('20060103', 'Student', 0),
('20060202', 'Student', 0),
('20060600', 'Student', 0),
('200606001', 'Student', 0),
('20060601', 'Student', 0),
('20060610', 'Student', 0),
('20060901', 'Student', 0),
('20060902', 'Student', 0),
('20060905', 'Student', 0),
('20060909', 'Student', 0),
('20061005', 'Student', 0),
('200611009', 'Student', 0),
('20061109', 'Student', 0),
('20061311', 'Student', 0),
('20061508', 'Student', 0),
('20061612', 'Student', 0),
('20061708', 'Student', 0),
('20061903', 'Student', 0),
('20061911', 'Student', 0),
('20062002', 'Student', 0),
('20062006', 'Student', 0),
('20062206', 'Student', 0),
('20062401', 'Student', 0),
('20062403', 'Student', 0),
('20062407', 'Student', 0),
('20062603', 'Student', 0),
('20062801', 'Student', 0),
('20062802', 'Student', 0),
('20062805', 'Student', 0),
('20063011', 'Student', 0),
('200700102', 'Student', 0),
('20070102', 'Student', 0),
('20070505', 'Student', 0),
('20070506', 'Student', 0),
('20070512', 'Student', 0),
('20070611', 'Student', 0),
('20070703', 'Student', 0),
('20070802', 'Student', 0),
('20070805', 'Student', 0),
('20070810', 'Student', 0),
('20070908', 'Student', 0),
('20071101', 'Student', 0),
('20071105', 'Student', 0),
('20071202', 'Student', 0),
('20071209', 'Student', 0),
('20071309', 'Student', 0),
('20071607', 'Student', 0),
('20071712', 'Student', 0),
('20071809', 'Student', 0),
('20071810', 'Student', 0),
('20072204', 'Student', 0),
('20072701', 'Student', 0),
('20072706', 'Student', 0),
('20072803', 'Student', 0),
('20072811', 'Student', 0),
('20072903', 'Student', 0),
('20072905', 'Student', 0),
('20073009', 'Student', 0),
('20080000', 'Student', 0),
('200802804', 'Student', 0),
('20080307', 'Student', 0),
('20080312', 'Student', 0),
('20080406', 'Student', 0),
('20080408', 'Student', 0),
('20080508', 'Student', 0),
('20080801', 'Student', 0),
('20080902', 'Student', 0),
('20080907', 'Student', 0),
('20081012', 'Student', 0),
('20081101', 'Student', 0),
('20081102', 'Student', 0),
('20081211', 'Student', 0),
('20081410', 'Student', 0),
('20081507', 'Student', 0),
('20081608', 'Student', 0),
('20081611', 'Student', 0),
('20081907', 'Student', 0),
('20082102', 'Student', 0),
('20082103', 'Student', 0),
('20082305', 'Student', 0),
('20082502', 'Student', 0),
('20082511', 'Student', 0),
('20082606', 'Student', 0),
('20082701', 'Student', 0),
('20082705', 'Student', 0),
('20082804', 'Student', 0),
('20082805', 'Student', 0),
('20090921', 'Student', 0),
('20091901', 'Student', 0),
('20091907', 'Student', 0),
('20092012', 'Student', 0),
('20092101', 'Student', 0),
('20092701', 'Student', 0),
('20092706', 'Student', 0),
('20092801', 'Student', 0),
('20092901', 'Student', 0),
('20100107', 'Student', 0),
('20100120', 'Student', 0),
('20100406', 'Student', 0),
('20100912', 'Student', 0),
('20101311', 'Student', 0),
('20101905', 'Student', 0),
('20102608', 'Student', 0),
('20102802', 'Student', 0),
('20110148000', 'Student', 0),
('20120108443', 'Student', 0),
('20120115744', 'Student', 0),
('20120140638', 'Student', 0),
('3', 'Student', 0),
('4', 'Student', 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `Account_ID` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Date_Stamp` date NOT NULL,
  `Time_Stamp` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
`Author_ID` int(10) NOT NULL,
  `Author_Last_Name` varchar(255) NOT NULL,
  `Author_First_Name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`Author_ID`, `Author_Last_Name`, `Author_First_Name`) VALUES
(1, 'Warga', 'Jasmin'),
(2, 'Santiago', 'Miriam'),
(3, 'Maxwell', 'John'),
(4, 'Makuzo', 'Kaaru'),
(5, 'Esteban', 'Clifford P.'),
(6, 'Villamin', 'Araceli M.'),
(7, 'Salazar ', 'Evelyn S.'),
(8, 'Estroga', 'Ignatius Joseph N.'),
(9, 'Luedtke', 'Melissa '),
(10, 'Payawal', 'Gabriel Josefina'),
(11, 'Harrington', 'Fogelman C.'),
(12, 'Franco', 'Ma. Conception C.'),
(13, 'Antonio', 'Virgina E. '),
(14, 'Serrano ', 'Norma J.'),
(15, 'Mesa', 'Emilia C.'),
(16, 'Marcos', 'Windsy Joy S.'),
(17, 'Ongdueco', 'Ellen T.'),
(18, 'Gonzales', 'Encarnation N.'),
(19, 'Dayag', 'Alma M.'),
(20, 'Baisa', 'Ailene G.'),
(21, 'Jovellano', 'Lourdes A.'),
(22, 'Marasigan', 'Emily V.'),
(23, 'Carley', 'Steven G. '),
(24, 'Petersen', 'Cheryl '),
(25, 'Gough ', 'Russell '),
(26, 'Groening', 'Maggie'),
(27, 'Kolding', 'Richard '),
(28, 'Rabago', 'Lilia M.'),
(29, 'Collodi', 'Carlo'),
(30, 'Baum', 'Frank L.'),
(31, 'Lewis', 'Caroll'),
(32, 'Kusaka', 'Hideneri'),
(33, 'Dami', 'Elisabetta'),
(34, 'Figueroa', 'Michael A.'),
(35, 'Rowell', 'Rainbow'),
(36, 'Dessen', 'Sarah '),
(37, 'Wiseman', 'Debra '),
(38, 'Asher', 'Jay'),
(39, 'Chen', 'Justina'),
(40, 'Minano', 'Joey R.'),
(41, 'Tadio-Villas', 'Noemi '),
(42, 'David', 'Lourdes '),
(43, 'Blanco', 'Maxima'),
(44, 'Gonzales ', 'Noli '),
(45, 'Gallardo', 'Mark Alfredo '),
(46, 'Muyat', 'Fritziemarie R.'),
(47, 'Garcia ', 'Mardina D.'),
(48, 'Ahunin', 'Vladimir L.'),
(49, 'Navarro', 'Henry C.'),
(50, 'Cruz', 'Elvira A.'),
(51, 'Insigne', 'Ligaya G.'),
(52, 'Latorec', 'Ligaya M.'),
(53, 'Banlaygas', 'Emilia L.'),
(54, 'Lagarto', 'Jocelyn L.'),
(55, 'Patena', 'Arleen R.'),
(56, 'Dallo', 'Evangeline M.'),
(57, 'Antonio', 'Elaanorio D.'),
(58, 'Billiones', 'Patricia S.'),
(59, 'Allchin', 'Bridget '),
(60, 'Hall', 'John D. '),
(61, 'Lunn', 'Trevor E.'),
(62, 'Salanda', 'Cherry V.'),
(63, 'Dismaya', 'Anthony M.'),
(64, 'Pastor', 'Francis Nico V.'),
(65, 'Partino', 'Dennis Cesar R.');

-- --------------------------------------------------------

--
-- Table structure for table `barcodes`
--

CREATE TABLE IF NOT EXISTS `barcodes` (
  `Material_ID` int(10) NOT NULL,
  `Barcode_Number` varchar(255) DEFAULT NULL,
  `Accession_Number` int(5) NOT NULL,
  `Availability` varchar(5) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barcodes`
--

INSERT INTO `barcodes` (`Material_ID`, `Barcode_Number`, `Accession_Number`, `Availability`) VALUES
(1, '3 11096 850 7', 1, 'true'),
(2, '5 02569 861 8', 1, 'true'),
(3, '6 63897 910 1', 1, 'true'),
(4, '6 76862 696 1', 1, 'true'),
(5, '3 45619 187 2', 1, 'true'),
(6, '0 58751 208 8', 1, 'true'),
(7, '4 49411 103 5', 1, 'true'),
(8, '7 82402 056 6', 1, 'true'),
(9, '4 82323 123 5', 1, 'true'),
(9, '1 89850 864 3', 2, 'true'),
(10, '5 11616 442 6', 1, 'true'),
(10, '7 44052 806 4', 2, 'true'),
(11, '9 46760 694 6', 1, 'true'),
(12, '7 14173 572 2', 1, 'true'),
(12, '0 17456 833 1', 2, 'true'),
(12, '1 32754 324 3', 3, 'true'),
(12, '3 45999 271 6', 4, 'true'),
(12, '9 50337 879 7', 5, 'true'),
(12, '4 03613 131 2', 6, 'true'),
(13, '3 73976 816 1', 1, 'true'),
(13, '3 18314 112 7', 2, 'true'),
(13, '0 98637 572 6', 3, 'true'),
(14, '1 34600 485 2', 1, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE IF NOT EXISTS `borrow` (
`Borrow_ID` int(10) NOT NULL,
  `Borrowers_ID` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Librarian_ID` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Date_Borrowed` datetime NOT NULL,
  `Due_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `borrow_details`
--

CREATE TABLE IF NOT EXISTS `borrow_details` (
`Borrow_Details_ID` int(10) NOT NULL,
  `Borrow_ID` int(10) NOT NULL,
  `Barcode_Number` varchar(255) NOT NULL,
  `Final_Due_Date` datetime NOT NULL,
  `Status` varchar(8) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`Category_ID` int(10) NOT NULL,
  `Category` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Category_ID`, `Category`) VALUES
(1, 'General Works'),
(2, 'Philosophy, Psychology, Religion'),
(3, 'Auxiliary Sciences of History'),
(4, 'History: General and Old World'),
(5, 'History: Western Hemisphere - America. U.S.'),
(6, 'History: Western Hemisphere - U.S. local history. Canada. Latin America'),
(7, 'Geography, Anthropology, Recreation'),
(8, 'Geography, Anthropology, Recreation'),
(9, 'Social Sciences'),
(10, 'Political Science'),
(11, 'Law'),
(12, 'Education'),
(13, 'Music'),
(14, 'Fine Arts'),
(15, 'Language and Literature'),
(16, 'Science'),
(17, 'Medicine'),
(18, 'Agriculture'),
(19, 'Technology'),
(20, 'Military Science'),
(21, 'Naval Science'),
(22, 'Bibliography: Library Science.'),
(23, 'Teachers Guide'),
(24, 'Values Education'),
(25, 'Reading Materials'),
(26, 'Filipino'),
(27, 'Science'),
(28, 'Mathematics'),
(29, 'Storybooks'),
(30, 'Fiction'),
(31, 'Physical Education'),
(32, 'English'),
(33, 'History'),
(34, 'Computer');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE IF NOT EXISTS `collections` (
`Collection_ID` int(10) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`Collection_ID`, `Type`) VALUES
(1, 'Book'),
(2, 'Magazine'),
(3, 'Newspaper');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE IF NOT EXISTS `faculties` (
  `Faculty_ID` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Faculty_Password` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Faculty_Last_Name` varchar(255) NOT NULL,
  `Faculty_Middle_Name` varchar(255) NOT NULL,
  `Faculty_First_Name` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL DEFAULT 'nazarean.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`Faculty_ID`, `Faculty_Password`, `Faculty_Last_Name`, `Faculty_Middle_Name`, `Faculty_First_Name`, `Image`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Kayaba', '', 'Akihiko', 'nazarean.png');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE IF NOT EXISTS `holidays` (
`Holiday_ID` int(10) NOT NULL,
  `Holiday` varchar(50) NOT NULL,
  `Holiday_Type` varchar(20) NOT NULL,
  `Month` int(2) NOT NULL,
  `Day` int(2) NOT NULL,
  `Year` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
`Material_ID` int(10) NOT NULL,
  `Material_Title` varchar(255) NOT NULL,
  `Collection_Type` varchar(255) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `Call_Number` varchar(100) NOT NULL,
  `Date_Published` date DEFAULT NULL,
  `Date_Added` date NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Location` varchar(150) NOT NULL,
  `Status` varchar(8) NOT NULL DEFAULT 'active',
  `Publisher_ID` int(10) NOT NULL,
  `Category_ID` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`Material_ID`, `Material_Title`, `Collection_Type`, `ISBN`, `Call_Number`, `Date_Published`, `Date_Added`, `Quantity`, `Location`, `Status`, `Publisher_ID`, `Category_ID`) VALUES
(1, 'The Amazing World of Computers 1', 'Book', '978-3-16-148410-1', '', '2005-03-10', '2016-02-14', 1, '', 'active', 5, 34),
(2, 'The Amazing World of Computers 2', 'Book', '978-3-16-148410-2', '', '2005-12-14', '2016-02-14', 1, '', 'active', 5, 34),
(3, 'The Amazing World of Computers 3', 'Book', '978-3-16-148410-3', '', '2006-06-13', '2016-02-14', 1, '', 'active', 5, 34),
(4, 'The Amazing World of Computers 4', 'Book', '978-3-16-148410-4', '', '2006-07-13', '2016-02-14', 1, '', 'active', 5, 34),
(5, 'The Amazing World of Computers 5', 'Book', '978-3-16-148410-5', '', '2008-07-17', '2016-02-14', 1, '', 'active', 5, 34),
(6, 'Skill Builders for English Proficiency 8', 'Book', '978-3-16-148414-1', '', '2009-08-14', '2016-02-14', 1, '', 'active', 5, 32),
(7, 'Anglo-American And Filipino Literature 3', 'Book', '978-3-17-148410-3', '', '2012-02-08', '2016-02-14', 1, '', 'active', 5, 32),
(8, 'World Literature and Communication Arts IV', 'Book', '978-3-16-149410-1', '', '2014-02-14', '2016-02-14', 1, '', 'active', 7, 32),
(9, 'Philippine Literature and Communication Arts 7', 'Book', '978-3-16-148410-5', '', '2009-08-14', '2016-02-14', 2, '', 'active', 7, 15),
(10, 'Proficiency in English 7', 'Book', '978-3-12-148410-1', '', '2014-06-17', '2016-02-14', 2, '', 'active', 5, 32),
(11, 'Steps to Functional Writing', 'Book', '978-3-16-148420-1', '', '2015-05-22', '2016-02-14', 1, '', 'active', 8, 23),
(12, 'Soaring 21st Century Mathematics', 'Book', '979-3-16-148410-1', '', '2014-04-08', '2016-02-14', 6, '', 'active', 5, 23),
(13, 'Pinagyamanang Pluma 5', 'Book', '978-3-14-143410-1', '', '2013-07-11', '2016-02-14', 3, '', 'active', 5, 23),
(14, 'Advanced Algebra, Trigonometry and Statistic 4', 'Book', '978-3-26-148410-1', '', '2014-07-10', '2016-02-14', 1, '', 'active', 10, 23);

-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

CREATE TABLE IF NOT EXISTS `penalties` (
`Penalty_ID` int(10) NOT NULL,
  `Return_ID` int(10) NOT NULL,
  `Penalty` double NOT NULL,
  `Date_of_Payment` date NOT NULL,
  `Status` varchar(8) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
`Publisher_ID` int(10) NOT NULL,
  `Publisher_Name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`Publisher_ID`, `Publisher_Name`) VALUES
(1, 'Apress'),
(2, 'Harper Collins'),
(3, 'ABS-CBN'),
(4, 'Thomas Nelson'),
(5, 'Quezon City: Phoenix Pub. House, 2005.'),
(6, 'Vibal Group, Inc'),
(7, 'Bernadette Publishing House'),
(8, 'Oracle XML Publisher'),
(9, 'Phoenix Publishing House'),
(10, 'Abiva Publishing House'),
(11, 'Raduga Publishers'),
(12, 'George M. Hill Company'),
(13, 'Macmillan Publishers'),
(14, 'Neo Asia Publishing Inc.'),
(15, 'Orion Publishing Co.'),
(16, 'Publisher: Speak; Reprint'),
(17, 'Penguin books'),
(18, 'Brown Books for Young Readers.'),
(19, 'Future Publications Inc.'),
(20, 'SalesianaBOOKS Publishing Inc.'),
(21, 'Bright House Publishing'),
(22, 'Bookman Inc.'),
(23, 'Rex Bookstore Inc.'),
(24, 'Coronado Publishers'),
(25, 'International Editorial Service Inc.');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE IF NOT EXISTS `reservations` (
`Reservation_ID` int(10) NOT NULL,
  `Material_ID` int(10) NOT NULL,
  `Borrowers_ID` varchar(11) NOT NULL,
  `Date_Reserved` datetime NOT NULL,
  `Status` varchar(8) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE IF NOT EXISTS `return` (
`Return_ID` int(10) NOT NULL,
  `Borrow_Details_ID` int(10) NOT NULL,
  `Date_Returned` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `Student_ID` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Student_Password` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Student_Last_Name` varchar(255) NOT NULL,
  `Student_Middle_Name` varchar(255) NOT NULL,
  `Student_First_Name` varchar(255) NOT NULL,
  `Year_Level` varchar(20) NOT NULL,
  `Image` varchar(255) NOT NULL DEFAULT 'nazarean.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Password`, `Student_Last_Name`, `Student_Middle_Name`, `Student_First_Name`, `Year_Level`, `Image`) VALUES
('0501', 'e10adc3949ba59abbe56e057f20f883e', 'Dizon', '', 'Ray Ridney', 'First', 'nazarean.png'),
('1', 'e10adc3949ba59abbe56e057f20f883e', 'Baral', '', 'Pierre Vandras', 'Second Year HS', 'nazarean.png'),
('19961810', 'e10adc3949ba59abbe56e057f20f883e', 'Rosales', '', 'Yushabel', 'Fourth', 'nazarean.png'),
('19963108', 'e10adc3949ba59abbe56e057f20f883e', 'Santos', '', 'Christian Joshua', 'Fourth', 'nazarean.png'),
('19971006', 'e10adc3949ba59abbe56e057f20f883e', 'Alsol', '', 'Joshua Miguel', 'Fourth', 'nazarean.png'),
('19972211', 'e10adc3949ba59abbe56e057f20f883e', 'Calderon', '', 'Carlo', 'Fourth', 'nazarean.png'),
('19972908', 'e10adc3949ba59abbe56e057f20f883e', 'Nipal', '', 'Pauline', 'Fourth', 'nazarean.png'),
('19973107', 'e10adc3949ba59abbe56e057f20f883e', 'Merilleno', '', 'Koleen Jessica', 'Fourth', 'nazarean.png'),
('19980404', 'e10adc3949ba59abbe56e057f20f883e', 'Ramos', '', 'Zach Antoine', 'Fourth', 'nazarean.png'),
('19980407', 'e10adc3949ba59abbe56e057f20f883e', 'Lopez', '', 'Julius', 'Fourth', 'nazarean.png'),
('19980610', 'e10adc3949ba59abbe56e057f20f883e', 'Rivera', '', 'Rachelle', 'Fourth', 'nazarean.png'),
('19981006', 'e10adc3949ba59abbe56e057f20f883e', 'Aragon', '', 'John Paul', 'Fourth', 'nazarean.png'),
('19981008', 'e10adc3949ba59abbe56e057f20f883e', 'Cua', '', 'Pauline Nikkiemae', 'Fourth', 'nazarean.png'),
('19981108', 'e10adc3949ba59abbe56e057f20f883e', 'Orosco', '', 'Deric John', 'Fourth', 'nazarean.png'),
('19981208', 'e10adc3949ba59abbe56e057f20f883e', 'Park', '', 'Hyemin', 'Fourth', 'nazarean.png'),
('19981604', 'e10adc3949ba59abbe56e057f20f883e', 'Bermal', '', 'Edward Simon', 'Fourth', 'nazarean.png'),
('19981707', 'e10adc3949ba59abbe56e057f20f883e', 'Marcella', '', 'Alejo Carlos', 'Fourth', 'nazarean.png'),
('19981807', 'e10adc3949ba59abbe56e057f20f883e', 'Yu', '', 'Margaret', 'Third', 'nazarean.png'),
('19981811', 'e10adc3949ba59abbe56e057f20f883e', 'Sanchez', '', 'Leslie Anne', 'First', 'nazarean.png'),
('19981912', 'e10adc3949ba59abbe56e057f20f883e', 'Martires', '', 'Marlon', 'First', 'nazarean.png'),
('19982005', 'e10adc3949ba59abbe56e057f20f883e', 'Rama', '', 'Grace Anne', 'Fourth', 'nazarean.png'),
('19982107', 'e10adc3949ba59abbe56e057f20f883e', 'Edades', '', 'Clarence', 'Fourth', 'nazarean.png'),
('19982308', 'e10adc3949ba59abbe56e057f20f883e', 'Abis', '', 'Elijah Daniel', 'Fourth', 'nazarean.png'),
('19982407', 'e10adc3949ba59abbe56e057f20f883e', 'Sabeñano', '', 'Ruth Abigail', 'Fourth', 'nazarean.png'),
('19982409', 'e10adc3949ba59abbe56e057f20f883e', 'Latoreno', '', 'Fatima Cresta', 'Fourth', 'nazarean.png'),
('19982706', 'e10adc3949ba59abbe56e057f20f883e', 'Quinoñes', '', 'Joshua ', 'Fourth', 'nazarean.png'),
('19982807', 'e10adc3949ba59abbe56e057f20f883e', 'Manalo', '', 'Ma.Christina', 'Fourth', 'nazarean.png'),
('19982812', 'e10adc3949ba59abbe56e057f20f883e', 'Berdan', '', 'Juan Miguel', 'Fourth', 'nazarean.png'),
('19990108', 'e10adc3949ba59abbe56e057f20f883e', 'Pamplona', '', 'Mechaela', 'First', 'nazarean.png'),
('19990203', 'e10adc3949ba59abbe56e057f20f883e', 'Pelecia', '', 'Joshua', 'Fourth', 'nazarean.png'),
('19990303', 'e10adc3949ba59abbe56e057f20f883e', 'Delos Santos', '', 'Sophia Marie', 'Fourth', 'nazarean.png'),
('19990408', 'e10adc3949ba59abbe56e057f20f883e', 'Manimtim', '', 'Jann Samantha', 'Fourth', 'nazarean.png'),
('19990412', 'e10adc3949ba59abbe56e057f20f883e', 'Mejia', '', 'Patrick John', 'First', 'nazarean.png'),
('19990511', 'e10adc3949ba59abbe56e057f20f883e', 'Del Rosario', '', 'Aiko', 'First', 'nazarean.png'),
('19990602', 'e10adc3949ba59abbe56e057f20f883e', 'Sistosa', '', 'Rogin', 'Fourth', 'nazarean.png'),
('19990708', 'e10adc3949ba59abbe56e057f20f883e', 'Ariz', '', 'Amiel Jay', 'Fourth', 'nazarean.png'),
('19990907', 'e10adc3949ba59abbe56e057f20f883e', 'Yamamura', '', 'Eigo ', 'Fourth', 'nazarean.png'),
('19990908', 'e10adc3949ba59abbe56e057f20f883e', 'Alejo', '', 'Maricar', 'First', 'nazarean.png'),
('19990909', 'e10adc3949ba59abbe56e057f20f883e', 'Gevila', '', 'Wilvene', 'First', 'nazarean.png'),
('19990911', 'e10adc3949ba59abbe56e057f20f883e', 'Arreza', '', 'Francis Andre', 'First', 'nazarean.png'),
('19991202', 'e10adc3949ba59abbe56e057f20f883e', 'Maghirang', '', 'Jazmine Marthy', 'First', 'nazarean.png'),
('19991307', 'e10adc3949ba59abbe56e057f20f883e', 'Manalo', '', 'Christian Matthew', 'First', 'nazarean.png'),
('199914008', 'e10adc3949ba59abbe56e057f20f883e', 'Bautista', '', 'Francesca Celine', 'First', 'nazarean.png'),
('19991408', 'e10adc3949ba59abbe56e057f20f883e', 'Pagarigan', '', 'Chariza Ann', 'First', 'nazarean.png'),
('19991410', 'e10adc3949ba59abbe56e057f20f883e', 'Delos Santos', '', 'Sydney Lauren', 'First', 'nazarean.png'),
('19991412', 'e10adc3949ba59abbe56e057f20f883e', 'Davila', '', 'Alexes Joy', 'First', 'nazarean.png'),
('19991607', 'e10adc3949ba59abbe56e057f20f883e', 'Zantua', '', 'Rozelle', 'Fourth', 'nazarean.png'),
('19991712', 'e10adc3949ba59abbe56e057f20f883e', 'Angeles', '', 'Christian Joseph', 'First', 'nazarean.png'),
('19991811', 'e10adc3949ba59abbe56e057f20f883e', 'Paltao', '', 'Alexandra Kate', 'First', 'nazarean.png'),
('19992404', 'e10adc3949ba59abbe56e057f20f883e', 'Navarro', '', 'Adrian', 'First', 'nazarean.png'),
('19992703', 'e10adc3949ba59abbe56e057f20f883e', 'Saladar', '', 'Darelle', 'Fourth', 'nazarean.png'),
('19992708', 'e10adc3949ba59abbe56e057f20f883e', 'Romero', '', 'John Wendell ', 'First', 'nazarean.png'),
('19992801', 'e10adc3949ba59abbe56e057f20f883e', 'Gutang', '', 'Angela Shane', 'Fourth', 'nazarean.png'),
('19992907', 'e10adc3949ba59abbe56e057f20f883e', 'Magalona', '', 'Steven ', 'First', 'nazarean.png'),
('19993001', 'e10adc3949ba59abbe56e057f20f883e', 'Casipit', '', 'Alejandro', 'Fourth', 'nazarean.png'),
('199930011', 'e10adc3949ba59abbe56e057f20f883e', 'Aspa', '', 'Jether Paul', 'First', 'nazarean.png'),
('19993011', 'e10adc3949ba59abbe56e057f20f883e', 'Aspa', '', 'Jasiel John', 'First', 'nazarean.png'),
('2', 'e10adc3949ba59abbe56e057f20f883e', 'Torres', '', 'Silvani Arren', 'Fourth', 'nazarean.png'),
('20000102', 'e10adc3949ba59abbe56e057f20f883e', 'Aculana', '', 'John Nathan', 'First', 'nazarean.png'),
('20000307', 'e10adc3949ba59abbe56e057f20f883e', 'Bernos', '', 'Andre Agassi', 'First', 'nazarean.png'),
('20000706', 'e10adc3949ba59abbe56e057f20f883e', 'Ypil', '', 'Patrick', 'First', 'nazarean.png'),
('20000904', 'e10adc3949ba59abbe56e057f20f883e', 'Elacion', '', 'Hans Gabriel', 'Fourth', 'nazarean.png'),
('20000908', 'e10adc3949ba59abbe56e057f20f883e', 'Caiña', '', 'Carlos Joshua', 'First', 'nazarean.png'),
('20001007', 'e10adc3949ba59abbe56e057f20f883e', 'Tucay', '', 'Gabriel', 'First', 'nazarean.png'),
('20001111', 'e10adc3949ba59abbe56e057f20f883e', 'Baradi', '', 'Ron Miguel', 'First', 'nazarean.png'),
('20001207', 'e10adc3949ba59abbe56e057f20f883e', 'Fonacier', '', 'Jzer Ann', 'First', 'nazarean.png'),
('20001304', 'e10adc3949ba59abbe56e057f20f883e', 'Evangelista ', '', 'Edward Joseph', 'First', 'nazarean.png'),
('200014006', 'e10adc3949ba59abbe56e057f20f883e', 'Valdehueza', '', 'Irish Joy', 'First', 'nazarean.png'),
('20001406', 'e10adc3949ba59abbe56e057f20f883e', 'Mongcal', '', 'Justin Jans', 'First', 'nazarean.png'),
('20001505', 'e10adc3949ba59abbe56e057f20f883e', 'Eustaquio', '', 'Sir John Carl', 'First', 'nazarean.png'),
('20001507', 'e10adc3949ba59abbe56e057f20f883e', 'Villacarlos', '', 'Keifer', 'First', 'nazarean.png'),
('20001605', 'e10adc3949ba59abbe56e057f20f883e', 'De Villa', '', 'Jianne Leira Alexis', 'First', 'nazarean.png'),
('20001711', 'e10adc3949ba59abbe56e057f20f883e', 'Cadileña', '', 'Alejandria Novelle', 'First', 'nazarean.png'),
('20002004', 'e10adc3949ba59abbe56e057f20f883e', 'Pablo', '', 'Ranjan Joseph', 'First', 'nazarean.png'),
('20002110', 'e10adc3949ba59abbe56e057f20f883e', 'Rafael', '', 'Renz Cedric ', 'First', 'nazarean.png'),
('20002301', 'e10adc3949ba59abbe56e057f20f883e', 'Abis', '', 'Eliezer Dave', 'First', 'nazarean.png'),
('20002405', 'e10adc3949ba59abbe56e057f20f883e', 'Rivera', '', 'Alyssa Nicole', 'First', 'nazarean.png'),
('20002406', 'e10adc3949ba59abbe56e057f20f883e', 'Rivera', '', 'John Mitch', 'First', 'nazarean.png'),
('20002611', 'e10adc3949ba59abbe56e057f20f883e', 'Cortes', '', 'Ricky Jr.', 'First', 'nazarean.png'),
('200031010', 'e10adc3949ba59abbe56e057f20f883e', 'Ravillo', '', 'Miles', 'First', 'nazarean.png'),
('20003103', 'e10adc3949ba59abbe56e057f20f883e', 'Mejia', '', 'Kevin', 'Fourth', 'nazarean.png'),
('20003110', 'e10adc3949ba59abbe56e057f20f883e', 'Bernos', '', 'Mark Ealdrick Angelo', 'First', 'nazarean.png'),
('20010106', 'e10adc3949ba59abbe56e057f20f883e', 'De Guzman', '', 'Angelo', 'First', 'nazarean.png'),
('20010302', 'e10adc3949ba59abbe56e057f20f883e', 'Saguid', '', 'Maureen', 'First', 'nazarean.png'),
('20010306', 'e10adc3949ba59abbe56e057f20f883e', 'Anacan', '', 'Jake', 'Fourth', 'nazarean.png'),
('20010308', 'e10adc3949ba59abbe56e057f20f883e', 'Flores', '', 'Kyla Mae', 'First', 'nazarean.png'),
('20010406', 'e10adc3949ba59abbe56e057f20f883e', 'Datuin', '', 'Ryzian Rafael', 'First', 'nazarean.png'),
('20010609', 'e10adc3949ba59abbe56e057f20f883e', 'Sambilay', '', 'Daniella', 'Fourth', 'nazarean.png'),
('20010708', 'e10adc3949ba59abbe56e057f20f883e', 'Alsab', '', 'Emiliano Jr.', 'First', 'nazarean.png'),
('20010906', 'e10adc3949ba59abbe56e057f20f883e', 'Lopez', '', 'Marjorie', 'Fourth', 'nazarean.png'),
('20010909', 'e10adc3949ba59abbe56e057f20f883e', 'Dionisio', '', 'Ian Theodore', 'Fourth', 'nazarean.png'),
('20010910', 'e10adc3949ba59abbe56e057f20f883e', 'Villanueva', '', 'Kelsey', 'Second', 'nazarean.png'),
('20011007', 'e10adc3949ba59abbe56e057f20f883e', 'Sistosa', '', 'Rhina', 'First', 'nazarean.png'),
('20011205', 'e10adc3949ba59abbe56e057f20f883e', 'Rama', '', 'Faye Anne', 'First', 'nazarean.png'),
('20011210', 'e10adc3949ba59abbe56e057f20f883e', 'Eustaquio', '', 'Princess Joyce', 'Fourth', 'nazarean.png'),
('20011405', 'e10adc3949ba59abbe56e057f20f883e', 'Busa', '', 'Charles Matthew', 'First', 'nazarean.png'),
('20011412', 'e10adc3949ba59abbe56e057f20f883e', 'Berdan', '', 'Rafael Luis', 'First', 'nazarean.png'),
('20011511', 'e10adc3949ba59abbe56e057f20f883e', 'Zuñiga ', '', 'Brian Gabriel', 'Fourth', 'nazarean.png'),
('20011812', 'e10adc3949ba59abbe56e057f20f883e', 'Amogus', '', 'Allen Josh', 'First', 'nazarean.png'),
('20011901', 'e10adc3949ba59abbe56e057f20f883e', 'Sobremonte', '', 'Millen Andrei', 'First', 'nazarean.png'),
('20011902', 'e10adc3949ba59abbe56e057f20f883e', 'Calderon', '', 'Daniel Nimrod', 'Fourth', 'nazarean.png'),
('20011908', 'e10adc3949ba59abbe56e057f20f883e', 'Park', '', 'Jimin', 'First', 'nazarean.png'),
('20012012', 'e10adc3949ba59abbe56e057f20f883e', 'Villanueva', '', 'Hannah', 'Fourth', 'nazarean.png'),
('20012303', 'e10adc3949ba59abbe56e057f20f883e', 'Dela Paz', '', 'Ryan Christopher', 'Fourth', 'nazarean.png'),
('20012304', 'e10adc3949ba59abbe56e057f20f883e', 'Unsay', '', 'Matthew Russel', 'Fourth', 'nazarean.png'),
('20012502', 'e10adc3949ba59abbe56e057f20f883e', 'Vidallon', '', 'jamila Leisha', 'Fourth', 'nazarean.png'),
('20012508', 'e10adc3949ba59abbe56e057f20f883e', 'Detablan', '', 'John Daniel', 'Fourth', 'nazarean.png'),
('20012907', 'e10adc3949ba59abbe56e057f20f883e', 'Padilla', '', 'Ayesha Joyce', 'Fourth', 'nazarean.png'),
('20013009', 'e10adc3949ba59abbe56e057f20f883e', 'Confesor', '', 'Al-rel Rich', 'Fourth', 'nazarean.png'),
('20020104', 'e10adc3949ba59abbe56e057f20f883e', 'Lasconia', '', 'Princess Anne', 'Fourth', 'nazarean.png'),
('20020308', 'e10adc3949ba59abbe56e057f20f883e', 'Ballesteros', '', 'Sofia Angela', 'Third', 'nazarean.png'),
('20020901', 'e10adc3949ba59abbe56e057f20f883e', 'Aquino', '', 'Joshua Matthew', 'Fourth', 'nazarean.png'),
('200210008', 'e10adc3949ba59abbe56e057f20f883e', 'Saluta', '', 'Ma. Chrisanta', 'Third', 'nazarean.png'),
('20021001', 'e10adc3949ba59abbe56e057f20f883e', 'Saguid', '', 'Madeleen', 'Fourth', 'nazarean.png'),
('20021007', 'e10adc3949ba59abbe56e057f20f883e', 'Pollante', '', 'Andrea Jonarie', 'Third', 'nazarean.png'),
('20021008', 'e10adc3949ba59abbe56e057f20f883e', 'Abichuela', '', 'Loriz Ann', 'Third', 'nazarean.png'),
('20021108', 'e10adc3949ba59abbe56e057f20f883e', 'Prudencio', '', 'Nathaniel Gabriel', 'Third', 'nazarean.png'),
('20021212', 'e10adc3949ba59abbe56e057f20f883e', 'Edu', '', 'Chrisel Joy', 'Third', 'nazarean.png'),
('20021303', 'e10adc3949ba59abbe56e057f20f883e', 'Ligeralde', '', 'Kimberly', 'Third', 'nazarean.png'),
('20021501', 'e10adc3949ba59abbe56e057f20f883e', 'Sabeñano', '', 'Kristine Carl', 'Fourth', 'nazarean.png'),
('20021506', 'e10adc3949ba59abbe56e057f20f883e', 'Calpito', '', 'Hannah Coleen', 'Fourth', 'nazarean.png'),
('20021508', 'e10adc3949ba59abbe56e057f20f883e', 'Robles', '', 'Dan Gabriel', 'Second', 'nazarean.png'),
('20021607', 'e10adc3949ba59abbe56e057f20f883e', 'Navarro', '', 'Abigael Marie', 'Second', 'nazarean.png'),
('20021709', 'e10adc3949ba59abbe56e057f20f883e', 'Arreza', '', 'Mary Eliana', 'Third', 'nazarean.png'),
('20021803', 'e10adc3949ba59abbe56e057f20f883e', 'Pintero', '', 'Eunice Anne', 'Third', 'nazarean.png'),
('200219012', 'e10adc3949ba59abbe56e057f20f883e', 'Maceda', '', 'Ralph Angelo ', 'Third', 'nazarean.png'),
('20021910', 'e10adc3949ba59abbe56e057f20f883e', 'Basas', '', 'Abigail', 'Third', 'nazarean.png'),
('20021912', 'e10adc3949ba59abbe56e057f20f883e', 'Calderon', '', 'Gabriel Joshua', 'Second', 'nazarean.png'),
('200220006', 'e10adc3949ba59abbe56e057f20f883e', 'Lee', '', 'Keisha Ann', 'Third', 'nazarean.png'),
('20022006', 'e10adc3949ba59abbe56e057f20f883e', 'Lee', '', 'Kaitlin Ann', 'Third', 'nazarean.png'),
('20022203', 'e10adc3949ba59abbe56e057f20f883e', 'Tan', '', 'Audrey', 'Fourth', 'nazarean.png'),
('20022302', 'e10adc3949ba59abbe56e057f20f883e', 'Cabreros', '', 'Mark Anthony', 'Fourth', 'nazarean.png'),
('20022312', 'e10adc3949ba59abbe56e057f20f883e', 'Usi', '', 'Krishel', 'Third', 'nazarean.png'),
('20022401', 'e10adc3949ba59abbe56e057f20f883e', 'Ubay', '', 'Jolene Lara', 'Fourth', 'nazarean.png'),
('20022403', 'e10adc3949ba59abbe56e057f20f883e', 'Dela Torre', '', 'Learnie', 'Third', 'nazarean.png'),
('20022507', 'e10adc3949ba59abbe56e057f20f883e', 'Robles', '', 'Mark Daniel', 'Third', 'nazarean.png'),
('20022511', 'e10adc3949ba59abbe56e057f20f883e', 'Unsay', '', 'Luis Jacob', 'Third', 'nazarean.png'),
('20022706', 'e10adc3949ba59abbe56e057f20f883e', 'Luna', '', 'Sean Christopher', 'Fourth', 'nazarean.png'),
('20022709', 'e10adc3949ba59abbe56e057f20f883e', 'Manimtim', '', 'Jann Amadeus', 'Third', 'nazarean.png'),
('20023006', 'e10adc3949ba59abbe56e057f20f883e', 'Palcotilo', '', 'Julianna', 'Third', 'nazarean.png'),
('20023108', 'e10adc3949ba59abbe56e057f20f883e', 'Yulo', '', 'Aaliyah', 'Third', 'nazarean.png'),
('20030101', 'e10adc3949ba59abbe56e057f20f883e', 'Ariz', '', 'Allaiza Jeanne', 'Third', 'nazarean.png'),
('20030103', 'e10adc3949ba59abbe56e057f20f883e', 'Torio', '', 'Bryce Eljay', 'Third', 'nazarean.png'),
('20030105', 'e10adc3949ba59abbe56e057f20f883e', 'Datuin', '', 'Zari Gabriel', 'Second', 'nazarean.png'),
('20030106', 'e10adc3949ba59abbe56e057f20f883e', 'Confesor', '', 'Princess Ann', 'Third', 'nazarean.png'),
('20030107', 'e10adc3949ba59abbe56e057f20f883e', 'Briones', '', 'Maria Omega', 'Third', 'nazarean.png'),
('20030306', 'e10adc3949ba59abbe56e057f20f883e', 'Untalan', '', 'Alberto III', 'Third', 'nazarean.png'),
('20030308', 'e10adc3949ba59abbe56e057f20f883e', 'Gutierrez', '', 'Denise Ann', 'Third', 'nazarean.png'),
('20030311', 'e10adc3949ba59abbe56e057f20f883e', 'Lopez', '', 'Jei Christian', 'Second', 'nazarean.png'),
('20030405', 'e10adc3949ba59abbe56e057f20f883e', 'Palisoc', '', 'Jeanne Marcus', 'Third', 'nazarean.png'),
('20030510', 'e10adc3949ba59abbe56e057f20f883e', 'Ballesteros', '', 'Justin Earl', 'Second', 'nazarean.png'),
('20030611', 'e10adc3949ba59abbe56e057f20f883e', 'Aquino', '', 'Eunice ', 'Second', 'nazarean.png'),
('200310010', 'e10adc3949ba59abbe56e057f20f883e', 'Aquias', '', 'Freddie Jr.', 'Third', 'nazarean.png'),
('20031010', 'e10adc3949ba59abbe56e057f20f883e', 'Jalocon', '', 'Lance Matthew', 'Second', 'nazarean.png'),
('20031105', 'e10adc3949ba59abbe56e057f20f883e', 'Calderon', '', 'Marco', 'Second', 'nazarean.png'),
('20031204', 'e10adc3949ba59abbe56e057f20f883e', 'Chiuco', '', 'Oliver', 'Second', 'nazarean.png'),
('20031206', 'e10adc3949ba59abbe56e057f20f883e', 'Perez', '', 'Mon Andre ', 'Third', 'nazarean.png'),
('20031208', 'e10adc3949ba59abbe56e057f20f883e', 'Tan', '', 'Aizier', 'Second', 'nazarean.png'),
('20031303', 'e10adc3949ba59abbe56e057f20f883e', 'Tan', '', 'Adrian', 'Third', 'nazarean.png'),
('20031409', 'e10adc3949ba59abbe56e057f20f883e', 'Dela Cruz', '', 'Mark Ryan', 'Fourth', 'nazarean.png'),
('20031503', 'e10adc3949ba59abbe56e057f20f883e', 'Recio', '', 'Jermiah', 'Second', 'nazarean.png'),
('20031701', 'e10adc3949ba59abbe56e057f20f883e', 'Ballon', '', 'Aryael Margaret', 'Third', 'nazarean.png'),
('20031705', 'e10adc3949ba59abbe56e057f20f883e', 'Babol', '', 'Adison Seth', 'Second', 'nazarean.png'),
('20031809', 'e10adc3949ba59abbe56e057f20f883e', 'Montalbo', '', 'Francine Andrea', 'Second', 'nazarean.png'),
('20032008', 'e10adc3949ba59abbe56e057f20f883e', 'Magalona', '', 'Ezra Monique', 'Second', 'nazarean.png'),
('20032103', 'e10adc3949ba59abbe56e057f20f883e', 'Flores', '', 'Jireh ', 'Third', 'nazarean.png'),
('20032206', 'e10adc3949ba59abbe56e057f20f883e', 'Milanes', '', 'Allen James', 'Third', 'nazarean.png'),
('20032303', 'e10adc3949ba59abbe56e057f20f883e', 'Ballesteros', '', 'Terrence Joseph', 'Second', 'nazarean.png'),
('20032304', 'e10adc3949ba59abbe56e057f20f883e', 'Casipit', '', 'Alton', 'Third', 'nazarean.png'),
('20032310', 'e10adc3949ba59abbe56e057f20f883e', 'Benabice', '', 'Lezette Anne', 'Third', 'nazarean.png'),
('200324007', 'e10adc3949ba59abbe56e057f20f883e', 'Arro', '', 'Sean Joel', 'Third', 'nazarean.png'),
('20032407', 'e10adc3949ba59abbe56e057f20f883e', 'Soberano', '', 'Louirizze Joyce', 'Second', 'nazarean.png'),
('20032509', 'e10adc3949ba59abbe56e057f20f883e', 'Maquiling', '', 'Seth Jefferson', 'Third', 'nazarean.png'),
('20032607', 'e10adc3949ba59abbe56e057f20f883e', 'Labaguis', '', 'Ralph Kyle', 'Second', 'nazarean.png'),
('20032703', 'e10adc3949ba59abbe56e057f20f883e', 'Vidallon', '', 'Josephine Anne ', 'Second', 'nazarean.png'),
('20033103', 'e10adc3949ba59abbe56e057f20f883e', 'Reyes', '', 'Beatrice ', 'Second', 'nazarean.png'),
('20033110', 'e10adc3949ba59abbe56e057f20f883e', 'Rosettes', '', 'Rook Samuel', 'Second', 'nazarean.png'),
('20040000', 'e10adc3949ba59abbe56e057f20f883e', 'Kaur', '', 'Hardeep', 'First', 'nazarean.png'),
('20040103', 'e10adc3949ba59abbe56e057f20f883e', 'Cadag', '', 'Van Kairen', 'First', 'nazarean.png'),
('200402012', 'e10adc3949ba59abbe56e057f20f883e', 'Aquino', '', 'John Maverick', 'First', 'nazarean.png'),
('20040203', 'e10adc3949ba59abbe56e057f20f883e', 'Burce', '', 'Heaven ', 'Second', 'nazarean.png'),
('20040212', 'e10adc3949ba59abbe56e057f20f883e', 'Romero', '', 'Gabriel Allen', 'First', 'nazarean.png'),
('20040302', 'e10adc3949ba59abbe56e057f20f883e', 'Santos', '', 'Jonathan Keith', 'First', 'nazarean.png'),
('20040409', 'e10adc3949ba59abbe56e057f20f883e', 'Ballesteros', '', 'Anne Therese', 'First', 'nazarean.png'),
('20040410', 'e10adc3949ba59abbe56e057f20f883e', 'San Jose', '', 'Angela Grace', 'First', 'nazarean.png'),
('20040511', 'e10adc3949ba59abbe56e057f20f883e', 'Kano', '', 'Sakura Mika', 'First', 'nazarean.png'),
('20040705', 'e10adc3949ba59abbe56e057f20f883e', 'Tuscano', '', 'Leigna Ainigriv', 'Second', 'nazarean.png'),
('20040808', 'e10adc3949ba59abbe56e057f20f883e', 'Cervantes', '', 'Jasmine Gywneth', 'First', 'nazarean.png'),
('20040811', 'e10adc3949ba59abbe56e057f20f883e', 'Mejia', '', 'Jayson Rhei', 'First', 'nazarean.png'),
('20040904', 'e10adc3949ba59abbe56e057f20f883e', 'Arreza', '', 'Mary Clarisse', 'First', 'nazarean.png'),
('20040910', 'e10adc3949ba59abbe56e057f20f883e', 'Sung', '', 'Changu', 'First', 'nazarean.png'),
('20041001', 'e10adc3949ba59abbe56e057f20f883e', 'Berdan', '', 'Katrina Bianca', 'Second', 'nazarean.png'),
('20041201', 'e10adc3949ba59abbe56e057f20f883e', 'De Quiros', '', 'Sean Adrian', 'First', 'nazarean.png'),
('200414011', 'e10adc3949ba59abbe56e057f20f883e', 'Venezuela', '', 'Lady Ashlee', 'First', 'nazarean.png'),
('20041403', 'e10adc3949ba59abbe56e057f20f883e', 'Cabasag', '', 'Melvin Jay', 'Second', 'nazarean.png'),
('20041411', 'e10adc3949ba59abbe56e057f20f883e', 'Mata', '', 'Joshua', 'First', 'nazarean.png'),
('20041506', 'e10adc3949ba59abbe56e057f20f883e', 'Torio', '', 'Justin Paul', 'Second', 'nazarean.png'),
('20041508', 'e10adc3949ba59abbe56e057f20f883e', 'Rama', '', 'Janel Anne ', 'First', 'nazarean.png'),
('20041612', 'e10adc3949ba59abbe56e057f20f883e', 'Yapchulay', '', 'Baron Rafael', 'First', 'nazarean.png'),
('20041705', 'e10adc3949ba59abbe56e057f20f883e', 'Lorico', '', 'Louise Mae', 'Second', 'nazarean.png'),
('20042109', 'e10adc3949ba59abbe56e057f20f883e', 'Rivadenera', '', 'Rhianne Antonette', 'Third', 'nazarean.png'),
('20042204', 'e10adc3949ba59abbe56e057f20f883e', 'Abalos', '', 'Lovely Juliana', 'Second', 'nazarean.png'),
('200423003', 'e10adc3949ba59abbe56e057f20f883e', 'Cadileña', '', 'Glenruth Esther', 'Second', 'nazarean.png'),
('20042303', 'e10adc3949ba59abbe56e057f20f883e', 'Davile', '', 'Gueen John', 'Second', 'nazarean.png'),
('20042406', 'e10adc3949ba59abbe56e057f20f883e', 'Cajayon', '', 'Justine Thyler', 'First', 'nazarean.png'),
('20042506', 'e10adc3949ba59abbe56e057f20f883e', 'Abecina', '', 'Van Joseph', 'Second', 'nazarean.png'),
('20042707', 'e10adc3949ba59abbe56e057f20f883e', 'Navarro', '', 'Gabrielle Marie', 'First', 'nazarean.png'),
('20042801', 'e10adc3949ba59abbe56e057f20f883e', 'Sanding', '', 'Julian Salvador', 'Second', 'nazarean.png'),
('20042812', 'e10adc3949ba59abbe56e057f20f883e', 'Anacan', '', 'Juhris', 'First', 'nazarean.png'),
('20042909', 'e10adc3949ba59abbe56e057f20f883e', 'Santos', '', 'Darren', 'First', 'nazarean.png'),
('20050203', 'e10adc3949ba59abbe56e057f20f883e', 'Bonifacio', '', 'Ayen Margarette', 'First', 'nazarean.png'),
('20050303', 'e10adc3949ba59abbe56e057f20f883e', 'Samillano', '', 'John Eric', 'First', 'nazarean.png'),
('20050305', 'e10adc3949ba59abbe56e057f20f883e', 'Eustaquio', '', 'Prinz Raven', 'First', 'nazarean.png'),
('20050311', 'e10adc3949ba59abbe56e057f20f883e', 'Torres', '', 'Troy Justine', 'First', 'nazarean.png'),
('20050402', 'e10adc3949ba59abbe56e057f20f883e', 'Edu', '', 'Christine May', 'First', 'nazarean.png'),
('20050408', 'e10adc3949ba59abbe56e057f20f883e', 'Arreza', '', 'Loren Emiel', 'First', 'nazarean.png'),
('20050505', 'e10adc3949ba59abbe56e057f20f883e', 'Lim', '', 'Catherine', 'First', 'nazarean.png'),
('20051504', 'e10adc3949ba59abbe56e057f20f883e', 'Valdehueza', '', 'Carl Jason', 'First', 'nazarean.png'),
('20051507', 'e10adc3949ba59abbe56e057f20f883e', 'Colasito', '', 'Sophia Faith', 'First', 'nazarean.png'),
('20051608', 'e10adc3949ba59abbe56e057f20f883e', 'Tagaan', '', 'Orly Don John', 'First', 'nazarean.png'),
('20052012', 'e10adc3949ba59abbe56e057f20f883e', 'Dionisio', '', 'Ainia', 'First', 'nazarean.png'),
('200522012', 'e10adc3949ba59abbe56e057f20f883e', 'Almonte', '', 'Johann Paolo', 'First', 'nazarean.png'),
('20052212', 'e10adc3949ba59abbe56e057f20f883e', 'Usi', '', 'Krissa Mae', 'First', 'nazarean.png'),
('20052309', 'e10adc3949ba59abbe56e057f20f883e', 'Davila', '', 'Althea Zoe', 'First', 'nazarean.png'),
('20052612', 'e10adc3949ba59abbe56e057f20f883e', 'Gajo', '', 'Gdiordana Reihann', 'First', 'nazarean.png'),
('20052708', 'e10adc3949ba59abbe56e057f20f883e', 'Baral', '', 'Heinrich', 'First', 'nazarean.png'),
('20052805', 'e10adc3949ba59abbe56e057f20f883e', 'Dumdum', '', 'Cloby Maio', 'First', 'nazarean.png'),
('20053004', 'e10adc3949ba59abbe56e057f20f883e', 'Clariza', '', 'Stephen Philip', 'First', 'nazarean.png'),
('20060000', 'e10adc3949ba59abbe56e057f20f883e', 'Singh', '', 'Joven', 'Fourth', 'nazarean.png'),
('20060103', 'e10adc3949ba59abbe56e057f20f883e', 'San Jose', '', 'Abigail Joy', 'Fourth', 'nazarean.png'),
('20060202', 'e10adc3949ba59abbe56e057f20f883e', 'Blanco', '', 'James Ryan', 'First', 'nazarean.png'),
('20060600', 'e10adc3949ba59abbe56e057f20f883e', 'Lee', '', 'Chang Min', 'First', 'nazarean.png'),
('200606001', 'e10adc3949ba59abbe56e057f20f883e', 'Reyes', '', 'Eve Rose ', 'First', 'nazarean.png'),
('20060601', 'e10adc3949ba59abbe56e057f20f883e', 'Tauro', '', 'Ashley Faye', 'Fourth', 'nazarean.png'),
('20060610', 'e10adc3949ba59abbe56e057f20f883e', 'Valeriano', '', 'Jovygale', 'First', 'nazarean.png'),
('20060901', 'e10adc3949ba59abbe56e057f20f883e', 'Enot', '', 'John Cedric', 'First', 'nazarean.png'),
('20060902', 'e10adc3949ba59abbe56e057f20f883e', 'Latoreno', '', 'Trixie Hope', 'First', 'nazarean.png'),
('20060905', 'e10adc3949ba59abbe56e057f20f883e', 'Paltao', '', 'Cassandra', 'First', 'nazarean.png'),
('20060909', 'e10adc3949ba59abbe56e057f20f883e', 'Testa', '', 'Raezyl', 'First', 'nazarean.png'),
('20061005', 'e10adc3949ba59abbe56e057f20f883e', 'Defeo', '', 'Jiro Ichiro', 'First', 'nazarean.png'),
('200611009', 'e10adc3949ba59abbe56e057f20f883e', 'Artillero', '', 'Chrispher', 'First', 'nazarean.png'),
('20061109', 'e10adc3949ba59abbe56e057f20f883e', 'Artillero', '', 'Christy Mae', 'First', 'nazarean.png'),
('20061311', 'e10adc3949ba59abbe56e057f20f883e', 'Han', '', 'Yun Jae', 'Fourth', 'nazarean.png'),
('20061508', 'e10adc3949ba59abbe56e057f20f883e', 'Cervantes', '', 'Jillian Katrice', 'Fourth', 'nazarean.png'),
('20061612', 'e10adc3949ba59abbe56e057f20f883e', 'Abalos', '', 'Maria Corazon', 'Third', 'nazarean.png'),
('20061708', 'e10adc3949ba59abbe56e057f20f883e', 'Nebres', '', 'Romar Etienne', 'First', 'nazarean.png'),
('20061903', 'e10adc3949ba59abbe56e057f20f883e', 'Rosero', '', 'Drazen Mae', 'First', 'nazarean.png'),
('20061911', 'e10adc3949ba59abbe56e057f20f883e', 'Salvio', '', 'Jeremie Christian', 'Fourth', 'nazarean.png'),
('20062002', 'e10adc3949ba59abbe56e057f20f883e', 'David', '', 'Mary Ellaine', 'First', 'nazarean.png'),
('20062006', 'e10adc3949ba59abbe56e057f20f883e', 'Ceballos', '', 'Christine Dion', 'Fourth', 'nazarean.png'),
('20062206', 'e10adc3949ba59abbe56e057f20f883e', 'Formoso', '', 'Nicolas Trishan', 'Fourth', 'nazarean.png'),
('20062401', 'e10adc3949ba59abbe56e057f20f883e', 'Tambua', '', 'Austin james', 'First', 'nazarean.png'),
('20062403', 'e10adc3949ba59abbe56e057f20f883e', 'Oliveros', '', 'Daisy', 'Fourth', 'nazarean.png'),
('20062407', 'e10adc3949ba59abbe56e057f20f883e', 'Prudencio', '', 'Christophe Niccolei', 'Fourth', 'nazarean.png'),
('20062603', 'e10adc3949ba59abbe56e057f20f883e', 'Kumar', '', 'Navin', 'Fourth', 'nazarean.png'),
('20062801', 'e10adc3949ba59abbe56e057f20f883e', 'Dio', '', 'Emmanuel', 'First', 'nazarean.png'),
('20062802', 'e10adc3949ba59abbe56e057f20f883e', 'Abad', '', 'Klarck Juzier', 'First', 'nazarean.png'),
('20062805', 'e10adc3949ba59abbe56e057f20f883e', 'Vargas', '', 'Reniel', 'First', 'nazarean.png'),
('20063011', 'e10adc3949ba59abbe56e057f20f883e', 'Lim', '', 'Angelina ', 'Fourth', 'nazarean.png'),
('200700102', 'e10adc3949ba59abbe56e057f20f883e', 'Aran', '', 'John Carlo', 'Fourth', 'nazarean.png'),
('20070102', 'e10adc3949ba59abbe56e057f20f883e', 'Bustos', '', 'Matthew Sebastian', 'Third', 'nazarean.png'),
('20070505', 'e10adc3949ba59abbe56e057f20f883e', 'Jo', '', 'Bonee Charm Ara', 'Fourth', 'nazarean.png'),
('20070506', 'e10adc3949ba59abbe56e057f20f883e', 'Guanlao', '', 'Kristoff Josiah', 'Fourth', 'nazarean.png'),
('20070512', 'e10adc3949ba59abbe56e057f20f883e', 'Choe', '', 'Junseong', 'Third', 'nazarean.png'),
('20070611', 'e10adc3949ba59abbe56e057f20f883e', 'Lee', '', 'Rhianne Netanya', 'Third', 'nazarean.png'),
('20070703', 'e10adc3949ba59abbe56e057f20f883e', 'Del Mundo', '', 'Jann Kristoff', 'Third', 'nazarean.png'),
('20070802', 'e10adc3949ba59abbe56e057f20f883e', 'Dumdum', '', 'Red Colby', 'Fourth', 'nazarean.png'),
('20070805', 'e10adc3949ba59abbe56e057f20f883e', 'Bonifacio', '', 'Ayli Sandrine', 'Fourth', 'nazarean.png'),
('20070810', 'e10adc3949ba59abbe56e057f20f883e', 'Reyes', '', 'John Rhandy', 'Fourth', 'nazarean.png'),
('20070908', 'e10adc3949ba59abbe56e057f20f883e', 'Pitcock', '', 'Joaquin', 'Fourth', 'nazarean.png'),
('20071101', 'e10adc3949ba59abbe56e057f20f883e', 'Futol', '', 'Jean Kyrie', 'Fourth', 'nazarean.png'),
('20071105', 'e10adc3949ba59abbe56e057f20f883e', 'Singh', '', 'Smile', 'Third', 'nazarean.png'),
('20071202', 'e10adc3949ba59abbe56e057f20f883e', 'Sobremonte', '', 'Makuhvex', 'Fourth', 'nazarean.png'),
('20071209', 'e10adc3949ba59abbe56e057f20f883e', 'Evangelista ', '', 'Elijah ', 'Third', 'nazarean.png'),
('20071309', 'e10adc3949ba59abbe56e057f20f883e', 'Jao', '', 'Kelvin Hayden ', 'Third', 'nazarean.png'),
('20071607', 'e10adc3949ba59abbe56e057f20f883e', 'Sumbilla', '', 'Elisha Hannah', 'Third', 'nazarean.png'),
('20071712', 'e10adc3949ba59abbe56e057f20f883e', 'You', '', 'Mireu', 'Fourth', 'nazarean.png'),
('20071809', 'e10adc3949ba59abbe56e057f20f883e', 'Briones', '', 'Alpha Althea', 'Fourth', 'nazarean.png'),
('20071810', 'e10adc3949ba59abbe56e057f20f883e', 'De Quiros', '', 'Mark Reinan', 'Third', 'nazarean.png'),
('20072204', 'e10adc3949ba59abbe56e057f20f883e', 'Arro', '', 'Sophia Johanna', 'Third', 'nazarean.png'),
('20072701', 'e10adc3949ba59abbe56e057f20f883e', 'Pacana', '', 'Janela', 'Third', 'nazarean.png'),
('20072706', 'e10adc3949ba59abbe56e057f20f883e', 'Magalona', '', 'Nicholas', 'Fourth', 'nazarean.png'),
('20072803', 'e10adc3949ba59abbe56e057f20f883e', 'Pafin', '', 'Elisha Reign', 'Fourth', 'nazarean.png'),
('20072811', 'e10adc3949ba59abbe56e057f20f883e', 'Almonte', '', 'Josiah Isaac ', 'Third', 'nazarean.png'),
('20072903', 'e10adc3949ba59abbe56e057f20f883e', 'Villanueva', '', 'Mariel Kirsten', 'Fourth', 'nazarean.png'),
('20072905', 'e10adc3949ba59abbe56e057f20f883e', 'Dela Paz', '', 'Haven Gabriel ', 'Fourth', 'nazarean.png'),
('20073009', 'e10adc3949ba59abbe56e057f20f883e', 'Maganto', '', 'Alexandra Elin', 'Third', 'nazarean.png'),
('20080000', 'e10adc3949ba59abbe56e057f20f883e', 'Ybañez', '', 'Marcus Brent', 'Third', 'nazarean.png'),
('200802804', 'e10adc3949ba59abbe56e057f20f883e', 'Enot', '', 'Kaylee Shaine', 'Fourth', 'nazarean.png'),
('20080307', 'e10adc3949ba59abbe56e057f20f883e', 'Bonifacio', '', 'Ayji Landen', 'Third', 'nazarean.png'),
('20080312', 'e10adc3949ba59abbe56e057f20f883e', 'Ferrer', '', 'Sebastian Madex', 'Second', 'nazarean.png'),
('20080406', 'e10adc3949ba59abbe56e057f20f883e', 'Detablan', '', 'Angel Sheenah ', 'Third', 'nazarean.png'),
('20080408', 'e10adc3949ba59abbe56e057f20f883e', 'Ybanez', '', 'Micaellah', 'Third', 'nazarean.png'),
('20080508', 'e10adc3949ba59abbe56e057f20f883e', 'Meneses', '', 'Kyle Cast', 'Second', 'nazarean.png'),
('20080801', 'e10adc3949ba59abbe56e057f20f883e', 'Vinarao', '', 'Dan Denzel', 'Third', 'nazarean.png'),
('20080902', 'e10adc3949ba59abbe56e057f20f883e', 'Abarentos', '', 'Matthew', 'Third', 'nazarean.png'),
('20080907', 'e10adc3949ba59abbe56e057f20f883e', 'Casipit', '', 'Alexander', 'Second', 'nazarean.png'),
('20081012', 'e10adc3949ba59abbe56e057f20f883e', 'Angeles', '', 'Cyrus Reign', 'Second', 'nazarean.png'),
('20081101', 'e10adc3949ba59abbe56e057f20f883e', 'Muñoz', '', 'Ihanina Mikhaela', 'Third', 'nazarean.png'),
('20081102', 'e10adc3949ba59abbe56e057f20f883e', 'San Jose', '', 'Jerimiah Daniel', 'Second', 'nazarean.png'),
('20081211', 'e10adc3949ba59abbe56e057f20f883e', 'Luciano', '', 'Yana Mariel', 'Third', 'nazarean.png'),
('20081410', 'e10adc3949ba59abbe56e057f20f883e', 'Sobremonte', '', 'Luis ', 'First', 'nazarean.png'),
('20081507', 'e10adc3949ba59abbe56e057f20f883e', 'Martin', '', 'Kirsten Daye', 'Third', 'nazarean.png'),
('20081608', 'e10adc3949ba59abbe56e057f20f883e', 'Reyes', '', 'Bianca', 'Second', 'nazarean.png'),
('20081611', 'e10adc3949ba59abbe56e057f20f883e', 'Dumas', '', 'Hans', 'Fourth', 'nazarean.png'),
('20081907', 'e10adc3949ba59abbe56e057f20f883e', 'Abad', '', 'Zeaduard Yoj ', 'Third', 'nazarean.png'),
('20082102', 'e10adc3949ba59abbe56e057f20f883e', 'Rosettes', '', 'Jack Samuel', 'Third', 'nazarean.png'),
('20082103', 'e10adc3949ba59abbe56e057f20f883e', 'Varilla', '', 'Francesca Sophia ', 'Third', 'nazarean.png'),
('20082305', 'e10adc3949ba59abbe56e057f20f883e', 'Casabar', '', 'Ezekiel Joshua', 'Second', 'nazarean.png'),
('20082502', 'e10adc3949ba59abbe56e057f20f883e', 'Manansala', '', 'Mary Zhrine', 'First', 'nazarean.png'),
('20082511', 'e10adc3949ba59abbe56e057f20f883e', 'Baradi', '', 'Robby Miguel', 'First', 'nazarean.png'),
('20082606', 'e10adc3949ba59abbe56e057f20f883e', 'Maquiling', '', 'Josh Gabriel', 'Second', 'nazarean.png'),
('20082701', 'e10adc3949ba59abbe56e057f20f883e', 'Aloang', '', 'Jozeile Anne', 'Third', 'nazarean.png'),
('20082705', 'e10adc3949ba59abbe56e057f20f883e', 'Bio ', '', 'Cassandra May', 'Third', 'nazarean.png'),
('20082804', 'e10adc3949ba59abbe56e057f20f883e', 'Enverzo', '', 'Mico Angelo', 'Third', 'nazarean.png'),
('20082805', 'e10adc3949ba59abbe56e057f20f883e', 'Queyquep', '', 'Philip Gavin', 'Second', 'nazarean.png'),
('20090921', 'e10adc3949ba59abbe56e057f20f883e', 'Camacho', '', 'Nathan Renzoe', 'First', 'nazarean.png'),
('20091901', 'e10adc3949ba59abbe56e057f20f883e', 'Ysais', '', 'Precious Jewel', 'Second', 'nazarean.png'),
('20091907', 'e10adc3949ba59abbe56e057f20f883e', 'Pariño', '', 'Deus Sandro ', 'First', 'nazarean.png'),
('20092012', 'e10adc3949ba59abbe56e057f20f883e', 'Bustos', '', 'Steve Arkent', 'First', 'nazarean.png'),
('20092101', 'e10adc3949ba59abbe56e057f20f883e', 'Andres', '', 'Ethan Joss ', 'First', 'nazarean.png'),
('20092701', 'e10adc3949ba59abbe56e057f20f883e', 'Arroyo', '', 'Asher Faith', 'Second', 'nazarean.png'),
('20092706', 'e10adc3949ba59abbe56e057f20f883e', 'Collado', '', 'Mia Candice', 'First', 'nazarean.png'),
('20092801', 'e10adc3949ba59abbe56e057f20f883e', 'Edu', '', 'Ariana Ericka', 'Second', 'nazarean.png'),
('20092901', 'e10adc3949ba59abbe56e057f20f883e', 'Lazaro', '', 'Franxiz Jedidiah', 'Third', 'nazarean.png'),
('20100107', 'e10adc3949ba59abbe56e057f20f883e', 'Usi', '', 'Kaori Cyra', 'First', 'nazarean.png'),
('20100120', 'e10adc3949ba59abbe56e057f20f883e', 'Magtibay', '', 'Johan Gabriel ', 'First', 'nazarean.png'),
('20100406', 'e10adc3949ba59abbe56e057f20f883e', 'Sumadsad', '', 'Leigh Ehriel ', 'First', 'nazarean.png'),
('20100912', 'e10adc3949ba59abbe56e057f20f883e', 'Normal', '', 'Ethan Raphael', 'First', 'nazarean.png'),
('20101311', 'e10adc3949ba59abbe56e057f20f883e', 'Cadenas', '', 'Jyllana Mariz', 'First', 'nazarean.png'),
('20101905', 'e10adc3949ba59abbe56e057f20f883e', 'Prudencio', '', 'Kirstin Thalia', 'First', 'nazarean.png'),
('20102608', 'e10adc3949ba59abbe56e057f20f883e', 'Zuñiga ', '', 'Jasmine Erich ', 'First', 'nazarean.png'),
('20102802', 'e10adc3949ba59abbe56e057f20f883e', 'Ybanez', '', 'Marlin Reign ', 'First', 'nazarean.png'),
('20110148000', 'e10adc3949ba59abbe56e057f20f883e', 'Cruz', '', 'Jaaron', 'Fourth', '20110148000.jpg'),
('20120108443', 'e10adc3949ba59abbe56e057f20f883e', 'Abawag', '', 'Reinhard Cire', 'Fourth', '20120108443.jpg'),
('20120115744', 'e10adc3949ba59abbe56e057f20f883e', 'Macadangdang', '', 'Karl', 'Third', '20120115744.jpg'),
('20120140638', 'e10adc3949ba59abbe56e057f20f883e', 'Relatado', '', 'Jeanne Ver', 'Third', '20120140638.jpg'),
('3', 'e10adc3949ba59abbe56e057f20f883e', 'Montaño', '', 'Richgayle', 'First', 'nazarean.png'),
('4', 'e10adc3949ba59abbe56e057f20f883e', 'Pablo', '', 'Jewelyn', 'First', 'nazarean.png');

-- --------------------------------------------------------

--
-- Table structure for table `weeding`
--

CREATE TABLE IF NOT EXISTS `weeding` (
`Weeding_ID` int(10) NOT NULL,
  `Material_ID` int(10) NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `Date_Weeded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE IF NOT EXISTS `works` (
  `Author_ID` int(10) NOT NULL,
  `Material_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`Author_ID`, `Material_ID`) VALUES
(5, 1),
(5, 3),
(5, 2),
(5, 4),
(5, 5),
(6, 6),
(7, 6),
(8, 7),
(9, 8),
(10, 9),
(11, 10),
(12, 11),
(13, 11),
(14, 11),
(15, 11),
(16, 12),
(17, 12),
(18, 12),
(19, 13),
(20, 13),
(21, 13),
(22, 13),
(23, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
 ADD PRIMARY KEY (`Author_ID`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
 ADD PRIMARY KEY (`Borrow_ID`);

--
-- Indexes for table `borrow_details`
--
ALTER TABLE `borrow_details`
 ADD PRIMARY KEY (`Borrow_Details_ID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
 ADD PRIMARY KEY (`Collection_ID`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
 ADD PRIMARY KEY (`Faculty_ID`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
 ADD PRIMARY KEY (`Holiday_ID`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
 ADD PRIMARY KEY (`Material_ID`);

--
-- Indexes for table `penalties`
--
ALTER TABLE `penalties`
 ADD PRIMARY KEY (`Penalty_ID`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
 ADD PRIMARY KEY (`Publisher_ID`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
 ADD PRIMARY KEY (`Reservation_ID`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
 ADD PRIMARY KEY (`Return_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `weeding`
--
ALTER TABLE `weeding`
 ADD PRIMARY KEY (`Weeding_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
MODIFY `Author_ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
MODIFY `Borrow_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `borrow_details`
--
ALTER TABLE `borrow_details`
MODIFY `Borrow_Details_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `Category_ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
MODIFY `Collection_ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
MODIFY `Holiday_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
MODIFY `Material_ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
MODIFY `Penalty_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
MODIFY `Publisher_ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
MODIFY `Reservation_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
MODIFY `Return_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `weeding`
--
ALTER TABLE `weeding`
MODIFY `Weeding_ID` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
