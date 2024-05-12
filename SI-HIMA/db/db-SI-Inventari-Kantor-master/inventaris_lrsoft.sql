-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_lrsoft`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `email`, `no_hp`) VALUES
(1, 'Muhammad Rozagi', 'admin', 'admin', 'Muhammad Rozagi', '082236145540');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `foto_anggota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

--
-- Dumping data untuk tabel `data_anggota`
--

INSERT INTO `data_anggota` (`id`, `nama`, `npm`, `email`, `no_hp`, `foto_anggota`) VALUES
(41, 'Muhammad Rozagi', 'G1A022008', 'muhammadrozagi09@gmail.com', '086353245532', 'foto_anggota/2.2.png'),
(42, 'Tiesya Andrianti Ramdhanti', 'G1A022014', 'tiesya123@gmail.com', '082236145540', 'foto_anggota/2.png'),
(49, 'Attika Oktavianti', 'G1A022020', 'attika23@gmail.com', '089182931829', 'foto_anggota/4.png'),
(50, 'Hikmah Hijrayanti', 'G1A022026', 'hikmah123@gmail.com', '081297314348', 'foto_anggota/3.png'),
(51, 'Federika Butar Butar', 'G1A022030', 'federika@gmail.com', '089819812121', 'foto_anggota/Logo.png');
-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `no_peminjaman` int(11) NOT NULL,
  `nama_peminjam` varchar(30) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `banyaknya` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id`, `no_peminjaman`, `nama_peminjam`, `tgl_peminjaman`, `tgl_pengembalian`, `kode_barang`, `banyaknya`, `status`) VALUES
(38, 64, 'Febri Dwi', '2019-01-04', '2019-01-04', 3, 1, 'Sudah Dikembalikan'),
(39, 66, 'Febri Dwi', '2019-01-04', '2019-01-05', 2, 1, 'Sudah Dikembalikan'),
(40, 67, 'Andi Ardhian', '2019-01-05', '2019-01-16', 3, 2, 'Sudah Dikembalikan'),
(41, 69, 'Febri Dwi', '2019-01-16', '2019-01-16', 3, 1, 'Sudah Dikembalikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_peminjaman`
--

CREATE TABLE `history_peminjaman` (
  `id` int(11) NOT NULL,
  `no_peminjaman` int(11) NOT NULL,
  `nama_peminjam` varchar(30) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `banyaknya` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `no_peminjaman` int(5) NOT NULL,
  `nama_peminjam` varchar(30) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `kode_barang` int(5) DEFAULT NULL,
  `banyaknya` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tambah_barang`
--

CREATE TABLE `tambah_barang` (
  `kode_barang` int(5) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `jumlah_barang` int(5) NOT NULL,
  `sinopsis` text NOT NULL,
  `gambar_barang` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tambah_barang`
--

INSERT INTO `tambah_barang` (`kode_barang`, `kategori`, `nama_barang`, `jumlah_barang`, `sinopsis`, `gambar_barang`) VALUES
(1, 'Aksesories', 'Headset Jbl', 5, 'Bluethooth headset', 'foto_barang/d3ea26d1c5ac2c8bdafb43f034a03992asd .jpg'),
(2, 'Elektronik', 'Laptop', 1, 'Merk Dell', 'foto_barang/143d2d3f32d4939373ce7182725cfd6blaptop dell.jpg'),
(3, 'Furniture', 'Meja Komputer', 2, '3 x 2 m', 'foto_barang/dda91a4efc80da99a7180cd9ff6895c3meja.jpg'),
(4, 'Elektronik', 'Hp Samsung S6', 2, 'Utk Simulasi Aplikasi', 'foto_barang/aac9ad808d5122303ea8e6005650e962samsung2.jpg'),
(44, 'ATK', 'buku Phyton 3', 1, 'buku programming', 'foto_barang/abf41bd41d1ab6febeb4af29922fb074buku phyton.jpg'),
(45, 'Aksesories', 'Pulpen', 2, 'untuk menulis', 'foto_barang/361ebb63de5d8d49d1714465e9fa496basd .jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history_peminjaman`
--
ALTER TABLE `history_peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_peminjaman` (`kode_barang`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`no_peminjaman`),
  ADD UNIQUE KEY `peminjaman` (`no_peminjaman`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indeks untuk tabel `tambah_barang`
--
ALTER TABLE `tambah_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `history_peminjaman`
--
ALTER TABLE `history_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `no_peminjaman` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tambah_barang`
--
ALTER TABLE `tambah_barang`
  MODIFY `kode_barang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `history_peminjaman`
--
ALTER TABLE `history_peminjaman`
  ADD CONSTRAINT `history_peminjaman` FOREIGN KEY (`kode_barang`) REFERENCES `tambah_barang` (`kode_barang`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `tambah_barang` (`kode_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
