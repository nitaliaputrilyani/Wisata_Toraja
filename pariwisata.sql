-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 03:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `username` varchar(30) NOT NULL,
  `password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`username`, `password`) VALUES
('Admin', 12345),
('Pengguna', 6789);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ulasan`
--

CREATE TABLE `tbl_ulasan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `rating` int(10) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id_wisata` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` varchar(300) NOT NULL,
  `harga_tiket` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id_wisata`, `gambar`, `nama`, `lokasi`, `harga_tiket`, `deskripsi`, `kategori`) VALUES
(1, 'ke\'te\'kesu\'.jpg', 'Ke\'te\' Kesu\'', 'Paepalean, Kecamatan Sanggalangi\', Toraja Utara, Sulawesi Selatan', 'Rp. 15.000', 'Ke\'te\' kesu merupakan salah satu objek wisata yang ada di Toraja. Pemandangan utama yang akan disaksikan di kawasan ini adalah deretan rumah adat tongkonan yang berjejer rapi. Pengunjung juga akan menemukan peninggalan purbakala berupa kuburan batu yang berumur ratusan tahun.', 'Kuburan'),
(2, 'images/museum.jpg', 'Museum Ne\' Gandeng', 'Malakiri, Kecamatan Balusu, Kabupaten Toraja Utara, Sulawesi Selatan', 'Rp. 10.000 untuk wisatawan domestik dan Rp. 20.000 untuk wisatawan asing', 'Museum Ne\' Gandeng merupakan objek wisata yang ada di Toraja Utara. Disini pengunjung bisa melihat berbagai koleksi museum berupa benda-benda bersejarah dari suku Toraja, seperti batu menhir, patung Ne\' gandeng, patung kerbau, dan gong belang. Selain itu, terdapat juga pondok-pondok yang berbentuk khas rumah adat tongkonan.', 'Sejarah'),
(3, 'londa.jpg', 'Londa', 'Sandan Uai, Kecamatan Sanggalangi\', Kabupaten Toraja Utara, Sulawesi Selatan', 'Rp. 10.000', 'Londa merupakan salah satu tempat wisata di Toraja Utara yang unik dan menarik perhatian. Londa adalah goa tempat pemakaman oleh masyarakat Toraja. Didalamnya terdapat berbagai peti mati, tulang belulang, tengkorak, dan jenazah yang usianya sudah ratusan tahun.', 'Kuburan'),
(4, 'limbong.jpg', 'Danau Limbong', 'Desa Lembang, Kecamatan Rantepao, Toraja Utara, Sulawesi Selatan', 'Rp. 10.000 untuk wisatawan domestik dan Rp. 20.000 untuk wisatawan asing', 'Danau Limbong adalah salah satu objek wisata yang ada di Toraja Utara. Disini, pengunjung bisa berfoto-foto sembari menikmati suguhan alam yang asri. Tempat wisata ini bisa menjadi tempat tujuan refreshing dan healing.', 'Air terjun'),
(5, 'bori.jpg', 'Kalimbuang Bori', 'Bori, Kecamatan Sesean, Kabupaten Toraja Utara', 'Rp. 15.000', 'Kalimbuang Bori merupakan tempat wisata yang berisi hamparan bebatuan besar mirip stonehenge di Inggris. Batu-batu besar atau menhir ini merupakan peninggalan zaman purba megalitikum. Tempat ini biasanya dijadikan tempat upacara adat pemakaman bagi para pemuka adat atau keluarga bengsawan tinggi yang meninggal.', 'Sejarah'),
(6, 'sumalu.jpg', 'Gumuk Pasir Sumalu', 'Rantebua Sumalu, Kabupaten Toraja Utara, Sulawesi Selatan', 'Gratis', 'Keindahan Gumuk Pasir Sumalu membentuk pemandangan indah menyerupai alur perbukitan. Alur tersebut terbentuk akibat proses alam dari angin dan air hujan. Pemandangan ini menarik untuk menjadi latar dalam berfoto dan pengunjung juga bisa menikmati pemandangan eksotis saat matahari terbit atau tenggelam.', 'Alam'),
(7, 'tombi.jpg', 'To\' Tombi', 'Desa Bonoran, Kelurahan Tikunna Malenong, Kecamatan Sanggalangi\', Toraja Utara, Sulawesi Selatan', 'Rp. 15.000', 'Tempat wisata Negeri di atas awan To\' Tombi ini menawarkan panorama alam yang indah dari atas ketinggian sekitar 1.300 meter diatas permukaan laut. Pengunjung akan menyaksikan hamparan awan-awan putih yang elok di depan mata, disela-selanya ada puncak gunung yang menjulang kokoh.', 'Alam'),
(8, 'batutumonga.jpg', 'Batu Tumonga', 'Lereng Gunung Sesean, Kecamatan Sesean Suloara\', Kabupaten Toraja Utara, Sulawesi Selatan', 'Rp. 10.000', 'Batu Tumonga merupakan salah satu objek wisata di Toraja yang menawarkan pemandangan yang membuat betah pengunjung.', 'Alam'),
(9, 'ranteallo.jpg', 'Wisata Ranteallo', 'Tallunglipu, Kabupaten Toraja Utara, Sulawesi Selatan', 'Rp. 10.000', 'Wisata Ranteallo merupakan sebuah desa dengan panorama yang indah dan tak akan didapatkan dari tempat lain. Wisata Ranteallo menawarkan rumah adat Toraja yang bentuknya saling berhadapan.', 'Tongkonan'),
(10, 'lemo.jpg', 'Wisata Kuburan Batu Lemo', 'Lemo, Makale Utara, Kabupaten Tana Toraja, Sulawesi Selatan\"', 'Rp. 5.000', 'Kuburan Batu Lemo adalah salah satu objek wisata di Toraja yang digunakan untuk pemakaman jenazah.', 'Kuburan'),
(11, 'pango.jpg', 'Agrowisata Pango-Pango', 'Jl. Pasang, Kecamatan Makale Selatan, Kabupaten Toraja Utara, Sulawesi Selatan', 'Rp. 10.000', 'Agrowisata Pango-pango ini menyuguhkan pemandangan indah dari ketinggian seperti negeri di atas awan yang begitu mempesona. Meskipun agrowisata ini terletak di dataran tinggi, namun fasilitasnya sudah sangat memadai, sudah disediakan gazebo, kamar mandi, area parkir, gardu opandang dan lain sebagainya dan juga menunjang pengunjung lebih mengenal jauh mengenai kopi Toraja dan keindahan bentangan alam sekitar.', 'Alam'),
(12, 'burake.jpg', 'Burake', 'Jl. Buntu Burake, Makale, Kabupaten Tana Toraja, Sulawesi Selatan', 'Rp. 10.000', 'Patung Yesus Buntu Burake ini memiliki ketinggian mencapai 40 meter, letaknya sendiri ada di atas bukit buntu burake dan menjadi ikon wisata Toraja yang tidak boleh dilewatkan.', 'Religi'),
(13, 'pallawa.jpg', 'Tongkonan Pallawa', 'Jl. Desa Pallawa, Kecamatan Sesean, Kabupaten Tana Toraja, Sulawesi Selatan', 'Rp. 20000', 'Tongkonan Pallawa menjadi salah satu destinasi sejarah di Tana Toraja. Pallawa merupakan desa adat tertua yang menyuguhkan pemandangan apik berupa rumah adat atau tongkonan yang sudah berusia ratusan tahun namun masih terawat dengan baik hingga saat ini.', 'Tongkonan'),
(14, 'talando.jpg', 'Talando Tallu', 'Jl. Burasia, Kecamatan Bittuang, Kabupaten Tana Toraja, Sulawesi Selatan', 'Rp. 10.000', 'Air Terjun Talando Tallu ini akan menyuguhkan air terjun yang memiliki 3 cabang yang unik dan menarik. Air terjun ini juga masih snagat alami dan terjaga dari kerusakan alam.', 'Air terjun'),
(15, 'Ollon.jpg', 'Ollon', 'Bau, Bonggakaradeng, Kabupaten Tana Toraja, Sulawesi Selatan', 'Rp. 20.000', 'Wisata Ollon merupakan hamparan bukit hijau terbentang luas. Wisata Ollon ini pas digunakan untuk tempat piknik atau camping bareng keluarga sambil membentangkan karpet atau tikar.', 'Alam'),
(16, 'tilanga\'.jpg', 'Mata Air Tilanga\'', 'Jl. Sarira, Kecamatan Makale Utara, Kabupaten Tana Toraja, Sulawesi Selatan', 'Rp. 10.000', 'Mata Air Tilanga\' tidak kalah menarik karena air yang sangat jernih dan menyuguhkan pesonanya yang begitu menawan. Destinasi ini memiliki mitos yang beredar hingga saat ini dimana konon katanya terdapat moa atau belut berkuping berwarna putih. Mitosnya belut tersebut dapat membawa keberuntungan.', 'Alam'),
(17, 'kalean.jpg', 'Wisata Air Terjun Kalean', 'Desa Kalean, Marintang Simbuang, Kecamatan Mengkendek, Kabupaten Tana Toraja, Sulawesi Selatan', 'Gratis', 'Air terjun yang memiliki 7 tingkat ini adalah salah satu destinasi populer di Toraja. Ketujuh tingkatan air terjun ini punya ketinggian yang bervariasi.', 'Air terjun'),
(40, 'londa.jpg', '', 'coba', 'gratis', 'hsahcgas', ''),
(41, 'londa.jpg', '', 'randanbatu', 'gratis', 'hsahcgas', 'coba'),
(42, 'londa.jpg', 'coba', 'randanbatu', 'gratis', 'hsahcgas', 'coba'),
(50, 'Burake.jpg', 'coba', 'randanbatu', 'gratis', 'hsahcgas', 'coba'),
(53, 'Burake.jpg', 'coba', 'randanbatu', 'gratis', 'hsahcgas', 'coba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_ulasan`
--
ALTER TABLE `tbl_ulasan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ulasan`
--
ALTER TABLE `tbl_ulasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
