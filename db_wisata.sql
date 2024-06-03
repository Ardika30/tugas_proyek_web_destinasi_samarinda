-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2024 pada 06.34
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar`) VALUES
(1, 'Wisata Alam', 'wisataalam.png'),
(2, 'Wisata Belanja', 'wisatabelanja.png'),
(4, 'Wisata Budaya', 'wisatabudaya.png'),
(5, 'Wisata Edukasi', 'wisataedukasi.png'),
(7, 'Wisata Keluarga', 'wisatakeluarga.png'),
(9, 'Wisata Religius', 'wisatareligius.png'),
(86, 'Wisata Pohon', '2.png'),
(87, 'Wisata', 'JembatanMahkota2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `komentar` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rate`
--

CREATE TABLE `rate` (
  `id_rate` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `reset_code`) VALUES
(2, 'user2', '321', 'user2@gmail.com', ''),
(3, 'user3', '1234', 'user3@gmail.com', ''),
(26, 'user', '$2y$10$hXZTpY/oW.W6wfTCfrdgge5vLvQo.S9nGXgLh8IAC0az9Y0PMalF.', 'restusanjaya70@gmail.com', '153506');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `folder_gambar` varchar(255) NOT NULL,
  `gambar2` varchar(255) NOT NULL,
  `gambar3` varchar(255) NOT NULL,
  `gambar4` varchar(255) NOT NULL,
  `gambar5` varchar(255) NOT NULL,
  `gambar6` varchar(255) NOT NULL,
  `gambar7` varchar(255) NOT NULL,
  `gambar8` varchar(255) NOT NULL,
  `gambar9` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `info` text NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `alamat`, `lokasi`, `gambar`, `folder_gambar`, `gambar2`, `gambar3`, `gambar4`, `gambar5`, `gambar6`, `gambar7`, `gambar8`, `gambar9`, `deskripsi`, `info`, `id_kategori`) VALUES
