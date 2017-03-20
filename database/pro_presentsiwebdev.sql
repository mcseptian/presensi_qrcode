-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2014 at 10:28 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pro_presentsiwebdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE IF NOT EXISTS `tbl_anggota` (
  `id` varchar(20) NOT NULL,
  `NRP` varchar(15) NOT NULL,
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
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_departemen` (`id_departemen`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id`, `NRP`, `nama`, `password`, `email`, `id_departemen`, `tahun_angkatan`, `alamat_asal`, `alamat_sby`, `tanggal_lahir`, `gender`, `no_telp`, `tanggal_join`, `status`) VALUES
('351411185544102113', '2110131035', 'Taufiq Rohman', 'admin', 'rahmatheruka@gmail.com', 1, 2013, 'probolinggo', 'Surabaya', '2014-09-11', 'Laki-laki', '082231023315', '1411185544', 0),
('411411181104102113', '2110131041', 'Rahmat Heru Kurniawan', 'abcde', 'rahmatheruka@gmail.com', 2, 2013, 'Sidoarjo', 'Gebang Wetan Keputih', '1995-04-09', 'Laki-laki', '082231023315', '1411181104', 0),
('411411181200102113', '2110131041', 'Rahmat Heru Kurniawan', 'admin', 'rahmatheruka@gmail.com', 1, 2013, 'Sidoarjo', 'Surabaya', '1995-04-09', 'Laki-laki', '082231023315', '1411181200', 1),
('411411792601102113', '2110131041', 'Rahmat Heru Kurniawan', '1c7c11bd0c09f5a95b9f55c251f2dae0', 'rahmatheruka@gmail.com', 1, 2013, 'Sidoarjo', 'Surabaya', '2014-09-03', 'Laki-laki', '082231023315', '1411792601', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departemen`
--

CREATE TABLE IF NOT EXISTS `tbl_departemen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_departemen`
--

INSERT INTO `tbl_departemen` (`id`, `nama`) VALUES
(1, 'D4 Informatika'),
(2, 'D3 Informatika'),
(3, 'D4 Teknik Komputer'),
(4, 'D3 Multimedia Broadcasting');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelompok`
--

CREATE TABLE IF NOT EXISTS `tbl_kelompok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_kelompok`
--

INSERT INTO `tbl_kelompok` (`id`, `nama`) VALUES
(1, 'Web Programmer'),
(2, 'Web Designer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pertemuan`
--

CREATE TABLE IF NOT EXISTS `tbl_pertemuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelompok` int(11) NOT NULL,
  `waktu` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kelompok` (`id_kelompok`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

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
(43, 1, '1411519507');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_presentsi`
--

CREATE TABLE IF NOT EXISTS `tbl_presentsi` (
  `id_pertemuan` int(11) NOT NULL,
  `id_anggota` varchar(30) NOT NULL,
  `waktu` varchar(30) NOT NULL,
  KEY `id_pertemuan` (`id_pertemuan`),
  KEY `id_anggota` (`id_anggota`)
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
