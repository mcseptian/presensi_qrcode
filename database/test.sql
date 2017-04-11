-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2017 at 12:30 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `meeting_id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `timestamp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'Operator Call Center');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `id` varchar(20) NOT NULL,
  `NRP` varchar(15) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(75) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `tahun_angkatan` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `tanggal_join` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id`, `NRP`, `nama`, `password`, `email`, `id_departemen`, `tahun_angkatan`, `gender`, `no_telp`, `tanggal_join`, `status`) VALUES
('11202241063', '9', 'Mohamad Baharudin Jamin', 'jamin', 'jamin@uny.ac.id', 2, 2011, 'L', '5019', '1411200178', 1),
('11417141040', '65', 'M. Septian Adi Cahyono', 'septian', 'septian@uny.ac.id', 3, 2011, 'L', '5004', '1411200178', 1),
('11604221045', '15', 'M. Gunawan Agung Wibowo', 'agung', 'agung@uny.ac.id', 2, 2011, 'L', '5025', '1411200178', 1),
('12202244039', '34', 'Kanthy Zukhrifah', 'kanthy', 'kanthy@uny.ac.id', 2, 2012, 'P', '5044', '1411200178', 1),
('12305141032', '17', 'Seli Rosriana', 'seli', 'seli@uny.ac.id', 2, 2012, 'P', '5027', '1411200178', 1),
('12413241035', '62', 'Nur Hidayat', 'nurha', 'nurha@uny.ac.id', 3, 2012, 'L', '5005', '1411200178', 1),
('12507134021', '38', 'Febri Suci Rahmahwati', 'febri', 'febri@uny.ac.id', 2, 2012, 'P', '5048', '1411200178', 1),
('12520241039', '63', 'Aris Nugroho', 'aris', 'aris@uny.ac.id', 3, 2012, 'L', '5001', '1411200178', 1),
('12520241044', '56', 'Maruf Aminudin', 'maruf', 'maruf@uny.ac.id', 2, 2011, 'L', '5066', '1411200178', 1),
('12520241045', '61', 'Isna Fahrizal', 'isna', 'isna@uny.ac.id', 3, 2012, 'L', '5002', '1411200178', 1),
('12520244033', '2', 'Saptaka Trihantoro', 'saptaka', 'saptaka@uny.ac.id', 2, 2012, 'L', '5012', '1411200178', 1),
('13102241011', '13', 'Uswatun Khasanah', 'uswatun', 'uswatun@uny.ac.id', 2, 2013, 'P', '5023', '1411200178', 1),
('13102241014', '11', 'Fitri Ekasari', 'fitri', 'fitri@uny.ac.id', 2, 2013, 'P', '5021', '1411200178', 1),
('13104241055', '14', 'Dian Septika Rini', 'dian', 'dian@uny.ac.id', 2, 2013, 'P', '5024', '1411200178', 1),
('13110241012', '3', 'Yulia Fauzi', 'yulia', 'yulia@uny.ac.id', 2, 2013, 'P', '5013', '1411200178', 1),
('13111241001', '12', 'Rizky Aulia Soraya', 'rizky', 'rizky@uny.ac.id', 2, 2013, 'P', '5022', '1411200178', 1),
('13111241061', '20', 'Ingrid Maharani Basuki', 'ingrid', 'ingrid@uny.ac.id', 2, 2013, 'P', '5030', '1411200178', 1),
('13202241023', '16', 'Muvida Aulia Rahman', 'muvida', 'muvida@uny.ac.id', 2, 2013, 'P', '5026', '1411200178', 1),
('13203241016', '57', 'Oktafainas Onaldi', 'oktafainas', 'oktafainas@uny.ac.id', 2, 2013, 'P', '5067', '1411200178', 1),
('13301241046', '24', 'Rizqi Khilda Amalia', 'rizqi', 'rizqi@uny.ac.id', 2, 2013, 'P', '5034', '1411200178', 1),
('13302241003', '27', 'Fidiyah Nuraini', 'fidiyah', 'fidiyah@uny.ac.id', 2, 2013, 'P', '5037', '1411200178', 1),
('13308141026', '25', 'Ningtyas Yuniar Respati', 'ningtyas', 'ningtyas@uny.ac.id', 2, 2013, 'P', '5035', '1411200178', 1),
('13308141051', '26', 'Vella Liani', 'vella', 'vella@uny.ac.id', 2, 2013, 'P', '5036', '1411200178', 1),
('13308141056', '23', 'Briliana Suryani Kusumakinasih', 'briliana', 'briliana@uny.ac.id', 2, 2013, 'P', '5033', '1411200178', 1),
('13511249001', '21', 'Indriani Eka Pratiwi', 'indriani', 'indriani@uny.ac.id', 2, 2013, 'P', '5031', '1411200178', 1),
('13802241038', '18', 'Cahyani Arumdani', 'arumdani', 'arumdani@uny.ac.id', 2, 2013, 'P', '5028', '1411200178', 1),
('13802244005', '4', 'Budi Ekowati', 'ekowati', 'ekowati@uny.ac.id', 2, 2013, 'P', '5014', '1411200178', 1),
('13803241090', '10', 'Mutiah Mutiara Firdaus', 'mutiah', 'mutiah@uny.ac.id', 2, 2013, 'P', '5020', '1411200178', 1),
('13808141049', '19', 'Dwi Isnawati', 'dwi', 'dwi@uny.ac.id', 2, 2013, 'P', '5029', '1411200178', 1),
('13808141051', '7', 'Rinawati Dyah Pertiwi', 'rinawati', 'rinawati@uny.ac.id', 2, 2013, 'P', '5017', '1411200178', 1),
('14102241043', '28', 'Ketfiyah', 'ketfiyah', 'ketfiyah@uny.ac.id', 2, 2014, 'P', '5038', '1411200178', 1),
('14111244003', '35', 'Hana Ika Safitri', 'hana', 'hana@uny.ac.id', 2, 2014, 'P', '5045', '1411200178', 1),
('14202241019', '29', 'Loevyani Eka Murnantini Putri', 'loevyani', 'loevyani@uny.ac.id', 2, 2014, 'P', '5039', '1411200178', 1),
('14210141033', '36', 'Haryanto', 'haryanto', 'haryanto@uny.ac.id', 2, 2014, 'L', '5046', '1411200178', 1),
('14210144018', '31', 'Nisa Karina Widhiastuti', 'nisa', 'nisa@uny.ac.id', 2, 2014, 'P', '5041', '1411200178', 1),
('14401244005', '30', 'Halimah Chasanah', 'halimah', 'halimah@uny.ac.id', 2, 2014, 'P', '5040', '1411200178', 1),
('14406241021', '32', 'Fiqhi Amalina Islami', 'fiqhi', 'fiqhi@uny.ac.id', 2, 2014, 'P', '5042', '1411200178', 1),
('14407141009', '37', 'Moh. Samsul Arifin', 'samsul', 'samsul@uny.ac.id', 2, 2011, 'L', '5047', '1411200178', 1),
('14416241028', '5', 'Clara Ivana Kumalawati', 'clara', 'clara@uny.ac.id', 2, 2014, 'P', '5015', '1411200178', 1),
('14510134005', '33', 'Avit Fajari', 'avit', 'avit@uny.ac.id', 2, 2014, 'L', '5043', '1411200178', 1),
('15104241044', '48', 'Nur Naningsih Putri Astuti', 'putri', 'putri@uny.ac.id', 2, 2015, 'P', '5058', '1411200178', 1),
('15112141022', '45', 'Sumarti', 'sumarti', 'sumarti@uny.ac.id', 2, 2015, 'P', '5055', '1411200178', 1),
('15201244005', '51', 'Mahiratun Fadlilah', 'fadlilah', 'fadlilah@uny.ac.id', 2, 2012, 'P', '5061', '1411200178', 1),
('15201244010', '46', 'Nindia Pratiwi', 'nindia', 'nindia@uny.ac.id', 2, 2015, 'P', '5056', '1411200178', 1),
('15201244017', '42', 'Yudha Ardiyanta', 'yudha', 'yudha@uny.ac.id', 2, 2015, 'L', '5052', '1411200178', 1),
('15201244018', '44', 'Laily Rizki Khikmawati', 'laily', 'laily@uny.ac.id', 2, 2015, 'P', '5054', '1411200178', 1),
('15210141011', '60', 'Anggita Istiqomah Rocharyadi', 'anggita', 'anggita@uny.ac.id', 2, 2015, 'P', '5070', '1411200178', 1),
('15210141052', '47', 'Nur Hikmah Hasanah', 'hikmah', 'hikmah@uny.ac.id', 2, 2015, 'P', '5057', '1411200178', 1),
('15312244008', '52', 'Wahyu Tri Sarwiji', 'wahyu', 'wahyu@uny.ac.id', 2, 2015, 'P', '5062', '1411200178', 1),
('15416241053', '58', 'Yoland Fajar Al Kautsar', 'yoland', 'yoland@uny.ac.id', 2, 2015, 'L', '5068', '1411200178', 1),
('15417141046', '43', 'Yuliana Nur Azizah', 'yuliana', 'yuliana@uny.ac.id', 2, 2015, 'P', '5053', '1411200178', 1),
('15419141034', '1', 'Erick Darmansyah', 'erick', 'erick@uny.ac.id', 2, 2015, 'L', '5011', '1411200178', 1),
('15505244001', '41', 'Ermalia Nur Hidayah', 'ermalia', 'ermalia@uny.ac.id', 2, 2015, 'P', '5051', '1411200178', 1),
('15513241045', '39', 'Lathifa Haqi', 'lathifa', 'lathifa@uny.ac.id', 2, 2015, 'P', '5049', '1411200178', 1),
('15703251031', '40', 'Yusuf Tri Nurcahyo', 'yusuf', 'yusuf@uny.ac.id', 2, 2015, 'L', '5050', '1411200178', 1),
('15802241045', '53', 'Marini', 'marini', 'marini@uny.ac.id', 2, 2015, 'P', '5063', '1411200178', 1),
('15811134058', '50', 'Michel Ike Permatasari', 'michel', 'michel@uny.ac.id', 2, 2014, 'P', '5060', '1411200178', 1),
('16207241023', '55', 'Winda Annisa Ulhaifa', 'winda', 'winda@uny.ac.id', 2, 2016, 'P', '5065', '1411200178', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departemen`
--

