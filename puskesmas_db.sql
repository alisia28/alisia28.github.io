-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2023 pada 07.19
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puskesmas_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `kode_dok` char(10) NOT NULL,
  `nama_dok` varchar(25) DEFAULT NULL,
  `kelamin` char(15) DEFAULT NULL,
  `spesialis` varchar(30) DEFAULT NULL,
  `alamat_dok` varchar(60) DEFAULT NULL,
  `kota` char(25) DEFAULT NULL,
  `telp_dok` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`kode_dok`, `nama_dok`, `kelamin`, `spesialis`, `alamat_dok`, `kota`, `telp_dok`) VALUES
('D0001', 'Moch.Yusuf', 'Pria', 'Anak', 'Jl. Sudirman No. 100', 'Cimahi Selatan', '022-1234567'),
('D0002', 'Dinda Indah', 'Wanita', 'Kandungan', 'LPH, Lembah Mawar No.122', 'Cimahi Utara', '022-5612345'),
('D0003', 'Gede Watumbara', 'Pria', 'Kandungan', 'LPH, Lembah Anggrek No.200', 'Cimahi Utara', '022-4567123'),
('D0004', 'Dwi Nugroho', 'Pria', 'Penyakit Dalam', 'Jl. Raya Cimahi No. 502', 'Cimahi Selatan', '022-4512367');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `kode_obat` char(10) NOT NULL,
  `nama_obat` varchar(25) DEFAULT NULL,
  `jenis` varchar(40) DEFAULT NULL,
  `kemasan` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `harga_obat` decimal(12,0) DEFAULT NULL,
  `jumlah_obat` decimal(12,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`kode_obat`, `nama_obat`, `jenis`, `kemasan`, `harga_obat`, `jumlah_obat`) VALUES
('A0001', 'Ampisilin kaplet 250 mg', 'Generic', 'ktk 10 x 10 kaplet', '36315', '5'),
('A0002', 'Amoksisilin kaplet 500 mg', 'Generic', 'ktk 10 x 10 kaplet', '49950', '2'),
('B0001', 'Betametason tablet 0,5 mg', 'Generic', 'ktk 10 x 10 tablet', '9446', '15'),
('E0001', 'Eritromisin kapsul 250 mg', 'Generic', 'ktk 10 x 10 kapsul', '68040', '3'),
('P0001', 'Parasetamol sirup 120 mg ', 'Generic', 'btl 60 ml', '3105', '20'),
('P0002', 'Parasetamol tablet 500 mg', 'Generic', 'btl 1000 tablet', '67500', '25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `kode_pas` char(10) NOT NULL,
  `nama_pas` varchar(40) DEFAULT NULL,
  `jenis_kel` char(10) DEFAULT NULL,
  `usia` char(15) DEFAULT NULL,
  `pekerjaan` char(30) DEFAULT NULL,
  `ktp` varchar(15) DEFAULT NULL,
  `alamat_rumah` varchar(50) DEFAULT NULL,
  `telepon` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`kode_pas`, `nama_pas`, `jenis_kel`, `usia`, `pekerjaan`, `ktp`, `alamat_rumah`, `telepon`) VALUES
