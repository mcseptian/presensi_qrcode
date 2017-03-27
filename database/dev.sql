-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 03:10 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev`
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
(2, 'members', 'General User');

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
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `timestamp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`id`, `group_id`, `timestamp`) VALUES
(0, 1, '1490013054');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `id` varchar(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(75) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `tahun_angkatan` int(5) NOT NULL,
  `alamat_asal` text NOT NULL,
  `alamat_sby` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `tanggal_join` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id`, `username`, `nama`, `password`, `email`, `id_departemen`, `tahun_angkatan`, `alamat_asal`, `alamat_sby`, `tanggal_lahir`, `gender`, `no_telp`, `tanggal_join`, `status`) VALUES
('11202241063', '37', 'Moh. Samsul Arifin', 'samsul', 'samsul@uny.ac.id', 2, 2011, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa Inggris', '0000-00-00', 'L', '5047', '1411200178', 1),
('11417141040', '56', 'Maruf Aminudin', 'maruf', 'maruf@uny.ac.id', 2, 2011, 'Fakultas Ilmu Sosial', 'Ilmu Administrasi Negara', '0000-00-00', 'L', '5066', '1411200178', 1),
('11604221043', '15', 'Muhammad Gunawan Agung Wibowo', 'agung', 'agung@uny.ac.id', 2, 2011, 'Fakultas Ilmu Keolahragaan', 'PGsd Penjas', '0000-00-00', 'L', '5025', '1411200178', 1),
('11604221045', '9', 'Mohamad Baharudin Jamin', 'jamin', 'jamin@uny.ac.id', 2, 2011, 'Fakultas Ilmu Keolahragaan', 'PGsd Penjas', '0000-00-00', 'L', '5019', '1411200178', 1),
('12202244039', '34', 'Kanthy Zukhrifah', 'kanthy', 'kanthy@uny.ac.id', 2, 2012, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa Inggris', '0000-00-00', 'P', '5044', '1411200178', 1),
('12305141032', '17', 'Seli Rosriana', 'seli', 'seli@uny.ac.id', 2, 2012, 'Fakultas Matematika dan IPA', 'Matematika', '0000-00-00', 'P', '5027', '1411200178', 1),
('12413241035', '62', 'Nur Hidayat', 'nurha', 'nurha@uny.ac.id', 3, 2012, 'Fakultas Ilmu Sosial', 'Pendidikan Sosiologi', '0000-00-00', 'L', '5005', '1411200178', 1),
('12507134021', '38', 'Febri Suci Rahmahwati', 'febri', 'febri@uny.ac.id', 2, 2012, 'Fakultas Teknik', 'Teknik Elektronika D3', '0000-00-00', 'P', '5048', '1411200178', 1),
('12520241039', '63', 'Aris Nugroho', 'aris', 'aris@uny.ac.id', 3, 2012, 'Fakultas Teknik', 'PT Informatika', '0000-00-00', 'L', '5001', '1411200178', 1),
('12520241044', '51', 'Mahiratun Fadlilah', 'fadlilah', 'fadlilah@uny.ac.id', 2, 2012, 'Fakultas Teknik', 'Pendidikan Teknik Informatika', '0000-00-00', 'P', '5061', '1411200178', 1),
('12520241045', '61', 'Isna Fahrizal', 'isna', 'isna@uny.ac.id', 3, 2012, 'Fakultas Teknik', 'Pendidikan Teknik Informatika', '0000-00-00', 'L', '5002', '1411200178', 1),
('12520244033', '2', 'Saptaka Trihantoro', 'saptaka', 'saptaka@uny.ac.id', 2, 2012, 'Fakultas Teknik', 'Pendidikan Teknik Informatika', '0000-00-00', 'L', '5012', '1411200178', 1),
('1302241011', '13', 'Uswatun Khasanah', 'uswatun', 'uswatun@uny.ac.id', 2, 2013, 'Fakultas Teknik', 'Pendidikan Teknik Elektronika S1', '0000-00-00', 'P', '5023', '1411200178', 1),
('13102241014', '11', 'Fitri Ekasari', 'fitri', 'fitri@uny.ac.id', 2, 2013, 'Fakultas Ilmu Pendidikan', 'Pendidikan Luar Sekolah', '0000-00-00', 'P', '5021', '1411200178', 1),
('13104241055', '14', 'Dian Septika Rini', 'dian', 'dian@uny.ac.id', 2, 2013, 'Fakultas Ilmu Pendidikan', 'Bimbingan dan Konseling', '0000-00-00', 'P', '5024', '1411200178', 1),
('13110241012', '3', 'Yulia Fauzi', 'yulia', 'yulia@uny.ac.id', 2, 2013, 'Fakultas Ilmu Pendidikan', 'Kebijakan Pendidikan', '0000-00-00', 'P', '5013', '1411200178', 1),
('13111241001', '12', 'Rizky Aulia Soraya', 'rizky', 'rizky@uny.ac.id', 2, 2013, 'Fakultas Ilmu Pendidikan', 'PG-Paud', '0000-00-00', 'P', '5022', '1411200178', 1),
('13111241061', '20', 'Ingrid Maharani Basuki', 'ingrid', 'ingrid@uny.ac.id', 2, 2013, 'Fakultas Ilmu Pendidikan', 'PG-Paud', '0000-00-00', 'P', '5030', '1411200178', 1),
('13202241023', '16', 'Muvida Aulia Rahman', 'muvida', 'muvida@uny.ac.id', 2, 2013, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa Inggris', '0000-00-00', 'P', '5026', '1411200178', 1),
('13203241016', '57', 'Oktafainas Onaldi', 'oktafainas', 'oktafainas@uny.ac.id', 2, 2013, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa Jerman', '0000-00-00', 'P', '5067', '1411200178', 1),
('13301241046', '24', 'Rizqi Khilda Amalia', 'rizqi', 'rizqi@uny.ac.id', 2, 2013, 'Fakultas Matematika dan IPA', 'Pendidikan Matematika', '0000-00-00', 'P', '5034', '1411200178', 1),
('13302241003', '27', 'Fidiyah Nuraini', 'fidiyah', 'fidiyah@uny.ac.id', 2, 2013, 'Fakultas Matematika dan IPA', 'Pendidikan Fisika', '0000-00-00', 'P', '5037', '1411200178', 1),
('13308141026', '25', 'Ningtyas Yuniar Respati', 'ningtyas', 'ningtyas@uny.ac.id', 2, 2013, 'Fakultas Matematika dan IPA', 'Biologi', '0000-00-00', 'P', '5035', '1411200178', 1),
('13308141051', '26', 'Vella Liani', 'vella', 'vella@uny.ac.id', 2, 2013, 'Fakultas Matematika dan IPA', 'Biologi', '0000-00-00', 'P', '5036', '1411200178', 1),
('13308141056', '23', 'Briliana Suryani Kusumakinasih', 'briliana', 'briliana@uny.ac.id', 2, 2013, 'Fakultas Matematika dan IPA', 'Biologi', '0000-00-00', 'P', '5033', '1411200178', 1),
('13511249001', '21', 'Indriani Eka Pratiwi', 'indriani', 'indriani@uny.ac.id', 2, 2013, 'Fakultas Teknik', 'Pendidikan Teknik Boga', '0000-00-00', 'P', '5031', '1411200178', 1),
('13802241038', '18', 'Cahyani Arumdani', 'arumdani', 'arumdani@uny.ac.id', 2, 2013, 'Fakultas Ekonomi', 'Pendidikan Administrasi Perkantoran', '0000-00-00', 'P', '5028', '1411200178', 1),
('13802244005', '4', 'Budi Ekowati', 'ekowati', 'ekowati@uny.ac.id', 2, 2013, 'Fakultas Ekonomi', 'Pendidikan Administrasi Perkantoran', '0000-00-00', 'P', '5014', '1411200178', 1),
('13803241090', '10', 'Mutiah Mutiara Firdaus', 'mutiah', 'mutiah@uny.ac.id', 2, 2013, 'Fakultas Ekonomi', 'Pendidikan Akuntansi', '0000-00-00', 'P', '5020', '1411200178', 1),
('13808141049', '19', 'Dwi Isnawati', 'dwi', 'dwi@uny.ac.id', 2, 2013, 'Fakultas Ekonomi', 'Manajemen', '0000-00-00', 'P', '5029', '1411200178', 1),
('13808141051', '7', 'Rinawati Dyah Pertiwi', 'rinawati', 'rinawati@uny.ac.id', 2, 2013, 'Fakultas Ekonomi', 'Manajemen', '0000-00-00', 'P', '5017', '1411200178', 1),
('14102241043', '28', 'Ketfiyah', 'ketfiyah', 'ketfiyah@uny.ac.id', 2, 2014, 'Fakultas Ilmu Pendidikan', 'Pendidikan Luar Sekolah', '0000-00-00', 'P', '5038', '1411200178', 1),
('14111244003', '35', 'Hana Ika Safitri', 'hana', 'hana@uny.ac.id', 2, 2014, 'Fakultas Ilmu Pendidikan', 'PG-Paud', '0000-00-00', 'P', '5045', '1411200178', 1),
('14202241019', '29', 'Loevyani Eka Murnantini Putri', 'loevyani', 'loevyani@uny.ac.id', 2, 2014, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa Inggris', '0000-00-00', 'P', '5039', '1411200178', 1),
('14210141033', '36', 'Haryanto', 'haryanto', 'haryanto@uny.ac.id', 2, 2014, 'Fakultas Bahasa dan Seni', 'Sastra Indonesia', '0000-00-00', 'L', '5046', '1411200178', 1),
('14210144018', '31', 'Nisa Karina Widhiastuti', 'nisa', 'nisa@uny.ac.id', 2, 2014, 'Fakultas Bahasa dan Seni', 'Bahasa dan Sastra Indonesia', '0000-00-00', 'P', '5041', '1411200178', 1),
('14401244005', '30', 'Halimah Chasanah', 'halimah', 'halimah@uny.ac.id', 2, 2014, 'Fakultas Ilmu Sosial', 'Pendidikan Kewarganegaraan', '0000-00-00', 'P', '5040', '1411200178', 1),
('14406241021', '32', 'Fiqhi Amalina Islami', 'fiqhi', 'fiqhi@uny.ac.id', 2, 2014, 'Fakultas Ilmu Sosial', 'Pendidikan Sejarah', '0000-00-00', 'P', '5042', '1411200178', 1),
('14407141009', '50', 'Michel Ike Permatasari', 'michel', 'michel@uny.ac.id', 2, 2014, 'Fakultas Ilmu Sosial', 'Ilmu Sejarah', '0000-00-00', 'P', '5060', '1411200178', 1),
('14416241028', '5', 'Clara Ivana Kumalawati', 'clara', 'clara@uny.ac.id', 2, 2014, 'Fakultas Ilmu Sosial', 'Pendidikan IPS', '0000-00-00', 'P', '5015', '1411200178', 1),
('14510134005', '33', 'Avit Fajari', 'avit', 'avit@uny.ac.id', 2, 2014, 'Fakultas Teknik', 'Teknik Sipil dan Perencanaan', '0000-00-00', 'L', '5043', '1411200178', 1),
('15104241044', '48', 'Nur Naningsih Putri Astuti', 'putri', 'putri@uny.ac.id', 2, 2015, 'Fakultas Ilmu Pendidikan', 'Bimbingan dan Konseling', '0000-00-00', 'P', '5058', '1411200178', 1),
('15112141022', '45', 'Sumarti', 'sumarti', 'sumarti@uny.ac.id', 2, 2015, 'Fakultas Ilmu Pendidikan', 'Psikologi', '0000-00-00', 'P', '5055', '1411200178', 1),
('15201244005', '64', 'M. M. Dwi Handhika', 'dhika', 'dhika@uny.ac.id', 3, 2015, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa dan Sastra Indonesia', '0000-00-00', 'L', '5003', '1411200178', 1),
('15201244010', '46', 'Nindia Pratiwi', 'nindia', 'nindia@uny.ac.id', 2, 2015, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa dan Satra Indoneia', '0000-00-00', 'P', '5056', '1411200178', 1),
('15201244017', '42', 'Yudha Ardiyanta', 'yudha', 'yudha@uny.ac.id', 2, 2015, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa dan Satra Indoneia', '0000-00-00', 'L', '5052', '1411200178', 1),
('15201244018', '44', 'Laily Rizki Khikmawati', 'laily', 'laily@uny.ac.id', 2, 2015, 'Fakultas Bahasa dan Seni', 'Pendidikan Bahasa dan Satra Indoneia', '0000-00-00', 'P', '5054', '1411200178', 1),
('15210141011', '60', 'Anggita Istiqomah Rocharyadi', 'anggita', 'anggita@uny.ac.id', 2, 2015, 'Fakultas Bahasa dan Seni', 'Sastra Indonesia', '0000-00-00', 'P', '5070', '1411200178', 1),
('15210141052', '47', 'Nur Hikmah Hasanah', 'hikmah', 'hikmah@uny.ac.id', 2, 2015, 'Fakultas Bahasa dan Seni', 'Bahasa dan Sastra Indonesia', '0000-00-00', 'P', '5057', '1411200178', 1),
('15312244008', '52', 'Wahyu Tri Sarwiji', 'wahyu', 'wahyu@uny.ac.id', 2, 2015, 'Fakultas Matematika dan IPA', 'Pendidikan IPA', '0000-00-00', 'P', '5062', '1411200178', 1),
('15416241053', '58', 'Yoland Fajar Al Kautsar', 'yoland', 'yoland@uny.ac.id', 2, 2015, 'Fakultas Ilmu Sosial', 'Pendidikan Ilmu Pengetahuan Sosial', '0000-00-00', 'L', '5068', '1411200178', 1),
('15417141046', '43', 'Yuliana Nur Azizah', 'yuliana', 'yuliana@uny.ac.id', 2, 2015, 'Fakultas Ilmu Sosial', 'Administrasi Negara', '0000-00-00', 'P', '5053', '1411200178', 1),
('15419141034', '1', 'Erick Darmansyah', 'erick', 'erick@uny.ac.id', 2, 2015, 'Fakultas Ilmu Sosial', 'Ilmu Komunikasi', '0000-00-00', 'L', '5011', '1411200178', 1),
('15505244001', '41', 'Ermalia Nur Hidayah', 'ermalia', 'ermalia@uny.ac.id', 2, 2015, 'Fakultas Teknik', 'Pendidikan Teknik Sipil dan Perencanaan', '0000-00-00', 'P', '5051', '1411200178', 1),
('15513241045', '39', 'Lathifa Haqi', 'lathifa', 'lathifa@uny.ac.id', 2, 2015, 'Fakultas Teknik', 'Pendidikan Teknik Busana', '0000-00-00', 'P', '5049', '1411200178', 1),
('15703251031', '40', 'Yusuf Tri Nurcahyo', 'yusuf', 'yusuf@uny.ac.id', 2, 2015, 'Fakultas Ilmu Pendidikan', 'Manajemen Pendidikan', '0000-00-00', 'L', '5050', '1411200178', 1),
('15802241045', '65', 'M. Septian Adi Cahyono', 'septian', 'septian@uny.ac.id', 3, 2015, 'Fakultas Ekonomi', 'Pendidikan Administrasi Perkantoran', '0000-00-00', 'L', '5004', '1411200178', 1),
('15811134058', '53', 'Marini', 'marini', 'marini@uny.ac.id', 2, 2015, 'Fakultas Ekonomi', 'D3 Administrasi Perkantoran', '0000-00-00', 'P', '5063', '1411200178', 1),
('16207241023', '55', 'Winda Annisa Ulhaifa', 'winda', 'winda@uny.ac.id', 2, 2016, 'Fakultas Bahasa dan Seni', 'Pendidikan Seni Kerajinan', '0000-00-00', 'P', '5065', '1411200178', 1),
('351411185544102113', '2110131035', 'Taufiq Rohman', 'admin', 'rahmatheruka@gmail.com', 1, 2013, 'probolinggo', 'Surabaya', '2014-09-11', 'Laki-laki', '082231023315', '1411185544', 0),
('411411181104102113', '2110131041', 'Rahmat Heru Kurniawan', 'abcde', 'rahmatheruka@gmail.com', 2, 2013, 'Sidoarjo', 'Gebang Wetan Keputih', '1995-04-09', 'Laki-laki', '082231023315', '1411181104', 1),
('411411181200102113', '2110131041', 'Rahmat Heru Kurniawan', 'admin', 'rahmatheruka@gmail.com', 1, 2013, 'Sidoarjo', 'Surabaya', '1995-04-09', 'Laki-laki', '082231023315', '1411181200', 1),
('411411792601102113', '2110131041', 'Rahmat Heru Kurniawan', '1c7c11bd0c09f5a95b9f55c251f2dae0', 'rahmatheruka@gmail.com', 1, 2013, 'Sidoarjo', 'Surabaya', '2014-09-03', 'Laki-laki', '082231023315', '1411792601', 0);

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
(1, 'SNMPTN'),
(2, 'SBMPTN');

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
(26, 1, '1410304725'),
(27, 2, '1410305649'),
(28, 1, '1410306622'),
(29, 1, '1410306671'),
(30, 2, '1410311311'),
(31, 2, '1410311442'),
(32, 1, '1410336253'),
(33, 1, '1410336648'),
(34, 1, '1410336734'),
(35, 1, '1410336785'),
(36, 2, '1410337443'),
(37, 2, '1410337558'),
(38, 1, '1411126442'),
(39, 1, '1411185999'),
(40, 1, '1411190899'),
(41, 2, '1411190984'),
(42, 1, '1411200139'),
(43, 1, '1411519507'),
(44, 1, '1488103687'),
(45, 1, '1488118929'),
(46, 2, '1488119542'),
(47, 1, '1488119779'),
(48, 1, '1488121798'),
(49, 2, '1488122017'),
(50, 1, '1490011663'),
(51, 1, '1490012274'),
(52, 1, '1490012366'),
(53, 1, '1490016831'),
(54, 1, '1490017128'),
(55, 1, '1490017944'),
(56, 1, '1490051984'),
(57, 2, '1490095477'),
(58, 2, '1490098860'),
(59, 2, '1490099622'),
(60, 1, '1490103258'),
(61, 1, '1490104913'),
(62, 1, '1490114064'),
(63, 1, '1490139817'),
(64, 1, '1490139997'),
(65, 1, '1490140811'),
(66, 1, '1490141255'),
(67, 1, '1490141469'),
(68, 1, '1490141991'),
(69, 2, '1490142217'),
(70, 2, '1490142451'),
(71, 1, '1490142766'),
(72, 1, '1490145110'),
(73, 1, '1490146468'),
(74, 1, '1490147602'),
(75, 2, '1490148077'),
(76, 1, '1490148176');

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
(26, '089631880165', ''),
(26, '089671143895', ''),
(27, '089671143895', '1410305673'),
(27, '089631880165', '1410305759'),
(28, '089631880165', '1410306648'),
(29, '089631880165', '1410306708'),
(29, '089671143895', '1410307599'),
(30, '089631880165', '1410311322'),
(31, '089631880165', '1410311451'),
(31, '089671143895', '1410311495'),
(32, '089631880165', '1410336310'),
(33, '089631880165', '1410336669'),
(34, '089631880165', '1410336749'),
(35, '089631880165', '1410336794'),
(36, '089631880165', '1410337455'),
(39, '351411185544102113', '1411186340'),
(39, '411411181200102113', '1411186413'),
(40, '411411181200102113', '1411190936'),
(41, '411411181200102113', '1411191002'),
(41, '351411185544102113', '1411191016'),
(42, '351411185544102113', '1411200178');

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
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1490148208, 1, 'Admin', 'istrator', 'ADMIN', '0');

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
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `meeting_id` (`meeting_id`,`user_id`);

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
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
