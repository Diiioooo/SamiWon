-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 08:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemesanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `tanggal_pemesanan`, `total_belanja`) VALUES
(43, '2021-12-16', 61000),
(44, '2023-06-12', 72000);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(32, 43, '2', 1),
(33, 43, '18', 1),
(34, 44, '4', 1),
(35, 44, '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `jenis_menu` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `jenis_menu`, `stok`, `harga`, `gambar`) VALUES
(1, 'Beef Bulgogi', 'Makanan', 200, 38000, 'Beef Bulgogi.jpg'),
(2, 'Bibimbap', 'Makanan', 200, 36000, 'Bibimbap.png'),
(3, 'Bingsu', 'Makanan', 200, 40000, 'Bingsu.jpg'),
(4, 'Budae Jjigae', 'Makanan', 200, 36000, 'Budae Jjigae.jpg'),
(5, 'Bungeoppang', 'Makanan', 200, 15000, 'Bungeoppang.jpg'),
(6, 'Gimbap', 'Makanan', 200, 31000, 'Gimbap.png'),
(7, 'Japchae', 'Makanan', 200, 36000, 'Japchae.jpg'),
(8, 'Jjajangmyeon', 'Makanan', 200, 36000, 'Jjajangmyeon.jpg'),
(9, 'Kimchi Jjigae', 'Makanan', 200, 36000, 'Kimchi Jjigae.png'),
(10, 'Korean Ramen', 'Makanan', 200, 28000, 'Korean ramen.jpg'),
(11, 'Mandu', 'Makanan', 200, 30000, 'Mandu.png'),
(12, 'Nasi Putih', 'Makanan', 200, 5000, 'nasi putih.jpg'),
(13, 'Odeng', 'Makanan', 200, 20000, 'Odeng.jpg'),
(14, 'Sundubu Jjigae', 'Makanan', 200, 38000, 'Sundubu Jjigae.png'),
(15, 'Tokkebi', 'Makanan', 200, 15000, 'Tokkebi.jpg'),
(16, 'Tteokbokki', 'Makanan', 200, 32000, 'Tteokbokki.png'),
(17, 'Air Putih', 'Minuman', 200, 5000, 'Air Putih.jpg'),
(18, 'Banana Milk', 'Minuman', 200, 25000, 'Banana Milk.jpg'),
(19, 'Cola', 'Minuman', 200, 10000, 'Cola.png'),
(20, 'Lemonade', 'Minuman', 200, 20000, 'Lemonade.png'),
(21, 'Orange Juice', 'Minuman', 200, 7000, 'Orange Juice.jpg'),
(22, 'Yuja Tea', 'Minuman', 200, 25000, 'Yuja Tea.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(1, 'pramdf', 'admin', 'Pramudya Dwi Febrianto', 'Laki-Laki', '2002-02-21', 'Jombang', '081249150396', 'admin'),
(2, 'amalia', 'admin', 'Amallia Tiara Putri', 'Perempuan', '2001-02-12', 'Tuban', '085123451425', 'admin'),
(3, 'dhita', 'admin', 'Dhita Aprillia Dhamayanti', 'Perempuan', '2001-06-12', 'Jombang', '085852345606', 'admin'),
(4, 'febrian', 'admin', 'Febrian Achmad Syahputra', 'Laki-Laki', '2001-02-19', 'Jombang', '081245031506', 'admin'),
(5, 'sylvia', 'admin', 'Sylvia Dwi Yanti', 'Perempuan', '2001-08-22', 'Lamongan', '085850430806', 'admin'),
(7, 'rinaldo', '12345678', 'Rinaldo', 'Laki-Laki', '2000-03-23', 'Malang', '085852450098', 'user'),
(8, 'feb', 'kuhaku11', '', '', '0000-00-00', '', '', 'user'),
(9, 'DIO', '190923', 'Septian Dio', 'Laki-Laki', '2003-09-19', 'surabaya', '082335517655', 'admin'),
(10, 'SEPTIAN', '190923', 'Septian Dio', 'Laki-Laki', '2003-09-19', 'surabaya', '082335517655', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