('P0001', 'Dewi Lestari', 'Wanita', '30', 'ASN', '11.001', 'LPH, Lembah Anggrek No.100', '022-1234567'),
('P0002', 'Didin', 'Pria', '31', 'ASN', '11.002', 'LPH, Lembah Mawar No.122', '022-5612345'),
('P0003', 'Amirudin', 'Pria', '35', 'ASN', '12.001', 'LPH, Lembah Anggrek No.120', '022-4567123'),
('P0004', 'Dinda Lestari', 'Wanita', '25', 'ASN', '11.003', 'LPH, Lembah Kenanga Y12', '022-1267345'),
('P0005', 'Ketut Darmayuda', 'Pria', '40', 'Pegawai Swasta', '11.004', 'LPH, Lembah Kenanga Y14', '022-1324675'),
('P0006', 'Darmayuda Ketut', 'Pria', '40', 'Pegawai Swasta', '11.001', 'LPH, Lembah Anggrek No.117', '022-1234567'),
('P0007', 'Dwi Yuni Purwandari', 'Wanita', '35', 'Pegawai Swasta', '11.010', 'LPH, Melati No.100', '022-1234567'),
('P0008', 'Winsu R.', 'Pria', '30', 'ASN', '11.011', 'LPH, Lembah Anggrek No.100', '022-1234567'),
('P0009', 'Achmad Dwi Margono', 'Pria', '33', 'Pegawai Swasta', '13.001', 'LPH, Lembah Melati No.100', '022-1234567');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` int(11) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `kelamin` varchar(15) DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `bagian` varchar(30) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL,
  `telepon` varchar(55) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `kelamin`, `usia`, `bagian`, `alamat`, `kota`, `telepon`, `email`) VALUES
(1, 'Dwi Yuni', 'Wanita', 35, 'Staf Keuangan', 'LPH, Lembah Kenanga Y100', 'Cimahi Utara', '022-1234567', 'dwiyuni@gmail.com'),
(2, 'Mamad Supendi', 'Pria', 30, 'MIS', 'LPH, Lembah Mawar Y202', 'Cimahi Selatan', '022-4567123', 'msupendi@gmail.com'),
(3, 'Yudi S.', 'Pria', 40, 'Personalia', 'Jl. Raya Cimahi 304', 'Cimahi Selatan', '022-4567123', 'yudis@ymail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `nip` char(10) NOT NULL,
  `pass` char(10) DEFAULT NULL,
  `level_user` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`nip`, `pass`, `level_user`) VALUES
('1', '321', 'Admin'),
('2', '123', 'Master'),
('3', '213', 'Transaksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periksa`
--

