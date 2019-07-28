-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2018 at 06:32 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotik`
--

-- --------------------------------------------------------

--
-- Table structure for table `faktur_penjualan`
--

CREATE TABLE `faktur_penjualan` (
  `no_faktur_penjualan` int(11) NOT NULL,
  `ID_KARYAWAN` int(30) NOT NULL,
  `TANGGAL_P` datetime DEFAULT NULL,
  `Jumlah_Pembelian` int(11) NOT NULL,
  `TOTAL_P` int(30) DEFAULT NULL,
  `PAJAK_P` int(30) DEFAULT NULL,
  `TOTAL_BAYAR_P` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faktur_penjualan`
--

INSERT INTO `faktur_penjualan` (`no_faktur_penjualan`, `ID_KARYAWAN`, `TANGGAL_P`, `Jumlah_Pembelian`, `TOTAL_P`, `PAJAK_P`, `TOTAL_BAYAR_P`) VALUES
(20181, 10038, '2018-01-03 11:30:00', 4, 35000, 350, 35350),
(20182, 10070, '2018-01-05 11:00:00', 6, 68000, 680, 68680),
(20183, 10125, '2018-01-08 11:50:00', 9, 90000, 900, 90900),
(20184, 10038, '2018-01-10 10:30:00', 5, 46000, 460, 46460),
(20185, 10070, '2018-01-11 15:30:00', 3, 28000, 280, 28280),
(20186, 10125, '2018-01-16 14:30:00', 2, 15500, 155, 15655),
(20187, 10038, '2018-01-17 11:30:00', 2, 20000, 200, 20200),
(20188, 10070, '2018-01-20 11:30:00', 2, 24000, 240, 24240),
(20189, 10125, '2018-01-25 10:30:00', 2, 24000, 240, 24240),
(201810, 10038, '2018-01-27 11:30:00', 7, 74000, 740, 74740),
(201811, 10070, '2018-02-01 11:30:00', 3, 34000, 340, 37340),
(201812, 10125, '2018-02-03 12:30:00', 3, 32000, 320, 32320),
(201813, 10038, '2018-02-05 15:00:00', 2, 24000, 240, 24240),
(201814, 10070, '2018-02-08 14:30:00', 7, 70000, 700, 70700),
(201815, 10125, '2018-02-10 11:30:00', 8, 72000, 720, 72720),
(201816, 10038, '2018-02-11 18:30:00', 8, 72000, 720, 72720),
(201817, 10070, '2018-02-15 14:30:00', 7, 68000, 680, 68680),
(201818, 10125, '2018-02-18 11:30:00', 3, 30000, 300, 30300),
(201819, 10038, '2018-02-20 19:30:00', 5, 50000, 500, 50500),
(201820, 10070, '2018-02-25 11:30:00', 5, 60000, 600, 60600),
(201821, 10125, '2018-03-02 11:30:00', 7, 84000, 840, 84840),
(201822, 10038, '2018-03-05 17:30:00', 11, 100500, 1005, 101505),
(201823, 10070, '2018-03-08 11:30:00', 11, 88000, 880, 88880),
(201824, 10125, '2018-03-10 14:30:00', 2, 11000, 110, 11110),
(201825, 10038, '2018-03-13 11:30:00', 3, 30000, 300, 30300),
(201826, 10070, '2018-03-15 19:30:00', 5, 60000, 6000, 66000),
(201827, 10125, '2018-03-17 15:00:00', 6, 60000, 6000, 66000),
(201828, 10038, '2018-03-20 11:30:00', 5, 40000, 4000, 44000),
(201829, 10070, '2018-03-22 20:30:00', 8, 84000, 8400, 92400),
(201830, 10125, '2018-03-25 22:00:00', 8, 70000, 7000, 77000);

-- --------------------------------------------------------

--
-- Table structure for table `faktur_penjualan_detail`
--

