-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2024 pada 07.11
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websig`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `kode_kabupaten`, `nama_kabupaten`, `koordinat`, `jumlah_penduduk`, `luas_wilayah`) VALUES
(1, '3301', 'Cilacap', '-7.7064271,108.9912947', 2007829, 2249.28);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(100) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`) VALUES
('3301010', 1, 'Dayeuhluhur', 49618, 191.73),
('3301020', 1, 'Wanareja', 107479, 195.92),
('3301030', 1, 'Majenang', 143101, 167.60),
('3301040', 1, 'Cimanggu', 104785, 163.35),
('3301050\r\n', 1, 'Karangpucung\r\n', 80927, 124.74),
('3301060', 1, 'Cipari', 68843, 107.53),
('3301070', 1, 'Sidareja', 63829, 49.31),
('3301080', 1, 'Kedungreja\r\n', 91489, 82.01),
('3301090', 1, 'Patimuan\r\n', 50658, 78.68);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` int(11) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jenjang_pendidikan` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `kode_kecamatan`, `nama_sekolah`, `alamat_sekolah`, `status`, `jenjang_pendidikan`, `koordinat`) VALUES
(20300530, '3301010', 'SMP NEGERI 2 DAYEUHLUHUR', 'Jl. Mergo-Dayeuhluhur', 'Negeri', 'SMP', '-7.3012,108.5873\r\n\r\n'),
(20300732, '3301030', 'SMA NEGERI 1 MAJENANG', 'JL. RAYA PAHONJEAN', 'Negeri', 'SMA', '-7.3013,108.7462\r\n'),
(20300787, '3301050\r\n', 'SD MUHAMMADIYAH SURUSUNDA', 'Jl. Raya Surusunda', 'Swasta', 'SD', '-7.3745,108.8967\r\n\r\n'),
(20301372, '3301020', 'SD NEGERI CILONGKRANG 03', 'Jl. Raya Cilongkrang Timur Rt 02 Rw 05', 'Negeri', 'SD', '-7.4069,108.7085\r\n\r\n'),
(20301418, '3301030', 'SD NEGERI CIBEUNYING 05', 'Jl. Kamboja Rt 03 Rw 02', 'Negeri', 'SD', '-7.2908,108.7161\r\n'),
(20301495, '3301010', 'SD NEGERI DAYEUHLUHUR 06\r\n', 'Dayeuhluhur\r\n', 'Negeri', 'SD\r\n', '-7.2421,108.6032\r\n'),
(20338658, '3301040', 'SD NEGERI NEGARAJATI 03', 'Pagedangan', 'Negeri', 'SD', '-7.3426,108.8378\r\n'),
(20340896, '3301020', 'SMP NEGERI SATU ATAP 1 WANAREJA\r\n', 'Dusun Jambu Rt.05/Rw.04', 'Negeri', 'SMP', '-7.2581,108.6452\r\n'),
(20341130, '3301050\r\n', 'SMP NEGERI  3 SATU ATAP KARANGPUCUNG\r\n', 'Jl. Rejasari, Gunungtelu\r\n', 'Negeri', 'SMP', '-7.4155,108.8662\r\n\r\n'),
(69947742, '3301040', 'SMK K.H. AHMAD DAHLAN CIMANGGU', 'JL. SITU DESA KUTABIMA', 'Swasta', 'SMK', '-7.2969123,108.872882\r\n\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`),
  ADD KEY `kecamatan_ibfk_1` (`id_kabupaten`);

--
-- Indeks untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`npsn`),
  ADD KEY `kode_kecamatan` (`kode_kecamatan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_2` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_2` FOREIGN KEY (`kode_kecamatan`) REFERENCES `kecamatan` (`kode_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