CREATE TABLE `periksa` (
  `kode_periksa` char(10) NOT NULL,
  `kode_dok` char(10) NOT NULL,
  `kode_pas` char(10) NOT NULL,
  `kode_obat` char(10) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `diagnosa` varchar(99) DEFAULT NULL,
  `biaya` decimal(9,0) DEFAULT NULL,
  `tgl_periksa` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `periksa`
--

INSERT INTO `periksa` (`kode_periksa`, `kode_dok`, `kode_pas`, `kode_obat`, `jumlah`, `diagnosa`, `biaya`, `tgl_periksa`) VALUES
('1', 'D0002', 'P0005', 'E0001', 2, 'sakit hati', '30000', '2023-06-28'),
('tr1', 'D0001', 'P0004', 'E0001', 5, 'asdfghg', '5000', '2023-06-28');

--
-- Trigger `periksa`
--
DELIMITER $$
CREATE TRIGGER `after_insert_periksa` AFTER INSERT ON `periksa` FOR EACH ROW BEGIN
SET @harga_obat = (SELECT harga_obat FROM obat WHERE kode_obat = NEW.kode_obat);
SET @nama_pasien = (SELECT nama_pas FROM pasien WHERE kode_pas = NEW.kode_pas);
SET @biaya_obat = NEW.jumlah * @harga_obat;
SET @total_bayar = @biaya_obat + NEW.biaya;
INSERT INTO periksa_detail (kode_periksa, nama_pasien, kode_obat, jumlah, biaya_obat, biaya_periksa, jumlah_biaya) VALUES (NEW.kode_periksa, @nama_pasien, NEW.kode_obat, NEW.jumlah, @biaya_obat, NEW.biaya, @total_bayar);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_periksa` BEFORE INSERT ON `periksa` FOR EACH ROW BEGIN
SET @jumlah_obat = (SELECT jumlah_obat FROM obat WHERE kode_obat = NEW.kode_obat);
SET @sisa = @jumlah_obat - NEW.jumlah;
IF @sisa < 0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: stok tidak cukup'; END IF;
UPDATE obat SET jumlah_obat = @sisa WHERE kode_obat = NEW.kode_obat;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `delete_after_periksa` AFTER DELETE ON `periksa` FOR EACH ROW BEGIN
SET @stok = (SELECT jumlah_obat FROM obat WHERE kode_obat = OLD.kode_obat);
SET @sisa = @stok + OLD.jumlah;
UPDATE obat SET jumlah_obat = @sisa WHERE kode_obat = OLD.kode_obat;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_before_periksa` BEFORE UPDATE ON `periksa` FOR EACH ROW BEGIN IF OLD.kode_obat = NEW.kode_obat THEN SET @stok = (SELECT jumlah_obat FROM obat WHERE kode_obat = OLD.kode_obat); SET @sisa = (@stok + OLD.jumlah) - NEW.jumlah; IF @sisa < 0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: stok tidak cukup';  END IF; UPDATE obat SET jumlah_obat = @sisa WHERE kode_obat = OLD.kode_obat; ELSE SET @stok_lama = (SELECT jumlah_obat FROM obat WHERE kode_obat = OLD.kode_obat); SET @sisa_lama = (@stok_lama + OLD.jumlah); UPDATE obat SET jumlah_obat = @sisa_lama WHERE kode_obat = OLD.kode_obat; SET @stok_baru = (SELECT jumlah_obat FROM obat WHERE kode_obat = NEW.kode_obat); SET @sisa_baru = @stok_baru - NEW.jumlah; IF @sisa_baru < 0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: stok tidak cukup'; END IF; UPDATE obat SET jumlah_obat = @sisa_baru WHERE kode_obat = NEW.kode_obat; END IF; END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `periksa_detail`
--

CREATE TABLE `periksa_detail` (
  `id_rm` int(11) NOT NULL,
  `kode_periksa` char(10) DEFAULT NULL,
  `nama_pasien` varchar(30) DEFAULT NULL,
  `kode_obat` char(10) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `biaya_obat` decimal(9,0) DEFAULT NULL,
  `biaya_periksa` decimal(9,0) DEFAULT NULL,
  `jumlah_biaya` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `periksa_detail`
--

INSERT INTO `periksa_detail` (`id_rm`, `kode_periksa`, `nama_pasien`, `kode_obat`, `jumlah`, `biaya_obat`, `biaya_periksa`, `jumlah_biaya`) VALUES
(1, NULL, NULL, 'A0001', NULL, '75000', '50000', '150000'),
(2, NULL, NULL, 'A0003', NULL, '75000', '50000', '125000'),
(3, NULL, NULL, 'A0002', NULL, '75000', '50000', '150000'),
(4, 'tr1', 'Dinda Lestari', 'E0001', 5, '340200', '5000', '345200'),
(5, '1', 'Ketut Darmayuda', 'E0001', 2, '136080', '30000', '166080');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`kode_dok`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`kode_pas`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`kode_periksa`),
  ADD KEY `FK_dokter` (`kode_dok`),
  ADD KEY `FK_pasien` (`kode_pas`),
  ADD KEY `FK_OBAT` (`kode_obat`);

--
-- Indeks untuk tabel `periksa_detail`
--
ALTER TABLE `periksa_detail`
  ADD PRIMARY KEY (`id_rm`),
  ADD KEY `FK_detail` (`kode_periksa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `nip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `periksa_detail`
--
ALTER TABLE `periksa_detail`
  MODIFY `id_rm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `FK_OBAT` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`),
  ADD CONSTRAINT `FK_dokter` FOREIGN KEY (`kode_dok`) REFERENCES `dokter` (`kode_dok`),
  ADD CONSTRAINT `FK_pasien` FOREIGN KEY (`kode_pas`) REFERENCES `pasien` (`kode_pas`);

--
-- Ketidakleluasaan untuk tabel `periksa_detail`
--
ALTER TABLE `periksa_detail`
  ADD CONSTRAINT `FK_detail` FOREIGN KEY (`kode_periksa`) REFERENCES `periksa` (`kode_periksa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