(4, 'Taman Samarendah', 'Jl. Bhayangkara, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Bhayangkara, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'tamansamarindasmd.png', 'tamansmd', 'tamansmd2.png', 'tamansmd3.png', 'tamansmd4.png', 'tamansmd5.png', 'tamansmd6.png', 'tamansmd7.png', 'tamansmd8.png', 'tamansmd9.png', 'Sebuah taman yang berada di pusat Kota Samarinda, Provinsi Kalimantan Timur.', 'Taman Samarendah adalah sebuah taman yang berada di pusat Kota Samarinda, Provinsi Kalimantan Timur. Nama taman ini berasal dari penyebutan orang-orang terdahulu yang menyebut Samarinda menjadi Samarendah. Menurut versi Pemkot Samarinda, arti sebenarnya adalah taman yang tampak samar-samar dari kejauhan tapi indah dipandang.\r\n\r\nTaman Samarendah dibangun di lahan seluas 2,5 hektar, khusus untuk taman sendiri berkisar 1,4 hektar. Pembangunan fisik taman dimulai pada Juli 2014 setelah membongkar dua sekolah, yakni SMA Negeri 1 (SMAN 1) dan SMP Negeri 1 (SMPN 1) dan rampung pada tahun 2016.\r\n\r\nTaman Samarendah sudah dipasang dengan lampu hias, jadi pada malam hari tak lagi terlihat seram saat melintas di Taman. Pemasangan lampu taman tak dilakukan begitu saja, melainkan dililitkan di pohon dan beberapa sudut yang terlihat gelap dimalam hari.\r\n\r\nPemerintah Kota Samarinda mengimbau kepada warga agar menjaga dan merawat bersama Taman Samarendah agar tetap indah. Taman Samarendah ini milik kita bersama jadi harus dijaga kebersihan dan keindahannya.', 1),
(5, 'Islamic Center Kaltim', 'Jl. Slamet Riyadi No.1, Tlk. Lerong Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Jl. Slamet Riyadi No.1, Tlk. Lerong Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'islamiccentersmd.png', 'islamic', 'islamic1.png', 'islamic2.png', 'islamic3.png', 'islamic4.png', 'islamic5.png', 'islamic6.png', 'islamic7.png', 'islamic8.png', 'Masjid Islamic Center Samarinda menjadi salah satu ikon Kota Samarinda, Kalimantan Timur.\r\n\r\n', 'Masjid Islamic Center Samarinda (MICS) menjadi salah satu ikon Kota Samarinda, Kalimantan Timur (Kaltim). Masjid ini merupakan masjid termegah dan terbesar kedua di Asia Tenggara setelah Masjid Istiqlal Jakarta.\r\n\r\nSecara administratif, Masjid Islamic Center Samarinda terletak di Jl Slamet Riyadi No.1 Karang Asam Ulu, Kelurahan Teluk Lerong Ulu, Kecamatan Sungai Kunjang, Samarinda. Posisinya berada tepat di tepi Sungai Mahakam.\r\n\r\nMasjid ini berdiri kokoh dan menjadi kebanggaan masyarakat setempat. Masjid Islamic Center Samarinda tidak hanya dijadikan sebagai tempat ibadah, melainkan pusat peradaban dan wisata religi.\r\n', 9),
(6, 'Stadion Segiri', 'JL. Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'stadionsegiri.png', 'segiri', 'segiri1.png', 'segiri2.png', 'segiri3.png', 'segiri4.png', 'segiri5.png', 'segiri6.png', 'segiri7.png', 'segiri8.png', 'Sebuah stadion yang berlokasi di pusat kota Samarinda, Kalimantan Timur.', ' dibangun pada masa yang bersamaan dengan pembangunan Balai Kota Samarinda pada sekitar tahun 1960-1970 Dilakukan renovasi pada tahun 2008 sebagai persiapan pelaksanaan PON XVII. Pada tahun 2023 Stadion Segiri Kota Samarinda menjadi salah satu dari 22 stadion di Indonesia yang akan direnovasi oleh Kementrian Pekerjaan Umum dan Perumahan Rakyat (PUPR) Republik Indonesia awal tahun 2024 mendatang karena termasuk stadion dengan kerusakan ringan. Anggaran yang digelontorkan kurang lebih Rp80 miliar. Renovasi ini bertujuan untuk memperbaharui dan meningkatkan standar fasilitas stadion.\r\n\r\nStadion Segiri Samarinda, Kalimantan Timur merupakan stadion sepak bola kandang dari juara divisi utama indonesia 2014 ( Sekarang Berubah Menjadi Liga 2 Indonesia ) Borneo FC Samarinda.\r\n\r\nMerupakan salah satu stadion yang representatif yang dimiliki Kota Samarinda selain Stadion Utama Palaran dan Stadion Gelora Kadrie Oening. ', 7),
(7, 'Masjid Raya Darussalam', 'Jalan K.H. Abdullah Marisie No. 1, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75111', 'Jalan K.H. Abdullah Marisie No. 1, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75111', 'Mesjidraya.png', 'mesjidraya', 'raya1.png', 'raya2.png', 'raya3.png', 'raya4.png', 'raya5.png', 'raya6.png', 'raya7.png', 'raya8.png', 'Masjid terbesar kedua di provinsi Kalimantan Timur setelah Masjid Islamic Center Samarinda.', 'Masjid Raya Darrusalam adalah masjid terbesar kedua di provinsi Kalimantan Timur setelah Masjid Islamic Center Samarinda yang tepatnya berada di kelurahan Pasar Pagi, Samarinda Ilir, Samarinda. Masjid ini berada di tengah-tengah Kota Samarinda. Ciri yang mudah dilihat adalah, masjid ini memiliki 1 kubah besar dan beberapa kubah kecil yang berdampingan dengan kubah besar yang berwarna hijau dan memiliki 4 buah menara. Masjid ini berada di sisi Sungai Mahakam. ', 9),
(8, 'Jembatan Mahkota 2', 'Jl. Kapten Soedjono Aj, Simpang Pasir, Kec. Palaran, Kota Samarinda, Kalimantan Timur 75251', 'Jl. Kapten Soedjono Aj, Simpang Pasir, Kec. Palaran, Kota Samarinda, Kalimantan Timur 75251', 'jembatanmahkotadua.png', 'mahkota', 'mahkota1.png', 'mahkota2.png', 'mahkota3.png', 'mahkota4.png', 'mahkota5.png', 'mahkota6.png', 'mahkota7.png', 'mahkota8.png', 'Jembatan yang menghubungkan Sungai Kapih, kecamatan Sambutan di kota Samarinda.', 'Sejak digagas pembangunannya hingga diresmikan jembatan ini dinamakan Mahkota II (Mahakam Kota II) karena merupakan jembatan kedua yang dibangun di wilayah Kota Samarinda setelah Jembatan Mahakam (atau Mahkota I).[1]. Pada 10 Juni 2021 jembatan ini berganti nama menjadi Jembatan Achmad Amins.[2] Ia merupakan wali kota Samarinda ke-8 yang mulai memerintah pada periode 2000â€“2005. ', 7),
(9, 'Big Mall', 'Jl. Untung Suropati No.08, Karang Asam Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Jl. Untung Suropati No.08, Karang Asam Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'bigmallsmd.png', 'bigmall', 'bm1.png', 'bm2.png', 'bm3.png', 'bm4.png', 'bm5.png', 'bm6.png', 'bm7.png', 'bm8.png', 'Salah satu Pusat perbelanjaan terlengkap dan terbesar di kota Samarinda Kalimantan Timur.', 'Big Mall Samarinda adalah pusat perbelanjaan lengkap dan terbesar di Samarinda, Kalimantan Timur dan salah satu mal yang terbesar di Kalimantan. Mal ini telah dibuka untuk umum sejak tahun 2014. Para wisatawan maupun warga lokal menjadikan mal ini salah satu pilihan dalam rekreasinya, khususnya untuk berbelanja kebutuhan hidup sehari-hari. ', 2),
(12, 'Taman Tepian Mahakam', 'Jl. Gajah Mada, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Gajah Mada, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'tepianmahakam.png', 'tepian', 'tepian1.png', 'tepian2.png', 'tepian3.png', 'tepian4.png', 'tepian5.png', 'tepian6.png', 'tepian7.png', 'tepian8.png', 'Salah satu area teduh di Sungai Mahakam dengan panorama matahari terbenam.\r\n', 'Taman Tepian Mahakam adalah salah satu tempat yang terkenal dan sangat diminati oleh masyarakat sekitar untuk dikunjungi. \r\n\r\nTaman ini memang belum lama dibuka, setelah pembangunannya yang cukup lama dan memakan biaya 14 miliar rupiah. Kondisi taman ini sendiri masih dalam tahap pengembangan, beberapa kekurangan fasilitas masih terus dibangun oleh pihak pengelola.', 1),
(13, 'Citra Niaga', 'Jl. Niaga Utara, Pelabuhan, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Niaga Utara, Pelabuhan, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'citraniaga.png', 'citraniaga', 'citra1.png', 'citra2.png', 'citra3.png', 'citra4.png', 'citra5.png', 'citra6.png', 'citra7.png', 'citra8.png', 'Kawasan pusat perdagangan di Kota Samarinda, Kalimantan Timur.', 'Sebagian bangunan Citra Niaga di sisi timur telah mengalami perubahan fungsi. Bangunan berlantai dua dengan struktur permanen tersebut awalnya memiliki gang (alley) di bagian dalam yang bisa dilalui pengunjung dengan penghawaan alami. Selanjutnya seluruh bagian tersebut ditutup dan berubah menjadi sebuah department store yang tertutup. Menyisakan bagian barat untuk pedagang kecil dan plaza di tengah.\r\n\r\nCitra Niaga mengalami kebakaran pada 31 Oktober 2006 dan kemudian dibangun kembali namun tidak persis sama dengan kondisi awal dibangun dan merupakan pusat kerajinan tradisional di kota Samarinda. Perubahan terjadi pada bahan bangunan dimana sebelumnya seluruh bahan dinding dan atap dari sirap kayu ulin, diganti dengan bahan-bahan non kayu dan non kayu ulin. ', 2),
(14, 'Jessica Water Park', 'Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75242', 'Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75242', 'jessicawaterpark.png', 'pesona', 'pm1.png', 'pm2.png', 'pm3.png', 'pm4.png', 'pm5.png', '', '', '', 'Tempat wisata keluarga berisi kolam renang dengan aneka wahana air yang cukup lengkap.', 'Kolam berenang Jessica Waterpark adalah kolam bereang yang terletak di perumahan Pesona Mahakam. Di kolam ini juga menyajikan banyak wahana seperti perosotan dan juga banyak wahana lain yang dapat di nikmati oleh seluruh pengunjung.', 7),
(15, 'Taman Lampion Mahakam', 'Jl. Slamet Riyadi No.75, Karang Asam Ilir, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Jl. Slamet Riyadi No.75, Karang Asam Ilir, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'mahakamlampiongarden.png', 'mlg', 'mlg1.png', 'mlg2.png', 'mlg3.png', 'mlg4.png', 'mlg5.png', 'mlg6.png', 'mlg7.png', 'mlg8.png', 'Taman Lampion Mahakam adalah taman berisikan lampion-lampion.', 'Taman Lampion Mahakam adalah sebutan bagi taman tersebut, taman ini berisikan lampion-lampion berbentuk bangunan ataupun benda-benda unik yang akan bercahaya pada malam hari.', 7),
(16, 'Kampung Tenun Samarinda', 'Gg. Pertenunan Jl. Hos Cokro Aminoto, Baqa, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75133', 'Gg. Pertenunan Jl. Hos Cokro Aminoto, Baqa, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75133', 'kampungtenuncagarbudaya.png', 'tenun', 'tenun1.png', 'tenun2.png', 'tenun3.png', 'tenun4.png', 'tenun5.png', 'tenun6.png', 'tenun7.png', 'tenun8.png', 'Sebuah kampung yang warganya berprofesi sebagai pengrajin sarung tenun samarinda.', 'Para perempuan di perkampungan ini tampak beraktivitas merajut benang-benang di atas alat tenun \"Gedokan\". Mereka mengayunkan alat itu dengan penuh asa guna menjaga tradisi, menghasilkan karya khas sarung Samarinda.\r\n', 4),
(17, 'Kolam Tjiu Palace', 'Jl. Sultan Sulaiman No.6, Sambutan, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75115', 'Jl. Sultan Sulaiman No.6, Sambutan, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75115', 'kolamtjiupalace.png', 'tiju', 'tiju1.png', 'tiju2.png', 'tiju3.png', 'tiju4.png', 'tiju5.png', 'tiju6.png', 'tiju7.png', 'tiju8.png', 'Kolam Wisata Tjiu Palace sebagai salah satu kolam wisata yang hits. ', 'Tjiuâ€™s Palace menawarkan berbagai fasilitas dan pilihan bagi para pengunjung, mulai dari kolam pancing kiloan, kolam pancing lomba, lapangan futsal, restoran terapung, sepeda air, hingga kafe tenda. Selain itu, tempat ini juga menyediakan toilet, musala, dan karyawan yang ramah dan siap melayani.', 7),
(18, 'Jungle Water World', 'Km. 24, Guntunglai, Jl. Poros Samarinda - Bontang, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75117', 'Km. 24, Guntunglai, Jl. Poros Samarinda - Bontang, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75117', 'junglewaterworld.png', 'jungle', 'jungel1.png', 'jungle2.png', 'jungl3.png', 'jungle4.png', 'jungle5.png', 'jungle6.png', 'jungle7.png', 'jungle8.png', 'Wisata di tengah dedaunan tropis dengan taman bermain air, kolam renang, dan lain-lain. ', 'Jungle Water World Samarinda adalah taman wisata danau, kolam renang dan outbond yang menawarkan fasilitas lengkap dengan situasi yang bernuansa hutan. Selain wadah behanyut, tempat wisata ini juga memiliki berbagai macam wadah lain, seperti wadah becabur, wadah bekucak, wadah berandam, wadah beseluncur, wadah bekunyung, wadah bekayuh, wadah belicak, wadah berumpak, dan wadah tatamba lapar resto. Tempat wisata ini juga menyediakan pulau, outbond, dan zip line coaster untuk pengunjung yang ingin merasakan sensasi berbeda.', 7),
(19, 'Desa Budaya Pampang', 'Jl. Wisata Budaya Pampang, No.32, RT.03, Kelurahan Budaya Pampang, Kec Samarinda Utara, Sungai Siring, Kota Samarinda, Kalimantan Timur 75119', 'Jl. Wisata Budaya Pampang, No.32, RT.03, Kelurahan Budaya Pampang, Kec Samarinda Utara, Sungai Siring, Kota Samarinda, Kalimantan Timur 75119', 'pampang.png', 'pampang', 'desa1.png', 'desa2.png', 'desa3.png', 'desa4.png', 'desa5.png', 'desa6.png', 'desa7.png', 'desa8.png', 'Desa adat dari Ibukota Provinsi Kalimantan Timur. Di sana bisa belajar soal suku Dayak.', 'Desa Budaya Pampang adalah destinasi wisata andalan di Samarinda. Disini wisatawan bisa mengenal banyak hal tentang Kalimantan khususnya suku Dayak. Berbagai hal tentang Dayak yang dapat disaksikan mulai dari tarian, rumah adat, seni rupa, dan lain-lain, bahkan berfoto bersama manusia bertelinga panjang. ', 4),
(20, 'Grand Tamansari', 'Jl. H. A. M. Rifaddin, Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75131.', 'Jl. H. A. M. Rifaddin, Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75131.', 'tamansarigrand.png', '', 'danau1.png', 'danau2.png', 'danau3.png', 'danau4.png', 'danau5.png', 'danau6.png', 'danau7.png', 'danau8.png', 'Perpaduan sempurna antara hunian yang eksklusif di tengah hijaunya alam borneo.', 'Danau GTS merupakan danau yang terletak di kawasan perumahan elite Grand Taman Sari. Tempat ini juga sering dikunjungi para kaum muda untuk menikmati matahari terbenam.', 7),
(21, 'Taman Salma Shofa ', 'Jl. Kalan Luas No.Desa, Mugirejo, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75241', 'Jl. Kalan Luas No.Desa, Mugirejo, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75241', 'salmasofa.png', '', 'salma1.png', 'salma2.png', 'salma3.png', 'salma4.png', 'salma5.png', 'salma6.png', 'salma7.png', 'salma8.png', 'Salah satu Taman Di Samarinda, Kalimantan Timur.', 'Taman Salma Shofa sudah jadi favorit warga Samarinda kalau ingin berenang. Usianya sudah satu dekade lebih. Di balik perkembangannya, Shalma Shofa punya cerita unik ketika awal pembangungan. Kota Samarinda didominasi oleh destinasi wisata keluarga. Satu di antaranya Taman Salma Shofa yang sudah cukup hits di kalangan warga Samarinda. Sebagai tempat wisata kolam renang dan punya daya tarik lainnya. Keberadaan Salma Shofa sendiri sebagai wisata kolam renang usianya sudah satu dekade lebih. Bukti kalau peminatnya selalu ada. Seiring berjalannya waktu, destinasi ini terus berkembang. Fasilitasnya lengkap. Ada museum mini. Dan belakangan sudah ada fasilitas outdoor. ', 7),
(22, 'Pinang Seribu', 'Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75127', 'Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75127', 'airterjunpinangseribu.png', '', 'p1.png', 'p2.png', 'p3.png', 'p4.png', 'p5.png', 'p6.png', 'p7.png', 'p8.png', 'Air terjun ini memiliki bentuk yang unik dan nampak seperti tangga.', 'Air Terjun Pinang Seribu hanya 14km dari Swiss-Belhotel Borneo Samarinda. Dan dapat ditempuh dengan berkendara melalui Jalan Pinang Seribu sekitar 40 menit.\r\nAir Terjun Pinang Seribu adalah tujuan wisata paling digemari para wisatawan di Samarinda. Air terjun ini memiliki bentuk yang unik dan nampak seperti tangga. Aliran airnya tidak terlalu kencang, membuatnya aman untuk anak-anak.\r\nSelain menikmati pemandangan air terjun dan kesegaran udara dari hutan yang ada, Anda juga dapat bermain water cycle, rock climbing, memancing, flying fox atau hanya sekedar santai di gazebo. tempat ini juga digunakan sebagai area outbond. Air Terjun Pinang Seribu juga dilengkapi dengan fasilitas seperti gazebo or mini hut, toilet, food court, rest area and parking space.', 1),
(23, 'Buddhist Centre', 'Jalan Donald Isaac Panjaitan RT.20, RW No.68, Mugirejo, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75243', 'Jalan Donald Isaac Panjaitan RT.20, RW No.68, Mugirejo, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75243', 'mahaviharasejahteramaitreya.png', 'budha', 'b1.png', 'b2.png', 'b3.png', 'b4.png', 'b5.png', 'b6.png', 'b7.png', 'b8.png', 'Maha Vihara Sejahtera Maitreya adalah sebuah bangunan Vihara Pusat.', 'Buddhist Center telah dikerjakan sejak tahun 2008 atau kurang lebih delapan tahun. Buddhist Center terdiri dari tiga bangunan yang berhubungan. Bangunan utama terdiri dari tiga lantai. Bangunan di sisi kiri dan kanan terdiri dari lima lantai.Buddhist Center ini adalah yang terbesar di Asia Tenggara, dan akan menajdi rujukan umat Buddha untuk wilayah Indonesia Timur. Buddhist Center akan menjadi wahana wisata religi dan wisata budaya, juga akan menjadi pusat pendidikan dan latihan (Pusdiklat) calon para biarawan dan biarawati untuk Indonesia Wilayah Timur.', 9),
(24, 'Penangkaran Buaya Makroman', 'Makroman, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75114', 'Makroman, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75114', 'buayamakroman.png', 'buaya', 'buaya1.png', 'buaya2.png', 'buaya3.png', 'buaya4.png', 'buaya5.png', 'buaya6.png', 'buaya7.png', 'buaya8.png', 'Tempat wisata alam seluas kurang lebih 7 hektar.', 'Penangkaran buaya ini baru dikenal orang sekitar awal abad ke-20. Sebagian besar dari generasi awal dalam penangkaran buaya ini lebih tertuju untuk keperluan atraksi bagi turis saja. Bukan untuk mengembangbiakkan buaya lalu diambil produknya. Kemudian pada tahun 1960 an operasi komersial untuk menghasilkan produk dari buaya mulai dilakukan. seperti mengambil telur buaya dari alam liar, atau dengan cara mengembangbiakkan buaya di dalam penangkaran. Hal ini dilakukan karena semakin punahnya populasi buaya di alam liar. Dan beberapa dari buaya tersebut dalam ancaman kepunahan.', 1),
(25, 'Rumah Ulin Arya', 'Jalan Teluk Batu Jl. Bayur No.RT.20, Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75119', 'Jalan Teluk Batu Jl. Bayur No.RT.20, Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75119', 'rumahulinarya.png', 'ulinarya', 'a1.png', 'a2.png', 'a3.png', 'a4.png', 'a5.png', 'a6.png', 'a7.png', 'a8.png', 'Burung, reptil, dan mamalia dipamerkan di pusat pengunjung hutan.', 'Rumah Ulin Arya, merupakan tempat wisata di Kota Samarinda yang  INSTAGRAMABLE,  terletak  dengan luas area Â± 3 Hektare. RUA menawarkan konsep sangat menarik bahkan bisa di sebut sebagai salah satu pelopor wahana yg menawarkan 2 wahana /Fasilitas dalam 1 tempat.kemudian di wahana alam juga memiliki beberapa spot-spot yang bagus dan mendukung seperti Rumah Ulin, Rumah Kaca, Cottages, Mini Farm ( di isi Binatang-binatang lucu dan menarik seperti Kelinci,Burung Merak, Burung Hantu, Burung Unta, Burung Macaw, Burung Merpati, Binturong, Rakun, Meerkat, kura-kura, Iguana ), Hidden CafÃ©, Arya,s Playground, Camping Ground, Meeting Room, Private Library, Labirin, Kids Playground, Sarang Burung Raksasa, Botanical Garden dan ditambah beberapa fasilitas yaitu Pendopo (dilengkapi wifi, infocus, whiteboard dan Karaoke) serta ada beberapa Gazebo yang bisa di gunakan.', 7),
(26, 'Pemandian Serayu Lestari', 'Jl. Serayu No.24, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75116', 'Jl. Serayu No.24, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75116', 'pemandianserayulestari.png', 'serayu', 's1.png', 's2.png', 's3.png', 's4.png', 's5.png', 's6.png', 's7.png', 's8.png', 'Salah satu objek Wisata yang terletak di kawasan Tanah Merah.', 'Salah satu objek Wisata yang terletak di kawasan Tanah Merah Kota Samarinda. Lokasinya mudah di cari dan di jangkau dengan kendaraan Roda 4 dan 2 dengan lahan parkir yang cukup luas. Area tempat wisata nya yang bersih, terdapat wahana kolam renang untuk dewasa dan anak2 yang cukup besar. Ada wahana flying fox juga. Fasilitas yang tersedia disini terdapat beberapa pendopo untuk duduk2 santai, ada toilet ruang ganti dan Warung. Pendopo bisa di sewa untuk family. Mengasyikan bersantai, bermain dan berenang disini. Recommended bagi kalian yang ingin berkunjung ke Samarinda untuk datang ke Pemandian ini.', 7),
(27, 'Air Terjun Berambai', 'Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75124', 'Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75124', 'terjunberambai.png', 'berambai', 'br1.png', 'br2.png', 'br3.png', 'br4.png', 'br5.png', 'br6.png', 'br7.png', 'br8.png', 'Air Terjun Berambai salah satu destinasi wisata di Samarinda.', 'Air Terjun Berambai merupakan salah satu destinasi wisata yang ada di Samarinda. Tempat wisata ini memang kurang begitu populer jika dibandingkan dengan tempat wisata seperti pantai atau pulau yang ada di sekitar Samarinda.Air terjun ini memiliki pesona yang sangat menakjubkan, membuat siapapun yang pernah berkunjung ke sini mengalami pengalaman yang tak terlupakan. Lokasi wisata ini cukup tersembunyi, dengan keindahannya yang sangat menawan.', 1),
(28, 'Mesra Indah', 'Jl. KH. Khalid No.mor 42, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. KH. Khalid No.mor 42, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'mesraindah.png', 'mesra', 'mesra1.png', 'mesra2.png', 'mesra3.png', 'mesra4.png', 'mesra5.png', 'mesra6.png', 'mesra7.png', 'mesra8.png', 'Mal Mesra Indah adalah pusat perbelanjaan  di Samarinda.\r\n ', 'Mal Mesra Indah adalah pusat perbelanjaan empat lantai yang pertama berdiri di tahun 1980an di Kota Samarinda terletak di Jalan K.H. Khalid, merupakan daerah tersibuk di Samarinda. Mal ini dimiliki oleh pengusaha lokal dengan perusahaan yang bernaung di bawah Grup Mesra, milik Haji Rusli.\r\n\r\nLokasinya yang berada di pusat keramaian; yaitu di antara kawasan Citra Niaga dan Pasar Pagi membuat pengunjung Mesra Indah selalu ada. ', 2),
(29, 'Plaza Mulia', 'Jl. P. Irian No.1, Karang Mumus, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75113', 'Jl. P. Irian No.1, Karang Mumus, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75113', 'plazamulia.png', 'plaza', 'p1.png', 'p2.png', 'p3.png', 'p4.png', 'p5.png', 'p6.png', 'p7.png', 'p8.png', 'Mal ini memiliki retailer lokal & internasional & resto.', 'PT. Selyca Mulia membangun sebuah Mall dengan luas area 66.600 M2, yang di beri nama Plaza Mulia Samarinda. Sesuai dengan namanya, Mall tersebut berlokasi di kota Samarinda - Kalimantan Timur, yang mempunyai 5 lantai.', 2),
(30, 'Samarinda Square', 'Jl. M. Yamin, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Jl. M. Yamin, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'samarindasquare.png', 'ss', 'm1.png', 'm2.png', 'm3.png', 'm4.png', 'm5.png', 'm6.png', 'm7.png', 'm8.png', 'Sebuah pusat belanja modern yang terdapat di Kota Samarinda.\r\n', 'Samarinda Square adalah sebuah pusat belanja modern yang terdapat di Kota Samarinda terletak di Jalan M. Yamin sedikit ke arah utara dari Mal Lembuswana menuju arah Sempaja. ', 2),
(31, 'Vihara Muladharma', 'Jl. PM. Noor No.9, Sempaja Timur, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75119', 'Jl. PM. Noor No.9, Sempaja Timur, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75119', 'viharamuladharma.png', 'vihara', 'v1.png', 'v2.png', 'v3.png', 'v4.png', 'v5.png', 'v6.png', 'v7.png', 'v8.png', 'Ini adalah kuil Theravada Buddha yang dibangun 25 tahun yang lalu.', 'Ini adalah kuil Buddha Theravada yang dibangun 25 tahun yang lalu dan merupakan tempat yang cocok bagi mereka yang ingin belajar agama Buddha karena ada seorang biksu yang tinggal di kuil tersebut hampir sepanjang waktu.', 9),
(32, 'Eco Borneo Tour', 'Jl. Gunung Merbabu No.01, RT.06, Jawa, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75122', 'Jl. Gunung Merbabu No.01, RT.06, Jawa, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75122', 'ecoborneotour.png', 'borneo', 'e1.png', 'e2.png', 'e3.png', 'e4.png', 'e5.png', 'e6.png', 'e7.png', 'e8.png', 'Liburan Anda di Kalimantan yang menyenangkan dan ajaib.\r\n', 'Disini anda bisa menjelajahi hutan Kalimantan dan bisa melihat para hewan seperti Orang Utan, Burung, Gajah di habitat aslinya.', 1),
(33, 'Air Terjun Tanah Merah', 'Jl. Muara Badak - Samarinda, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75116', 'Jl. Muara Badak - Samarinda, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75116', 'airterjuntanahmerah.png', '', '', '', '', '', '', '', '', '', 'Air Terjun ini hanya memiliki ketinggian  15 meter saja.', '', 1),
(34, 'Samarinda Central Plaza ', 'Jl. Bhayangkara No.58, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Bhayangkara No.58, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'l2.png', 'scp', 'l1.png', 'l2.png', 'l3.png', 'l4.png', 'l5.png', 'l6.png', 'l7.png', 'l8.png', 'Plaza Mulia adalah salah satu mall di Samarinda, Kalimantan Timur.', 'Samarinda Central Plaza berlokasi strategis di pusat kota Samarinda. Samarinda Central Plaza telah menjadi pusat perbelanjaan terbesar dan menjadi landmark kota Samarinda. Samarinda Central Plaza didirikan pada tahun 2001. Merupakan destinasi belanja dan rekreasi favorit bagi penduduk lokal dan kota sekitarnya. Mall ini telah tertanam di hati masyarakat Samarinda dan menjadi ikon kota Samarinda.', 2),
(35, 'Planet Swalayan Samarinda', 'Jl. Rajawali No.80, Bandara, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75117', 'Jl. Rajawali No.80, Bandara, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75117', 'planetswalayan.png', '', '', '', '', '', '', '', '', '', 'Salah satu wisata belanja yang lengkap dan murah lebih tepatnya di swalayan. ', '', 2),
(36, 'Kampung Amplang', 'Setelah Langgar Al-Irsyad, disebelah Toko Vape, Jl. Slamet Riyadi No.63, Tlk. Lerong Ulu, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', 'Setelah Langgar Al-Irsyad, disebelah Toko Vape, Jl. Slamet Riyadi No.63, Tlk. Lerong Ulu, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', 'kampungamplang.png', 'amplang', 'a1.png', 'a2.png', 'a3.png', 'a4.png', 'a5.png', 'a6.png', 'a7.png', 'a8.png', 'Kampung Amplang Makin Eksis, Konsisten Jaga Kualitas.', 'Kampung amplang tempat makan ini menjual makanan khas Samarinda yaitu kerupuk amplang yang rasanya begitu khas dan biasa dimaanfaatkan sebagai oleh oleh bagi para pengunjung dari daerah lain, saya mengunjungi dan membeli, nampaknya seperti toko kerupuk amplang lainnya, namun setelah pulang ke rumah dan mencobanya, memang krupuk kampung amplang ini punya ciri ok tersendiri.', 2),
(37, 'Pesut Etam ', 'Jl. Gajah Mada No.30, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Gajah Mada No.30, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'pesutetam.png', 'kapal', 'k1.png', 'k2.png', 'k3.png', 'k4.png', 'k5.png', 'k6.png', 'k7.png', 'k8.png', 'Pesut kita, Pesut Mahakam, Pesut Etam, Pesut Mahkota dan Pesut Bentong.', ' Sungai Mahakam kini punya Wisata Susur Sungai dengan menggunakan kapal wisata. Sejak diresmikan pada 10 Mei 2018, animo masyarakat semakin bertambah. Kini, telah 5 kapal yang beroperasi dan semua diberi nama depan Pesut (sejenis hewan endemik Sungai Mahakam) yang artinya â€œbesarâ€. Kelima nama kapal tersebut adalah Pesut kita, Pesut Mahakam, Pesut Etam, Pesut Mahkota dan Pesut Bentong.', 7),
(38, 'Bumi Sempaja Waterpark', 'Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75242', 'Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75242', 's1.png', 'sempaja', 's2.png', 's3.png', 's4.png', 's5.png', 's8.png', 's8.png', 's9.png', 's6.png', 'Bisa menjadi pilihan wisata air di kota Samarinda.', 'Bumi Sempaja Waterpark salah satu tujuan rekreasi di kota Samarinda. Tarif tiket masuk yang relatif terjangkau dan wahana permainan air yang cukup banyak menjadikannya selalu ramai terutama saat akhir pekan dan libur sekolah.\r\nHarga Tiket Masuk Bumi Sempaja Waterpark\r\n\r\nBeragam wahana dan kolam renang bisa dimainkan di waterpark ini dengan biaya yang cukup murah. Harga tiket masuk Bumi Sempaja Waterpark bisa didapat dengan harga mulai dari Rp30.000 â€“ Rp35.000.\r\nJenis Tiket	Harga\r\nTiket Masuk Senin-Jumat	Rp30.000\r\nTiket Masuk Sabtu-Minggu & Hari Libur	Rp35.000\r\nHarga Tiket Masuk Bumi Sempaja Waterpark\r\n\r\nBaca: CARIBBEAN Waterpark Balikpapan Tiket Masuk & Wahana\r\nJam Buka Bumi Sempaja Waterpark\r\n\r\nPengunjung bisa datang dan bermain di water park ini mulai pagi hari. Water park sudah dibuka mulai pukul 09.00 pagi hingga sore hari.\r\nHari	Jam Buka\r\nSenin â€“ Jumat	09.00 â€“ 17.00\r\nSabtu, Minggu dan Hari Libur	09.00 â€“ 18.00\r\nJam Buka Bumi Sempaja Waterpark\r\n\r\nBumi Sempaja Waterpark memiliki area yang cukup luas, area kolam dan wahana permainan air yang tersedia diantaranya:\r\nkolam dan wahana anak bumi sempaja waterpark\r\nKolam dan wahana anak-anak. foto: Sempaja_Waterpark\r\nKolam Balita\r\n\r\nBagi pengunjung yang membawa balita tak perlu ragu mencari area bermain karena ada area kolam yang dikhususkan untuk balita. Kolam berbentuk lingkaran ini berdiameter sekitar 8 meter.\r\n\r\nKolamnya hanya berupa kolam renang saja dengan kedalaman hanya 20 cm sehingga sangat aman.Meskipun hanya berisi air, namun tetap akan atraktif karena ada pancuran air yang keluar dari mulut patung pesut yang ada di pinggir kolam.\r\n\r\n', 7),
(39, 'Taman Cerdas Samarinda', 'Jl. Mayor Jendral S. Parman, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75123', 'Jl. Mayor Jendral S. Parman, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75123', 'tamancerdas.png', 'cerdas', 'q1.png', 'q2.png', 'q3.png', 'q4.png', 'q5.png', 'q6.png', 'q7.png', 'q8.png', 'Salah satu taman wisata yang populer di Kota Samarinda.', ' Sungguh sangat nikmat suasana di Taman itu. Taman Cerdas ini terletak di Jalan S. Parman. Bersebelahan langsung dengan Rumah Jabatan Wali Kota Samarinda.', 5),
(40, 'Stadion Palaran', 'Jl. Stadion Utama Kaltim, Simpang Pasir, Kec. Palaran, Kota Samarinda, Kalimantan Timur 75251', 'Jl. Stadion Utama Kaltim, Simpang Pasir, Kec. Palaran, Kota Samarinda, Kalimantan Timur 75251', 'stadionpalaran.png', '', '', '', '', '', '', '', '', '', 'Stadion Utama Palaran adalah sebuah stadion serbaguna di Kota Samarinda.', '', 7),
(41, 'Danau Danurdana Perjiwa', 'gunung Kyai, Jl. Perjiwa, Perjiwa, Kec. Tenggarong Seberang, Kabupaten Kutai Kartanegara, Kalimantanï¿½Timurï¿½75572', 'gunung Kyai, Jl. Perjiwa, Perjiwa, Kec. Tenggarong Seberang, Kabupaten Kutai Kartanegara, Kalimantan Timur 75572', 'danaudanurdana.png', 'danauperjiwa', 'w1.png', 'w2.png', 'w3.png', 'w4.png', 'w5.png', 'w6.png', 'w7.png', 'w8.png', 'Salah Satu wisata alam yang menarik di samarinda.\r\n', 'Danau Danurdana merupakan sebuah destinasi wisata yang terletak di RT. 05 Desa Perjiwa, Kecamatan Tenggarong Seberang, Kabupaten Kutai Kartanegara (Kukar) jadi sektor wisata andalan dalam meningkatkan ekonomi masyarakat.\r\n\r\nDanau Danurdana dikelola pemerintah desa dengan menggandeng investor untuk mengembangkan danau tersebut.\r\n\r\nDanau Danurdana merupakan bekas galian tambang batubara yang yang disulap menjadi objek wisata unggulan.\r\n\r\nSelain menyuguhkan keindahan alamnya, Danau Danurdana, Desa Perjiwa ini juga menyediakan wahana permainan yang memacu adrenalin yakni keseruan menunggangi banana boat.\r\n\r\nTerdapat lampu hias dan juga air terjun buatan yang menambah suasana liburan dan berakhir pekan lebih menarik.\r\n\r\nUntuk diketahui, Wisata danau ini buka setiap hari dan ini merupakan hasil kerjasama Pemerintah desa, investor dan Pokdarwis.', 1),
(42, 'Bukit Steling Selili ', 'Selili, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75251', 'Selili, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75251', 'bukit_selili.png', 'steling', 'e1.png', 'e2.png', 'e3.png', 'e4.png', 'e5.png', 'e6.png', 'e7.png', 'e8.png', 'Sebuah wilayah perbukitan memanjang berarah utara-selatan.', 'Bukit Steling merupakan sebuah wilayah perbukitan memanjang berarah utara-selatan yang terletak di Kelurahan Selili dan Kelurahan Sungai Dama, Kecamatan Samarinda Ilir, Kota Samarinda. Masyarakat Samarinda lebih mengenal dengan nama Gunung Steling daripada Bukit Steling. Penyebutan gunung secara geologi sebenarnya kurang tepat, mengingat elevasi tertinggi bukit ini hanya 117 m (DEMNAS).', 1),
(43, 'Puncak 30 Sidomulyo', 'Jl. Bukit Rumbia 1, Sidomulyo, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Bukit Rumbia 1, Sidomulyo, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75242', 'puncak30_sidomulyo.png', 'puncak30', 'o1.png', 'o2.png', 'o3.png', 'o4.png', 'o5.png', 'o6.png', 'o7.png', 'o8.png', 'Menawarkan pesona panorama kota Samarinda dari atas bukit.', 'Puncak Sidomulyo berlokasi di Jalan Bukit Rumbia 1, Sidomulyo, Kecamatan Samarinda Ilir, Kota Samarinda. Dari tempat ini kamu bisa melihat pemandangan Kota Samarinda dari ketinggian. Pada malam, pemandangan tersebut akan terlihat semakin unik berkat pancaran lampu-lampu perkotaan.\r\n\r\n', 1),
(44, 'Masjid Cheng Hoo Samarinda', 'Ruhui Rahayu No.1, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Ruhui Rahayu No.1, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'p5.png', 'cengho', 'p1.png', 'p2.png', 'p3.png', 'p4.png', 'p5.png', 'p6.png', 'p7.png', 'p8.png', 'Masjid yang dibangun berasitekturkan nuansa Muslim Tionghoa.', 'Masjid Muhammad Cheng Hoo, atau dikenal juga sebagai Masjid Cheng Ho, memiliki bangunan yang unik. Lokasinya ada di Jalan Ruhui Rahayu 1 Nomor 1 Gunung Kelua, Samarinda Ulu, Samarinda. Dilaporkan oleh Kompas TV, bangunan Masjid Cheng Ho memiliki memadukan budaya asal China dan Arab. Masjid ini didominasi warna merah, hijau, dan kuning, ornamennya kental nuansa China lama dan pintu masuknya menyerupai pagoda. Ada relief naga dan patung singa dari lilin dengan lafaz Allah dalam huruf Arab di puncak pagoda. Ddibangunnya tempat ibadah ini merupakan bentuk penghormatan kepada Laksamana Muhammad Sulaiman Cheng Ho asal China yang beragama Islam.\r\n', 9),
(45, 'Paroki Katedral Santa Maria', 'Jl. Jend. Sudirman No.36, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75122', 'Jl. Jend. Sudirman No.36, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75122', 'katedral_samarinda.png', 'gereja', 'g1.png', 'g2.png', 'g3.png', 'g4.png', 'g5.png', 'g6.png', 'g7.png', 'g8.png', 'Sebuah gereja katedral Katolik yang berada dalam Keuskupan Agung Samarinda.\r\n', 'Gereja Katedral Samarinda adalah sebuah gereja katedral Katolik yang terletak di tengah di kota Samarinda, berada dalam Keuskupan Agung Samarinda.', 9),
(46, 'Masjid Shirathal Mustaqiem', 'Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur', 'Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur', 'mesjid_shiratalmustaqim.png', 'mesjidtua', 'm1.png', 'm2.png', 'm3.png', 'm4.png', 'm5.png', 'm6.png', 'm7.png', 'm8.png', 'Masjid tertua di Kota Samarinda, tepatnya di Kelurahan Mesjid, Kecamatan Samarinda. \r\n', 'Masjid Shiratal Mustaqiem adalah masjid tertua di Kota Samarinda, Provinsi Kalimantan Timur, Indonesia, tepatnya di Kelurahan Mesjid, Kecamatan Samarinda Seberang. Masjid yang dibangun pada tahun 1881 ini pernah menjadi pemenang ke-2 dalam festival masjid-masjid bersejarah di Indonesia pada tahun 2003.', 9),
(79, 'baru', 'Jalan Bungtomo', '', 'ecoborneotour.png', 'ujicoba', 'tamansmd3.png', 'tamansmd4.png', 'tamansmd5.png', 'tamansmd6.png', 'tamansmd7.png', 'tamansmd8.png', 'tamansmd9.png', 'tamansmd4.png', 'dadad', 'adada', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_user` (`id_user`,`id_wisata`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indeks untuk tabel `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id_rate`),
  ADD KEY `id_user` (`id_user`,`id_wisata`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rate`
--
ALTER TABLE `rate`
  MODIFY `id_rate` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`),
  ADD CONSTRAINT `komentar_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `wisata_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