CREATE TABLE `faktur_penjualan_detail` (
  `id_penjualan_detail` int(11) NOT NULL,
  `no_faktur_penjualan` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah_pembelian` int(11) NOT NULL,
  `TOTAL_PEMBELIAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faktur_penjualan_detail`
--

INSERT INTO `faktur_penjualan_detail` (`id_penjualan_detail`, `no_faktur_penjualan`, `id_obat`, `jumlah_pembelian`, `TOTAL_PEMBELIAN`) VALUES
(1, 20181, 201601, 2, 24000),
(2, 20181, 201603, 2, 11000),
(3, 20182, 201604, 4, 48000),
(4, 20182, 201612, 2, 20000),
(5, 20183, 201615, 3, 30000),
(6, 20183, 201610, 5, 50000),
(7, 20183, 201612, 1, 10000),
(8, 20184, 201606, 2, 16000),
(9, 20184, 201612, 3, 30000),
(10, 20185, 201606, 1, 8000),
(11, 20185, 201611, 2, 20000),
(12, 20186, 201602, 1, 10000),
(13, 20186, 201603, 1, 5500),
(14, 20187, 201615, 1, 10000),
(15, 20187, 201610, 1, 10000),
(16, 20188, 201605, 2, 24000),
(17, 20189, 201608, 2, 24000),
(20, 201810, 201605, 2, 24000),
(21, 201810, 201611, 5, 50000),
(22, 201811, 201604, 2, 24000),
(23, 201811, 201610, 1, 10000),
(24, 201812, 201611, 2, 20000),
(25, 201812, 201608, 1, 12000),
(26, 201813, 201605, 2, 24000),
(27, 201814, 201602, 4, 40000),
(28, 201814, 201610, 3, 30000),
(29, 201815, 201602, 2, 20000),
(30, 201815, 201609, 2, 12000),
(31, 201815, 201615, 4, 40000),
(32, 201816, 201604, 2, 24000),
(33, 201816, 201606, 6, 48000),
(34, 201817, 201604, 2, 24000),
(35, 201817, 201611, 2, 20000),
(36, 201817, 201614, 3, 24000),
(37, 201818, 201602, 3, 30000),
(38, 201819, 201610, 5, 50000),
(39, 201820, 201604, 5, 60000),
(40, 201821, 201601, 2, 24000),
(41, 201821, 201613, 5, 60000),
(42, 201822, 201603, 3, 16500),
(43, 201822, 201607, 5, 60000),
(44, 201822, 201614, 3, 24000),
(45, 201823, 201608, 4, 48000),
(46, 201823, 201611, 4, 40000),
(47, 201824, 201603, 2, 11000),
(48, 201825, 201612, 3, 30000),
(49, 201826, 201601, 5, 60000),
(50, 201827, 201605, 3, 36000),
(51, 201827, 201606, 3, 24000),
(52, 201828, 201606, 5, 40000),
(53, 201829, 201601, 2, 24000),
(54, 201829, 201602, 6, 60000),
(55, 201830, 201603, 4, 22000),
(56, 201830, 201604, 4, 48000);

--
-- Triggers `faktur_penjualan_detail`
--
DELIMITER $$
CREATE TRIGGER `hargapenjualan` BEFORE INSERT ON `faktur_penjualan_detail` FOR EACH ROW BEGIN
    DECLARE harga_detail INTEGER;
	SET harga_detail = (SELECT o.HARGA FROM obat o WHERE o.ID_OBAT  = NEW.id_obat);
	SET NEW.TOTAL_PEMBELIAN = harga_detail * new.jumlah_pembelian;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pengurangan stok dan harga` AFTER INSERT ON `faktur_penjualan_detail` FOR EACH ROW BEGIN  
DECLARE TOTAL_T INTEGER;
DECLARE PAJAK_T INTEGER;
DECLARE JUMLAH_T INTEGER;
	UPDATE obat set stock = stock - new.jumlah_pembelian
	where ID_OBAT = new.id_obat;
SET TOTAL_T = (SELECT SUM(d.TOTAL_PEMBELIAN) FROM faktur_penjualan_detail d WHERE d.no_faktur_penjualan = new.no_faktur_penjualan); 
SET JUMLAH_T = (SELECT SUM(d.jumlah_pembelian) FROM faktur_penjualan_detail d WHERE d.no_faktur_penjualan = new.no_faktur_penjualan); 
UPDATE faktur_penjualan SET Jumlah_Pembelian = JUMLAH_T WHERE no_faktur_penjualan = new.no_faktur_penjualan;
UPDATE faktur_penjualan SET TOTAL_P = TOTAL_T WHERE no_faktur_penjualan = new.no_faktur_penjualan;
UPDATE faktur_penjualan SET PAJAK_P = TOTAL_T * 0.01 WHERE no_faktur_penjualan = new.no_faktur_penjualan;
UPDATE faktur_penjualan SET TOTAL_BAYAR_P = TOTAL_P + PAJAK_p WHERE no_faktur_penjualan = new.no_faktur_penjualan;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `faktur_suply`
--

CREATE TABLE `faktur_suply` (
  `no_supply` int(11) NOT NULL,
  `ID_KARYAWAN` int(11) NOT NULL,
  `ID_SUPPLIER_S` int(11) NOT NULL,
  `TANGGAL` datetime DEFAULT NULL,
  `Jumlah_Stock` int(11) NOT NULL,
  `TOTAL_S` int(11) DEFAULT NULL,
  `PAJAK_S` int(11) NOT NULL,
  `TOTAL_BAYAR_S` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faktur_suply`
--

INSERT INTO `faktur_suply` (`no_supply`, `ID_KARYAWAN`, `ID_SUPPLIER_S`, `TANGGAL`, `Jumlah_Stock`, `TOTAL_S`, `PAJAK_S`, `TOTAL_BAYAR_S`) VALUES
(201631, 10038, 20171, '2018-01-01 10:00:00', 200, 1000000, 10000, 1010000),
(201632, 10070, 20172, '2018-01-15 13:31:00', 250, 250000, 2500, 25250),
(201633, 10125, 20173, '2018-01-28 11:40:00', 200, 1100000, 11000, 1111000),
(201634, 10038, 20174, '2018-02-01 12:40:00', 150, 180000, 1800, 181800),
(201635, 10070, 20175, '2018-02-15 15:00:00', 200, 2400000, 24000, 2424000),
(201636, 10125, 20176, '2018-02-21 18:10:00', 100, 800000, 8000, 808000),
(201637, 10038, 20177, '2018-03-01 05:30:00', 300, 3600000, 36000, 3636000),
(201638, 10070, 20171, '2018-03-11 12:35:00', 250, 300000, 3000, 303000),
(201639, 10125, 20171, '2018-03-19 14:20:00', 200, 1200000, 12000, 1212000),
(201640, 10038, 20172, '2018-03-28 16:21:00', 300, 3000000, 30000, 3030000);

-- --------------------------------------------------------

--
-- Table structure for table `faktur_supply_detail`
--

CREATE TABLE `faktur_supply_detail` (
  `id_supply_detail` int(11) NOT NULL,
  `no_supply` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `Harga_Satuan` int(11) NOT NULL,
  `Harga_Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faktur_supply_detail`
--

INSERT INTO `faktur_supply_detail` (`id_supply_detail`, `no_supply`, `id_obat`, `jumlah`, `Harga_Satuan`, `Harga_Total`) VALUES
(201631, 201631, 201601, 200, 12000, 1000000),
(201632, 201632, 201602, 250, 10000, 250000),
(201633, 201633, 201603, 200, 5500, 1100000),
(201634, 201634, 201604, 150, 1200, 180000),
(201635, 201635, 201605, 200, 12000, 2400000),
(201636, 201636, 201606, 100, 8000, 800000),
(201637, 201637, 201607, 300, 12000, 3600000),
(201638, 201638, 201608, 250, 1200, 300000),
(201639, 201639, 201609, 200, 6000, 1200000),
(201640, 201640, 201610, 300, 10000, 3000000);

--
-- Triggers `faktur_supply_detail`
--
DELIMITER $$
CREATE TRIGGER `harga_suply` AFTER INSERT ON `faktur_supply_detail` FOR EACH ROW BEGIN
DECLARE harga_s INTEGER;
DECLARE jumlah_s INTEGER;
DECLARE JUMLAH_SS INTEGER;
SET harga_s = (SELECT SUM(d.Harga_Total) FROM faktur_supply_detail d WHERE d.no_supply = new.no_supply); 
SET JUMLAH_SS = (SELECT SUM(d.jumlah) FROM faktur_supply_detail d WHERE d.no_supply = new.no_supply); 
UPDATE faktur_suply SET Jumlah_Stock = JUMLAH_SS WHERE no_supply = new.no_supply;
UPDATE faktur_suply SET TOTAL_S = harga_s WHERE no_supply = new.no_supply;
UPDATE faktur_suply SET PAJAK_S = 0.01 * TOTAL_S WHERE no_supply = new.no_supply;
UPDATE faktur_suply SET TOTAL_BAYAR_S = TOTAL_S + PAJAK_S WHERE no_supply = new.no_supply;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_stock` BEFORE INSERT ON `faktur_supply_detail` FOR EACH ROW BEGIN
    UPDATE obat set stock = stock + new.jumlah
	where ID_OBAT = new.id_obat;
    set NEW.Harga_Total = new.Harga_Satuan * new.jumlah;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `JENIS_OBAT` varchar(30) NOT NULL,
  `PENARIKAN_OBAT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`JENIS_OBAT`, `PENARIKAN_OBAT`) VALUES
('alergi', '2020-10-10'),
('asma', '2020-09-11'),
('bab', '2020-10-12'),
('batuk', '2020-08-13'),
('flu', '2020-09-14'),
('gatal gatal', '2020-10-15'),
('meriang', '2020-07-16'),
('mual', '2020-11-17'),
('obat tidur', '2020-12-18'),
('panas dalam', '2020-09-20'),
('pegal pegal', '2020-12-21'),
('pusing', '2020-11-22'),
('sakit mata', '2020-08-23'),
('sakit telinga', '2020-11-24'),
('sakit tenggorokan', '2020-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `ID_KARYAWAN` int(11) NOT NULL,
  `NAMA_K` varchar(30) DEFAULT NULL,
  `ALAMAT_K` varchar(30) DEFAULT NULL,
  `KOTA_K` varchar(30) DEFAULT NULL,
  `STATUS` enum('Single','Menikah') DEFAULT NULL,
  `NO_TELEPEON` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`ID_KARYAWAN`, `NAMA_K`, `ALAMAT_K`, `KOTA_K`, `STATUS`, `NO_TELEPEON`) VALUES
(10038, 'Arif rahmawan', 'jl. ir.h.djuanda', 'Tanggerang', 'Single', '087763487422'),
(10070, 'Ari Doni Awan', 'Kota bambu , jalan tali', 'Jakarta', 'Single', '082147483647'),
(10125, 'Rizkiy Emiulhaj Poha', 'jl Lombok', 'Jakarta', 'Single', '081282312426');

-- --------------------------------------------------------

--
-- Table structure for table `log_obat`
--

CREATE TABLE `log_obat` (
  `id` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `stokawal` int(11) NOT NULL,
  `hargaawal` int(11) NOT NULL,
  `stokberubah` int(11) NOT NULL,
  `hargaberubah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_obat`
--

INSERT INTO `log_obat` (`id`, `id_obat`, `waktu`, `stokawal`, `hargaawal`, `stokberubah`, `hargaberubah`) VALUES
(31, 201609, '2018-01-15 11:46:23', 206, 6000, 196, 6000),
(32, 201604, '2018-01-15 11:47:38', 142, 12000, 137, 12000),
(33, 201605, '2018-01-15 11:47:38', 151, 12000, 146, 12000),
(34, 201603, '2018-01-15 11:48:29', 238, 5500, 238, 500),
(35, 201603, '2018-01-15 11:49:28', 238, 500, 238, 5500),
(36, 201602, '2018-01-15 13:48:43', 120, 10000, 119, 10000),
(37, 201609, '2018-01-15 13:48:43', 196, 6000, 195, 6000),
(38, 201609, '2018-01-15 13:49:15', 195, 6000, 192, 6000),
(39, 201604, '2018-01-15 18:22:27', 137, 12000, 133, 12000),
(40, 201601, '2018-01-15 18:22:27', 248, 12000, 246, 12000),
(41, 201604, '2018-01-15 18:22:56', 133, 12000, 130, 12000),
(42, 201604, '2018-01-15 18:22:56', 130, 12000, 128, 12000),
(43, 201603, '2018-01-15 18:24:41', 238, 5500, 235, 5500),
(44, 201603, '2018-01-15 18:25:11', 235, 5500, 230, 5500),
(45, 201603, '2018-01-15 18:52:17', 230, 5500, 227, 5500),
(46, 201612, '2018-01-15 18:52:17', 135, 10000, 130, 10000),
(47, 201603, '2018-01-15 18:53:39', 227, 5500, 223, 5500),
(48, 201604, '2018-01-15 18:53:39', 128, 12000, 126, 12000),
(50, 201603, '2018-01-15 18:56:20', 223, 5500, 221, 5500),
(51, 201604, '2018-01-15 18:56:20', 126, 12000, 125, 12000),
(52, 201604, '2018-01-15 18:57:49', 125, 12000, 122, 12000),
(53, 201609, '2018-01-15 18:57:49', 192, 6000, 187, 6000),
(54, 201606, '2018-01-15 19:01:16', 115, 8000, 111, 8000),
(56, 201605, '2018-01-15 19:04:12', 146, 12000, 143, 12000),
(57, 201605, '2018-01-15 19:04:31', 143, 12000, 139, 12000),
(58, 201605, '2018-01-15 19:04:31', 139, 12000, 134, 12000),
(59, 201601, '2018-01-15 19:17:25', 246, 12000, 250, 12000),
(61, 201604, '2018-01-15 19:33:33', 122, 12000, 125, 12000),
(62, 201606, '2018-01-15 19:33:49', 111, 8000, 116, 8000),
(63, 201605, '2018-01-15 19:36:42', 134, 12000, 138, 12000),
(64, 201601, '2018-01-19 09:43:06', 250, 12000, 230, 12000),
(65, 201602, '2018-01-19 09:43:06', 119, 10000, 94, 10000),
(66, 201603, '2018-01-19 09:52:57', 221, 5500, 200, 5500),
(67, 201604, '2018-01-19 09:52:57', 125, 12000, 100, 12000),
(68, 201604, '2018-01-19 10:08:28', 100, 12000, 80, 12000),
(69, 201605, '2018-01-19 10:35:09', 138, 12000, 125, 12000),
(70, 201606, '2018-01-19 10:35:09', 116, 8000, 100, 8000),
(71, 201607, '2018-01-19 10:39:02', 128, 12000, 118, 12000),
(72, 201608, '2018-01-19 10:39:02', 128, 12000, 113, 12000),
(73, 201609, '2018-01-19 10:45:22', 187, 6000, 162, 6000),
(74, 201610, '2018-01-19 10:45:22', 130, 10000, 115, 10000),
(75, 201601, '2018-01-19 15:30:51', 230, 12000, 430, 12000),
(76, 201602, '2018-01-19 15:30:51', 94, 10000, 344, 10000),
(77, 201603, '2018-01-19 15:36:29', 200, 5500, 400, 5500),
(78, 201604, '2018-01-19 15:36:29', 80, 12000, 230, 12000),
(79, 201605, '2018-01-19 15:51:32', 125, 12000, 325, 12000),
(80, 201606, '2018-01-19 15:51:32', 100, 8000, 200, 8000),
(81, 201607, '2018-01-19 15:58:05', 118, 12000, 418, 12000),
(82, 201608, '2018-01-19 15:58:05', 113, 12000, 363, 12000),
(85, 201609, '2018-01-19 16:06:18', 162, 6000, 362, 6000),
(86, 201610, '2018-01-19 16:06:18', 115, 10000, 415, 10000),
(87, 201601, '2018-01-19 16:30:01', 430, 12000, 427, 12000),
(88, 201606, '2018-01-19 16:30:01', 200, 8000, 195, 8000),
(89, 201604, '2018-01-19 16:30:01', 230, 12000, 228, 12000),
(90, 201601, '2018-01-19 18:00:03', 427, 12000, 425, 12000),
(91, 201603, '2018-01-19 18:00:03', 400, 5500, 398, 5500),
(92, 201604, '2018-01-19 18:03:01', 228, 12000, 224, 12000),
(93, 201612, '2018-01-19 18:03:01', 130, 10000, 128, 10000),
(94, 201615, '2018-01-19 18:05:09', 121, 10000, 118, 10000),
(95, 201610, '2018-01-19 18:05:09', 415, 10000, 410, 10000),
(96, 201612, '2018-01-19 18:05:09', 128, 10000, 127, 10000),
(97, 201606, '2018-01-19 18:20:30', 195, 8000, 193, 8000),
(98, 201612, '2018-01-19 18:20:30', 127, 10000, 124, 10000),
(99, 201606, '2018-01-19 18:21:15', 193, 8000, 192, 8000),
(100, 201611, '2018-01-19 18:21:15', 133, 10000, 131, 10000),
(101, 201602, '2018-01-19 18:21:50', 344, 10000, 343, 10000),
(102, 201603, '2018-01-19 18:21:50', 398, 5500, 397, 5500),
(103, 201615, '2018-01-19 18:23:15', 118, 10000, 117, 10000),
(104, 201610, '2018-01-19 18:23:15', 410, 10000, 409, 10000),
(106, 201605, '2018-01-19 18:24:43', 325, 12000, 323, 12000),
(107, 201608, '2018-01-19 18:25:49', 363, 12000, 361, 12000),
(108, 201605, '2018-01-19 18:42:31', 323, 12000, 321, 12000),
(109, 201611, '2018-01-19 18:42:31', 131, 10000, 126, 10000),
(110, 201604, '2018-01-19 18:43:35', 224, 12000, 222, 12000),
(111, 201610, '2018-01-19 18:43:35', 409, 10000, 408, 10000),
(112, 201611, '2018-01-19 18:44:59', 126, 10000, 124, 10000),
(113, 201608, '2018-01-19 18:44:59', 361, 12000, 360, 12000),
(114, 201605, '2018-01-19 18:45:35', 321, 12000, 319, 12000),
(115, 201602, '2018-01-19 18:46:39', 343, 10000, 339, 10000),
(116, 201610, '2018-01-19 18:46:39', 408, 10000, 405, 10000),
(117, 201602, '2018-01-19 18:49:17', 339, 10000, 337, 10000),
(118, 201609, '2018-01-19 18:49:17', 362, 6000, 360, 6000),
(119, 201615, '2018-01-19 18:49:17', 117, 10000, 113, 10000),
(120, 201604, '2018-01-19 18:50:13', 222, 12000, 220, 12000),
(121, 201606, '2018-01-19 18:50:13', 192, 8000, 186, 8000),
(122, 201604, '2018-01-19 18:53:06', 220, 12000, 218, 12000),
(123, 201611, '2018-01-19 18:53:06', 124, 10000, 122, 10000),
(124, 201614, '2018-01-19 18:53:06', 236, 8000, 233, 8000),
(125, 201602, '2018-01-19 18:54:24', 337, 10000, 334, 10000),
(126, 201610, '2018-01-19 18:56:29', 405, 10000, 400, 10000),
(127, 201604, '2018-01-19 18:57:07', 218, 12000, 213, 12000),
(128, 201601, '2018-01-19 18:58:53', 425, 12000, 423, 12000),
(129, 201613, '2018-01-19 18:58:53', 137, 12000, 132, 12000),
(130, 201603, '2018-01-19 19:00:46', 397, 5500, 394, 5500),
(131, 201607, '2018-01-19 19:00:46', 418, 12000, 413, 12000),
(132, 201614, '2018-01-19 19:00:46', 233, 8000, 230, 8000),
(133, 201608, '2018-01-19 19:01:46', 360, 12000, 356, 12000),
(134, 201611, '2018-01-19 19:01:46', 122, 10000, 118, 10000),
(135, 201603, '2018-01-19 19:02:23', 394, 5500, 392, 5500),
(136, 201612, '2018-01-19 19:03:33', 124, 10000, 121, 10000),
(137, 201601, '2018-01-19 19:04:13', 423, 12000, 418, 12000),
(138, 201605, '2018-01-19 19:04:48', 319, 12000, 316, 12000),
(139, 201606, '2018-01-19 19:04:48', 186, 8000, 183, 8000),
(140, 201606, '2018-01-19 19:05:43', 183, 8000, 178, 8000),
(141, 201601, '2018-01-19 19:06:19', 418, 12000, 416, 12000),
(142, 201602, '2018-01-19 19:06:19', 334, 10000, 328, 10000),
(143, 201603, '2018-01-19 19:07:34', 392, 5500, 388, 5500),
(144, 201604, '2018-01-19 19:07:34', 213, 12000, 209, 12000),
(145, 201604, '2018-01-20 22:25:32', 209, 12000, 207, 12000),
(146, 201613, '2018-01-20 22:25:32', 132, 12000, 129, 12000),
(148, 201608, '2018-01-20 22:40:20', 356, 12000, 358, 12000),
(149, 201609, '2018-01-20 22:40:20', 360, 6000, 366, 6000),
(150, 201613, '2018-01-21 12:30:57', 129, 12000, 132, 12000),
(151, 201615, '2018-01-21 12:30:57', 113, 10000, 125, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `ID_OBAT` int(11) NOT NULL,
  `JENIS_OBAT` varchar(30) NOT NULL,
  `NAMA_O` varchar(30) DEFAULT NULL,
  `HARGA` int(11) DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  `EXPIRED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`ID_OBAT`, `JENIS_OBAT`, `NAMA_O`, `HARGA`, `STOCK`, `EXPIRED`) VALUES
(201601, 'alergi', 'hydrocortisons', 12000, 416, '2020-12-10'),
(201602, 'asma', 'kortikosteroid', 10000, 328, '2020-12-11'),
(201603, 'bab', 'diapet', 5500, 388, '2020-12-12'),
(201604, 'batuk', 'obh', 12000, 207, '2020-12-13'),
(201605, 'flu', 'procold', 12000, 316, '2020-12-14'),
(201606, 'gatal gatal', 'elocon', 8000, 178, '2020-12-15'),
(201607, 'meriang', 'Paracetamol', 12000, 413, '2020-12-16'),
(201608, 'mual', 'Siproheptadin', 12000, 358, '2020-12-17'),
(201609, 'obat tidur', 'zolphidem', 6000, 366, '2020-12-18'),
(201610, 'panas dalam', 'adem sari', 10000, 400, '2020-12-20'),
(201611, 'pegal pegal', 'viostin Ds', 10000, 118, '2020-12-21'),
(201612, 'pusing', 'paramex', 10000, 121, '2020-12-22'),
(201613, 'sakit mata', 'insto', 12000, 132, '2020-12-23'),
(201614, 'sakit telinga', 'otopain', 8000, 230, '2020-12-24'),
(201615, 'sakit tenggorokan', 'strepsils', 10000, 125, '2020-12-25');

--
-- Triggers `obat`
--
DELIMITER $$
CREATE TRIGGER `perubahan stok` BEFORE UPDATE ON `obat` FOR EACH ROW BEGIN
INSERT INTO `log_obat` (`id`, `id_obat`, `waktu`, `stokawal`, `hargaawal`, `stokberubah`, `hargaberubah`) VALUES (NULL, new.ID_OBAT, now(), OLD.STOCK, OLD.HARGA, new.STOCK, new.HARGA);
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `ID_SUPPLIER_S` int(11) NOT NULL,
  `NAMA_S` varchar(30) DEFAULT NULL,
  `ALAMAT_S` varchar(50) DEFAULT NULL,
  `KOTA_S` varchar(30) DEFAULT NULL,
  `NO_TELEPON_S` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`ID_SUPPLIER_S`, `NAMA_S`, `ALAMAT_S`, `KOTA_S`, `NO_TELEPON_S`) VALUES
