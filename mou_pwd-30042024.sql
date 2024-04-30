-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2024 pada 18.51
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mou_pwd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mou_pemakaian`
--

CREATE TABLE `mou_pemakaian` (
  `id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `tanggalmasuk` date NOT NULL,
  `kadaluarsa` date NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mou_pemakaian`
--

INSERT INTO `mou_pemakaian` (`id`, `stock`, `tanggalmasuk`, `kadaluarsa`, `status`) VALUES
(1, 10, '2024-04-30', '2024-05-30', 'masuk'),
(2, 2, '2024-04-30', '2024-05-01', 'masuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mou_persediaan`
--

CREATE TABLE `mou_persediaan` (
  `idbarang` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `namabarang` varchar(160) NOT NULL,
  `minimalstock` int(6) NOT NULL,
  `satuan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mou_persediaan`
--

INSERT INTO `mou_persediaan` (`idbarang`, `kategori`, `namabarang`, `minimalstock`, `satuan`) VALUES
(1, 'kemasan', 'Mika segitiga', 16, 'pcs'),
(2, 'bahan baku', 'Strawberry', 1, 'mika'),
(3, 'bahan baku', 'Butter', 1, 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mou_produk`
--

CREATE TABLE `mou_produk` (
  `idproduk` int(11) NOT NULL,
  `namaproduk` varchar(160) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mou_produk`
--

INSERT INTO `mou_produk` (`idproduk`, `namaproduk`, `deskripsi`, `harga`, `foto`) VALUES
(1, 'Tiramisu Mille Crepes', 'Tiramisu Mille Crepes dengan lapisan crepe yang berciri khas kopi dan whip cream dengan campuran mascarpone serta taburan bubuk kakao diatasnya', 18000, 'a53ec2ad3f55bd40f729313e3064fbff.png'),
(2, 'Moucha Mille Crepes', 'Moucha Mille Crepes merupakan lapisan crepes yang berciri khas matcha dengan whipcream rasa matcha serta taburan scrumble matcha diatasnya', 17000, '654ae2df75e3fefdea5197a30c8ee67c.svg'),
(3, 'Caramou Mille Crepes', 'Caramou Mille Crepes dengan lapisan crepes yang manis dan lembut dengan campuran whipcream dan caramel khas Mou serta taburan scrumble biskuit regal dan saus caramel Mou', 20000, '247a914abb5fa77b5a6adff9c7f64535.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mou_user`
--

CREATE TABLE `mou_user` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `fullname` varchar(160) NOT NULL,
  `password` varchar(40) NOT NULL,
  `profil` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mou_user`
--

INSERT INTO `mou_user` (`id`, `username`, `fullname`, `password`, `profil`) VALUES
(2, 'ivaliaa', 'Ivana Angelia', '8a79ae8c062722dcb973068e7bdaf63a', ''),
(4, 'clayy', 'Clay Aiken', '16759329871d9d609597e7491c517008', ''),
(5, 'eceqq', 'Ester Chandra', 'b7b99f1dbff57850f3fa4ee34b011f04', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mou_persediaan`
--
ALTER TABLE `mou_persediaan`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indeks untuk tabel `mou_produk`
--
ALTER TABLE `mou_produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indeks untuk tabel `mou_user`
--
ALTER TABLE `mou_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mou_persediaan`
--
ALTER TABLE `mou_persediaan`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mou_produk`
--
ALTER TABLE `mou_produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mou_user`
--
ALTER TABLE `mou_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
