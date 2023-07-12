-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2022 at 02:12 AM
-- Server version: 10.5.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u723250632_flight_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines_list`
--

CREATE TABLE `airlines_list` (
  `id` int(30) NOT NULL,
  `airlines` text NOT NULL,
  `logo_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airlines_list`
--

INSERT INTO `airlines_list` (`id`, `airlines`, `logo_path`) VALUES
(1, 'AirAsia', '1600999080_kisspng-flight-indonesia-airasia-airasia-japan-airline-tic-asia-5abad146966736.8321896415221927106161.jpg'),
(2, 'Philippine Airlines', '1600999200_Philippine-Airlines-Logo.jpg'),
(3, 'Cebu Pacific', '1600999200_43cada0008538e3c1a1f4675e5a7aabe.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `airport_list`
--

CREATE TABLE `airport_list` (
  `id` int(30) NOT NULL,
  `airport` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booked_flight`
--

CREATE TABLE `booked_flight` (
  `id` int(30) NOT NULL,
  `flight_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `First_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Clientcontactid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Location` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `WebUser` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Repeatid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clienttype` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientid`, `First_name`, `Last_name`, `Clientcontactid`, `Location`, `WebUser`, `Repeatid`, `clienttype`) VALUES
('2022713123617', 'Ahsan', 'raza', 'Ahsan03167658324', 'home', 'Web User', 'Ahsan031676583242022713123617', 'new Customer'),
('2022713125511', 'Ahsan', 'raza', 'Ahsan03167658324', 'home', 'Web User', 'Ahsan031676583242022713125511', 'new Customer'),
('2022714204829', 'Hassan ', 'Ali Refai', 'Hassan 03049118468', '', 'Web User', 'Hassan 030491184682022714204829', 'new Customer'),
('2022721141634', 'Tayyabs', 'Ranas', 'Tayyab03226929558', 'Lahore', 'Web Userss', 'Tayyab032269295582022721141634', 'new Customer'),
('2022723215552', 'Test', '123', 'Test12121212', 'Lahore', 'Web User', 'Test121212122022723215552', 'new Customer'),
('2022725185752', 'TAYYAB', 'ARSHAD', 'TAYYAB03226929558', 'Lahore', 'Web User', 'TAYYAB032269295582022725185752', 'new Customer'),
('202272713590', 'Mr Zaid', '', 'Mr Zaid03025502488', '', 'Web User', 'Mr Zaid03025502488202272713590', 'new Customer'),
('202285104117', 'tyab', 'raza', 'tyab03167658324', 'home', 'Mobile Users', 'tyab03167658324202285104117', 'new Customer'),
('2022811234751', 'Ahsan', 'raza', 'Ahsan03167658324', '', 'Web User', 'Ahsan031676583242022811234751', 'new Customer'),
('2022812499', 'Ahsan', 'raza', 'Ahsan03167658324', '', 'esdsadsad', 'Ahsan031676583242022812499', 'new Customer'),
('20228124956', 'Ahsan', 'raza', 'Ahsan03167658324', '', 'esdsadsad', 'Ahsan0316765832420228124956', 'new Customer'),
('202281241520', 'Ahsansss', 'raza', 'Ahsansss03167658324', '', '', 'Ahsansss03167658324202281241520', 'new Customer'),
('202281243546', '', '', '', '', '', '202281243546', 'new Customer'),
('20228124467', 'Instruments', 'raza', 'Instruments03167658324', 'home', 'esdsadsad', 'Instruments0316765832420228124467', 'Repeat Customer'),
('202281214323', 'test 1', 'test1', 'zaid03025502488', 'test1', 'test1', 'zaid03025502488202281214323', 'new Customer'),
('202281312518', 'Ahsan raza', 'hhh', '', 'ssssfff', 'esdsadsad123', '202281312518', 'Repeat Customer'),
('2022815131510', 'Dream', '', 'Dream03320757705', '', 'call back 121 131', 'Dream033207577052022815131510', 'new Customer'),
('2022818225212', 'lets check', '0k', '', 'ddddd', 'call me back', '2022818225212', 'Repeat Customer'),
('2022818234511', 'Instrumen', 'raza', 'Instruments03167658324', 'sss', 'sss', 'Instruments031676583242022818234511', 'new Customer'),
('2022819111546', 'Hipra Pakistan Pvt Ltd', '', 'ayesha03025502488', '', 'working on it', 'ayesha030255024882022819111546', 'new Customer'),
('20221011194', 'mr qaisar', '', 'mr qaisar03234412155', 'lahore', '', 'mr qaisar0323441215520221011194', 'new Customer'),
('2022101111011', 'mr hamza', '', 'mr hamza03234412155', 'lahore', '', 'mr hamza032344121552022101111011', 'new Customer'),
('2022101111111', 'mr masood ', '', 'mr masood 03009494066', 'lahore', '', 'mr masood 030094940662022101111111', 'new Customer'),
('2022101111219', 'mr abdul aziz ', '', 'mr abdul aziz 03008299736 ', 'lahore', '', 'mr abdul aziz 03008299736 2022101111219', 'new Customer'),
('2022101111329', 'mr hassan jaffary ', '', 'mr hassan jaffary 03212251395', 'lahore', '', 'mr hassan jaffary 032122513952022101111329', 'new Customer'),
('2022101111419', 'mr qasim ', '', 'mr qasim 03334420120', 'lahore', '', 'mr qasim 033344201202022101111419', 'new Customer'),
('2022101111556', 'mr umair ', '', 'mr umair 03345441369', 'lahore', '', 'mr umair 033454413692022101111556', 'new Customer'),
('2022101111639', 'mr nasir ', '', 'mr nasir 03334211221 ', 'lahore', '', 'mr nasir 03334211221 2022101111639', 'new Customer'),
('2022101111722', 'mr haroon ', '', 'mr haroon 03232440278 ', 'lahore', '', 'mr haroon 03232440278 2022101111722', 'new Customer'),
('2022101111822', 'mr hafiz abid ', '', 'mr hafiz abid 03018470583 ', 'lahore', '', 'mr hafiz abid 03018470583 2022101111822', 'new Customer'),
('2022101111913', 'mr shahid ', '', 'mr shahid 03334374484 ', 'lahore', '', 'mr shahid 03334374484 2022101111913', 'new Customer'),
('2022101111957', 'mr tayyab', '', 'mr tayyab03214741114', 'lahore', '', 'mr tayyab032147411142022101111957', 'new Customer'),
('2022101112038', 'mr hafeez ', '', 'mr hafeez 03204715335 ', 'lahore', '', 'mr hafeez 03204715335 2022101112038', 'new Customer'),
('2022101112121', 'mr shadam azam ', '', 'mr shadam azam 03008474145', 'lahore', '', 'mr shadam azam 030084741452022101112121', 'new Customer'),
('2022101112246', 'mr saaed ', '', 'mr saaed 03008413122 ', 'lahore', '', 'mr saaed 03008413122 2022101112246', 'new Customer'),
('2022101112331', 'mr jhanzaib', '', 'mr jhanzaib03008440546 ', 'lahore', '', 'mr jhanzaib03008440546 2022101112331', 'new Customer'),
('202210111243', 'mr customer', '', 'mr customer03009619961', 'lahore', '', 'mr customer03009619961202210111243', 'new Customer'),
('2022101112430', 'mr ali', '', 'mr ali03350643552', 'lahore', '', 'mr ali033506435522022101112430', 'new Customer'),
('202210111254', 'mr customer ', '', 'mr customer 03238408512', 'lahore', '', 'mr customer 03238408512202210111254', 'new Customer'),
('2022101112554', 'mr shakeel hassan ', '', 'mr shakeel hassan 03212779418 ', 'lahore', '', 'mr shakeel hassan 03212779418 2022101112554', 'new Customer'),
('2022101112645', 'mr kashif ', '', 'mr kashif 03312109302 ', 'lahore', '', 'mr kashif 03312109302 2022101112645', 'new Customer'),
('2022101112721', 'mr shafi', '', 'mr shafi03218998753', 'lahore', '', 'mr shafi032189987532022101112721', 'new Customer'),
('202210111285', 'mr imran haider ', '', 'mr imran haider 03034848445 ', 'lahore', '', 'mr imran haider 03034848445 202210111285', 'new Customer'),
('2022101112845', 'mr khawar ', '', 'mr khawar 03238408512 ', 'lahore', '', 'mr khawar 03238408512 2022101112845', 'new Customer'),
('2022101112934', 'mr raza ', '', 'mr raza 03009488893 ', 'lahore', '', 'mr raza 03009488893 2022101112934', 'new Customer'),
('2022101113015', 'mr salman', '', 'mr salman0312 2098239 ', 'lahore', '', 'mr salman0312 2098239 2022101113015', 'new Customer'),
('2022101113051', 'mr mansoor ', '', 'mr mansoor 03344555571 ', 'lahore', '', 'mr mansoor 03344555571 2022101113051', 'new Customer'),
('2022101113127', 'mr kashif ', '', 'mr kashif 03008418013 ', 'lahore', '', 'mr kashif 03008418013 2022101113127', 'new Customer'),
('2022101113151', 'mr abid ', '', 'mr abid 03002966207 ', 'lahore', '', 'mr abid 03002966207 2022101113151', 'new Customer'),
('2022101113220', 'mr naeeem ', '', 'mr naeeem 03088088808 ', 'lahore', '', 'mr naeeem 03088088808 2022101113220', 'new Customer'),
('2022101113250', 'mr ijaz ', '', 'mr ijaz 03336974566', 'lahore', '', 'mr ijaz 033369745662022101113250', 'new Customer'),
('2022101113313', 'mr customer ', '', 'mr customer 03314512961 ', 'lahore', '', 'mr customer 03314512961 2022101113313', 'new Customer'),
('2022101113344', 'mr yusaf ', '', 'mr yusaf 03218862613 ', 'lahore', '', 'mr yusaf 03218862613 2022101113344', 'new Customer'),
('202210111349', 'mr imran ali ', '', 'mr imran ali 03218478095', 'lahore', '', 'mr imran ali 03218478095202210111349', 'new Customer'),
('202210111351', 'mr asif ', '', 'mr asif 03214930786', 'lahore', '', 'mr asif 03214930786202210111351', 'new Customer'),
('2022101113528', 'mr shareef ', '', 'mr shareef 03008401520 ', 'lahore', '', 'mr shareef 03008401520 2022101113528', 'new Customer'),
('2022101113555', 'mr taimoor ', '', 'mr taimoor 03004015659 ', 'lahore', '', 'mr taimoor 03004015659 2022101113555', 'new Customer'),
('2022101113620', 'mr rizwan  ', '', 'mr rizwan  03115000900', 'lahore', '', 'mr rizwan  031150009002022101113620', 'new Customer'),
('2022101113642', 'mr nadeem  ', '', 'mr nadeem  03002199514', 'lahore', '', 'mr nadeem  030021995142022101113642', 'new Customer'),
('202210111378', 'mr customer ', '', 'mr customer 03467199250 ', 'lahore', '', 'mr customer 03467199250 202210111378', 'new Customer'),
('2022101113738', 'mr masood ', '', 'mr masood 03036317642 ', 'lahore', '', 'mr masood 03036317642 2022101113738', 'new Customer'),
('2022101113756', 'mr shoib ', '', 'mr shoib 03239200091', 'lahore', '', 'mr shoib 032392000912022101113756', 'new Customer'),
('2022101113818', 'mr sajid ali ', '', 'mr sajid ali 03116741171', 'lahore', '', 'mr sajid ali 031167411712022101113818', 'new Customer'),
('2022101113851', 'mr junaid ', '', 'mr junaid 03134345008 ', 'lahore', '', 'mr junaid 03134345008 2022101113851', 'new Customer'),
('2022101113925', 'mr talha', '', 'mr talha03334836941', 'lahore', '', 'mr talha033348369412022101113925', 'new Customer'),
('2022101114013', 'mr mobeen ', '', 'mr mobeen 03072801927 ', 'lahore', '', 'mr mobeen 03072801927 2022101114013', 'new Customer'),
('2022101114038', 'mr umair ', '', 'mr umair 03336460930', 'lahore', '', 'mr umair 033364609302022101114038', 'new Customer'),
('202210111412', 'mr naeem babr ', '', 'mr naeem babr 03348088808', 'lahore', '', 'mr naeem babr 03348088808202210111412', 'new Customer'),
('2022101114128', 'ms fatima hassan ', '', 'ms fatima hassan 03218499022', 'lahore', '', 'ms fatima hassan 032184990222022101114128', 'new Customer'),
('2022101114211', 'mr asif ', '', 'mr asif 03367634429 ', 'lahore', '', 'mr asif 03367634429 2022101114211', 'new Customer'),
('2022101114239', 'mr tariq', '', 'mr tariq03008401704', 'lahore', '', 'mr tariq030084017042022101114239', 'new Customer'),
('202210111438', 'mr zain ', '', 'mr zain 03248043501 ', 'lahore', '', 'mr zain 03248043501 202210111438', 'new Customer'),
('2022101114337', 'mr hammad hassan ', '', 'mr hammad hassan 03248043501 ', 'lahore', '', 'mr hammad hassan 03248043501 2022101114337', 'new Customer'),
('2022101114352', 'mr hammad hassan ', '', 'mr hammad hassan 03218432361', 'lahore', '', 'mr hammad hassan 032184323612022101114352', 'new Customer'),
('2022101114646', 'mr naeem ', '', 'mr naeem 03335164136 ', 'lahore', '', 'mr naeem 03335164136 2022101114646', 'new Customer'),
('2022101114710', 'mr aslam ', '', 'mr aslam 03225544334  ', 'lahore', '', 'mr aslam 03225544334  2022101114710', 'new Customer'),
('2022101114742', 'mr basit', '', 'mr basit03008118110', 'lahore', '', 'mr basit030081181102022101114742', 'new Customer'),
('2022101114821', 'mr tufail', '', 'mr tufail03334623215', 'lahore', '', 'mr tufail033346232152022101114821', 'new Customer'),
('2022101114846', 'mr aslam', '', 'mr aslam03225544334', 'lahore', '', 'mr aslam032255443342022101114846', 'new Customer'),
('2022101114936', 'mr zahid ', '', 'mr zahid 03218451931', 'lahore', '', 'mr zahid 032184519312022101114936', 'new Customer'),
('202210111504', 'mr sadan ', '', 'mr sadan 03334431753', 'lahore', '', 'mr sadan 03334431753202210111504', 'new Customer'),
('2022101115157', 'mr ikram ', '', 'mr ikram 03212253133 ', '', '', 'mr ikram 03212253133 2022101115157', 'new Customer'),
('2022101115235', 'mr ikram ', '', 'mr ikram 03214366981', '', '', 'mr ikram 032143669812022101115235', 'new Customer'),
('2022101115322', 'mr zia ul rehman', '', 'mr zia ul rehman03008528850', '', '', 'mr zia ul rehman030085288502022101115322', 'new Customer'),
('2022101115346', 'mr nasir ', '', 'mr nasir 03008528850', '', '', 'mr nasir 030085288502022101115346', 'new Customer'),
('2022101115416', 'mr arshad ', '', 'mr arshad 03334521866 ', '', '', 'mr arshad 03334521866 2022101115416', 'new Customer'),
('2022101115452', 'mr hussnain ', '', 'mr hussnain 03214086722', '', '', 'mr hussnain 032140867222022101115452', 'new Customer'),
('2022101115511', 'mr azam ', '', 'mr azam 03009476234 ', '', '', 'mr azam 03009476234 2022101115511', 'new Customer'),
('2022101115615', 'mr raheel ', '', 'mr raheel 03468220822', '', '', 'mr raheel 034682208222022101115615', 'new Customer'),
('2022101115640', 'mr ikram  ', '', 'mr ikram  03212253133 ', '', '', 'mr ikram  03212253133 2022101115640', 'new Customer'),
('202210111573', 'customer ', '', 'customer 03212253133 ', '', '', 'customer 03212253133 202210111573', 'new Customer'),
('2022101115746', 'customer ', '', 'customer 03334531515 ', '', '', 'customer 03334531515 2022101115746', 'new Customer'),
('202210111585', 'mr umair ', '', 'mr umair 03249477904', '', '', 'mr umair 03249477904202210111585', 'new Customer'),
('2022101115859', 'mr wajid  ', '', 'mr wajid  03009498346 ', '', '', 'mr wajid  03009498346 2022101115859', 'new Customer'),
('2022101115925', 'mr arshad raza ', '', 'mr arshad raza 03334521866', '', '', 'mr arshad raza 033345218662022101115925', 'new Customer'),
('2022101115958', 'mr javed naseem ', '', 'mr javed naseem 03009277229', '', '', 'mr javed naseem 030092772292022101115958', 'new Customer'),
('202210112026', 'mr saad ', '', 'mr saad 03008152428 ', '', '', 'mr saad 03008152428 202210112026', 'new Customer'),
('20221011212', 'mr ilyas ', '', 'mr ilyas 03024404155 ', '', '', 'mr ilyas 03024404155 20221011212', 'new Customer'),
('202210112127', 'mr shadb ali ', '', 'mr shadb ali 03018686648', '', '', 'mr shadb ali 03018686648202210112127', 'new Customer'),
('202210112149', 'mr asif ali ', '', 'mr asif ali 03004433495 ', '', '', 'mr asif ali 03004433495 202210112149', 'new Customer'),
('202210112315', 'mr faizn', '', 'mr faizn03208431342', '', '', 'mr faizn03208431342202210112315', 'new Customer'),
('202210112342', 'mr shahid mehmood ', '', 'mr shahid mehmood 03002595245 ', '', '', 'mr shahid mehmood 03002595245 202210112342', 'new Customer'),
('20221011247', 'mr farhan ', '', 'mr farhan 03144083379 ', '', '', 'mr farhan 03144083379 20221011247', 'new Customer'),
('202210112428', 'mr arshad', '', 'mr arshad03009476060 ', '', '', 'mr arshad03009476060 202210112428', 'new Customer'),
('202210112650', 'mr arshad', '', 'mr arshad03218024139', '', '', 'mr arshad03218024139202210112650', 'new Customer'),
('202210112716', 'mr amir ', '', 'mr amir 03216592363 ', '', '', 'mr amir 03216592363 202210112716', 'new Customer'),
('202210112737', 'mr ibrar', '', 'mr ibrar03216592363', '', '', 'mr ibrar03216592363202210112737', 'new Customer'),
('20221011289', 'mr hussnain ali ', '', 'mr hussnain ali 03457870088 ', '', '', 'mr hussnain ali 03457870088 20221011289', 'new Customer'),
('202210112831', 'mr irfan ', '', 'mr irfan 03327821507 ', '', '', 'mr irfan 03327821507 202210112831', 'new Customer'),
('202210112851', 'mr asad ', '', 'mr asad 03214722052  ', '', '', 'mr asad 03214722052  202210112851', 'new Customer'),
('202210112916', 'mr waqas ahmed ', '', 'mr waqas ahmed 03123185496', '', '', 'mr waqas ahmed 03123185496202210112916', 'new Customer'),
('202210112938', 'mr customer ', '', 'mr customer 03004435207', '', '', 'mr customer 03004435207202210112938', 'new Customer'),
('20221011164249', '', '', '', '', '', '20221011164249', 'new Customer'),
('20221024212739', 'Test', 'Test123', 'Test123456789', 'AMS', 'Test 123123123', 'Test12345678920221024212739', 'new Customer'),
('2022111172847', 'test', 'admin', 'test123456789', '', 'testing 123 123', 'test1234567892022111172847', 'new Customer'),
('20221210151937', 'Ahsan developer testing', 'Ahsan developer testing', 'Ahsan developer testingAhsan developer testing', '', '', 'Ahsan developer testingAhsan developer testing20221210151937', 'new Customer');

-- --------------------------------------------------------

--
-- Table structure for table `client_contact_details`
--

CREATE TABLE `client_contact_details` (
  `client_contact_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primaryphone` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secoundryphone` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primaryemail` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secoundryemail` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_contact_details_leads_id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_contact_details`
--

INSERT INTO `client_contact_details` (`client_contact_id`, `primaryphone`, `secoundryphone`, `primaryemail`, `secoundryemail`, `client_contact_details_leads_id`) VALUES
('Ahsan03167658324', '03167658324', '03167658324', 'hexasurgical@gmail.com', '', '2022713123617'),
('Ahsan03167658324', '03167658324', '03167658324', 'hexasurgical@gmail.com', '', '2022713125511'),
('Hassan 03049118468', '03049118468', '', 'hassanalirefai1@gmail.com', '', '2022714204829'),
('Tayyab03226929558', '03226929558', '', 'Xy@gmail.com', '', '2022721141634'),
('Test12121212', '12121212', '2323232323', 'xyz.com', '', '2022723215552'),
('TAYYAB03226929558', '03226929558', '', 'TAYYAB@XYZ.COM', '', '2022725185752'),
('Mr Zaid03025502488', '03025502488', '', '', '', '202272713590'),
('tyab03167658324', '03167658324', '03167658324', 'hexasurgical@gmail.com', '', '202285104117'),
('Ahsan03167658324', '03167658324', '03167658324', '', '', '2022811234751'),
('Ahsan03167658324', '03167658324', '', '', '', '2022812499'),
('Ahsan03167658324', '03167658324', '', '', '', '20228124956'),
('Ahsansss03167658324', '03167658324', '', '', '', '202281241520'),
('', '', '', '', '', '202281243546'),
('Instruments03167658324', '03167658324', '03167658324', 'hexasurgical@gmail.com', '', '20228124467'),
('zaid03025502488', '03025502488test1', '', 'test1', '', '202281214323'),
('', '03167658324', '', 'hexasurgical@gmail.com', '', '202281312518'),
('Dream03320757705', '03320757705', '', '', '', '2022815131510'),
('', '33333333', '', 'aaaaaa@ddd', '', '2022818225212'),
('Instruments03167658324', '03167658324', '03167658324', 'hexasurgical@gmail.com', '', '2022818234511'),
('ayesha03025502488', '', '', '', '', '2022819111546'),
('mr qaisar03234412155', '03234412155', '', '', '', '20221011194'),
('mr hamza03234412155', '03234412155', '', '', '', '2022101111011'),
('mr masood 03009494066', '03009494066', '', '', '', '2022101111111'),
('mr abdul aziz 03008299736 ', '03008299736 ', '', '', '', '2022101111219'),
('mr hassan jaffary 03212251395', '03212251395', '', '', '', '2022101111329'),
('mr qasim 03334420120', '03334420120', '', '', '', '2022101111419'),
('mr umair 03345441369', '03345441369', '', '', '', '2022101111556'),
('mr nasir 03334211221 ', '03334211221 ', '', '', '', '2022101111639'),
('mr haroon 03232440278 ', '03232440278 ', '', '', '', '2022101111722'),
('mr hafiz abid 03018470583 ', '03018470583 ', '', '', '', '2022101111822'),
('mr shahid 03334374484 ', '03334374484 ', '', '', '', '2022101111913'),
('mr tayyab03214741114', '03214741114', '', '', '', '2022101111957'),
('mr hafeez 03204715335 ', '03204715335 ', '', '', '', '2022101112038'),
('mr shadam azam 03008474145', '03008474145', '', '', '', '2022101112121'),
('mr saaed 03008413122 ', '03008413122 ', '', '', '', '2022101112246'),
('mr jhanzaib03008440546 ', '03008440546 ', '', '', '', '2022101112331'),
('mr customer03009619961', '03009619961', '', '', '', '202210111243'),
('mr ali03350643552', '03350643552', '', '', '', '2022101112430'),
('mr customer 03238408512', '03238408512', '', '', '', '202210111254'),
('mr shakeel hassan 03212779418 ', '03212779418 ', '', '', '', '2022101112554'),
('mr kashif 03312109302 ', '03312109302 ', '', '', '', '2022101112645'),
('mr shafi03218998753', '03218998753', '', '', '', '2022101112721'),
('mr imran haider 03034848445 ', '03034848445 ', '', '', '', '202210111285'),
('mr khawar 03238408512 ', '03238408512 ', '', '', '', '2022101112845'),
('mr raza 03009488893 ', '03009488893 ', '', '', '', '2022101112934'),
('mr salman0312 2098239 ', '0312 2098239 ', '', '', '', '2022101113015'),
('mr mansoor 03344555571 ', '03344555571 ', '', '', '', '2022101113051'),
('mr kashif 03008418013 ', '03008418013 ', '', '', '', '2022101113127'),
('mr abid 03002966207 ', '03002966207 ', '', '', '', '2022101113151'),
('mr naeeem 03088088808 ', '03088088808 ', '', '', '', '2022101113220'),
('mr ijaz 03336974566', '03336974566', '', '', '', '2022101113250'),
('mr customer 03314512961 ', '03314512961 ', '', '', '', '2022101113313'),
('mr yusaf 03218862613 ', '03218862613 ', '', '', '', '2022101113344'),
('mr imran ali 03218478095', '03218478095', '', '', '', '202210111349'),
('mr asif 03214930786', '03214930786', '', '', '', '202210111351'),
('mr shareef 03008401520 ', '03008401520 ', '', '', '', '2022101113528'),
('mr taimoor 03004015659 ', '03004015659 ', '', '', '', '2022101113555'),
('mr rizwan  03115000900', '03115000900', '', '', '', '2022101113620'),
('mr nadeem  03002199514', '03002199514', '', '', '', '2022101113642'),
('mr customer 03467199250 ', '03467199250 ', '', '', '', '202210111378'),
('mr masood 03036317642 ', '03036317642 ', '', '', '', '2022101113738'),
('mr shoib 03239200091', '03239200091', '', '', '', '2022101113756'),
('mr sajid ali 03116741171', '03116741171', '', '', '', '2022101113818'),
('mr junaid 03134345008 ', '03134345008 ', '', '', '', '2022101113851'),
('mr talha03334836941', '03334836941', '', '', '', '2022101113925'),
('mr mobeen 03072801927 ', '03072801927 ', '', '', '', '2022101114013'),
('mr umair 03336460930', '03336460930', '', '', '', '2022101114038'),
('mr naeem babr 03348088808', '03348088808', '', '', '', '202210111412'),
('ms fatima hassan 03218499022', '03218499022', '', '', '', '2022101114128'),
('mr asif 03367634429 ', '03367634429 ', '', '', '', '2022101114211'),
('mr tariq03008401704', '03008401704', '', '', '', '2022101114239'),
('mr zain 03248043501 ', '03248043501 ', '', '', '', '202210111438'),
('mr hammad hassan 03248043501 ', '03248043501 ', '', '', '', '2022101114337'),
('mr hammad hassan 03218432361', '03218432361', '', '', '', '2022101114352'),
('mr naeem 03335164136 ', '03335164136 ', '', '', '', '2022101114646'),
('mr aslam 03225544334  ', '03225544334  ', '', '', '', '2022101114710'),
('mr basit03008118110', '03008118110', '', '', '', '2022101114742'),
('mr tufail03334623215', '03334623215', '', '', '', '2022101114821'),
('mr aslam03225544334', '03225544334', '', '', '', '2022101114846'),
('mr zahid 03218451931', '03218451931', '', '', '', '2022101114936'),
('mr sadan 03334431753', '03334431753', '', '', '', '202210111504'),
('mr ikram 03212253133 ', '03212253133 ', '', '', '', '2022101115157'),
('mr ikram 03214366981', '03214366981', '', '', '', '2022101115235'),
('mr zia ul rehman03008528850', '03008528850', '', '', '', '2022101115322'),
('mr nasir 03008528850', '03008528850', '', '', '', '2022101115346'),
('mr arshad 03334521866 ', '03334521866 ', '', '', '', '2022101115416'),
('mr hussnain 03214086722', '03214086722', '', '', '', '2022101115452'),
('mr azam 03009476234 ', '03009476234 ', '', '', '', '2022101115511'),
('mr raheel 03468220822', '03468220822', '', '', '', '2022101115615'),
('mr ikram  03212253133 ', '03212253133 ', '', '', '', '2022101115640'),
('customer 03212253133 ', '03212253133 ', '', '', '', '202210111573'),
('customer 03334531515 ', '03334531515 ', '', '', '', '2022101115746'),
('mr umair 03249477904', '03249477904', '', '', '', '202210111585'),
('mr wajid  03009498346 ', '03009498346 ', '', '', '', '2022101115859'),
('mr arshad raza 03334521866', '03334521866', '', '', '', '2022101115925'),
('mr javed naseem 03009277229', '03009277229', '', '', '', '2022101115958'),
('mr saad 03008152428 ', '03008152428 ', '', '', '', '202210112026'),
('mr ilyas 03024404155 ', '03024404155 ', '', '', '', '20221011212'),
('mr shadb ali 03018686648', '03018686648', '', '', '', '202210112127'),
('mr asif ali 03004433495 ', '03004433495 ', '', '', '', '202210112149'),
('mr faizn03208431342', '03208431342', '', '', '', '202210112315'),
('mr shahid mehmood 03002595245 ', '03002595245 ', '', '', '', '202210112342'),
('mr farhan 03144083379 ', '03144083379 ', '', '', '', '20221011247'),
('mr arshad03009476060 ', '03009476060 ', '', '', '', '202210112428'),
('mr arshad03218024139', '03218024139', '', '', '', '202210112650'),
('mr amir 03216592363 ', '03216592363 ', '', '', '', '202210112716'),
('mr ibrar03216592363', '03216592363', '', '', '', '202210112737'),
('mr hussnain ali 03457870088 ', '03457870088 ', '', '', '', '20221011289'),
('mr irfan 03327821507 ', '03327821507 ', '', '', '', '202210112831'),
('mr asad 03214722052  ', '03214722052  ', '', '', '', '202210112851'),
('mr waqas ahmed 03123185496', '03123185496', '', '', '', '202210112916'),
('mr customer 03004435207', '03004435207', '', '', '', '202210112938'),
('', '', '', '', '', '20221011164249'),
('Test123456789', '123456789', '', 'xyz@hotmail.com', '', '20221024212739'),
('test123456789', '123456789', '', 'xyz@gmail.com', '', '2022111172847'),
('Ahsan developer testingAhsan developer testing', 'Ahsan developer testing', 'Ahsan developer testing', 'Ahsan developer testing', '', '20221210151937');

-- --------------------------------------------------------

--
-- Table structure for table `donesales`
--

CREATE TABLE `donesales` (
  `salesleadids` varchar(1000) NOT NULL,
  `salesid` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flight_list`
--

CREATE TABLE `flight_list` (
  `id` int(30) NOT NULL,
  `airline_id` int(30) NOT NULL,
  `plane_no` text NOT NULL,
  `departure_airport_id` int(30) NOT NULL,
  `arrival_airport_id` int(30) NOT NULL,
  `departure_datetime` datetime NOT NULL,
  `arrival_datetime` datetime NOT NULL,
  `seats` int(10) NOT NULL DEFAULT 0,
  `price` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_list`
--

INSERT INTO `flight_list` (`id`, `airline_id`, `plane_no`, `departure_airport_id`, `arrival_airport_id`, `departure_datetime`, `arrival_datetime`, `seats`, `price`, `date_created`) VALUES
(4, 3, 'CEB10023', 1, 5, '2021-03-20 01:00:00', '2021-03-20 02:00:00', 100, 2500, '2021-02-25 14:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `leadno` int(255) NOT NULL,
  `leadsid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadsector` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadtitle` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Userid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Taken_On` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Action` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Serviceid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pirority` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Repeatid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salesidleads` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PNRnumber` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alertid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadssearchid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`leadno`, `leadsid`, `clientid`, `leadsector`, `leadtitle`, `Userid`, `Status`, `Taken_On`, `Action`, `Serviceid`, `Pirority`, `Repeatid`, `salesidleads`, `PNRnumber`, `alertid`, `leadssearchid`) VALUES
(20, '2022819111546', '2022819111546', 'ss', '', '1', 'Pending', '2022-8-19/11:15:46', '', '2022819111546', '', 'ayesha030255024882022819111546', '2022819111546', '', '2022819111546', ''),
(21, '20221011194', '20221011194', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:9:4', '', '20221011194', '', 'mr qaisar0323441215520221011194', '20221011194', '', '20221011194', ''),
(22, '2022101111011', '2022101111011', 'lhe to ist', '', '23', 'Pending', '2022-10-11/1:10:11', '', '2022101111011', '', 'mr hamza032344121552022101111011', '2022101111011', '', '2022101111011', ''),
(23, '2022101111111', '2022101111111', 'lhe to gyd', '', '23', 'Pending', '2022-10-11/1:11:11', '', '2022101111111', '', 'mr masood 030094940662022101111111', '2022101111111', '', '2022101111111', ''),
(24, '2022101111219', '2022101111219', 'khi to dxb', '', '23', 'Pending', '2022-10-11/1:12:19', '', '2022101111219', '', 'mr abdul aziz 03008299736 2022101111219', '2022101111219', '', '2022101111219', ''),
(25, '2022101111329', '2022101111329', 'khi to bgw', '', '23', 'Pending', '2022-10-11/1:13:29', '', '2022101111329', '', 'mr hassan jaffary 032122513952022101111329', '2022101111329', '', '2022101111329', ''),
(26, '2022101111419', '2022101111419', 'lhe to dxb ', '', '23', 'Pending', '2022-10-11/1:14:19', '', '2022101111419', '', 'mr qasim 033344201202022101111419', '2022101111419', '', '2022101111419', ''),
(27, '2022101111556', '2022101111556', 'lhe to dxb ', '', '23', 'Pending', '2022-10-11/1:15:56', '', '2022101111556', '', 'mr umair 033454413692022101111556', '2022101111556', '', '2022101111556', ''),
(28, '2022101111639', '2022101111639', 'lhe to jfk', '', '23', 'Pending', '2022-10-11/1:16:39', '', '2022101111639', '', 'mr nasir 03334211221 2022101111639', '2022101111639', '', '2022101111639', ''),
(29, '2022101111722', '2022101111722', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:17:22', '', '2022101111722', '', 'mr haroon 03232440278 2022101111722', '2022101111722', '', '2022101111722', ''),
(30, '2022101111822', '2022101111822', 'lhe to dmm', '', '23', 'Pending', '2022-10-11/1:18:22', '', '2022101111822', '', 'mr hafiz abid 03018470583 2022101111822', '2022101111822', '', '2022101111822', ''),
(31, '2022101111913', '2022101111913', 'lhe to kdu', '', '23', 'Pending', '2022-10-11/1:19:13', '', '2022101111913', '', 'mr shahid 03334374484 2022101111913', '2022101111913', '', '2022101111913', ''),
(32, '2022101111957', '2022101111957', 'lhe to ist', '', '23', 'Pending', '2022-10-11/1:19:57', '', '2022101111957', '', 'mr tayyab032147411142022101111957', '2022101111957', '', '2022101111957', ''),
(33, '2022101112038', '2022101112038', 'lhe to atl', '', '23', 'Pending', '2022-10-11/1:20:38', '', '2022101112038', '', 'mr hafeez 03204715335 2022101112038', '2022101112038', '', '2022101112038', ''),
(34, '2022101112121', '2022101112121', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:21:21', '', '2022101112121', '', 'mr shadam azam 030084741452022101112121', '2022101112121', '', '2022101112121', ''),
(35, '2022101112246', '2022101112246', 'lhe to nrt', '', '23', 'Pending', '2022-10-11/1:22:46', '', '2022101112246', '', 'mr saaed 03008413122 2022101112246', '2022101112246', '', '2022101112246', ''),
(36, '2022101112331', '2022101112331', 'lhe to ist', '', '23', 'Pending', '2022-10-11/1:23:31', '', '2022101112331', '', 'mr jhanzaib03008440546 2022101112331', '2022101112331', '', '2022101112331', ''),
(37, '202210111243', '202210111243', 'lhe to syd', '', '23', 'Pending', '2022-10-11/1:24:3', '', '202210111243', '', 'mr customer03009619961202210111243', '202210111243', '', '202210111243', ''),
(38, '2022101112430', '2022101112430', 'lhe to rkt', '', '23', 'Pending', '2022-10-11/1:24:30', '', '2022101112430', '', 'mr ali033506435522022101112430', '2022101112430', '', '2022101112430', ''),
(39, '202210111254', '202210111254', 'lhe to lhr', '', '23', 'Pending', '2022-10-11/1:25:4', '', '202210111254', '', 'mr customer 03238408512202210111254', '202210111254', '', '202210111254', ''),
(40, '2022101112554', '2022101112554', 'khi to lax', '', '23', 'Pending', '2022-10-11/1:25:54', '', '2022101112554', '', 'mr shakeel hassan 03212779418 2022101112554', '2022101112554', '', '2022101112554', ''),
(41, '2022101112645', '2022101112645', 'khi to isb', '', '23', 'Pending', '2022-10-11/1:26:45', '', '2022101112645', '', 'mr kashif 03312109302 2022101112645', '2022101112645', '', '2022101112645', ''),
(42, '2022101112721', '2022101112721', 'khi to lhe', '', '23', 'Pending', '2022-10-11/1:27:21', '', '2022101112721', '', 'mr shafi032189987532022101112721', '2022101112721', '', '2022101112721', ''),
(43, '202210111285', '202210111285', 'ummraha pkg', '', '23', 'Pending', '2022-10-11/1:28:5', '', '202210111285', '', 'mr imran haider 03034848445 202210111285', '202210111285', '', '202210111285', ''),
(44, '2022101112845', '2022101112845', 'lhe to aus ', '', '23', 'Pending', '2022-10-11/1:28:45', '', '2022101112845', '', 'mr khawar 03238408512 2022101112845', '2022101112845', '', '2022101112845', ''),
(45, '2022101112934', '2022101112934', 'lhe to kdu', '', '23', 'Pending', '2022-10-11/1:29:34', '', '2022101112934', '', 'mr raza 03009488893 2022101112934', '2022101112934', '', '2022101112934', ''),
(46, '2022101113015', '2022101113015', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:30:15', '', '2022101113015', '', 'mr salman0312 2098239 2022101113015', '2022101113015', '', '2022101113015', ''),
(47, '2022101113051', '2022101113051', 'khi to isb ', '', '23', 'Pending', '2022-10-11/1:30:51', '', '2022101113051', '', 'mr mansoor 03344555571 2022101113051', '2022101113051', '', '2022101113051', ''),
(48, '2022101113127', '2022101113127', 'lhe to ist ', '', '23', 'Pending', '2022-10-11/1:31:27', '', '2022101113127', '', 'mr kashif 03008418013 2022101113127', '2022101113127', '', '2022101113127', ''),
(49, '2022101113151', '2022101113151', 'lhe to ist ', '', '23', 'Pending', '2022-10-11/1:31:51', '', '2022101113151', '', 'mr abid 03002966207 2022101113151', '2022101113151', '', '2022101113151', ''),
(50, '2022101113220', '2022101113220', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:32:20', '', '2022101113220', '', 'mr naeeem 03088088808 2022101113220', '2022101113220', '', '2022101113220', ''),
(51, '2022101113250', '2022101113250', 'ummrha pkg ', '', '23', 'Pending', '2022-10-11/1:32:50', '', '2022101113250', '', 'mr ijaz 033369745662022101113250', '2022101113250', '', '2022101113250', ''),
(52, '2022101113313', '2022101113313', 'khi to lhe ', '', '23', 'Pending', '2022-10-11/1:33:13', '', '2022101113313', '', 'mr customer 03314512961 2022101113313', '2022101113313', '', '2022101113313', ''),
(53, '2022101113344', '2022101113344', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:33:44', '', '2022101113344', '', 'mr yusaf 03218862613 2022101113344', '2022101113344', '', '2022101113344', ''),
(54, '202210111349', '202210111349', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:34:9', '', '202210111349', '', 'mr imran ali 03218478095202210111349', '202210111349', '', '202210111349', ''),
(55, '202210111351', '202210111351', 'lhe to kul', '', '23', 'Pending', '2022-10-11/1:35:1', '', '202210111351', '', 'mr asif 03214930786202210111351', '202210111351', '', '202210111351', ''),
(56, '2022101113528', '2022101113528', 'lhe to khi', '', '23', 'Pending', '2022-10-11/1:35:28', '', '2022101113528', '', 'mr shareef 03008401520 2022101113528', '2022101113528', '', '2022101113528', ''),
(57, '2022101113555', '2022101113555', 'lhe to doha ', '', '23', 'Pending', '2022-10-11/1:35:55', '', '2022101113555', '', 'mr taimoor 03004015659 2022101113555', '2022101113555', '', '2022101113555', ''),
(58, '2022101113620', '2022101113620', 'lhe to jed ', '', '23', 'Pending', '2022-10-11/1:36:20', '', '2022101113620', '', 'mr rizwan  031150009002022101113620', '2022101113620', '', '2022101113620', ''),
(59, '2022101113642', '2022101113642', 'lhe to jed ', '', '23', 'Pending', '2022-10-11/1:36:42', '', '2022101113642', '', 'mr nadeem  030021995142022101113642', '2022101113642', '', '2022101113642', ''),
(60, '202210111378', '202210111378', 'mux to tas ', '', '23', 'Pending', '2022-10-11/1:37:8', '', '202210111378', '', 'mr customer 03467199250 202210111378', '202210111378', '', '202210111378', ''),
(61, '2022101113738', '2022101113738', 'lhe to dxb ', '', '23', 'Pending', '2022-10-11/1:37:38', '', '2022101113738', '', 'mr masood 03036317642 2022101113738', '2022101113738', '', '2022101113738', ''),
(62, '2022101113756', '2022101113756', 'lhe to dxb ', '', '23', 'Pending', '2022-10-11/1:37:56', '', '2022101113756', '', 'mr shoib 032392000912022101113756', '2022101113756', '', '2022101113756', ''),
(63, '2022101113818', '2022101113818', 'lhe to dxb ', '', '23', 'Pending', '2022-10-11/1:38:18', '', '2022101113818', '', 'mr sajid ali 031167411712022101113818', '2022101113818', '', '2022101113818', ''),
(64, '2022101113851', '2022101113851', 'lhe to bru', '', '23', 'Pending', '2022-10-11/1:38:51', '', '2022101113851', '', 'mr junaid 03134345008 2022101113851', '2022101113851', '', '2022101113851', ''),
(65, '2022101113925', '2022101113925', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:39:25', '', '2022101113925', '', 'mr talha033348369412022101113925', '2022101113925', '', '2022101113925', ''),
(66, '2022101114013', '2022101114013', 'lhe to dfw', '', '23', 'Pending', '2022-10-11/1:40:13', '', '2022101114013', '', 'mr mobeen 03072801927 2022101114013', '2022101114013', '', '2022101114013', ''),
(67, '2022101114038', '2022101114038', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:40:38', '', '2022101114038', '', 'mr umair 033364609302022101114038', '2022101114038', '', '2022101114038', ''),
(68, '202210111412', '202210111412', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:41:2', '', '202210111412', '', 'mr naeem babr 03348088808202210111412', '202210111412', '', '202210111412', ''),
(69, '2022101114128', '2022101114128', 'lhe to mle ', '', '23', 'Pending', '2022-10-11/1:41:28', '', '2022101114128', '', 'ms fatima hassan 032184990222022101114128', '2022101114128', '', '2022101114128', ''),
(70, '2022101114211', '2022101114211', 'lhe to kul ', '', '23', 'Pending', '2022-10-11/1:42:11', '', '2022101114211', '', 'mr asif 03367634429 2022101114211', '2022101114211', '', '2022101114211', ''),
(71, '2022101114239', '2022101114239', 'lhe to khi ', '', '23', 'Pending', '2022-10-11/1:42:39', '', '2022101114239', '', 'mr tariq030084017042022101114239', '2022101114239', '', '2022101114239', ''),
(72, '202210111438', '202210111438', 'ummrha pkg ', '', '23', 'Pending', '2022-10-11/1:43:8', '', '202210111438', '', 'mr zain 03248043501 202210111438', '202210111438', '', '202210111438', ''),
(73, '2022101114337', '2022101114337', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:43:37', '', '2022101114337', '', 'mr hammad hassan 03248043501 2022101114337', '2022101114337', '', '2022101114337', ''),
(74, '2022101114352', '2022101114352', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:43:52', '', '2022101114352', '', 'mr hammad hassan 032184323612022101114352', '2022101114352', '', '2022101114352', ''),
(75, '2022101114646', '2022101114646', 'lhe to lhr', '', '23', 'Pending', '2022-10-11/1:46:46', '', '2022101114646', '', 'mr naeem 03335164136 2022101114646', '2022101114646', '', '2022101114646', ''),
(76, '2022101114710', '2022101114710', 'lhe to ist', '', '23', 'Pending', '2022-10-11/1:47:10', '', '2022101114710', '', 'mr aslam 03225544334  2022101114710', '2022101114710', '', '2022101114710', ''),
(77, '2022101114742', '2022101114742', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:47:42', '', '2022101114742', '', 'mr basit030081181102022101114742', '2022101114742', '', '2022101114742', ''),
(78, '2022101114821', '2022101114821', 'ummraha pkg ', '', '23', 'Pending', '2022-10-11/1:48:21', '', '2022101114821', '', 'mr tufail033346232152022101114821', '2022101114821', '', '2022101114821', ''),
(79, '2022101114846', '2022101114846', 'lhe to dxb ', '', '23', 'Pending', '2022-10-11/1:48:46', '', '2022101114846', '', 'mr aslam032255443342022101114846', '2022101114846', '', '2022101114846', ''),
(80, '2022101114936', '2022101114936', 'lhe to gyd ', '', '23', 'Pending', '2022-10-11/1:49:36', '', '2022101114936', '', 'mr zahid 032184519312022101114936', '2022101114936', '', '2022101114936', ''),
(81, '202210111504', '202210111504', 'lhe to ruh ', '', '23', 'Pending', '2022-10-11/1:50:4', '', '202210111504', '', 'mr sadan 03334431753202210111504', '202210111504', '', '202210111504', ''),
(82, '2022101115157', '2022101115157', 'khi to man ', '', '23', 'Pending', '2022-10-11/1:51:57', '', '2022101115157', '', 'mr ikram 03212253133 2022101115157', '2022101115157', '', '2022101115157', ''),
(83, '2022101115235', '2022101115235', 'lhe to gyd ', '', '23', 'Pending', '2022-10-11/1:52:35', '', '2022101115235', '', 'mr ikram 032143669812022101115235', '2022101115235', '', '2022101115235', ''),
(84, '2022101115322', '2022101115322', 'lhe to jfk', '', '23', 'Pending', '2022-10-11/1:53:22', '', '2022101115322', '', 'mr zia ul rehman030085288502022101115322', '2022101115322', '', '2022101115322', ''),
(85, '2022101115346', '2022101115346', 'lhe to kul ', '', '23', 'Pending', '2022-10-11/1:53:46', '', '2022101115346', '', 'mr nasir 030085288502022101115346', '2022101115346', '', '2022101115346', ''),
(86, '2022101115416', '2022101115416', 'lhe to sof', '', '23', 'Pending', '2022-10-11/1:54:16', '', '2022101115416', '', 'mr arshad 03334521866 2022101115416', '2022101115416', '', '2022101115416', ''),
(87, '2022101115452', '2022101115452', 'ummraha pkg ', '', '23', 'Pending', '2022-10-11/1:54:52', '', '2022101115452', '', 'mr hussnain 032140867222022101115452', '2022101115452', '', '2022101115452', ''),
(88, '2022101115511', '2022101115511', 'ummraha pkg ', '', '23', 'Pending', '2022-10-11/1:55:11', '', '2022101115511', '', 'mr azam 03009476234 2022101115511', '2022101115511', '', '2022101115511', ''),
(89, '2022101115615', '2022101115615', 'khi to yyz ', '', '23', 'Pending', '2022-10-11/1:56:15', '', '2022101115615', '', 'mr raheel 034682208222022101115615', '2022101115615', '', '2022101115615', ''),
(90, '2022101115640', '2022101115640', 'khi to man', '', '23', 'Pending', '2022-10-11/1:56:40', '', '2022101115640', '', 'mr ikram  03212253133 2022101115640', '2022101115640', '', '2022101115640', ''),
(91, '202210111573', '202210111573', 'lhe to gyd ', '', '23', 'Pending', '2022-10-11/1:57:3', '', '202210111573', '', 'customer 03212253133 202210111573', '202210111573', '', '202210111573', ''),
(92, '2022101115746', '2022101115746', 'lhe to gyd ', '', '23', 'Pending', '2022-10-11/1:57:46', '', '2022101115746', '', 'customer 03334531515 2022101115746', '2022101115746', '', '2022101115746', ''),
(93, '202210111585', '202210111585', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/1:58:5', '', '202210111585', '', 'mr umair 03249477904202210111585', '202210111585', '', '202210111585', ''),
(94, '2022101115859', '2022101115859', 'lhe to shj ', '', '23', 'Pending', '2022-10-11/1:58:59', '', '2022101115859', '', 'mr wajid  03009498346 2022101115859', '2022101115859', '', '2022101115859', ''),
(95, '2022101115925', '2022101115925', 'lhe to balgaria ', '', '23', 'Pending', '2022-10-11/1:59:25', '', '2022101115925', '', 'mr arshad raza 033345218662022101115925', '2022101115925', '', '2022101115925', ''),
(96, '2022101115958', '2022101115958', 'lhe to med  ', '', '23', 'Pending', '2022-10-11/1:59:58', '', '2022101115958', '', 'mr javed naseem 030092772292022101115958', '2022101115958', '', '2022101115958', ''),
(97, '202210112026', '202210112026', 'lhe to ruh ', '', '23', 'Pending', '2022-10-11/2:0:26', '', '202210112026', '', 'mr saad 03008152428 202210112026', '202210112026', '', '202210112026', ''),
(98, '20221011212', '20221011212', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/2:1:2', '', '20221011212', '', 'mr ilyas 03024404155 20221011212', '20221011212', '', '20221011212', ''),
(99, '202210112127', '202210112127', 'lhe to ruh', '', '23', 'Pending', '2022-10-11/2:1:27', '', '202210112127', '', 'mr shadb ali 03018686648202210112127', '202210112127', '', '202210112127', ''),
(100, '202210112149', '202210112149', 'lhe to dxb ', '', '23', 'Pending', '2022-10-11/2:1:49', '', '202210112149', '', 'mr asif ali 03004433495 202210112149', '202210112149', '', '202210112149', ''),
(101, '202210112315', '202210112315', 'lhe to jnb', '', '23', 'Pending', '2022-10-11/2:3:15', '', '202210112315', '', 'mr faizn03208431342202210112315', '202210112315', '', '202210112315', ''),
(102, '202210112342', '202210112342', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/2:3:42', '', '202210112342', '', 'mr shahid mehmood 03002595245 202210112342', '202210112342', '', '202210112342', ''),
(103, '20221011247', '20221011247', 'lhe to dxb', '', '23', 'Pending', '2022-10-11/2:4:7', '', '20221011247', '', 'mr farhan 03144083379 20221011247', '20221011247', '', '20221011247', ''),
(104, '202210112428', '202210112428', 'lhe to bkk', '', '23', 'Pending', '2022-10-11/2:4:28', '', '202210112428', '', 'mr arshad03009476060 202210112428', '202210112428', '', '202210112428', ''),
(105, '202210112650', '202210112650', 'uet to lhe ', '', '23', 'Pending', '2022-10-11/2:6:50', '', '202210112650', '', 'mr arshad03218024139202210112650', '202210112650', '', '202210112650', ''),
(106, '202210112716', '202210112716', 'lhe to dxb ', '', '23', 'Pending', '2022-10-11/2:7:16', '', '202210112716', '', 'mr amir 03216592363 202210112716', '202210112716', '', '202210112716', ''),
(107, '202210112737', '202210112737', 'lhe to ord', '', '23', 'Pending', '2022-10-11/2:7:37', '', '202210112737', '', 'mr ibrar03216592363202210112737', '202210112737', '', '202210112737', ''),
(108, '20221011289', '20221011289', 'lhe to lhr', '', '23', 'Pending', '2022-10-11/2:8:9', '', '20221011289', '', 'mr hussnain ali 03457870088 20221011289', '20221011289', '', '20221011289', ''),
(109, '202210112831', '202210112831', 'lhe to gyd', '', '23', 'Pending', '2022-10-11/2:8:31', '', '202210112831', '', 'mr irfan 03327821507 202210112831', '202210112831', '', '202210112831', ''),
(110, '202210112851', '202210112851', 'lhe to lhr', '', '23', 'Pending', '2022-10-11/2:8:51', '', '202210112851', '', 'mr asad 03214722052  202210112851', '202210112851', '', '202210112851', ''),
(111, '202210112916', '202210112916', 'lhe to doh', '', '23', 'Pending', '2022-10-11/2:9:16', '', '202210112916', '', 'mr waqas ahmed 03123185496202210112916', '202210112916', '', '202210112916', ''),
(112, '202210112938', '202210112938', 'lhe to syd ', '', '23', 'Pending', '2022-10-11/2:9:38', '', '202210112938', '', 'mr customer 03004435207202210112938', '202210112938', '', '202210112938', ''),
(113, '20221011164249', '20221011164249', '', '', '1', 'Pending', '2022-10-11/16:42:49', '', '20221011164249', '', '20221011164249', '20221011164249', '', '20221011164249', ''),
(114, '20221024212739', '20221024212739', '', 'Testing', '1', 'Close', '2022-10-24/21:27:39', '', '20221024212739', '', 'Test12345678920221024212739', '20221024212739', '', '20221024212739', ''),
(115, '2022111172847', '2022111172847', '', 'test', '25', 'Pending', '2022-11-1/17:28:47', '', '2022111172847', '', 'test1234567892022111172847', '2022111172847', '', '2022111172847', ''),
(116, '20221210151937', '20221210151937', '', '', '1', 'Pending', '2022-12-10/15:19:37', '', '20221210151937', '', 'Ahsan developer testingAhsan developer testing20221210151937', '20221210151937', '', '20221210151937', '');

-- --------------------------------------------------------

--
-- Table structure for table `leadsalert`
--

CREATE TABLE `leadsalert` (
  `alertleadid` varchar(1000) NOT NULL,
  `alertid` varchar(1000) NOT NULL,
  `alertstatus` varchar(1000) NOT NULL,
  `alertTime` varchar(1000) NOT NULL,
  `allalertstatus` varchar(1000) NOT NULL,
  `Alerttype` varchar(1000) NOT NULL,
  `Paxidalert` varchar(1000) NOT NULL,
  `alertname` varchar(1000) NOT NULL,
  `alerttext` varchar(1000) NOT NULL,
  `alertcreatedon` varchar(1000) NOT NULL,
  `alertcompletedon` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leadsalert`
--

INSERT INTO `leadsalert` (`alertleadid`, `alertid`, `alertstatus`, `alertTime`, `allalertstatus`, `Alerttype`, `Paxidalert`, `alertname`, `alerttext`, `alertcreatedon`, `alertcompletedon`) VALUES
('2022713123617', '2022713123834', '0', '1657697974993', '1', 'Call', 'ahsan', 'ahsan', 'ahsan', '2022-7-13/12:38:34', ''),
('2022713123617', '202271312391', '0', '1657701541382', '1', 'Message', 'adsada', 'adsada', 'adsada', '2022-7-13/12:39:1', ''),
('2022713123617', '2022713123921', '0', '1657698021748', '1', 'Call', 'ahsan', 'ahsan', 'ahsan', '2022-7-13/12:39:21', '2022-7-13/12:40:45'),
('2022713125511', '202271323239', '0', '1657740189357', '1', 'Call', '', '', '', '2022-7-13/23:23:9', '2022-7-14/20:48:56'),
('2022714204829', '202271814440', '0', '1658135140726', '1', 'Call', '', '', '', '2022-7-18/14:4:40', '2022-7-18/14:5:46'),
('2022721141634', '2022721142218', '0', '1658481738181', '1', 'others', 'Follow up ', 'Follow up ', 'Follow up ', '2022-7-21/14:22:18', '2022-7-25/19:5:10'),
('2022725185752', '20227251950', '0', '1658761500313', '1', 'Call', 'Need to call the customer again', 'Need to call the customer again', 'Need to call the customer again', '2022-7-25/19:5:0', '2022-7-27/14:11:26'),
('2022713125511', '20228222119', '1', '1661198469780', '1', 'Message', 'Hhhhh', 'Hhhhh', 'Hhhhh', '2022-8-22/21:1:9', ''),
('2022819111546', '2022822212045', '0', '1661185305185', '1', 'Call', 'Hhhh', 'Hhhh', 'Hhhh', '2022-8-22/21:20:45', ''),
('2022819111546', '2022822212126', '0', '1661185346587', '1', 'Call', 'Ttttt', 'Ttttt', 'Ttttt', '2022-8-22/21:21:26', ''),
('2022819111546', '2022822212144', '0', '1661185364592', '1', 'Call', 'Gggggggggggggggggggggg', 'Gggggggggggggggggggggg', 'Gggggggggggggggggggggg', '2022-8-22/21:21:44', ''),
('2022819111546', '202282221224', '0', '1661185384014', '1', 'Message', 'Ghhhhhhhhhhjjkkkjjnnb', 'Ghhhhhhhhhhjjkkkjjnnb', 'Ghhhhhhhhhhjjkkkjjnnb', '2022-8-22/21:22:4', ''),
('2022819111546', '2022822212229', '0', '1661199749410', '1', 'Message', 'Ghhhhhhhjkjjkkkkk', 'Ghhhhhhhjkjjkkkkk', 'Ghhhhhhhjkjjkkkkk', '2022-8-22/21:22:29', ''),
('2022819111546', '2022822212354', '0', '1661271834842', '1', 'Call', 'Hhhhhhjknbbhbbvv', 'Hhhhhhjknbbhbbvv', 'Hhhhhhjknbbhbbvv', '2022-8-22/21:23:54', ''),
('2022819111546', '2022822212414', '0', '1661199854025', '1', 'Call', 'Hhhh hhh', 'Hhhh hhh', 'Hhhh hhh', '2022-8-22/21:24:14', ''),
('2022819111546', '2022822212431', '0', '1661199871909', '1', 'Call', 'Ahsan', 'Ahsan', 'Ahsan', '2022-8-22/21:24:31', ''),
('2022819111546', '2022822212456', '0', '1661271896825', '1', 'Call', 'Remind (make it right)', 'Remind (make it right)', 'Remind (make it right)', '2022-8-22/21:24:56', ''),
('2022819111546', '2022822212541', '0', '1661189141242', '1', 'Call', 'Ghhhnmbbhb', 'Ghhhnmbbhb', 'Ghhhnmbbhb', '2022-8-22/21:25:41', ''),
('2022819111546', '2022822212557', '0', '1661185617260', '1', 'Message', 'Thgvbnnb', 'Thgvbnnb', 'Thgvbnnb', '2022-8-22/21:25:57', '2022-8-22/21:27:15'),
('2022819111546', '2022822212811', '0', '1661185751100', '1', 'Call', 'Gghbbbbh', 'Gghbbbbh', 'Gghbbbbh', '2022-8-22/21:28:11', '2022-8-29/14:3:2'),
('2022819111546', '202282914350', '0', '1661763890564', '1', 'Call', '', '', '', '2022-8-29/14:3:50', ''),
('2022819111546', '202282914448', '0', '1661763948404', '1', 'Call', 'call me back', 'call me back', 'call me back', '2022-8-29/14:4:48', '2022-9-9/14:25:38'),
('20221011164249', '2022101116439', '0', '1665488649124', '1', 'Call', 'adsad', 'adsad', 'adsad', '2022-10-11/16:43:9', '2022-10-30/6:10:48'),
('20221024212739', '2022103055135', '0', '1667091155679', '1', 'Message', '', '', '', '2022-10-30/5:51:35', ''),
('20221024212739', '202210305528', '0', '1667091188494', '1', 'others', 'Call back in few mins', 'Call back in few mins', 'Call back in few mins', '2022-10-30/5:52:8', '2022-10-30/6:10:27'),
('2022819111546', '20221110171049', '1', '1668082309121', '1', 'Message', 'working on it ', 'working on it ', 'working on it ', '2022-11-10/17:10:49', ''),
('20221011164249', '20221110171122', '0', '1668082342780', '1', 'Message', 'working on it ', 'working on it ', 'working on it ', '2022-11-10/17:11:22', '2022-12-10/15:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `leadssearcdates`
--

CREATE TABLE `leadssearcdates` (
  `leadssearchidtable` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leaddaydate` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadmonthdate` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadyeardate` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadsucessdaydate` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadsucessmonthdate` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadsucessyeardate` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leadssearcdates`
--

INSERT INTO `leadssearcdates` (`leadssearchidtable`, `leaddaydate`, `leadmonthdate`, `leadyeardate`, `leadsucessdaydate`, `leadsucessmonthdate`, `leadsucessyeardate`) VALUES
('2022713123617', '13', '7', '2022', '18', '8', '2022'),
('2022713125511', '13', '7', '2022', '18', '8', '2022'),
('2022714204829', '14', '7', '2022', '13', '8', '2022'),
('2022721141634', '21', '7', '2022', '13', '8', '2022'),
('2022723215552', '23', '7', '2022', '23', '7', '2022'),
('2022725185752', '25', '7', '2022', '25', '7', '2022'),
('202272713590', '27', '7', '2022', '15', '8', '2022'),
('202285104117', '5', '8', '2022', '5', '8', '2022'),
('2022811234751', '11', '8', '2022', '12', '8', '2022'),
('2022812499', '12', '8', '2022', '', '', ''),
('20228124956', '12', '8', '2022', '12', '8', '2022'),
('202281241520', '12', '8', '2022', '12', '8', '2022'),
('202281243546', '12', '8', '2022', '15', '8', '2022'),
('20228124467', '12', '8', '2022', '15', '8', '2022'),
('202281214323', '12', '8', '2022', '13', '8', '2022'),
('202281312518', '13', '8', '2022', '15', '8', '2022'),
('2022815131510', '15', '8', '2022', '18', '8', '2022'),
('2022818225212', '18', '8', '2022', '19', '8', '2022'),
('2022818234511', '18', '8', '2022', '18', '8', '2022'),
('2022819111546', '19', '8', '2022', '10', '11', '2022'),
('20221011194', '11', '10', '2022', '', '', ''),
('2022101111011', '11', '10', '2022', '', '', ''),
('2022101111111', '11', '10', '2022', '', '', ''),
('2022101111219', '11', '10', '2022', '', '', ''),
('2022101111329', '11', '10', '2022', '', '', ''),
('2022101111419', '11', '10', '2022', '', '', ''),
('2022101111556', '11', '10', '2022', '', '', ''),
('2022101111639', '11', '10', '2022', '', '', ''),
('2022101111722', '11', '10', '2022', '', '', ''),
('2022101111822', '11', '10', '2022', '', '', ''),
('2022101111913', '11', '10', '2022', '', '', ''),
('2022101111957', '11', '10', '2022', '', '', ''),
('2022101112038', '11', '10', '2022', '', '', ''),
('2022101112121', '11', '10', '2022', '', '', ''),
('2022101112246', '11', '10', '2022', '', '', ''),
('2022101112331', '11', '10', '2022', '', '', ''),
('202210111243', '11', '10', '2022', '', '', ''),
('2022101112430', '11', '10', '2022', '', '', ''),
('202210111254', '11', '10', '2022', '', '', ''),
('2022101112554', '11', '10', '2022', '', '', ''),
('2022101112645', '11', '10', '2022', '', '', ''),
('2022101112721', '11', '10', '2022', '', '', ''),
('202210111285', '11', '10', '2022', '', '', ''),
('2022101112845', '11', '10', '2022', '', '', ''),
('2022101112934', '11', '10', '2022', '', '', ''),
('2022101113015', '11', '10', '2022', '', '', ''),
('2022101113051', '11', '10', '2022', '', '', ''),
('2022101113127', '11', '10', '2022', '', '', ''),
('2022101113151', '11', '10', '2022', '', '', ''),
('2022101113220', '11', '10', '2022', '', '', ''),
('2022101113250', '11', '10', '2022', '', '', ''),
('2022101113313', '11', '10', '2022', '', '', ''),
('2022101113344', '11', '10', '2022', '', '', ''),
('202210111349', '11', '10', '2022', '', '', ''),
('202210111351', '11', '10', '2022', '', '', ''),
('2022101113528', '11', '10', '2022', '', '', ''),
('2022101113555', '11', '10', '2022', '', '', ''),
('2022101113620', '11', '10', '2022', '', '', ''),
('2022101113642', '11', '10', '2022', '', '', ''),
('202210111378', '11', '10', '2022', '', '', ''),
('2022101113738', '11', '10', '2022', '', '', ''),
('2022101113756', '11', '10', '2022', '', '', ''),
('2022101113818', '11', '10', '2022', '', '', ''),
('2022101113851', '11', '10', '2022', '', '', ''),
('2022101113925', '11', '10', '2022', '', '', ''),
('2022101114013', '11', '10', '2022', '', '', ''),
('2022101114038', '11', '10', '2022', '', '', ''),
('202210111412', '11', '10', '2022', '', '', ''),
('2022101114128', '11', '10', '2022', '', '', ''),
('2022101114211', '11', '10', '2022', '', '', ''),
('2022101114239', '11', '10', '2022', '', '', ''),
('202210111438', '11', '10', '2022', '', '', ''),
('2022101114337', '11', '10', '2022', '', '', ''),
('2022101114352', '11', '10', '2022', '', '', ''),
('2022101114646', '11', '10', '2022', '', '', ''),
('2022101114710', '11', '10', '2022', '', '', ''),
('2022101114742', '11', '10', '2022', '', '', ''),
('2022101114821', '11', '10', '2022', '', '', ''),
('2022101114846', '11', '10', '2022', '', '', ''),
('2022101114936', '11', '10', '2022', '', '', ''),
('202210111504', '11', '10', '2022', '', '', ''),
('2022101115157', '11', '10', '2022', '', '', ''),
('2022101115235', '11', '10', '2022', '', '', ''),
('2022101115322', '11', '10', '2022', '', '', ''),
('2022101115346', '11', '10', '2022', '', '', ''),
('2022101115416', '11', '10', '2022', '', '', ''),
('2022101115452', '11', '10', '2022', '', '', ''),
('2022101115511', '11', '10', '2022', '', '', ''),
('2022101115615', '11', '10', '2022', '', '', ''),
('2022101115640', '11', '10', '2022', '', '', ''),
('202210111573', '11', '10', '2022', '', '', ''),
('2022101115746', '11', '10', '2022', '', '', ''),
('202210111585', '11', '10', '2022', '', '', ''),
('2022101115859', '11', '10', '2022', '', '', ''),
('2022101115925', '11', '10', '2022', '', '', ''),
('2022101115958', '11', '10', '2022', '', '', ''),
('202210112026', '11', '10', '2022', '', '', ''),
('20221011212', '11', '10', '2022', '', '', ''),
('202210112127', '11', '10', '2022', '', '', ''),
('202210112149', '11', '10', '2022', '', '', ''),
('202210112315', '11', '10', '2022', '', '', ''),
('202210112342', '11', '10', '2022', '', '', ''),
('20221011247', '11', '10', '2022', '', '', ''),
('202210112428', '11', '10', '2022', '', '', ''),
('202210112650', '11', '10', '2022', '', '', ''),
('202210112716', '11', '10', '2022', '', '', ''),
('202210112737', '11', '10', '2022', '', '', ''),
('20221011289', '11', '10', '2022', '', '', ''),
('202210112831', '11', '10', '2022', '', '', ''),
('202210112851', '11', '10', '2022', '', '', ''),
('202210112916', '11', '10', '2022', '', '', ''),
('202210112938', '11', '10', '2022', '', '', ''),
('20221011164249', '11', '10', '2022', '', '', ''),
('20221024212739', '24', '10', '2022', '24', '10', '2022'),
('2022111172847', '1', '11', '2022', '', '', ''),
('20221210151937', '10', '12', '2022', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `repeatclient`
--

CREATE TABLE `repeatclient` (
  `Repeatid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Clientid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Leadids` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Salesids` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Refundids` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `repeatclient`
--

INSERT INTO `repeatclient` (`Repeatid`, `Clientid`, `Leadids`, `Salesids`, `Refundids`) VALUES
('Ahsan031676583242022713123617', 'Ahsan03167658324', '2022713123617', '2022713123617', '2022713123617'),
('Ahsan031676583242022713125511', 'Ahsan03167658324', '2022713125511', '2022713125511', '2022713125511'),
('Hassan 030491184682022714204829', 'Hassan 03049118468', '2022714204829', '2022714204829', '2022714204829'),
('Tayyab032269295582022721141634', 'Tayyab03226929558', '2022721141634', '2022721141634', '2022721141634'),
('Test121212122022723215552', 'Test12121212', '2022723215552', '2022723215552', '2022723215552'),
('TAYYAB032269295582022725185752', 'TAYYAB03226929558', '2022725185752', '2022725185752', '2022725185752'),
('Mr Zaid03025502488202272713590', 'Mr Zaid03025502488', '202272713590', '202272713590', '202272713590'),
('tyab03167658324202285104117', 'tyab03167658324', '202285104117', '202285104117', '202285104117'),
('Ahsan031676583242022811234751', 'Ahsan03167658324', '2022811234751', '2022811234751', '2022811234751'),
('Ahsan031676583242022812499', 'Ahsan03167658324', '2022812499', '2022812499', '2022812499'),
('Ahsan0316765832420228124956', 'Ahsan03167658324', '20228124956', '20228124956', '20228124956'),
('Ahsansss03167658324202281241520', 'Ahsansss03167658324', '202281241520', '202281241520', '202281241520'),
('202281243546', '', '202281243546', '202281243546', '202281243546'),
('Instruments0316765832420228124467', 'Instruments03167658324', '20228124467', '20228124467', '20228124467'),
('zaid03025502488202281214323', 'zaid03025502488', '202281214323', '202281214323', '202281214323'),
('202281312518', '', '202281312518', '202281312518', '202281312518'),
('Dream033207577052022815131510', 'Dream03320757705', '2022815131510', '2022815131510', '2022815131510'),
('2022818225212', '', '2022818225212', '2022818225212', '2022818225212'),
('Instruments031676583242022818234511', 'Instruments03167658324', '2022818234511', '2022818234511', '2022818234511'),
('ayesha030255024882022819111546', 'ayesha03025502488', '2022819111546', '2022819111546', '2022819111546'),
('mr qaisar0323441215520221011194', 'mr qaisar03234412155', '20221011194', '20221011194', '20221011194'),
('mr hamza032344121552022101111011', 'mr hamza03234412155', '2022101111011', '2022101111011', '2022101111011'),
('mr masood 030094940662022101111111', 'mr masood 03009494066', '2022101111111', '2022101111111', '2022101111111'),
('mr abdul aziz 03008299736 2022101111219', 'mr abdul aziz 03008299736 ', '2022101111219', '2022101111219', '2022101111219'),
('mr hassan jaffary 032122513952022101111329', 'mr hassan jaffary 03212251395', '2022101111329', '2022101111329', '2022101111329'),
('mr qasim 033344201202022101111419', 'mr qasim 03334420120', '2022101111419', '2022101111419', '2022101111419'),
('mr umair 033454413692022101111556', 'mr umair 03345441369', '2022101111556', '2022101111556', '2022101111556'),
('mr nasir 03334211221 2022101111639', 'mr nasir 03334211221 ', '2022101111639', '2022101111639', '2022101111639'),
('mr haroon 03232440278 2022101111722', 'mr haroon 03232440278 ', '2022101111722', '2022101111722', '2022101111722'),
('mr hafiz abid 03018470583 2022101111822', 'mr hafiz abid 03018470583 ', '2022101111822', '2022101111822', '2022101111822'),
('mr shahid 03334374484 2022101111913', 'mr shahid 03334374484 ', '2022101111913', '2022101111913', '2022101111913'),
('mr tayyab032147411142022101111957', 'mr tayyab03214741114', '2022101111957', '2022101111957', '2022101111957'),
('mr hafeez 03204715335 2022101112038', 'mr hafeez 03204715335 ', '2022101112038', '2022101112038', '2022101112038'),
('mr shadam azam 030084741452022101112121', 'mr shadam azam 03008474145', '2022101112121', '2022101112121', '2022101112121'),
('mr saaed 03008413122 2022101112246', 'mr saaed 03008413122 ', '2022101112246', '2022101112246', '2022101112246'),
('mr jhanzaib03008440546 2022101112331', 'mr jhanzaib03008440546 ', '2022101112331', '2022101112331', '2022101112331'),
('mr customer03009619961202210111243', 'mr customer03009619961', '202210111243', '202210111243', '202210111243'),
('mr ali033506435522022101112430', 'mr ali03350643552', '2022101112430', '2022101112430', '2022101112430'),
('mr customer 03238408512202210111254', 'mr customer 03238408512', '202210111254', '202210111254', '202210111254'),
('mr shakeel hassan 03212779418 2022101112554', 'mr shakeel hassan 03212779418 ', '2022101112554', '2022101112554', '2022101112554'),
('mr kashif 03312109302 2022101112645', 'mr kashif 03312109302 ', '2022101112645', '2022101112645', '2022101112645'),
('mr shafi032189987532022101112721', 'mr shafi03218998753', '2022101112721', '2022101112721', '2022101112721'),
('mr imran haider 03034848445 202210111285', 'mr imran haider 03034848445 ', '202210111285', '202210111285', '202210111285'),
('mr khawar 03238408512 2022101112845', 'mr khawar 03238408512 ', '2022101112845', '2022101112845', '2022101112845'),
('mr raza 03009488893 2022101112934', 'mr raza 03009488893 ', '2022101112934', '2022101112934', '2022101112934'),
('mr salman0312 2098239 2022101113015', 'mr salman0312 2098239 ', '2022101113015', '2022101113015', '2022101113015'),
('mr mansoor 03344555571 2022101113051', 'mr mansoor 03344555571 ', '2022101113051', '2022101113051', '2022101113051'),
('mr kashif 03008418013 2022101113127', 'mr kashif 03008418013 ', '2022101113127', '2022101113127', '2022101113127'),
('mr abid 03002966207 2022101113151', 'mr abid 03002966207 ', '2022101113151', '2022101113151', '2022101113151'),
('mr naeeem 03088088808 2022101113220', 'mr naeeem 03088088808 ', '2022101113220', '2022101113220', '2022101113220'),
('mr ijaz 033369745662022101113250', 'mr ijaz 03336974566', '2022101113250', '2022101113250', '2022101113250'),
('mr customer 03314512961 2022101113313', 'mr customer 03314512961 ', '2022101113313', '2022101113313', '2022101113313'),
('mr yusaf 03218862613 2022101113344', 'mr yusaf 03218862613 ', '2022101113344', '2022101113344', '2022101113344'),
('mr imran ali 03218478095202210111349', 'mr imran ali 03218478095', '202210111349', '202210111349', '202210111349'),
('mr asif 03214930786202210111351', 'mr asif 03214930786', '202210111351', '202210111351', '202210111351'),
('mr shareef 03008401520 2022101113528', 'mr shareef 03008401520 ', '2022101113528', '2022101113528', '2022101113528'),
('mr taimoor 03004015659 2022101113555', 'mr taimoor 03004015659 ', '2022101113555', '2022101113555', '2022101113555'),
('mr rizwan  031150009002022101113620', 'mr rizwan  03115000900', '2022101113620', '2022101113620', '2022101113620'),
('mr nadeem  030021995142022101113642', 'mr nadeem  03002199514', '2022101113642', '2022101113642', '2022101113642'),
('mr customer 03467199250 202210111378', 'mr customer 03467199250 ', '202210111378', '202210111378', '202210111378'),
('mr masood 03036317642 2022101113738', 'mr masood 03036317642 ', '2022101113738', '2022101113738', '2022101113738'),
('mr shoib 032392000912022101113756', 'mr shoib 03239200091', '2022101113756', '2022101113756', '2022101113756'),
('mr sajid ali 031167411712022101113818', 'mr sajid ali 03116741171', '2022101113818', '2022101113818', '2022101113818'),
('mr junaid 03134345008 2022101113851', 'mr junaid 03134345008 ', '2022101113851', '2022101113851', '2022101113851'),
('mr talha033348369412022101113925', 'mr talha03334836941', '2022101113925', '2022101113925', '2022101113925'),
('mr mobeen 03072801927 2022101114013', 'mr mobeen 03072801927 ', '2022101114013', '2022101114013', '2022101114013'),
('mr umair 033364609302022101114038', 'mr umair 03336460930', '2022101114038', '2022101114038', '2022101114038'),
('mr naeem babr 03348088808202210111412', 'mr naeem babr 03348088808', '202210111412', '202210111412', '202210111412'),
('ms fatima hassan 032184990222022101114128', 'ms fatima hassan 03218499022', '2022101114128', '2022101114128', '2022101114128'),
('mr asif 03367634429 2022101114211', 'mr asif 03367634429 ', '2022101114211', '2022101114211', '2022101114211'),
('mr tariq030084017042022101114239', 'mr tariq03008401704', '2022101114239', '2022101114239', '2022101114239'),
('mr zain 03248043501 202210111438', 'mr zain 03248043501 ', '202210111438', '202210111438', '202210111438'),
('mr hammad hassan 03248043501 2022101114337', 'mr hammad hassan 03248043501 ', '2022101114337', '2022101114337', '2022101114337'),
('mr hammad hassan 032184323612022101114352', 'mr hammad hassan 03218432361', '2022101114352', '2022101114352', '2022101114352'),
('mr naeem 03335164136 2022101114646', 'mr naeem 03335164136 ', '2022101114646', '2022101114646', '2022101114646'),
('mr aslam 03225544334  2022101114710', 'mr aslam 03225544334  ', '2022101114710', '2022101114710', '2022101114710'),
('mr basit030081181102022101114742', 'mr basit03008118110', '2022101114742', '2022101114742', '2022101114742'),
('mr tufail033346232152022101114821', 'mr tufail03334623215', '2022101114821', '2022101114821', '2022101114821'),
('mr aslam032255443342022101114846', 'mr aslam03225544334', '2022101114846', '2022101114846', '2022101114846'),
('mr zahid 032184519312022101114936', 'mr zahid 03218451931', '2022101114936', '2022101114936', '2022101114936'),
('mr sadan 03334431753202210111504', 'mr sadan 03334431753', '202210111504', '202210111504', '202210111504'),
('mr ikram 03212253133 2022101115157', 'mr ikram 03212253133 ', '2022101115157', '2022101115157', '2022101115157'),
('mr ikram 032143669812022101115235', 'mr ikram 03214366981', '2022101115235', '2022101115235', '2022101115235'),
('mr zia ul rehman030085288502022101115322', 'mr zia ul rehman03008528850', '2022101115322', '2022101115322', '2022101115322'),
('mr nasir 030085288502022101115346', 'mr nasir 03008528850', '2022101115346', '2022101115346', '2022101115346'),
('mr arshad 03334521866 2022101115416', 'mr arshad 03334521866 ', '2022101115416', '2022101115416', '2022101115416'),
('mr hussnain 032140867222022101115452', 'mr hussnain 03214086722', '2022101115452', '2022101115452', '2022101115452'),
('mr azam 03009476234 2022101115511', 'mr azam 03009476234 ', '2022101115511', '2022101115511', '2022101115511'),
('mr raheel 034682208222022101115615', 'mr raheel 03468220822', '2022101115615', '2022101115615', '2022101115615'),
('mr ikram  03212253133 2022101115640', 'mr ikram  03212253133 ', '2022101115640', '2022101115640', '2022101115640'),
('customer 03212253133 202210111573', 'customer 03212253133 ', '202210111573', '202210111573', '202210111573'),
('customer 03334531515 2022101115746', 'customer 03334531515 ', '2022101115746', '2022101115746', '2022101115746'),
('mr umair 03249477904202210111585', 'mr umair 03249477904', '202210111585', '202210111585', '202210111585'),
('mr wajid  03009498346 2022101115859', 'mr wajid  03009498346 ', '2022101115859', '2022101115859', '2022101115859'),
('mr arshad raza 033345218662022101115925', 'mr arshad raza 03334521866', '2022101115925', '2022101115925', '2022101115925'),
('mr javed naseem 030092772292022101115958', 'mr javed naseem 03009277229', '2022101115958', '2022101115958', '2022101115958'),
('mr saad 03008152428 202210112026', 'mr saad 03008152428 ', '202210112026', '202210112026', '202210112026'),
('mr ilyas 03024404155 20221011212', 'mr ilyas 03024404155 ', '20221011212', '20221011212', '20221011212'),
('mr shadb ali 03018686648202210112127', 'mr shadb ali 03018686648', '202210112127', '202210112127', '202210112127'),
('mr asif ali 03004433495 202210112149', 'mr asif ali 03004433495 ', '202210112149', '202210112149', '202210112149'),
('mr faizn03208431342202210112315', 'mr faizn03208431342', '202210112315', '202210112315', '202210112315'),
('mr shahid mehmood 03002595245 202210112342', 'mr shahid mehmood 03002595245 ', '202210112342', '202210112342', '202210112342'),
('mr farhan 03144083379 20221011247', 'mr farhan 03144083379 ', '20221011247', '20221011247', '20221011247'),
('mr arshad03009476060 202210112428', 'mr arshad03009476060 ', '202210112428', '202210112428', '202210112428'),
('mr arshad03218024139202210112650', 'mr arshad03218024139', '202210112650', '202210112650', '202210112650'),
('mr amir 03216592363 202210112716', 'mr amir 03216592363 ', '202210112716', '202210112716', '202210112716'),
('mr ibrar03216592363202210112737', 'mr ibrar03216592363', '202210112737', '202210112737', '202210112737'),
('mr hussnain ali 03457870088 20221011289', 'mr hussnain ali 03457870088 ', '20221011289', '20221011289', '20221011289'),
('mr irfan 03327821507 202210112831', 'mr irfan 03327821507 ', '202210112831', '202210112831', '202210112831'),
('mr asad 03214722052  202210112851', 'mr asad 03214722052  ', '202210112851', '202210112851', '202210112851'),
('mr waqas ahmed 03123185496202210112916', 'mr waqas ahmed 03123185496', '202210112916', '202210112916', '202210112916'),
('mr customer 03004435207202210112938', 'mr customer 03004435207', '202210112938', '202210112938', '202210112938'),
('20221011164249', '', '20221011164249', '20221011164249', '20221011164249'),
('Test12345678920221024212739', 'Test123456789', '20221024212739', '20221024212739', '20221024212739'),
('test1234567892022111172847', 'test123456789', '2022111172847', '2022111172847', '2022111172847'),
('Ahsan developer testingAhsan developer testing20221210151937', 'Ahsan developer testingAhsan developer testing', '20221210151937', '20221210151937', '20221210151937');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `Serviceid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Service_Type` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Trip_Type` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Departure_Date` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Return_Date` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Airlineid` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PAx_Details` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Free_Text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Class_of_travel` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desciptionfreetext` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`Serviceid`, `leadid`, `Service_Type`, `Trip_Type`, `Departure_Date`, `Return_Date`, `Airlineid`, `PAx_Details`, `Free_Text`, `Class_of_travel`, `desciptionfreetext`) VALUES
('2022713123617', '2022713123617', 'Air', 'One Way', '2022-07-13T14:34', '2022-07-13T15:34', 'ISB', '1 child 2 adult', 'ghfgffhfghfg', 'Economy', 'ghfgffhfghfg'),
('2022713125511', '2022713125511', 'Air', 'One Way', '2022-07-13T12:58', '2022-07-13T12:57', 'gjg', 'gghj', 'testinf', 'business', 'testinf'),
('2022714204829', '2022714204829', 'Air', 'One Way', '2022-07-31T20:48', '', '', '', '', 'Economy', ''),
('2022721141634', '2022721141634', 'Air', 'Two Way', '2022-08-21T14:15', '2022-09-21T14:15', 'ss', 'sss', 'ssss', 'Economy', 'ssss'),
('2022723215552', '2022723215552', 'Air', 'Two Way', '2022-07-26T21:55', '2022-07-30T21:55', '', '', 'testing', 'Economy', 'testing'),
('2022725185752', '2022725185752', 'Air', 'Two Way', '2022-07-27T18:55', '2022-07-29T18:55', 'PIA', 'N.A', 'test123', 'Economy', 'test123'),
('202272713590', '202272713590', 'Air', 'One Way', '2022-08-10T13:58', '', '', '', '', 'Economy', ''),
('202285104117', '202285104117', 'Air', 'One Way', '2022-08-05T00:39', '2022-10-01T00:00', 'zzzzz', 'zzzzzzzzz', 'dsdsddd', 'business', 'dsdsddd'),
('2022811234751', '2022811234751', 'Air', 'One Way', '', '', '', '', '', 'Economy', ''),
('2022812499', '2022812499', 'Air', 'One Way', '2022-09-02T04:09', '2022-08-27T04:08', 'dsdd', 'adsa', 'sdas', 'Economy', 'sdas'),
('20228124956', '20228124956', 'Air', 'One Way', '2022-09-02T04:09', '2022-08-27T04:08', 'dsdd', 'adsa', 'sdas', 'Economy', 'sdas'),
('202281241520', '202281241520', 'Air', 'One Way', '', '', '', '', '', 'Economy', ''),
('202281243546', '202281243546', 'Air', 'One Way', '', '', 'gjg', '', '', 'Economy', ''),
('20228124467', '20228124467', 'Air', 'Two Way', '2022-09-02T04:45', '2022-09-10T04:45', 'gjg', 'sdfsd', 'sdsf', 'others', 'sdsf'),
('202281214323', '202281214323', 'Air', 'Two Way', '2022-07-31T14:31', '2022-07-31T11:50', 'test1', 'test1', 'test1', 'Economy', 'test1'),
('202281312518', '202281312518', 'Air', 'Two Way', '2022-09-08T12:05', '2022-09-02T12:05', 'test1', 'test1', 'test1', 'business', 'test1'),
('2022815131510', '2022815131510', 'Air', 'One Way', '2022-08-15T13:14', '', '', '', '', 'Economy', ''),
('2022818225212', '2022818225212', 'Air', 'Two Way', '2022-08-18T15:03', '2022-08-18T15:03', '', 'dddddd', 'ddddddd', 'business', 'ddddddd'),
('2022818234511', '2022818234511', 'Air', 'One Way', '2022-08-05T23:44', '2022-08-12T23:44', 'sss', 's', 'sssss', 'Economy', 'sssss'),
('2022819111546', '2022819111546', 'Air', 'One Way', '', '', '', '', 'sssd', 'Economy', 'sssd'),
('20221011194', '20221011194', 'Air', 'One Way', '2022-10-19T01:08', '2022-10-29T01:08', '', '', '', 'Economy', ''),
('2022101111011', '2022101111011', 'Air', 'Two Way', '2022-10-27T01:08', '2022-11-10T01:08', '', '', '', 'Economy', ''),
('2022101111111', '2022101111111', 'Air', 'Two Way', '2022-10-15T01:08', '2022-11-01T01:08', '', '', '', 'Economy', ''),
('2022101111219', '2022101111219', 'Air', 'Two Way', '2022-10-22T01:08', '2022-11-04T01:08', '', '', '', 'Economy', ''),
('2022101111329', '2022101111329', 'Air', 'Two Way', '2022-10-29T01:08', '2022-11-04T01:08', '', '', '', 'Economy', ''),
('2022101111419', '2022101111419', 'Air', 'Two Way', '2022-11-04T01:08', '2022-11-04T01:08', '', '', '', 'Economy', ''),
('2022101111556', '2022101111556', 'Air', 'Two Way', '2022-11-04T01:08', '2022-11-23T01:08', '', '', '', 'Economy', ''),
('2022101111639', '2022101111639', 'Air', 'Two Way', '2022-11-17T01:08', '2022-12-03T01:08', '', '', '', 'Economy', ''),
('2022101111722', '2022101111722', 'Air', 'Two Way', '2022-11-17T01:08', '2022-12-03T01:08', '', '', '', 'Economy', ''),
('2022101111822', '2022101111822', 'Air', 'One Way', '2022-12-10T01:08', '2022-12-03T01:08', '', '', '', 'Economy', ''),
('2022101111913', '2022101111913', 'Air', 'Two Way', '2022-11-03T01:08', '2022-11-10T01:08', '', '', '', 'Economy', ''),
('2022101111957', '2022101111957', 'Air', 'Two Way', '2022-11-05T01:08', '2022-11-16T01:08', '', '', '', 'Economy', ''),
('2022101112038', '2022101112038', 'Air', 'Two Way', '2022-11-11T01:08', '2022-12-02T01:08', '', '', '', 'Economy', ''),
('2022101112121', '2022101112121', 'Air', 'Two Way', '2022-11-05T01:08', '2022-12-02T01:08', '', '', '', 'Economy', ''),
('2022101112246', '2022101112246', 'Air', 'Two Way', '2022-10-14T01:08', '2022-10-24T01:08', '', '', '', 'Economy', ''),
('2022101112331', '2022101112331', 'Air', 'Two Way', '2022-10-16T01:08', '2022-11-04T01:08', '', '', '', 'Economy', ''),
('202210111243', '202210111243', 'Air', 'Two Way', '2022-10-16T01:08', '2022-11-04T01:08', '', '', '', 'Economy', ''),
('2022101112430', '2022101112430', 'Air', 'One Way', '2022-10-16T01:08', '2022-11-04T01:08', '', '', '', 'Economy', ''),
('202210111254', '202210111254', 'Air', 'One Way', '2022-11-02T01:08', '2022-11-04T01:08', '', '', '', 'Economy', ''),
('2022101112554', '2022101112554', 'Air', 'Two Way', '2022-11-02T01:08', '2022-11-29T01:08', '', '', '', 'Economy', ''),
('2022101112645', '2022101112645', 'Air', 'One Way', '2022-11-24T01:08', '2022-11-29T01:08', '', '', '', 'Economy', ''),
('2022101112721', '2022101112721', 'Air', 'One Way', '2022-11-02T01:08', '2022-11-29T01:08', '', '', '', 'Economy', ''),
('202210111285', '202210111285', 'Air', 'Two Way', '2022-11-02T01:08', '2022-11-29T01:08', '', '', '', 'Economy', ''),
('2022101112845', '2022101112845', 'Air', 'One Way', '2022-11-06T01:08', '2022-11-29T01:08', '', '', '', 'Economy', ''),
('2022101112934', '2022101112934', 'Air', 'Two Way', '2022-11-06T01:08', '2022-11-14T01:08', '', '', '', 'Economy', ''),
('2022101113015', '2022101113015', 'Air', 'Two Way', '2022-11-20T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113051', '2022101113051', 'Air', 'One Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113127', '2022101113127', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113151', '2022101113151', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113220', '2022101113220', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113250', '2022101113250', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113313', '2022101113313', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113344', '2022101113344', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('202210111349', '202210111349', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('202210111351', '202210111351', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113528', '2022101113528', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113555', '2022101113555', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113620', '2022101113620', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113642', '2022101113642', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('202210111378', '202210111378', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113738', '2022101113738', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113756', '2022101113756', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113818', '2022101113818', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113851', '2022101113851', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101113925', '2022101113925', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114013', '2022101114013', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114038', '2022101114038', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('202210111412', '202210111412', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114128', '2022101114128', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114211', '2022101114211', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114239', '2022101114239', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('202210111438', '202210111438', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114337', '2022101114337', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114352', '2022101114352', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114646', '2022101114646', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114710', '2022101114710', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114742', '2022101114742', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114821', '2022101114821', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114846', '2022101114846', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101114936', '2022101114936', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('202210111504', '202210111504', 'Air', 'Two Way', '2022-11-25T01:08', '2022-12-20T01:08', '', '', '', 'Economy', ''),
('2022101115157', '2022101115157', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115235', '2022101115235', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115322', '2022101115322', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115346', '2022101115346', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115416', '2022101115416', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115452', '2022101115452', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115511', '2022101115511', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115615', '2022101115615', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115640', '2022101115640', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210111573', '202210111573', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115746', '2022101115746', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210111585', '202210111585', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115859', '2022101115859', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115925', '2022101115925', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('2022101115958', '2022101115958', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112026', '202210112026', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('20221011212', '20221011212', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112127', '202210112127', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112149', '202210112149', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112315', '202210112315', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112342', '202210112342', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('20221011247', '20221011247', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112428', '202210112428', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112650', '202210112650', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112716', '202210112716', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112737', '202210112737', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('20221011289', '20221011289', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112831', '202210112831', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112851', '202210112851', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112916', '202210112916', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('202210112938', '202210112938', 'Air', 'Two Way', '2022-11-11T01:51', '2022-12-10T01:51', '', '', '', 'Economy', ''),
('20221011164249', '20221011164249', 'Air', 'One Way', '', '', '', '', 'ssss', 'Economy', 'ssss'),
('20221024212739', '20221024212739', 'Air', 'One Way', '2022-10-29T21:27', '2022-11-30T21:27', '', '', 'Test 123 !23 !23', 'Economy', 'Test 123 !23 !23'),
('2022111172847', '2022111172847', 'Air', 'One Way', '2022-11-09T17:28', '2022-11-23T17:28', '', '', 'test112233', 'Economy', 'test112233'),
('20221210151937', '20221210151937', 'Air', 'One Way', '2022-12-22T15:18', '2022-12-22T15:18', '', '', 'This is to test the system for additional features ', 'business', 'This is to test the system for additional features ');

-- --------------------------------------------------------

--
-- Table structure for table `sucesssales`
--

CREATE TABLE `sucesssales` (
  `salesleadid` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salesid` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `potentialsales` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salesamount` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PNRnumbers` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salesdoneby` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leaddoneby` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salesdate` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leadssalesProfit` varchar(1000) NOT NULL,
  `refundleadssalescheck` varchar(1000) NOT NULL,
  `refundleadssalesamount` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sucesssales`
--

INSERT INTO `sucesssales` (`salesleadid`, `salesid`, `potentialsales`, `salesamount`, `PNRnumbers`, `salesdoneby`, `leaddoneby`, `salesdate`, `leadssalesProfit`, `refundleadssalescheck`, `refundleadssalesamount`) VALUES
('2022713123617', '2022818233817', '1000', 'aa22', '42343244', '1', '20', '2022-8-18/23:38:17', '700', 'Refund', '300'),
('2022713125511', '2022818234118', '9500', 'aa', '', '1', '1', '2022-8-18/23:41:18', '9500', 'Refund', ''),
('2022714204829', '2022813144122', '0', '0', '', '1', '1', '2022-8-13/14:41:22', '0', '', ''),
('2022721141634', '2022813142241', '10500', '500', '', '1', '1', '2022-8-13/14:22:41', '9500', 'Refund', '500'),
('2022723215552', '202272322728', '5500', '15000', 'PNR12123', '1', '1', '2022-7-23/22:7:28', '-9500', 'NoRefund', ''),
('2022725185752', '2022725185944', '10500', '9000', '', '1', '1', '2022-7-25/18:59:44', '1500', 'NoRefund', ''),
('202272713590', '20228151324', '', '', '', '1', '1', '2022-8-15/13:2:4', '0', '', ''),
('202285104117', '202285105018', '1000', '500', '5555', '1', '1', '2022-8-5/10:50:18', '200', 'Refund', '300'),
('2022811234751', '202281215854', '', '', '', '1', '1', '2022-8-12/1:58:54', '-400', 'Refund', '400'),
('2022812499', '', '1000', '', '', '', '1', '', '', '', ''),
('20228124956', '202281241430', '1000', '', '', '1', '1', '2022-8-12/4:14:30', '1000', '', ''),
('202281241520', '202281242451', '', '', '', '1', '1', '2022-8-12/4:24:51', '0', '', ''),
('202281243546', '202281513233', '', '', '', '1', '1', '2022-8-15/13:2:33', '0', '', ''),
('20228124467', '202281513223', '1000', '', '', '1', '1', '2022-8-15/13:2:23', '1000', '', ''),
('202281214323', '20228131244', '15000', '', '42343244777', '1', '1', '2022-8-13/12:4:4', '14600', 'Refund', '400'),
('202281312518', '202281565229', '10', '', '5555', '1', '1', '2022-8-15/6:52:29', '8', 'Refund', '2'),
('2022815131510', '20228181210', '1500', '', '', '1', '1', '2022-8-18/12:1:0', '1500', '', ''),
('2022818225212', '2022819111518', '3333333', '', 'd', '1', '1', '2022-8-19/11:15:18', '3333000', 'Refund', '333'),
('2022818234511', '202281823460', '2222', '', '', '1', '20', '2022-8-18/23:46:0', '2222', '', ''),
('2022819111546', '20221110114458', '678,401', '', '', '1', '1', '2022-11-10/11:44:58', '678', '', ''),
('20221011194', '', '', '', '', '', '23', '', '', '', ''),
('2022101111011', '', '', '', '', '', '23', '', '', '', ''),
('2022101111111', '', '', '', '', '', '23', '', '', '', ''),
('2022101111219', '', '', '', '', '', '23', '', '', '', ''),
('2022101111329', '', '', '', '', '', '23', '', '', '', ''),
('2022101111419', '', '', '', '', '', '23', '', '', '', ''),
('2022101111556', '', '', '', '', '', '23', '', '', '', ''),
('2022101111639', '', '', '', '', '', '23', '', '', '', ''),
('2022101111722', '', '', '', '', '', '23', '', '', '', ''),
('2022101111822', '', '', '', '', '', '23', '', '', '', ''),
('2022101111913', '', '', '', '', '', '23', '', '', '', ''),
('2022101111957', '', '', '', '', '', '23', '', '', '', ''),
('2022101112038', '', '', '', '', '', '23', '', '', '', ''),
('2022101112121', '', '', '', '', '', '23', '', '', '', ''),
('2022101112246', '', '', '', '', '', '23', '', '', '', ''),
('2022101112331', '', '', '', '', '', '23', '', '', '', ''),
('202210111243', '', '', '', '', '', '23', '', '', '', ''),
('2022101112430', '', '', '', '', '', '23', '', '', '', ''),
('202210111254', '', '', '', '', '', '23', '', '', '', ''),
('2022101112554', '', '', '', '', '', '23', '', '', '', ''),
('2022101112645', '', '', '', '', '', '23', '', '', '', ''),
('2022101112721', '', '', '', '', '', '23', '', '', '', ''),
('202210111285', '', '', '', '', '', '23', '', '', '', ''),
('2022101112845', '', '', '', '', '', '23', '', '', '', ''),
('2022101112934', '', '', '', '', '', '23', '', '', '', ''),
('2022101113015', '', '', '', '', '', '23', '', '', '', ''),
('2022101113051', '', '', '', '', '', '23', '', '', '', ''),
('2022101113127', '', '', '', '', '', '23', '', '', '', ''),
('2022101113151', '', '', '', '', '', '23', '', '', '', ''),
('2022101113220', '', '', '', '', '', '23', '', '', '', ''),
('2022101113250', '', '', '', '', '', '23', '', '', '', ''),
('2022101113313', '', '', '', '', '', '23', '', '', '', ''),
('2022101113344', '', '', '', '', '', '23', '', '', '', ''),
('202210111349', '', '', '', '', '', '23', '', '', '', ''),
('202210111351', '', '', '', '', '', '23', '', '', '', ''),
('2022101113528', '', '', '', '', '', '23', '', '', '', ''),
('2022101113555', '', '', '', '', '', '23', '', '', '', ''),
('2022101113620', '', '', '', '', '', '23', '', '', '', ''),
('2022101113642', '', '', '', '', '', '23', '', '', '', ''),
('202210111378', '', '', '', '', '', '23', '', '', '', ''),
('2022101113738', '', '', '', '', '', '23', '', '', '', ''),
('2022101113756', '', '', '', '', '', '23', '', '', '', ''),
('2022101113818', '', '', '', '', '', '23', '', '', '', ''),
('2022101113851', '', '', '', '', '', '23', '', '', '', ''),
('2022101113925', '', '', '', '', '', '23', '', '', '', ''),
('2022101114013', '', '', '', '', '', '23', '', '', '', ''),
('2022101114038', '', '', '', '', '', '23', '', '', '', ''),
('202210111412', '', '', '', '', '', '23', '', '', '', ''),
('2022101114128', '', '', '', '', '', '23', '', '', '', ''),
('2022101114211', '', '', '', '', '', '23', '', '', '', ''),
('2022101114239', '', '', '', '', '', '23', '', '', '', ''),
('202210111438', '', '', '', '', '', '23', '', '', '', ''),
('2022101114337', '', '', '', '', '', '23', '', '', '', ''),
('2022101114352', '', '', '', '', '', '23', '', '', '', ''),
('2022101114646', '', '', '', '', '', '23', '', '', '', ''),
('2022101114710', '', '', '', '', '', '23', '', '', '', ''),
('2022101114742', '', '', '', '', '', '23', '', '', '', ''),
('2022101114821', '', '', '', '', '', '23', '', '', '', ''),
('2022101114846', '', '', '', '', '', '23', '', '', '', ''),
('2022101114936', '', '', '', '', '', '23', '', '', '', ''),
('202210111504', '', '', '', '', '', '23', '', '', '', ''),
('2022101115157', '', '', '', '', '', '23', '', '', '', ''),
('2022101115235', '', '', '', '', '', '23', '', '', '', ''),
('2022101115322', '', '', '', '', '', '23', '', '', '', ''),
('2022101115346', '', '', '', '', '', '23', '', '', '', ''),
('2022101115416', '', '', '', '', '', '23', '', '', '', ''),
('2022101115452', '', '', '', '', '', '23', '', '', '', ''),
('2022101115511', '', '', '', '', '', '23', '', '', '', ''),
('2022101115615', '', '', '', '', '', '23', '', '', '', ''),
('2022101115640', '', '', '', '', '', '23', '', '', '', ''),
('202210111573', '', '', '', '', '', '23', '', '', '', ''),
('2022101115746', '', '', '', '', '', '23', '', '', '', ''),
('202210111585', '', '', '', '', '', '23', '', '', '', ''),
('2022101115859', '', '', '', '', '', '23', '', '', '', ''),
('2022101115925', '', '', '', '', '', '23', '', '', '', ''),
('2022101115958', '', '', '', '', '', '23', '', '', '', ''),
('202210112026', '', '', '', '', '', '23', '', '', '', ''),
('20221011212', '', '', '', '', '', '23', '', '', '', ''),
('202210112127', '', '', '', '', '', '23', '', '', '', ''),
('202210112149', '', '', '', '', '', '23', '', '', '', ''),
('202210112315', '', '', '', '', '', '23', '', '', '', ''),
('202210112342', '', '', '', '', '', '23', '', '', '', ''),
('20221011247', '', '', '', '', '', '23', '', '', '', ''),
('202210112428', '', '', '', '', '', '23', '', '', '', ''),
('202210112650', '', '', '', '', '', '23', '', '', '', ''),
('202210112716', '', '', '', '', '', '23', '', '', '', ''),
('202210112737', '', '', '', '', '', '23', '', '', '', ''),
('20221011289', '', '', '', '', '', '23', '', '', '', ''),
('202210112831', '', '', '', '', '', '23', '', '', '', ''),
('202210112851', '', '', '', '', '', '23', '', '', '', ''),
('202210112916', '', '', '', '', '', '23', '', '', '', ''),
('202210112938', '', '', '', '', '', '23', '', '', '', ''),
('20221011164249', '', '', '', '', '', '1', '', '', '', ''),
('20221024212739', '2022102421290', '', '', '', '1', '1', '2022-10-24/21:29:0', '0', '', ''),
('2022111172847', '', '', '', '', '', '25', '', '', '', ''),
('20221210151937', '', '', '', '', '', '1', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `doctor_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = doctor,3=patient'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `doctor_id`, `name`, `address`, `contact`, `username`, `password`, `type`) VALUES
(1, 0, 'Administrator', '', '', 'admin', 'admin123', 1),
(7, 0, 'George Wilson', 'Sample Only', '+18456-5455-55', 'gwilson@sample.com', 'd40242fb23c45206fadee4e2418f274f', 3),
(9, 2, 'DR.James Smith, M.D.', 'Sample Clinic Address', '+1456 554 55623', 'jsmith@sample.com', 'jsmith123', 2),
(10, 3, 'DR.Claire Blake, M.D.', 'Sample Only', '+5465 555 623', 'cblake@sample.com', 'blake123', 2),
(11, 0, 'Sample Only', 'Sample', '+5465 546 4556', 'sample@sample.com', '4e91b1cbe42b5c884de47d4c7fda0555', 3),
(15, 9, 'DR.Sample Doctor, M.D.', 'Sample Address', '+1235 456 623', 'sample2@sample.com', 'sample123', 2),
(19, 0, 'Ahsan RAza', 'Null', 'Null', 'admin', 'admin123', 1),
(20, 0, 'ahsan', 'Null', 'Null', 'AhsanRAza', '12345', 2),
(21, 0, 'ahsan', 'Null', 'Null', 'ahsan', '12345', 1),
(23, 0, 'Ayesha', 'Null', 'Null', 'Ayesha', '1234', 1),
(24, 0, 'zaid', 'Null', 'Null', 'zaid', '1234', 2),
(25, 0, 'test', 'Null', 'Null', 'test1', 'test', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines_list`
--
ALTER TABLE `airlines_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airport_list`
--
ALTER TABLE `airport_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_flight`
--
ALTER TABLE `booked_flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_list`
--
ALTER TABLE `flight_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`leadno`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines_list`
--
ALTER TABLE `airlines_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `airport_list`
--
ALTER TABLE `airport_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booked_flight`
--
ALTER TABLE `booked_flight`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flight_list`
--
ALTER TABLE `flight_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `leadno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
