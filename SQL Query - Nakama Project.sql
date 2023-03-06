-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 03:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nakama_tickets7`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `email`, `ktp`, `telp`, `pembayaran`) VALUES
(2, 'sayabeli', 'abc@gmail.com', '123', '123', 'OVO'),
(3, 'sayabeli2', 'abc@gmail.com', '1234', '1234', 'Gopay');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'ryan', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `judul`, `deskripsi`, `tempat`, `tanggal`, `harga`, `thumbnail`) VALUES
(1, 'Gerak Aktif Bareng Zinc', 'Poundfit Session & Product Experience', 'Senayan Park (SPARK).', '06 Nov 2022, 06:00-11:00 WIB', 'IDR 50.000', '../thumbnail/Thumbnail1.jpeg'),
(2, 'LYFEST 2022', 'LYFEST is an art performances for SMPN 255, which is an annual event for SMPN 255.', 'SMP Negeri 255 Jakarta', '29 Okt 2022, 14:30-21:00 WIB', 'IDR 85.000', '../thumbnail/Thumbnail2.jpg'),
(3, 'Nonton Bareng \"BTS: Yet to Come in BUSAN\"', 'Yeah, the past was honestly the best, But my best is what comes next...', 'KEDASI @ The Cause Event Space & Auditorium', '15 Okt 2022, 09:00-20:00 WIB', 'IDR 285.000', '../thumbnail/Thumbnail3.jpeg'),
(4, 'Ecco Bali Run', '-', 'ECCOS Plaza Bali', '13 Nov 2022, 05:00-11:00 WITA', 'IDR 400.000', '../thumbnail/Thumbnail4.jpg'),
(5, 'Jaya Golf Open 2022', 'Jaya Golf Open 2022', 'Suvarna Golf Club', '18 Okt 2022, 12:30-20:00 WIB', 'IDR 2.500.000', '../thumbnail/Thumbnail5.jpg'),
(6, 'Certified Leadership and Performance Coach', 'Certified Bettermind Leadership And Performance Coach adalah program pelatihan untuk meningkatkan kompetensi keahlian coaching para leader.', 'ASTON Priority Simatupang', '16-19 Nov 2022', 'IDR 12.000.000', '../thumbnail/Thumbnail6.jpg'),
(7, 'Namkook of The Soul', 'Namkook of The Soul adalah proyek untuk merayakan ulang tahun Namjoon & Jungkook pada bulan September dan menyambut Hari Kesehatan Mental Sedunia yg jatuh pada tanggal 10 Oktober.', 'Kantorkuu Citywalk Gadjah Mada', '15 Okt 2022, 12:00-21:00 WIB', 'IDR 190.000', '../thumbnail/Thumbnail7.jpg'),
(8, 'Waktu Indonesia Berdansa - Bandung', 'WIB merupakan lini brand utama dari Sanbejo project yang merupakan festival musik nasional berskala besar yang diadakan di ruang-ruang publik kota metropolitan di Indonesia dengan membawa kampanye positif bagi\r\nkaum muda di Indonesia.', 'Secapa AD', '12 Nov 2022, 14:00-22:00 WIB', 'IDR 99.000', '../thumbnail/Thumbnail8.jpeg'),
(9, 'Thirty One Festival (TOFEST)', 'Thirty One Festival or publicly known as TOFEST is an annual music festival event held by SMAN 31 Jakarta.', 'Ancol', '16 Des 2022, 14:30-23:00 WIB', 'IDR 90.000', '../thumbnail/Thumbnail9.jpg'),
(10, 'Scream Or Dance', 'The First 2-Days Halloween Music Festival, That combines Music, Haunted House, Art, Museum, Food & Beverages into one Festival. and most important the biggest costume music festival!', 'Beach City International Stadium', '28 Okt 2022 - 30 Okt 2022', 'IDR 285.000', '../thumbnail/Thumbnail10.jpeg'),
(11, 'Indonesia Game Developer Exchange Conference 2022', 'Indonesia Game Developer Exchange (IGDX) is an annual event organized by the Ministry of Communication and Informatics in collaboration with the Indonesian Game Association (AGI).', 'The Stones Hotel', '15 Okt 2022 - 16 Okt 2022', 'FREE', '../thumbnail/Thumbnail11.jpg'),
(12, 'CARASEL MERASENJA 2022', 'Cipta Karya Seni Enam Delapan or wodely known as Carasel is a yearly art event from 68 Senior High School.', 'Velodrome Balap Sepeda', '23 Okt 2022, 13:00-22:00 WIB', 'IDR 120.000', '../thumbnail/Thumbnail12.jpg'),
(13, 'MOMIJI GARI JAPAN AUTUMN FESTIVAL', 'Momiji gari adalah event jepang\r\nyang bertemakan musim gugur di jepang dan membawakan vibes indah alami dan tenang ke Jakarta untuk Pertama Kalinya.', 'Senayan Park (SPARK)', '28 Okt 2022 - 30 Okt 2022', 'IDR 65.000', '../thumbnail/Thumbnail13.jpg'),
(14, 'ORUTAKU VOL.5', 'ORUTAKU VOL. 5 Calling all old school anime enthusiasts! ORUTAKU CLUB presents ORUTAKU VOL. 5, an anime nostalgia and throwback J-pop/J-rock themed party.', 'Rumah Sarwono', '29 Okt 2022, 16:00-23:00 WIB', 'IDR 100.000', '../thumbnail/Thumbnail14.jpg'),
(15, 'Sakuraku Matsuri', 'Masih mengusung tema yang sama yaitu “Wibu Cinta Tanah Air”, Sakuraku.ID memberikan sebuah event perpaduan budaya yang meriah di Kota Bekasi di akhir tahun ini.', 'Mega Bekasi Hypermall', '03 Des 2022 - 04 Des 2022', 'IDR 45.000', '../thumbnail/Thumbnail15.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