(20171, 'Pt.hilmia', 'Batu ceper , batu sari, darusalam 1', 'Tangerang', '0217548912'),
(20172, 'Pt.herbalis', 'Padalarang, Jl. cendrawasih', 'Bandung', '0216548132'),
(20173, 'Pt.careeys', 'panguyuban , jl ilitan rt 08/008 no 2', 'solo', '0214758945'),
(20174, 'Pt.healty', 'Jl pandang panjang  rt05/008 no 5', 'Padang', '0213654879'),
(20175, 'Pt.heaven', 'kota bambu selatan, rt 07/009 no 9', 'jakarta barat', '0213546778'),
(20176, 'Pt.immuns', 'jl lancelot , kecamatan odete rt 02/08 no 11', 'Depok', '0215486541'),
(20177, 'pt.lifesteel', 'jl gatot, kecamatan diggie rt 01/03', 'bogor', '0214458966');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_barang`
-- (See below for the actual view)
--
CREATE TABLE `view_barang` (
`ID_OBAT` int(11)
,`NAMA_O` varchar(30)
,`STOCK` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_penarikan_obat`
-- (See below for the actual view)
--
CREATE TABLE `view_penarikan_obat` (
`ID_OBAT` int(11)
,`NAMA_O` varchar(30)
,`JENIS_OBAT` varchar(30)
,`PENARIKAN_OBAT` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_penjualan_febuari`
-- (See below for the actual view)
--
CREATE TABLE `view_penjualan_febuari` (
`no_faktur_penjualan` int(11)
,`ID_KARYAWAN` int(30)
,`TANGGAL_P` datetime
,`id_obat` int(11)
,`NAMA_O` varchar(30)
,`Jumlah_Pembelian` int(11)
,`TOTAL_BAYAR_P` int(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_penjualan_januari`
-- (See below for the actual view)
--
CREATE TABLE `view_penjualan_januari` (
`no_faktur_penjualan` int(11)
,`ID_KARYAWAN` int(30)
,`TANGGAL_P` datetime
,`id_obat` int(11)
,`NAMA_O` varchar(30)
,`Jumlah_Pembelian` int(11)
,`TOTAL_BAYAR_P` int(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_penjualan_maret`
-- (See below for the actual view)
--
CREATE TABLE `view_penjualan_maret` (
`no_faktur_penjualan` int(11)
,`ID_KARYAWAN` int(30)
,`TANGGAL_P` datetime
,`id_obat` int(11)
,`NAMA_O` varchar(30)
,`Jumlah_Pembelian` int(11)
,`TOTAL_BAYAR_P` int(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_supply_febuari`
-- (See below for the actual view)
--
CREATE TABLE `view_supply_febuari` (
`no_supply` int(11)
,`ID_KARYAWAN` int(11)
,`ID_SUPPLIER_S` int(11)
,`TANGGAL` datetime
,`id_obat` int(11)
,`Nama_Obat` varchar(30)
,`Jumlah_Stock` int(11)
,`TOTAL_BAYAR_S` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_supply_januari`
-- (See below for the actual view)
--
CREATE TABLE `view_supply_januari` (
`no_supply` int(11)
,`ID_KARYAWAN` int(11)
,`ID_SUPPLIER_S` int(11)
,`TANGGAL` datetime
,`id_obat` int(11)
,`Nama_Obat` varchar(30)
,`Jumlah_Stock` int(11)
,`TOTAL_BAYAR_S` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_supply_maret`
-- (See below for the actual view)
--
CREATE TABLE `view_supply_maret` (
`no_supply` int(11)
,`ID_KARYAWAN` int(11)
,`ID_SUPPLIER_S` int(11)
,`TANGGAL` datetime
,`id_obat` int(11)
,`Nama_Obat` varchar(30)
,`Jumlah_Stock` int(11)
,`TOTAL_BAYAR_S` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_barang`
--
DROP TABLE IF EXISTS `view_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_barang`  AS  select `obat`.`ID_OBAT` AS `ID_OBAT`,`obat`.`NAMA_O` AS `NAMA_O`,`obat`.`STOCK` AS `STOCK` from `obat` ;

-- --------------------------------------------------------

--
-- Structure for view `view_penarikan_obat`
--
DROP TABLE IF EXISTS `view_penarikan_obat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_penarikan_obat`  AS  select `a`.`ID_OBAT` AS `ID_OBAT`,`a`.`NAMA_O` AS `NAMA_O`,`a`.`JENIS_OBAT` AS `JENIS_OBAT`,`b`.`PENARIKAN_OBAT` AS `PENARIKAN_OBAT` from (`obat` `a` join `jenis` `b`) where (`a`.`JENIS_OBAT` = `b`.`JENIS_OBAT`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_penjualan_febuari`
--
DROP TABLE IF EXISTS `view_penjualan_febuari`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_penjualan_febuari`  AS  select `a`.`no_faktur_penjualan` AS `no_faktur_penjualan`,`a`.`ID_KARYAWAN` AS `ID_KARYAWAN`,`a`.`TANGGAL_P` AS `TANGGAL_P`,`b`.`id_obat` AS `id_obat`,`c`.`NAMA_O` AS `NAMA_O`,`a`.`Jumlah_Pembelian` AS `Jumlah_Pembelian`,`a`.`TOTAL_BAYAR_P` AS `TOTAL_BAYAR_P` from ((`faktur_penjualan` `a` left join `faktur_penjualan_detail` `b` on((`a`.`no_faktur_penjualan` = `b`.`no_faktur_penjualan`))) left join `obat` `c` on((`b`.`id_obat` = `c`.`ID_OBAT`))) where (`a`.`TANGGAL_P` between '2018-02-01 00:00:00' and '2018-03-01 00:00:00') group by `a`.`no_faktur_penjualan` ;

-- --------------------------------------------------------

--
-- Structure for view `view_penjualan_januari`
--
DROP TABLE IF EXISTS `view_penjualan_januari`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_penjualan_januari`  AS  select `a`.`no_faktur_penjualan` AS `no_faktur_penjualan`,`a`.`ID_KARYAWAN` AS `ID_KARYAWAN`,`a`.`TANGGAL_P` AS `TANGGAL_P`,`b`.`id_obat` AS `id_obat`,`c`.`NAMA_O` AS `NAMA_O`,`a`.`Jumlah_Pembelian` AS `Jumlah_Pembelian`,`a`.`TOTAL_BAYAR_P` AS `TOTAL_BAYAR_P` from ((`faktur_penjualan` `a` left join `faktur_penjualan_detail` `b` on((`a`.`no_faktur_penjualan` = `b`.`no_faktur_penjualan`))) left join `obat` `c` on((`b`.`id_obat` = `c`.`ID_OBAT`))) where (`a`.`TANGGAL_P` between '2018-01-01 00:00:00' and '2018-02-01 00:00:00') group by `a`.`no_faktur_penjualan` ;

-- --------------------------------------------------------

--
-- Structure for view `view_penjualan_maret`
--
DROP TABLE IF EXISTS `view_penjualan_maret`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_penjualan_maret`  AS  select `a`.`no_faktur_penjualan` AS `no_faktur_penjualan`,`a`.`ID_KARYAWAN` AS `ID_KARYAWAN`,`a`.`TANGGAL_P` AS `TANGGAL_P`,`b`.`id_obat` AS `id_obat`,`c`.`NAMA_O` AS `NAMA_O`,`a`.`Jumlah_Pembelian` AS `Jumlah_Pembelian`,`a`.`TOTAL_BAYAR_P` AS `TOTAL_BAYAR_P` from ((`faktur_penjualan` `a` left join `faktur_penjualan_detail` `b` on((`a`.`no_faktur_penjualan` = `b`.`no_faktur_penjualan`))) left join `obat` `c` on((`b`.`id_obat` = `c`.`ID_OBAT`))) where (`a`.`TANGGAL_P` between '2018-03-01 00:00:00' and '2018-04-01 00:00:00') group by `a`.`no_faktur_penjualan` ;

-- --------------------------------------------------------

--
-- Structure for view `view_supply_febuari`
--
DROP TABLE IF EXISTS `view_supply_febuari`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_supply_febuari`  AS  select `a`.`no_supply` AS `no_supply`,`a`.`ID_KARYAWAN` AS `ID_KARYAWAN`,`a`.`ID_SUPPLIER_S` AS `ID_SUPPLIER_S`,`a`.`TANGGAL` AS `TANGGAL`,`b`.`id_obat` AS `id_obat`,`c`.`NAMA_O` AS `Nama_Obat`,`a`.`Jumlah_Stock` AS `Jumlah_Stock`,`a`.`TOTAL_BAYAR_S` AS `TOTAL_BAYAR_S` from ((`faktur_suply` `a` left join `faktur_supply_detail` `b` on((`a`.`no_supply` = `b`.`no_supply`))) left join `obat` `c` on((`b`.`id_obat` = `c`.`ID_OBAT`))) where (`a`.`TANGGAL` between '2018-02-01 00:00:00' and '2018-03-01 00:00:00') group by `a`.`no_supply` ;

-- --------------------------------------------------------

--
-- Structure for view `view_supply_januari`
--
DROP TABLE IF EXISTS `view_supply_januari`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_supply_januari`  AS  select `a`.`no_supply` AS `no_supply`,`a`.`ID_KARYAWAN` AS `ID_KARYAWAN`,`a`.`ID_SUPPLIER_S` AS `ID_SUPPLIER_S`,`a`.`TANGGAL` AS `TANGGAL`,`b`.`id_obat` AS `id_obat`,`c`.`NAMA_O` AS `Nama_Obat`,`a`.`Jumlah_Stock` AS `Jumlah_Stock`,`a`.`TOTAL_BAYAR_S` AS `TOTAL_BAYAR_S` from ((`faktur_suply` `a` left join `faktur_supply_detail` `b` on((`a`.`no_supply` = `b`.`no_supply`))) left join `obat` `c` on((`b`.`id_obat` = `c`.`ID_OBAT`))) where (`a`.`TANGGAL` between '2018-01-01 00:00:00' and '2018-02-01 00:00:00') group by `a`.`no_supply` ;

-- --------------------------------------------------------

--
-- Structure for view `view_supply_maret`
--
DROP TABLE IF EXISTS `view_supply_maret`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_supply_maret`  AS  select `a`.`no_supply` AS `no_supply`,`a`.`ID_KARYAWAN` AS `ID_KARYAWAN`,`a`.`ID_SUPPLIER_S` AS `ID_SUPPLIER_S`,`a`.`TANGGAL` AS `TANGGAL`,`b`.`id_obat` AS `id_obat`,`c`.`NAMA_O` AS `Nama_Obat`,`a`.`Jumlah_Stock` AS `Jumlah_Stock`,`a`.`TOTAL_BAYAR_S` AS `TOTAL_BAYAR_S` from ((`faktur_suply` `a` left join `faktur_supply_detail` `b` on((`a`.`no_supply` = `b`.`no_supply`))) left join `obat` `c` on((`b`.`id_obat` = `c`.`ID_OBAT`))) where (`a`.`TANGGAL` between '2018-03-01 00:00:00' and '2018-04-01 00:00:00') group by `a`.`no_supply` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faktur_penjualan`
--
ALTER TABLE `faktur_penjualan`
  ADD PRIMARY KEY (`no_faktur_penjualan`),
  ADD KEY `FK_MEMBERIKAN_KE_PELANGGAN` (`ID_KARYAWAN`);

--
-- Indexes for table `faktur_penjualan_detail`
--
ALTER TABLE `faktur_penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`),
  ADD KEY `no_faktur_penjualan` (`no_faktur_penjualan`),
  ADD KEY `harga` (`TOTAL_PEMBELIAN`),
  ADD KEY `Obat` (`id_obat`);

--
-- Indexes for table `faktur_suply`
--
ALTER TABLE `faktur_suply`
  ADD PRIMARY KEY (`no_supply`),
  ADD KEY `FK_DIBERIKAN_TANDA` (`ID_SUPPLIER_S`),
  ADD KEY `FK_DI_TANGGUNGJAWABKAN` (`ID_KARYAWAN`);

--
-- Indexes for table `faktur_supply_detail`
--
ALTER TABLE `faktur_supply_detail`
  ADD PRIMARY KEY (`id_supply_detail`),
  ADD KEY `nomor_suply` (`no_supply`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`JENIS_OBAT`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`ID_KARYAWAN`),
  ADD KEY `NAMA_K` (`NAMA_K`),
  ADD KEY `NAMA_K_2` (`NAMA_K`);

--
-- Indexes for table `log_obat`
--
ALTER TABLE `log_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_obat_2` (`id_obat`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`ID_OBAT`),
  ADD KEY `FK_RELATIONSHIP_8` (`JENIS_OBAT`),
  ADD KEY `HARGA` (`HARGA`),
  ADD KEY `HARGA_2` (`HARGA`),
  ADD KEY `HARGA_3` (`HARGA`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`ID_SUPPLIER_S`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faktur_penjualan_detail`
--
ALTER TABLE `faktur_penjualan_detail`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `faktur_supply_detail`
--
ALTER TABLE `faktur_supply_detail`
  MODIFY `id_supply_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201643;

--
-- AUTO_INCREMENT for table `log_obat`
--
ALTER TABLE `log_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faktur_penjualan`
--
ALTER TABLE `faktur_penjualan`
  ADD CONSTRAINT `ditanggungjawab` FOREIGN KEY (`ID_KARYAWAN`) REFERENCES `karyawan` (`ID_KARYAWAN`);

--
-- Constraints for table `faktur_penjualan_detail`
--
ALTER TABLE `faktur_penjualan_detail`
  ADD CONSTRAINT `Obat` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`ID_OBAT`) ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_detail` FOREIGN KEY (`no_faktur_penjualan`) REFERENCES `faktur_penjualan` (`no_faktur_penjualan`) ON UPDATE CASCADE;

--
-- Constraints for table `faktur_suply`
--
ALTER TABLE `faktur_suply`
  ADD CONSTRAINT `supply` FOREIGN KEY (`ID_SUPPLIER_S`) REFERENCES `supplier` (`ID_SUPPLIER_S`),
  ADD CONSTRAINT `tanggungjawab` FOREIGN KEY (`ID_KARYAWAN`) REFERENCES `karyawan` (`ID_KARYAWAN`);

--
-- Constraints for table `faktur_supply_detail`
--
ALTER TABLE `faktur_supply_detail`
  ADD CONSTRAINT `id_obat` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`ID_OBAT`),
  ADD CONSTRAINT `nomor_suply` FOREIGN KEY (`no_supply`) REFERENCES `faktur_suply` (`no_supply`);

--
-- Constraints for table `log_obat`
--
ALTER TABLE `log_obat`
  ADD CONSTRAINT `id` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`ID_OBAT`) ON UPDATE CASCADE;

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`JENIS_OBAT`) REFERENCES `jenis` (`JENIS_OBAT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