CREATE TABLE `tbl_departemen` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_departemen`
--

INSERT INTO `tbl_departemen` (`id`, `nama`) VALUES
(1, 'Team Leader'),
(2, 'Operator'),
(3, 'Teknisi'),
(4, 'Koordinator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelompok`
--

CREATE TABLE `tbl_kelompok` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelompok`
--

INSERT INTO `tbl_kelompok` (`id`, `nama`) VALUES
(1, 'PAGI'),
(2, 'SIANG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pertemuan`
--

CREATE TABLE `tbl_pertemuan` (
  `id` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `waktu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pertemuan`
--

INSERT INTO `tbl_pertemuan` (`id`, `id_kelompok`, `waktu`) VALUES
(50, 1, '1488195668'),
(51, 1, '1488243814'),
(52, 1, '1488255090'),
(53, 1, '1488277438'),
(54, 1, '1488285575'),
(55, 1, '1488539525'),
(56, 1, '1488849229'),
(57, 1, '1488849275'),
(58, 2, '1488856383'),
(59, 1, '1489465707'),
(60, 1, '1489476677'),
(61, 1, '1489979690'),
(62, 1, '1489980802'),
(63, 1, '1490606624'),
(64, 1, '1490608452'),
(65, 1, '1490609146'),
(66, 1, '1490609375'),
(67, 1, '1491188730'),
(68, 2, '1491208666'),
(69, 2, '1491359179'),
(70, 2, '1491368815'),
(71, 2, '1491807574'),
(72, 2, '1491810203'),
(73, 2, '1491810293'),
(74, 1, '1491810347'),
(75, 2, '1491811106'),
(76, 2, '1491811692'),
(77, 2, '1491813338'),
(78, 2, '1491815280');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_presentsi`
--

CREATE TABLE `tbl_presentsi` (
  `id_pertemuan` int(11) NOT NULL,
  `id_anggota` varchar(30) NOT NULL,
  `waktu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_presentsi`
--

INSERT INTO `tbl_presentsi` (`id_pertemuan`, `id_anggota`, `waktu`) VALUES
(50, '11202241063', '1488195700'),
(50, '11604221045', '1488195728'),
(50, '11417141040', '1488195741'),
(50, '16207241023', '1488195765'),
(52, '11604221045', '1488259357'),
(54, '12520241039', '1488285618'),
(55, '11202241063', '1488539589'),
(57, '11202241063', '1488849298'),
(64, '11417141040', '1490609016'),
(66, '11417141040', '1490609401'),
(70, '13111241001', '1491368834'),
(70, '13111241060', '1491368852'),
(70, '13308141026', '1491368927'),
(70, '12305141032', '1491368946'),
(70, '13502241011', '1491368961'),
(70, '14102241043', '1491368970'),
(70, '13520241081', '1491369003'),
(70, '12507134021', '1491369113'),
(70, '14416241028', '1491369140'),
(70, '13505241026', '1491369150'),
(70, '12413241003', '1491369186'),
(70, '13105241034', '1491369207'),
(70, '12305141002', '1491369215'),
(70, '14406241021', '1491369238'),
(70, '13110241045', '1491369269'),
(70, '14401244005', '1491369290'),
(70, '15419141034', '1491369309'),
(70, '13802241045', '1491369324'),
(70, '14210141033', '1491369332'),
(70, '13308141021', '1491369340'),
(70, '13210141049', '1491369347'),
(70, '13306141048', '1491369394'),
(70, '11604221045', '1491369403'),
(70, '13308141033', '1491369409'),
(70, '13302241003', '1491369423'),
(70, '13808141051', '1491369449'),
(70, '13308141051', '1491369465'),
(70, '13211144002', '1491369472'),
(70, '13202241023', '1491369498'),
(70, '13101241050', '1491369511'),
(70, '12520244033', '1491369521'),
(70, '13211141001', '1491369539'),
(70, '13110241012', '1491369563'),
(70, '14407141009', '1491369571'),
(70, '13308141038', '1491369616'),
(70, '12413241055', '1491369646'),
(70, '13808141052', '1491369662'),
(70, '12520241044', '1491369701'),
(70, '12520241030', '1491369712'),
(70, '13302241034', '1491369722'),
(70, '13505241024', '1491369731'),
(70, '13308141011', '1491369762'),
(70, '13803241090', '1491369784'),
(70, '11202241063', '1491370365'),
(70, '13407141055', '1491370401'),
(70, '13308141060', '1491370487'),
(70, '12211144038', '1491370545'),
(70, '13110241034', '1491370563'),
(70, '13111241061', '1491370607'),
(70, '13308141056', '1491370881'),
(78, '13803244008', '1491815296'),
(78, '14804241018', '1491815329'),
(78, '14407144011', '1491815351'),
(78, '16803244007', '1491815434'),
(78, '15419141052', '1491815470'),
(78, '14419144005', '1491815478'),
(78, '14802241052', '1491815489'),
(78, '14210141034', '1491815538'),
(78, '14520241032', '1491815550'),
(78, '14417144023', '1491815563'),
(78, '13808141007', '1491815586'),
(78, '16811134041', '1491815603'),
(78, '13308141026', '1491816018'),
(78, '14102241043', '1491816026'),
(78, '13111241060', '1491816035'),
(78, '13803241090', '1491816049'),
(78, '13308141011', '1491816070'),
(78, '12211144038', '1491816081'),
(78, '11202241063', '1491816094'),
(78, '13407141055', '1491816113'),
(78, '13110241034', '1491816125'),
(78, '13308141060', '1491816135'),
(78, '12305141032', '1491816208'),
(78, '13111241001', '1491816601'),
(78, '13502241011', '1491817511'),
(78, '13202241023', '1491817524'),
(78, '13505241024', '1491817533'),
(78, '12305141002', '1491819618');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `faculty` varchar(32) NOT NULL,
  `major` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `year`, `faculty`, `major`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1491813426, 1, 'Admin', 'istrator', 'ADMIN', '0', NULL, '', ''),
(2, '::1', 'member1', '$2y$08$V1OjJdAGGm0tiVW8nox66.nl5mQCxGIKAkxf5VFPKOCMFN7jnr/re', NULL, 'member@test.com', NULL, NULL, NULL, NULL, 1490606775, NULL, 1, 'Septian', 'Adi', 'Teknisi', '0856254670', 2011, 'Ilmu Sosial', 'Ilmu Administrasi Negara'),
(3, '::1', '11417141040', '$2y$08$NHrEAh9WW0wgucpY2wjR9urk8FXszRCFfjPRh2hI/Omvdqe7gnM.e', NULL, 'mcseptian@yahoo.com', NULL, NULL, NULL, NULL, 1490608310, 1490609082, 1, 'Mochamad Septian', 'Adi Cahyono', 'Teknisi', '08562545670', 2011, 'Ilmu Sosial', 'Ilmu Administrasi Negara'),
(4, '::1', '11202241063', '$2y$08$N4pqzATHsVCY/PJoJzffROil/iu3YvbIDwXG5Ev.igpXSzODWKe9q', NULL, '11202241063@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491191646, NULL, 1, 'Mohamad', 'Baharudin Jamin', 'SBMPTN 2017', '5019', 2011, 'Fakultas Bahasa Dan Seni', 'Pendidikan Bahasa Inggris'),
(5, '::1', '11604221045', '$2y$08$vEXxjO4eiprSorLNY5UVierp46tZzOwN/PZpy9imdJjwFSy9M6M5a', NULL, '11604221045@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491192001, NULL, 1, 'Muhammad Gunawan', 'Agung Wibowo', 'SBMPTN 2017', '5025', 2011, 'Fakultas Ilmu Keolahragaan', 'PGSD Penjas'),
(6, '::1', '12507134021', '$2y$08$ACOx7zjN6OBrmbwzaSWo.u.SdNj8y5pNI/MSpNlI.IN3edhkig/pK', NULL, '12507134021@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491192864, NULL, 1, 'Febri', 'Suci Rahmahwati', 'SBMPTN 2017', '5048', 2012, 'Fakultas Teknik', 'Teknik Elektronika'),
(7, '::1', '12305141032', '$2y$08$uQRrgLG8SCqjFrkFlshqReqyUi0MPptADDR8RUoH2YrnE5knCy/NK', NULL, '12305141032@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491193724, NULL, 1, 'Seli', 'Rosriana', 'SBMPTN 2017', '5027', 2012, 'Fakultas Matematika dan IPA', 'Matematika'),
(8, '::1', '12520241044', '$2y$08$NiumWOxdAPRdZ4.PLHSpOO/DumkypgtLoWpCOIQ7n3/ibwquJEAua', NULL, '12520241044@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491193917, NULL, 1, 'Maruf', 'Aminudin', 'SBMPTN 2017', '5066', 2012, 'Fakultas Teknik', 'Pendidikan Teknik Informatika'),
(9, '::1', '12520244033', '$2y$08$9ZdNGECWgR52A/22YVZOzeTgIo4.5UIygAL6U9hXd88KNZQVfjUL2', NULL, '12520244033@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491194042, NULL, 1, 'Saptaka', 'Trihantoro', 'SBMPTN 2017', '5012', 2012, 'Fakultas Teknik', 'Pendidikan Teknik Informatika'),
(10, '::1', '13110241012', '$2y$08$nroOK2EpjEihHnSAYl.lJuSS2392tuZHhXT2GLDO3HvZpprR9CKii', NULL, '13110241012@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491194202, NULL, 1, 'Yulia', 'Fauzi', 'SBMPTN 2017', '5013', 2013, 'Fakultas Ilmu Pendidikan', 'Kebijakan Pendidikan'),
(11, '::1', '13111241001', '$2y$08$ycVLnf2hB4xvxpX2otM9s.yv8UyuVzRKI4gQt5E2mJm8GV0oBmTb6', NULL, '13111241001@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491194341, NULL, 1, 'Rizky', 'Aulia Soraya', 'SBMPTN 2017', '5022', 2013, 'Fakultas Ilmu Pendidikan', 'PGPAUD '),
(12, '::1', '13111241061', '$2y$08$YFQhAV1q/47Ejpp.UzF9fuGl0fonIByDBx3Lvo6Tvu4H2GHX4MAgK', NULL, '13111241061@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491194447, NULL, 1, 'Ingrid', 'Maharani Basuki', 'SBMPTN 2017', '5030', 2013, 'Fakultas Ilmu Pendidikan', 'PGPAUD'),
(13, '::1', '13202241023', '$2y$08$dONSAeBEGO6ecDoyC/LF7eAvbtZqwyNj4l4YBw.SwfYwMgsTvlBYy', NULL, '13202241023@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491194570, NULL, 1, 'Muvida', 'Aulia Rahman', 'SBMPTN 2017', '5026', 2013, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa Inggris'),
(14, '::1', '13302241003', '$2y$08$Rh3OnjjCqxpf/AdAWVH.Buxtm/TJYCWYR5wezgsGyj/14mZjrnNYW', NULL, '13302241003@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491194721, NULL, 1, 'Fidiyah', 'Nuraini', 'SBMPTN 2017', '5037', 2013, 'Fakultas Matematika dan IPA', 'Pendidikan Fisika'),
(15, '::1', '13308141026', '$2y$08$XzMvH0qkdaqL3cal1Yl5UOtj2KHMvbn0dIJkPgGGGspnLqgVFhBBS', NULL, '13308141026@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491194831, NULL, 1, 'Ningtyas', 'Yuniar Respati', 'SBMPTN 2017', '5035', 2013, 'Fakultas Matematika dan IPA', 'Biologi'),
(16, '::1', '13308141051', '$2y$08$9iMukzg8nSnaFFpDP7N4puUzXvNtqIj8r77CioHLZa86lIqIYUuUK', NULL, '13308141051@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491194969, NULL, 1, 'Vella', 'Liani', 'SBMPTN 2017', '5036', 2013, 'Fakultas Matematika dan IPA', 'Biologi'),
(17, '::1', '13308141056', '$2y$08$AxfJ1sqbb8HU9ZFa8IYg3uHrhuiwP5pDU5Vk32AgSDBKyDVrMHwaK', NULL, '13308141056@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491195101, NULL, 1, 'Briliana', 'Suryani Kusumakinasih', 'SBMPTN 2017', '5033', 2013, 'Fakultas Matematika dan IPA', 'Biologi'),
(18, '::1', '13502241011', '$2y$08$xPdnxz.yZNrcfVmUZCESo.wjm3S11gtFDMCH4ZTlHCQogTmRJTsby', NULL, '13502241011@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491195224, NULL, 1, 'Uswatun', 'Khasanah', 'SBMPTN 2017', '5023', 2013, 'Fakultas Teknik', 'Pendidikan Teknik Elektronika'),
(19, '::1', '13803241090', '$2y$08$/U2Erg9MhAU1i1hyYYYDleKy7jYU7irYsE4ibS9vaXjpbLOLIDBxm', NULL, '13803241090@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491195463, NULL, 1, 'Mutiah', 'Mutiara Firdaus', 'SBMPTN 2017', '5020', 2013, 'Fakultas Ekonomi', 'Pendidikan Akuntansi'),
(20, '::1', '13808141051', '$2y$08$kj58uyHaD19cgWwTqadAuenFaIbM4jEjqVCvecfUzJkbZVZq0tWoi', NULL, '13808141051@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491195596, NULL, 1, 'Rinawati', 'Dyah Pertiwi', 'SBMPTN 2017', '5017', 2013, 'Fakultas Ekonomi', 'Manajemen'),
(21, '::1', '13808141052', '$2y$08$c2izHRhy0wsylYXYUcj/suXpHnhgCNlLQRx6pD/pBCfW/9/hA7NsO', NULL, '13808141052@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491195753, NULL, 1, 'Tri', 'Sutarti', 'SBMPTN 2017', '5000', 2013, 'Fakultas Ekonomi', 'Pendidikan Akuntansi'),
(22, '::1', '14102241043', '$2y$08$v6H4LpnZl.DeC/pc0Za7vuR7oA9HbHzGYNdLMIBZ42GWQteNsxKYW', NULL, '14102241043@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491195853, NULL, 1, 'Ms.', 'Ketfiyah', 'SBMPTN 2017', '5038', 2014, 'Fakultas Ilmu Pendidikan', 'Pendidikan Luar Sekolah'),
(23, '::1', '14210141033', '$2y$08$bpQeQnRI4o/MOC1wH7e8c.UCUYYwJVIiblDqzt9X4GMEvqi2Q3cGm', NULL, '14210141033@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491196018, NULL, 1, 'Mr.', 'Haryanto', 'SBMPTN 2017', '5046', 2014, 'Fakultas Bahasa dan Seni', 'Sastra Indonesia'),
(24, '::1', '14401244005', '$2y$08$aGNsu12e8GxUP/wdyjOct.ixPnbcrZxL5.lSnPDg0tvrS/ytvtizO', NULL, '14401244005@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491196143, NULL, 1, 'Halimah', 'Chasanah', 'SBMPTN 2017', '5040', 2014, 'Fakultas Ilmu Sosial', 'Pendidikan Kewarganegaraan'),
(25, '::1', '14406241021', '$2y$08$KiPa.W4UTJ003tMG4UGtAOCJncgpxInwQOY43EYkIXxhE1N8woJzK', NULL, '14406241021@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491196242, NULL, 1, 'Fiqhi', 'Amalina Islami', 'SBMPTN 2017', '5042', 2014, 'Fakultas Ilmu Sosial', 'Pendidikan Sejarah'),
(26, '::1', '14407141009', '$2y$08$pQbAm8zY62eIF7nm6x.46.k8hacmatAkKWuMpscOB95z8bSQpndRe', NULL, '14407141009@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491196358, NULL, 1, 'Moh.', 'Samsul Arifin', 'SBMPTN 2017', '5047', 2014, 'Fakultas Ilmu Sosial', 'Ilmu Sejarah'),
(27, '::1', '14416241028', '$2y$08$kNFvdJC6CDC01IK38aySDuIQfLfsoNA7IQOicH3W95.fcgP.6iVB6', NULL, '14416241028@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491196458, NULL, 1, 'Clara', 'Ivana Kumalawati', 'SBMPTN 2017', '5015', 2014, 'Fakultas Ilmu Sosial', 'Pendidikan IPS'),
(28, '::1', '15419141034', '$2y$08$NifLx61j80HN1I1fK5oRF.JOlJJYO6CftqxVK2739oTtfTzT/9.GW', NULL, '15419141034@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491196592, NULL, 1, 'Erick', 'Darmansyah', 'SBMPTN 2017', '5011', 2015, 'Fakultas Ilmu Sosial', 'Ilmu Komunikasi'),
(29, '::1', '12211144038', '$2y$08$OJVUdQLcXsxY0/LUdPTtouhMK2UkOiJa6CRhvG66aZtCBOMr95j2q', NULL, '12211144038@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491196712, NULL, 1, 'Mega', 'Nurcahyani', 'SBMPTN 2017', '5000', 2012, 'Fakultas Bahasa dan Seni', 'Sasra Inggris'),
(30, '::1', '12305141002', '$2y$08$yB47rSe2QkHmpCzdVYx66O/nt/PrFufaYqqAaIRRlZBjtN7vjBodK', NULL, '12305141002@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491197056, NULL, 1, 'Ardila', 'Dewi Setyarsi', 'SBMPTN 2017', '5000', 2012, 'Fakultas Matematika dan IPA', 'Matematika'),
(31, '::1', '12413241003', '$2y$08$hEphNK/nvHMgIyxzW5vliOiablxY4hHc0M.7sySSOz7gbXVdVIHJ.', NULL, '12413241003@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491197181, NULL, 1, 'Hamdani', 'Yusuf', 'SBMPTN 2017', '5000', 2012, 'Fakultas Ilmu Sosial', 'Pendidikan Sosiologi'),
(32, '::1', '12413241055', '$2y$08$mYr0JJEEJtyDpWcjJPT7zuZ0yaWaj5tRVFHuSfqUpA09Li9/PQvwe', NULL, '12413241055@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491197691, NULL, 1, 'Nur', 'Matin Fathani', 'SBMPTN 2017', '5000', 2012, 'Fakultas Ilmu Sosial', 'Pendidikan Sosiologi '),
(33, '::1', '12520241030', '$2y$08$szDb3V7guVCLQtfyn5G68upJvEwPN0qV3onMgaMfXVikXF7MhN9oK', NULL, '12520241030@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491197801, NULL, 1, 'Muhammad', 'Lathif Febriyanto', 'SBMPTN 2017', '5000', 2012, 'Fakultas Teknik', 'Pendidikan Teknik Informatika'),
(34, '::1', '13101241050', '$2y$08$o2EjJ3fEdLVKT5tBQ/VFXOCkykxs34hQoTWhJ/cqY4sS0OKlWAN2O', NULL, '13101241050@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491197905, NULL, 1, 'Nur', 'Maladewi', 'SBMPTN 2017', '5000', 2013, 'Fakultas Ilmu Pendidikan', 'Manajemen Pendidikan'),
(35, '::1', '13105241034', '$2y$08$e8v86fC/sfYC4tW/NKEU/O0aQlWJgywDvHjzDM8glJA1Qt/s4i4xa', NULL, '13105241034@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491198002, NULL, 1, 'Calista', 'Devi Handaru', 'SBMPTN 2017', '5000', 2013, 'Fakultas Ilmu Pendidikan', 'Teknologi Pendidikan'),
(36, '::1', '13110241034', '$2y$08$Q9uLPzDxMSQCI/DcDywTs.U2k9M8M7U6OoEvFNB0Rgx3paGcUsFrW', NULL, '13110241034@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491198125, NULL, 1, 'Satya', 'Laksana', 'SBMPTN 2017', '5000', 2013, 'Fakultas Ilmu Pendidikan', 'Kebijakan Pendidikan'),
(37, '::1', '13110241045', '$2y$08$o30yd64/HdqHTd.17sg3u.msvZVLMIxXHFi6vnP9vMr/5qzk7YBkm', NULL, '13110241045@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491198224, NULL, 1, 'Ayu', 'Alfiyati', 'SBMPTN 2017', '5000', 2013, 'Fakultas Ilmu Pendidikan', 'Kebijakan Pendidikan'),
(38, '::1', '13111241060', '$2y$08$NxlQdeV2FWi5mRH1DVjYhew0/oeWkdhwXZ0PK7IxHVBe47lFdOu6W', NULL, '13111241060@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491198335, NULL, 1, 'Titis Aprilia', 'Dian Pratiwi', 'SBMPTN 2017', '5000', 2013, 'Fakultas Ilmu Pendidikan', 'PGPAUD'),
(39, '::1', '13210141049', '$2y$08$5X/GKcHGH2xSiL5f8ZwC0eNNxbIynAV09KNXapmNVuPEHkS7kFDIC', NULL, '13210141049@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491198448, NULL, 1, 'Deni', 'Susilowati', 'SBMPTN 2017', '5000', 2013, 'Fakultas Bahasa dan Seni', 'Sastra Indonesia'),
(40, '::1', '13211141001', '$2y$08$Ghw1aDPUwzdLNLUaXxxL0OFabFAxreE5Yz.XTEDurRIkQ0fUCN9RO', NULL, '13211141001@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491198539, NULL, 1, 'Tri', 'Intan Mabruroh', 'SBMPTN 2017', '5000', 2013, 'Fakultas Bahasa dan Seni', 'Sastra Inggris'),
(41, '::1', '13211144002', '$2y$08$3cL1uK/zSMGm9XE8pBlwGuSRTXejVbq.yJ9jjEazySmf8u9zH.dFe', NULL, '13211144002@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491198630, NULL, 1, 'Moh.', 'Imawan Helmi', 'SBMPTN 2017', '5000', 2013, 'Fakultas Bahasa dan Seni', 'Sastra Inggris'),
(42, '::1', '13302241034', '$2y$08$p0m2VMme8SVHhNaBRHxJbur.kJ69.1UgQowPpPHDZ6zrRFazzZdLq', NULL, '13302241034@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491198741, NULL, 1, 'Nur', 'Khoiri Hidayati', 'SBMPTN 2017', '5000', 2013, 'Fakultas Matematika dan IPA', 'Pendidikan Fisika'),
(43, '::1', '13306141048', '$2y$08$h3pwW2tGPFnhkLF2ao/12uDvlXtaMjOZaFGVlXP83n6IzCa7XX3SC', NULL, '13306141048@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491199005, NULL, 1, 'Lilis', 'Misnawati', 'SBMPTN 2017', '5000', 2013, 'Fakultas Matematika dan IPA', 'Fisika'),
(44, '::1', '13308141011', '$2y$08$tCmNVAp6/xa15GpdbUnV1.RP3mA4aS79xkzT7obF7ezoTCMDly4OC', NULL, '13308141011@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491199142, NULL, 1, 'Virginia', 'Delmar Hadiningrum', 'SBMPTN 2017', '', 2013, 'Fakultas Matematika dan IPA', 'Biologi '),
(45, '::1', '13308141021', '$2y$08$wq9el6BFo1OHu2DF8KMAVu9k9EUvIxglx6yuRS5GghhCR.bZ8nTxG', NULL, '13308141021@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491199279, NULL, 1, 'Astrid Umaya', 'Arum Sari', 'SBMPTN 2017', '5000', 2013, 'Fakultas Matematika dan IPA', 'Biologi '),
(46, '::1', '13308141033', '$2y$08$joSt3ol95/S3D.VeoQseyOvw20M0csW46gbJui6HOdxBB/knGaxx2', NULL, '13308141033@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491199442, NULL, 1, 'Nova', 'Rahmawati', 'SBMPTN 2017', '5000', 2013, 'Fakultas Matematika dan IPA', 'Biologi '),
(47, '::1', '13308141038', '$2y$08$vN7gUH5xS8Sg6L/4xOGGxuymOFS4RoQSGyML0NVS2oie5R.zzSy0W', NULL, '13308141038@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491199534, NULL, 1, 'Nandya', 'Mahardika', 'SBMPTN 2017', '5000', 2013, 'Fakultas Matematika dan IPA', 'Biologi'),
(48, '::1', '13308141060', '$2y$08$0fHXjDDQXezn1lKbHJ8ds.3wtGA.ixVHWhbTayef2F9h5SoYiSjVK', NULL, '13308141060@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491199691, NULL, 1, 'Nur', 'Khotimah', 'SBMPTN 2017', '5000', 2013, 'Fakultas Matematika dan IPA', 'Biologi'),
(49, '::1', '13407141055', '$2y$08$O6d/75OrKg.pbU32LEcSX.U5KrqoldGaxRowTHRAHzB3a5hJ81Zca', NULL, '13407141055@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491199775, NULL, 1, 'Hanna', 'Desvika Saragih', 'SBMPTN 2017', '5000', 2013, 'Fakultas Ilmu Sosial', 'Ilmu Sejarah'),
(50, '::1', '13505241024', '$2y$08$wAf785ods9U.X2HV9QJrjOzRpsOOplrOpAhDPEyFaKmYzaOp0GM0e', NULL, '13505241024@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491200614, NULL, 1, 'Rizki', 'Anna Baeta', 'SBMPTN 2017', '5000', 2013, 'Fakultas Teknik', 'Pendidikan Teknik Sipil dan Pere'),
(51, '::1', '13505241026', '$2y$08$uLolqdwImNk83GPfWAkWfOddztsuxoUSujT8ThMjwj9y4tjQfc11G', NULL, '13505241026@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491200690, NULL, 1, 'Arum', 'Minanti', 'SBMPTN 2017', '5000', 2013, 'Fakultas Teknik', 'Pendidikan Teknik Sipil dan Pere'),
(52, '::1', '13520241081', '$2y$08$.XZEXybjfsBpQ6jibzcV4OWLtfpS7pBud9Gk1sO2T1xNqwIJvoZfG', NULL, '13520241081@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491203254, NULL, 1, 'Fitria', 'Nuri Cahyani', 'SBMPTN 2017', '5000', 2013, 'Fakultas Teknik', 'Pendidikan Teknik Informatika '),
(53, '::1', '13802241045', '$2y$08$i4Q2ktUSattKXsT0VrxPOuOE3PdTqcmDKtWt9x0Gz.yhc/ASGje1.', NULL, '13802241045@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491204561, NULL, 1, 'Annisa', 'Nurul Hidayatulloh', 'SBMPTN 2017', '5000', 2013, 'Fakultas Ekonomi', 'Pendidikan Akuntansi'),
(54, '::1', '16811134041', '$2y$08$n8D.qoM6x7sdjZKbUYGnSeQU1H1aKVW6VynBOYB0BaVUGcj4j73U2', NULL, '16811134041@uny.ac.id', NULL, NULL, NULL, NULL, 1491808780, NULL, 1, 'Husna', 'Rahmawati', 'SBMPTN', '6065', 2016, 'Fakultas EkonomI', 'D3 Sekretari'),
(55, '::1', '13808141007', '$2y$08$KDLpcjIqMqADyH8s27957eRCEG5nKa5lw6F6zaBTEQrUGyW9YTika', NULL, '13808141007@uny.ac.id', NULL, NULL, NULL, NULL, 1491808911, NULL, 1, 'Anarkhi', 'Dianastuty', 'SBMPTN', '6043', 2013, 'Fakultas Ekonomi', 'Manajemen'),
(56, '::1', '14417144023', '$2y$08$LMNI0IpvnLiJDAuOQO66dOvgGLEexp6HZm4/GoUw4lmUZSO39ot12', NULL, '14417144023@uny.ac.id', NULL, NULL, NULL, NULL, 1491809021, NULL, 1, 'Desy', 'Nirmala Setyawati', 'SBMPTN', '6055', 2014, 'Fakultas Ilmu Sosial', 'Ilmu Administrasi Negara'),
(57, '::1', '14520241032', '$2y$08$Z4Bah3R593S/YB7sTDPjH.6Dj.nSGNeg7xnev8oC0xcGWt7A01KIC', NULL, '14520241032@uny.ac.id', NULL, NULL, NULL, NULL, 1491809172, NULL, 1, 'Dita', 'Halimatuzzakiya', 'SBMPTN', '6057', 2014, 'Fakultas Teknik', 'Pendidikan Teknik Informatika'),
(58, '::1', '14210141034', '$2y$08$LkWbGxVP9c08kvxCa4zWCu3mtTSxZhq3U9ScMkqf9jky16w/NgGAq', NULL, '14210141034@uny.ac.id', NULL, NULL, NULL, NULL, 1491809400, NULL, 1, 'Syama', 'Noorjannah', 'SBMPTN', '6049', 2014, 'Fakultas Bahasa dan Seni', 'Sastra Indonesia'),
(59, '::1', '14804244009', '$2y$08$xtQtbDDgzDUF9.wf0OqnKOscewhJRu1Skc3K49lKQHoBKX7LVuYgu', NULL, '14804244009@uny.ac.id', NULL, NULL, NULL, NULL, 1491809552, NULL, 1, 'Jesika', 'Amanda', 'SBMPTN', '6060', 2014, 'Fakultas Ekonomi', 'Pendidikan Ekonomi'),
(60, '::1', '14802241052', '$2y$08$3lAIErNoDPDp3QwJxcydB.avj87iWhr.3xZDb2XQvVzdNj5FoFv7u', NULL, '14802241052@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491809756, NULL, 1, 'Ita', 'Yuniastuti', 'SBMPTN', '6058', 2014, 'Fakultas Ekonomi', 'Pendidikan Administrasi Perkanto'),
(61, '::1', '14419144005', '$2y$08$cefNmpx55HNiB0qMabOa.ObAD67thjZf5pbaaE7CIFiRmDOf9.Vvq', NULL, '14419144005@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491809867, NULL, 1, 'Vixki Zenarta', 'Eka Putri', 'SBMPTN', '6056', 2014, 'Fakultas Ilmu Sosial', 'Ilmu Komunikasi'),
(62, '::1', '15419141052', '$2y$08$E0TTA0jRl5kkt2/Ced0GzOHSWRilpUDofTLB4ZcLujDfaQOSRxB2C', NULL, '15419141052@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491809998, NULL, 1, 'Yunita', 'Noor Wijayantie', 'SBMPTN', '6063', 2015, 'Fakultas Ilmu Sosial', 'Ilmu Komunikasi'),
(63, '::1', '16803244007', '$2y$08$MYQymBetCmUxyhrIVTgsFezJeF2z76L9oBe0GSiVz0LfmB94jsQZa', NULL, '16803244007@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491810181, NULL, 1, 'Ayu Lisna', 'Dewi Intani Rahmat', 'SBMPTN', '6064', 2016, 'Fakultas Ekonomi', 'Pendidikan Akuntansi'),
(64, '::1', '14804241018', '$2y$08$IKiR2bfd2hwKpMLIw/omBOGhiOiR.DrR2HP38HKPnK5Ax2x4KF8KC', NULL, '14804241018@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491814523, NULL, 1, 'TIKA', 'DWI NUR ATIN', 'SBMPTN', '6059', 2014, 'Fakultas Ekonomi', 'Pend. Ekonomi'),
(65, '::1', '14407144011', '$2y$08$QV7/noOL7Hl/zILv3SqET.ITIFVROXbcMy6N/M4SrAi0KVvgiHawK', NULL, '14407144011@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491814861, NULL, 1, 'EVA', 'SUCHI ADI CAHYANI', 'SBMPTN', '6053', 2014, 'Fakultas Sosial', 'Ilmu Sejarah'),
(66, '::1', '13803244008', '$2y$08$09MJyj4mAoiBoVa4SURtsOdASLv.XJvTaPAjhOHG//m92Bd3Pvaxu', NULL, '13803244008@student.uny.ac.id', NULL, NULL, NULL, NULL, 1491815181, NULL, 1, 'RIMA', 'YUNIARTI', 'SBMPTN', '6042', 2013, 'Fakultas Ekonomi', 'Pendidikan Akuntansi');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(6, 2, 1),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(19, 5, 2),
(11, 6, 2),
(12, 7, 2),
(13, 8, 2),
(14, 9, 2),
(15, 10, 2),
(16, 11, 2),
(17, 12, 2),
(18, 13, 2),
(20, 14, 2),
(21, 15, 2),
(22, 16, 2),
(23, 17, 2),
(24, 18, 2),
(25, 19, 2),
(26, 20, 2),
(27, 21, 2),
(28, 22, 2),
(29, 23, 2),
(30, 24, 2),
(31, 25, 2),
(32, 26, 2),
(33, 27, 2),
(34, 28, 2),
(35, 29, 2),
(36, 30, 2),
(37, 31, 2),
(38, 32, 2),
(39, 33, 2),
(40, 34, 2),
(41, 35, 2),
(42, 36, 2),
(43, 37, 2),
(44, 38, 2),
(45, 39, 2),
(46, 40, 2),
(47, 41, 2),
(48, 42, 2),
(49, 43, 2),
(50, 44, 2),
(51, 45, 2),
(52, 46, 2),
(53, 47, 2),
(54, 48, 2),
(55, 49, 2),
(56, 50, 2),
(57, 51, 2),
(58, 52, 2),
(59, 53, 2),
(60, 54, 2),
(61, 55, 2),
(62, 56, 2),
(63, 57, 2),
(64, 58, 2),
(65, 59, 2),
(66, 60, 2),
(67, 61, 2),
(68, 62, 2),
(69, 63, 2),
(70, 64, 2),
(71, 65, 2),
(72, 66, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departemen` (`id_departemen`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_departemen`
--
ALTER TABLE `tbl_departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kelompok`
--
ALTER TABLE `tbl_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pertemuan`
--
ALTER TABLE `tbl_pertemuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelompok` (`id_kelompok`);

--
-- Indexes for table `tbl_presentsi`
--
ALTER TABLE `tbl_presentsi`
  ADD KEY `id_pertemuan` (`id_pertemuan`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_departemen`
--
ALTER TABLE `tbl_departemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_kelompok`
--
ALTER TABLE `tbl_kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_pertemuan`
--
ALTER TABLE `tbl_pertemuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD CONSTRAINT `tbl_anggota_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `tbl_departemen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pertemuan`
--
ALTER TABLE `tbl_pertemuan`
  ADD CONSTRAINT `tbl_pertemuan_ibfk_1` FOREIGN KEY (`id_kelompok`) REFERENCES `tbl_kelompok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_presentsi`
--
ALTER TABLE `tbl_presentsi`
  ADD CONSTRAINT `tbl_presentsi_ibfk_2` FOREIGN KEY (`id_pertemuan`) REFERENCES `tbl_pertemuan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
