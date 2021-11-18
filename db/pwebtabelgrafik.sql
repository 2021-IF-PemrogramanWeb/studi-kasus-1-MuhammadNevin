-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Nov 2021 pada 13.00
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_reason`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kejadian`
--

CREATE TABLE `kejadian` (
  `KJD_ID` int(11) NOT NULL,
  `KJD_ON` datetime NOT NULL DEFAULT current_timestamp(),
  `KJD_OF` datetime NOT NULL DEFAULT current_timestamp(),
  `KJD_ACT` varchar(256) DEFAULT NULL,
  `KJD_DIS` varchar(256) DEFAULT NULL,
  `R_ID_KJD` int(11) NOT NULL,
  `USR_ID_KJD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kejadian`
--

INSERT INTO `kejadian` (`KJD_ID`, `KJD_ON`, `KJD_OF`, `KJD_ACT`, `KJD_DIS`, `R_ID_KJD`, `USR_ID_KJD`) VALUES
(1, '2021-11-01 07:07:46', '2021-11-01 04:07:46', 'Paradista', 'Pramatya', 2, 1),
(2, '2021-11-01 07:10:23', '2021-11-01 07:10:56', 'Pertiwi', 'Pramudita', 2, 1),
(3, '2021-11-01 07:10:23', '2021-11-01 07:10:56', 'Damawanti', 'Danastri', 3, 1),
(4, '2021-11-01 07:10:21', '2021-11-01 07:10:59', 'Dialya', 'Cahyadewi', 4, 1),
(5, '2021-11-01 09:10:00', '2021-11-01 09:10:56', 'Padmasaris', 'Praningtyas', 5, 1),
(6, '2021-11-01 09:05:23', '2021-11-01 09:10:58', 'Nala', 'Mustika', 6, 1),
(7, '2021-11-02 17:10:04', '2021-11-02 17:44:57', 'Maya', 'Mega', 7, 1),
(8, '2021-11-02 17:10:04', '2021-11-02 17:33:57', 'Laksita', 'Maharani', 8, 1),
(9, '2021-11-02 18:10:23', '2021-11-02 18:22:58', 'Lestari', 'Kinasih', 9, 1),
(10, '2021-11-02 18:12:14', '2021-11-02 18:12:58', 'Kayshilla', 'Kusuma ', 10, 1),
(11, '2021-11-02 21:10:21', '2021-11-02 21:15:58', 'Indraswari', 'Indriyani', 11, 1),
(12, '2021-11-02 22:05:24', '2021-11-02 22:56:57', 'Hastanti', 'Helmawati', 12, 1),
(13, '2021-11-03 03:10:12', '2021-11-03 03:34:56', 'Hardiyati', 'Hapsari', 3, 1),
(14, '2021-11-03 03:08:11', '2021-11-03 03:23:54', 'Elok', 'Diyatri', 14, 1),
(15, '2021-11-03 05:10:10', '2021-11-03 05:34:51', 'Dita', 'Dian', 15, 1),
(16, '2021-11-03 05:10:23', '2021-11-03 05:24:56', 'Cempaka', 'Cahyaningrum', 16, 1),
(17, '2021-11-03 07:23:11', '2021-11-03 07:23:56', 'Bintari', 'Basagita', 2, 1),
(18, '2021-11-03 07:10:09', '2021-11-03 07:16:54', 'Asmiasih', 'Arisanti', 1, 1),
(20, '2021-11-03 09:16:04', '2021-11-03 09:16:21', 'Astagina', 'Arini', 3, 1),
(21, '2021-11-01 07:10:23', '2021-11-01 07:10:56', 'Damawanti', 'Danastris', 1, 2),
(22, '2021-11-01 07:10:21', '2021-11-01 07:10:59', 'Dialya', 'Cahyadewi', 2, 2),
(23, '2021-11-01 09:10:00', '2021-11-01 09:10:56', 'Padmasari', 'Praningtyas', 2, 2),
(24, '2021-11-01 09:05:23', '2021-11-01 09:10:58', 'Nala', 'Mustika', 4, 2),
(25, '2021-11-02 17:10:04', '2021-11-02 17:44:57', 'Maya', 'Mega', 5, 2),
(26, '2021-11-02 17:10:04', '2021-11-02 17:33:57', 'Laksita', 'Maharani', 6, 2),
(27, '2021-11-02 18:10:23', '2021-11-02 18:22:58', 'Lestari', 'Kinasih', 3, 2),
(28, '2021-11-02 18:12:14', '2021-11-02 18:12:58', 'Kayshilla', 'Arisanti', 7, 2),
(29, '2021-11-02 21:10:21', '2021-11-02 21:15:58', 'Indraswari', 'Indriyani', 8, 2),
(30, '2021-11-02 22:05:24', '2021-11-02 22:56:57', 'Hastanti', 'Helmawati', 9, 2),
(31, '2021-11-03 03:10:12', '2021-11-03 03:34:56', 'Hardiyati', 'Hapsari', 10, 2),
(32, '2021-11-03 03:08:11', '2021-11-03 03:23:54', 'Elok', 'Diyatri', 10, 2),
(33, '2021-11-03 05:10:10', '2021-11-03 05:34:51', 'Dita', 'Dian', 11, 2),
(34, '2021-11-03 05:10:23', '2021-11-03 05:24:56', 'Cempaka', 'Cahyaningrum', 12, 2),
(35, '2021-11-03 07:23:11', '2021-11-03 07:23:56', 'Bintari', 'Basagita', 13, 2),
(36, '2021-11-03 07:10:09', '2021-11-03 07:16:54', 'Asmiasih', 'Arisanti', 14, 2),
(37, '2021-11-03 09:10:11', '2021-11-03 09:11:34', 'Adiratna', 'Anandya', 2, 2),
(38, '2021-11-03 09:16:04', '2021-11-03 09:16:21', 'Astagina', 'Arini', 16, 2),
(39, '2021-11-03 09:17:04', '2021-11-03 09:18:21', 'Paradista', 'Arini', 6, 2),
(40, '2021-11-03 09:18:04', '2021-11-03 09:18:45', 'Astagina', 'Pertiwi', 16, 2),
(41, '2021-11-01 07:10:23', '2021-11-01 07:10:56', 'Damayanti', 'Anindyaswari ', 1, 3),
(42, '2021-11-01 07:10:21', '2021-11-01 07:10:59', 'Dialya', 'Cahyadewi', 2, 3),
(43, '2021-11-01 09:10:00', '2021-11-01 09:10:56', 'Padmasari', 'Praningtyas', 3, 3),
(44, '2021-11-01 09:05:23', '2021-11-01 09:10:58', 'Nala', 'Damayanti', 4, 3),
(45, '2021-11-02 17:10:04', '2021-11-02 17:44:57', 'Maya', 'Mega', 5, 3),
(46, '2021-11-02 17:10:04', '2021-11-02 17:33:57', 'Laksita', 'Maharani', 6, 3),
(47, '2021-11-02 18:10:23', '2021-11-02 18:22:58', 'Lestari', 'Kinasih', 7, 3),
(48, '2021-11-02 18:12:14', '2021-11-02 18:12:58', 'Kayshilla', 'Jagasari', 8, 3),
(49, '2021-11-02 21:10:21', '2021-11-02 21:15:58', 'Indraswari', 'Indriyani', 9, 3),
(50, '2021-11-02 22:05:24', '2021-11-02 22:56:57', 'Hastanti', 'Helmawati', 10, 3),
(51, '2021-11-03 03:10:12', '2021-11-03 03:34:56', 'Hardiyati', 'Hapsari', 11, 3),
(52, '2021-11-03 03:08:11', '2021-11-03 03:23:54', 'Elok', 'Diyatri', 12, 3),
(54, '2021-11-03 05:10:23', '2021-11-03 05:24:56', 'Cempaka', 'Cahyaningrum', 14, 3),
(55, '2021-11-03 07:23:11', '2021-11-03 07:23:56', 'Bintari', 'Basagita', 15, 3),
(56, '2021-11-03 07:10:09', '2021-11-03 07:16:54', 'Asmiasih', 'Arisanti', 12, 3),
(57, '2021-11-03 09:10:11', '2021-11-03 09:11:34', 'Adiratna', 'Anandya', 11, 3),
(58, '2021-11-03 09:16:04', '2021-11-03 09:16:21', 'Astagina', 'Arini', 12, 3),
(59, '2021-11-03 09:17:04', '2021-11-03 09:18:21', 'Paradista', 'Arini', 13, 3),
(60, '2021-11-03 09:18:04', '2021-11-03 09:18:45', 'Astagina', 'Pertiwi', 11, 3),
(61, '2021-11-09 17:24:00', '2021-11-16 17:24:00', 'someone', 'No one', 16, 2),
(62, '2021-11-01 17:57:00', '2021-11-05 17:57:00', 'No One', 'Someone', 2, 3),
(63, '2021-11-03 18:08:00', '2021-11-03 18:09:00', 'Padmasari', 'Nala', 12, 3),
(66, '2021-11-04 00:47:00', '2021-11-04 00:49:00', 'Padmasari', 'Ayuningtyas', 2, 1),
(68, '2021-11-04 00:56:00', '2021-11-04 00:58:00', 'Other', 'Others', 1, 1),
(69, '2021-11-12 00:56:00', '2021-11-04 00:58:00', 'Someone', 'Another', 1, 1),
(70, '2021-11-04 03:01:00', '2021-11-04 03:04:00', 'Asmarani', 'Ardiyanti', 5, 1),
(71, '2021-11-04 10:29:00', '2021-11-04 10:30:00', 'Diana', 'Ratih', 2, 2),
(74, '2021-11-20 16:49:00', '2021-11-12 16:52:00', 'Anindyaswari ', 'Ratih', 2, 3),
(75, '2021-11-07 10:59:00', '2021-11-07 00:24:00', 'Ambar', 'Andhini', 4, 3),
(76, '2021-11-07 11:12:00', '2021-11-07 11:14:00', 'Astutiningtyas ', 'Anditya', 13, 3),
(77, '2021-11-07 12:26:00', '2021-11-07 12:27:00', 'Adiratna ', 'Arthawidya ', 1, 1),
(78, '2021-11-07 12:53:00', '2021-11-07 12:55:00', 'Cakrawati ', 'Padmasari', 13, 1),
(79, '2021-11-07 12:57:00', '2021-11-07 12:59:00', 'Anindyaswari ', 'Primaningtyas ', 15, 3),
(80, '2021-11-07 17:28:00', '2021-11-07 17:30:00', 'Hapsari ', 'Kumalasari ', 16, 3),
(83, '2021-11-13 18:15:00', '2021-11-13 18:18:00', 'Anindyaswari ', 'Basagita', 12, 1),
(84, '2021-11-13 20:25:00', '2021-11-13 20:26:00', 'Atmariani', 'Kumalasari ', 2, 1),
(86, '2021-11-13 20:36:00', '2021-11-13 20:37:00', 'Gendhis ', 'Arisanti ', 14, 2),
(87, '2021-11-13 20:38:00', '2021-11-13 20:41:00', 'Estiningtyas', 'Isyana ', 15, 2),
(88, '2021-11-13 21:10:00', '2021-11-13 21:12:00', 'Atmariani', 'Kusuma ', 2, 1),
(90, '2021-11-13 21:23:00', '2021-11-13 21:25:00', 'Atmariani', 'Arisanti ', 12, 1),
(91, '2021-11-13 21:26:00', '2021-11-13 21:30:00', 'Hapsari ', 'Kusuma ', 4, 3),
(92, '2021-11-13 21:44:00', '2021-11-13 21:46:00', 'Maharani', 'Kumalasari ', 15, 1),
(93, '2021-11-13 21:44:00', '2021-11-13 21:45:00', 'Hapsari ', 'Larina', 2, 1),
(94, '2021-11-13 21:46:00', '2021-11-13 21:49:00', 'Dian', 'Padmasari', 8, 1),
(96, '2021-12-01 18:52:00', '2021-11-20 18:53:00', 'Nevin', 'Ahmad', 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reason`
--

CREATE TABLE `reason` (
  `R_ID` int(11) NOT NULL,
  `R_DESC` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reason`
--

INSERT INTO `reason` (`R_ID`, `R_DESC`) VALUES
(1, 'Interlock Hose Reel Front'),
(2, 'Interlock Hose Reel Rear'),
(3, 'Interlock Input Coupler Stow'),
(4, 'Interlock Input Hose Boom Stow'),
(5, 'Interlock Platform Stow'),
(6, 'Interlock Platform Nozle Left'),
(7, 'Interlock Platform Nozle Right'),
(8, 'Interlock Boom Stow'),
(9, 'Interlock Static Reel Front'),
(10, 'Interlock Static Reel Rear'),
(11, 'Interlock Bottom Loading'),
(12, 'Interlock Handrail'),
(13, 'PTO'),
(14, 'Preventive Maintenance'),
(15, 'Interlock System Fault'),
(16, 'Breakdown');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `USR_ID` int(11) NOT NULL,
  `USR_USERNAME` varchar(256) NOT NULL,
  `USR_PASSSWORD` varchar(256) NOT NULL,
  `USR_NAME` varchar(512) NOT NULL,
  `USR_PHOTO` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`USR_ID`, `USR_USERNAME`, `USR_PASSSWORD`, `USR_NAME`, `USR_PHOTO`) VALUES
(1, 'ryan', 'ryan123', 'Ryan Giggs', 'ryan.jpg'),
(2, 'nova', 'nova123', 'Setya Novanto', 'nova.jpg'),
(3, 'kayla', 'kayla123', 'Kayla Marixa', 'kayla.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kejadian`
--
ALTER TABLE `kejadian`
  ADD PRIMARY KEY (`KJD_ID`),
  ADD KEY `FOREIGN_KEJADIAN` (`R_ID_KJD`),
  ADD KEY `FOREIGN_USER` (`USR_ID_KJD`);

--
-- Indeks untuk tabel `reason`
--
ALTER TABLE `reason`
  ADD PRIMARY KEY (`R_ID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USR_ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kejadian`
--
ALTER TABLE `kejadian`
  MODIFY `KJD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `reason`
--
ALTER TABLE `reason`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `USR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kejadian`
--
ALTER TABLE `kejadian`
  ADD CONSTRAINT `FOREIGN_KEJADIAN` FOREIGN KEY (`R_ID_KJD`) REFERENCES `reason` (`R_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FOREIGN_USER` FOREIGN KEY (`USR_ID_KJD`) REFERENCES `user` (`USR_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
