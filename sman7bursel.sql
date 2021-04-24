-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2021 pada 05.44
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sman7bursel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asesmen`
--

CREATE TABLE `asesmen` (
  `id` int(11) NOT NULL,
  `aspek` varchar(1000) DEFAULT NULL,
  `deskripsi` varchar(1000) DEFAULT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `asesmen`
--

INSERT INTO `asesmen` (`id`, `aspek`, `deskripsi`, `id_mengajar`, `id_siswa`) VALUES
(26, 'Nilai Menurun', '1. Perbanyak belajar dirumah,\r\n2. Kurangi bermain,', 30, 190),
(27, 'Penurunan Nilai', 'Mungkin karena terlalu banyak main', 27, 278),
(28, 'Nakal Disekolah', 'Sering Loncat Pagar', 27, 284);

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tgl_dibuat` timestamp NOT NULL DEFAULT current_timestamp(),
  `tgl_diubah` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi`, `foto`, `tgl_dibuat`, `tgl_diubah`, `id_user`) VALUES
(1, 'Berita1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0', '2020-04-25 10:19:26', '2020-04-25 10:19:26', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `pangkat` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `tmt` varchar(30) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `nip`, `jk`, `ttl`, `pendidikan`, `pangkat`, `jabatan`, `tmt`, `no_hp`, `id_user`) VALUES
(4, 'ASIATUN S.D SOUMENAA, S.Pd', '2063760662220003 ', 'Perempuan', 'NEGERI LIMA 31-07-1982', 'S1', 'Pembina IV/b', 'Guru Madya', '1-4-2014', '085263782415', 64),
(5, 'ASNI SAMAN, S.Pd ', '9243754656300033', 'Perempuan', 'Labuang 13-09-1970', '-', '-', '-', '-', '085242526546', 67),
(6, 'DIAN NATALIA TAHALELE, S.Pd ', '1563759661300113', 'Perempuan', 'Hilla 31-12-1981', '-', '-', '-', '-', '081241189392', 68),
(7, 'ISMAIL, S.Pd', '0042765666131183', 'Laki-Laki', 'BALIK PAPAN 10-07-1987', '-', '-', '-', '-', '081241189392', 69),
(8, 'ZAHRA HUSAIN, S.Pd ', '5740762663220002', 'Perempuan', 'HATIVE KECIL 08-04-1981', '-', '-', '-', '-', '081343641719', 70),
(9, 'DORCE LEHALIMA, S.Pd', '1952770666220002 ', 'Perempuan', 'WAINIBE 20-06-1982', '-', '-', '-', '-', '085217369948', 71),
(10, 'CLAUDIA T. LATUIHAMALLO,S.Pd', '6742764665220002 ', 'Perempuan', 'NAMLEA 10-04-1986', '-', '-', '-', '-', '085343766773', 72),
(11, 'W.E. ANGWARMASSE, SH ', '2355759659200003', 'Perempuan', 'Ambon 23-10-1981', '-', '-', '-', '-', '082187747804', 73),
(12, 'ROSNAH S.Pd ', '6438758661300002', 'Perempuan', 'Ambon 01-06-1980', '-', '-', '-', '-', '085242257416', 74),
(13, 'HERMIN S. TIMISELA, S.Pd ', '1259759661300093', 'Perempuan', 'Wassu 27-09-1981', '-', '-', '-', '-', '085242215908', 75),
(14, 'SUMIANA, S.Pd', '6953765666220002 ', 'Perempuan', 'LAHAKABA 21-06-1987', '-', '-', '-', '-', '085242709154', 76),
(15, 'RIFANO LATUWAEL, S.Th ', '1651762663110052', 'Laki-Laki', 'Sameth 15-03-1984', '-', '-', '-', '-', '085342298387', 77),
(18, 'Dra. SALIMA JAFAR, M.Si', '9538741642300042', 'Perempuan', 'LIMBOTO 06-02-1963', 'S2 Administrasi Publik', 'Kepala Sekolah', 'Kepsek', '01 FEB 1995', '082274628122', 127);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(20) NOT NULL,
  `id_mengajar` int(11) DEFAULT NULL,
  `id_ruangan` int(11) DEFAULT NULL,
  `id_thn_ajar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari`, `jam`, `id_mengajar`, `id_ruangan`, `id_thn_ajar`) VALUES
(6, 'Senin', '07:00 - 08:00', NULL, NULL, 1),
(7, 'Senin', '10:00 - 11:00', NULL, NULL, 1),
(8, 'Selasa', '09:00 - 10:00', NULL, NULL, 1),
(9, 'Rabu', '10:00 - 11:00', NULL, NULL, 1),
(10, 'Senin', '07:30 - 09:30', 28, 22, 2),
(11, 'Selasa', '11:06 - 12:08', 30, 11, 2),
(12, 'Sabtu', '01:58 - 01:58', 39, 11, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`) VALUES
(6, 'IPA'),
(7, 'IPS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`) VALUES
(1, 'Matematika'),
(2, 'Bahasa Indonesia'),
(3, 'Ilmu Pengetahuan Alam'),
(4, 'Agama'),
(5, 'Biologi'),
(6, 'Kimia'),
(7, 'Fisika'),
(8, 'Bahasa Inggris'),
(9, 'Seni Budaya'),
(10, 'Pendidikan Jasmani'),
(11, 'Geografi'),
(12, 'Sosiologi'),
(13, 'Bimbingan Konseling (BK)'),
(14, 'Prakarya'),
(15, 'Ekonomi'),
(16, 'Sejarah'),
(17, 'PKN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mengajar`
--

CREATE TABLE `mengajar` (
  `id` int(11) NOT NULL,
  `id_rombel` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_thn_ajar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mengajar`
--

INSERT INTO `mengajar` (`id`, `id_rombel`, `id_mapel`, `id_guru`, `id_thn_ajar`) VALUES
(27, 43, 1, 5, 2),
(28, 48, 2, 9, 2),
(29, 46, 3, 9, 2),
(30, 34, 5, 13, 2),
(31, 37, 16, 15, 2),
(32, 40, 15, 14, 2),
(33, 34, 6, 4, 2),
(34, 37, 12, 11, 2),
(35, 43, 7, 6, 2),
(36, 40, 11, 8, 2),
(37, 46, 1, 12, 2),
(38, 48, 8, 10, 2),
(39, 40, 10, 7, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `urut` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `judul`, `url`, `icon`, `urut`) VALUES
(1, 'Dashboard', 'dashboard', 'nav-icon fas fa-tachometer-alt', 1),
(2, 'Data Siswa', 'siswa', 'far fa-user nav-icon', 2),
(3, 'Data Guru', 'guru', 'far fa-user nav-icon', 3),
(4, 'Rombel', 'rombel', 'fa fa-address-book nav-icon', 4),
(5, 'Jadwal', 'jadwal', 'nav-icon far fa-calendar-alt', 10),
(6, 'Jurusan', 'jurusan', 'fa fa-users nav-icon', 5),
(7, 'Mapel', 'mapel', 'fa fa-book nav-icon', 6),
(8, 'Ruangan', 'ruangan', 'fa fa-building nav-icon', 7),
(9, 'Admin', 'admin', 'far fa-user nav-icon', 11),
(10, 'Mengajar', 'mengajar', 'fa fa-bookmark nav-icon', 9),
(11, 'Tahun Ajar', 'thnAjar', 'fa fa-graduation-cap nav-icon', 8),
(12, 'Penilaian', 'penilaian', 'fa fa-pencil-square nav-icon', 12),
(13, 'Asesmen', 'asesmen', 'fa fa-pencil-square nav-icon', 13),
(14, 'Jadwal Mengajar', 'jadwalguru', 'fa fa-calendar nav-icon', 14),
(15, 'Jadwal Mata Pelajaran', 'jadwalsiswa', 'fa fa-calendar nav-icon', 15),
(16, 'Daftar Nilai', 'nilaisiswa', 'fa fa-pencil-square nav-icon', 16),
(17, 'Asesmen Mata Pelajaran ', 'asesmensiswa', 'fa fa-pencil-square nav-icon', 17),
(18, 'Profil', 'profil', 'far fa-circle nav-icon', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `u_tulis1` float DEFAULT NULL,
  `u_tulis2` float DEFAULT NULL,
  `u_tulis3` float DEFAULT NULL,
  `rata_tulis` float DEFAULT NULL,
  `u_lisan1` float DEFAULT NULL,
  `u_lisan2` float DEFAULT NULL,
  `u_lisan3` float DEFAULT NULL,
  `rata_lisan` float DEFAULT NULL,
  `u_perbuatan1` float DEFAULT NULL,
  `u_perbuatan2` float DEFAULT NULL,
  `u_perbuatan3` float DEFAULT NULL,
  `rata_perbuatan` float DEFAULT NULL,
  `rata_ulhar` float DEFAULT NULL,
  `tugas1` float DEFAULT NULL,
  `tugas2` float DEFAULT NULL,
  `tugas3` float DEFAULT NULL,
  `rata_tugas` float DEFAULT NULL,
  `uts_t` float DEFAULT NULL,
  `uts_p` float DEFAULT NULL,
  `rata_uts` float DEFAULT NULL,
  `uas_t` float DEFAULT NULL,
  `uas_p` float DEFAULT NULL,
  `rata_uas` float DEFAULT NULL,
  `nilai_akhir` int(11) DEFAULT NULL,
  `nilai_rapor` float DEFAULT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `u_tulis1`, `u_tulis2`, `u_tulis3`, `rata_tulis`, `u_lisan1`, `u_lisan2`, `u_lisan3`, `rata_lisan`, `u_perbuatan1`, `u_perbuatan2`, `u_perbuatan3`, `rata_perbuatan`, `rata_ulhar`, `tugas1`, `tugas2`, `tugas3`, `rata_tugas`, `uts_t`, `uts_p`, `rata_uts`, `uas_t`, `uas_p`, `rata_uas`, `nilai_akhir`, `nilai_rapor`, `id_mengajar`, `id_siswa`) VALUES
(21, 80, 80, 75, 78.3333, 60, 70, 70, 66.6667, 90, 90, 90, 90, 78.3333, 80, 75, 85, 80, 85, 80, 82.5, 80, 85, 82.5, 81, 81, 30, 190),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 277),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 286),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 279),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 287),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 190),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 282),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, 277),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, 286),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 278),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 284),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 279),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 287),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 280),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 285),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 281),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 283),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 279),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 287);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'superadmin'),
(2, 'admin'),
(3, 'guru'),
(4, 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rombel`
--

CREATE TABLE `rombel` (
  `id` int(11) NOT NULL,
  `nama_rombel` varchar(30) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rombel`
--

INSERT INTO `rombel` (`id`, `nama_rombel`, `id_jurusan`) VALUES
(34, 'X Ipa 1', 6),
(35, 'X Ipa 2', 6),
(36, 'X Ipa 3', 6),
(37, 'X Ips 1', 7),
(38, 'X Ips 2', 7),
(39, 'X Ips 3', 7),
(40, 'XI Ips 1', 7),
(41, 'XI Ips 2', 7),
(42, 'XI Ips 3', 7),
(43, 'XI Ipa 1', 6),
(44, 'XI Ipa 2', 6),
(45, 'XI Ipa 3', 6),
(46, 'XII Ipa 1', 6),
(47, 'XII Ipa 2', 6),
(48, 'XII Ips 1', 7),
(49, 'XII Ips 2', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama_ruangan`) VALUES
(6, 'Perpustakaan'),
(7, 'Ruang Guru'),
(8, 'Kelas X IPA 1'),
(9, 'Kelas X IPA 2'),
(10, 'Kelas X IPA 3'),
(11, 'Kelas X IPS 1'),
(12, 'Kelas X IPS 2'),
(13, 'Kelas X IPS 3'),
(14, 'Kelas XI IPS 1'),
(15, 'Kelas XI IPS 2'),
(16, 'Kelas XI IPS 3'),
(17, 'Kelas XI IPA 1'),
(18, 'Kelas XI IPA 2'),
(19, 'Kelas XI IPA 3'),
(20, 'Kelas XII IPA 1'),
(21, 'Kelas XII IPA 2'),
(22, 'Kelas XII IPS 1'),
(23, 'Kelas XII IPS 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `hp_wali` varchar(30) NOT NULL,
  `id_rombel` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nis`, `jk`, `ttl`, `alamat`, `nama_wali`, `hp_wali`, `id_rombel`, `id_user`) VALUES
(190, 'M.ABDUL RIS\'AN SAWA', '3067226443', 'Laki-Laki', 'Namlea 20-06-2006', 'Lingkungan Waenono', 'Arfah', '085299468138', 34, 24),
(277, 'ANISA SOLISSA', '0055821123', 'Perempuan', 'Lektama 26-06-2005', 'Desa Lektama', '-', '084242424241', 37, 128),
(278, 'DARWIS WANCE', '0058718471', 'Laki-Laki', 'Lektama 07-09-2005', 'Desa Elfule', '-', '082387889432', 43, 129),
(279, 'LUSIA H. ANGWARMASSE', '0059378132', 'Perempuan', 'LARANTUKA 27-08-2005', 'Desa Labuang', '-', '0852987546620', 40, 130),
(280, 'MUH. ARIEL PRATAMA', '3055038434', 'Laki-Laki', 'Makassar 12-05-2005', 'Kamangale', '-', '082298675869', 46, 131),
(281, 'KRISNA TITAWAEL', '0037890648', 'Laki-Laki', 'Fogi 20-03-2003', 'Fatmite', '-', '082377859833', 48, 132),
(282, 'DIVA ANDIRA WANCE', '0054134375 ', 'Perempuan', 'WAEKEKA 28-09-2005', 'Labuang', '-', '082377859835', 34, 134),
(283, 'MUSTAM ODE', '0038529258 ', 'Laki-Laki', 'Fatmite 18-10-2003', 'Fatmite', '-', '082387889434', 48, 135),
(284, 'SALIANTI KARAMOY', '3045155439 ', 'Perempuan', 'Sekat 04-06-2004', 'Lektama', '-', '084242424249', 43, 136),
(285, 'ERWIN', '0055287603 ', 'Laki-Laki', 'Lamena 14-04-2004', 'Kamanglale', '-', '0852987546622', 46, 137),
(286, 'SATRIA FAEL TETERISSA', '0068110187 ', 'Perempuan', 'Wamkana 17-01-2006', 'Waenono', '-', '082377859839', 37, 138),
(287, 'WISNU RAUMASAN TEMARWUT', '0053954749 ', 'Laki-Laki', 'Waefusi 03-04-2005', 'Waefusi', '=', '084242424246', 40, 139);

-- --------------------------------------------------------

--
-- Struktur dari tabel `thn_ajar`
--

CREATE TABLE `thn_ajar` (
  `id` int(11) NOT NULL,
  `thn_ajar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `thn_ajar`
--

INSERT INTO `thn_ajar` (`id`, `thn_ajar`) VALUES
(1, 'Ganjil 2020/2021'),
(2, 'Genap 2020/2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `image`, `email`, `password`, `id_role`) VALUES
(24, '3067226443', '40101622_271209790376914_5240610938712752128_o.jpg', '', '$2y$10$zz2nc4EJKdtnhyR/nUUKJumB4ack2NfNCcBrswFE6JzftNhMHj6zu', 4),
(64, '2063760662220003 ', 'default1.jpg', '', '$2y$10$sNXUrDLpQLhkx.s1mLNSYO3Mbvc8rOVyYL0odO.9E2lfhu5Cp0rc6', 3),
(67, '9243754656300033', 'default1.jpg', '', '$2y$10$5elPjx25/7fmLyk/X2lEd.53NOVObNxC/7YRlp2VV.yDqKfG1ceUW', 3),
(68, '1563759661300113', 'default1.jpg', '', '$2y$10$S6ZghePMPR9DC7hQF3mW4O99DdMCSpsuok/7Mis5YyMZT9hYmPT.W', 3),
(69, '0042765666131183', 'default1.jpg', '', '$2y$10$kWgVW2v6nduNhzEt1kSF8.Bbs5Y7iENnNgR1cu/nWguNuN6IvShme', 3),
(70, '5740762663220002', 'default1.jpg', '', '$2y$10$EFptOvkwhxEt3snWc9i5w.3YOLbWw6S2LactLhOBmruFpQu0YrBfG', 3),
(71, '1952770666220002 ', 'default1.jpg', '', '$2y$10$hGcd0mZheWHH7voYI8pxNuZU5nVZCIk0rGg5GZ8EoDR85e0/syRPW', 3),
(72, '6742764665220002 ', 'default1.jpg', '', '$2y$10$EJejaG9u9u1gN7ZKEzFsiuaD9eHczbqqORiT5kLXINzGFNLG21Sxy', 3),
(73, '2355759659200003', 'default1.jpg', '', '$2y$10$0dPO2xZG9sfui7i29AXt4.vxS40hoDja6Anx567R2L5WtRPVLREje', 3),
(74, '6438758661300002', 'default1.jpg', '', '$2y$10$aACniUcDkWGHS7JgSWLkMuxfqVdRmP8..Qi81T7X8msSbdbkzJ7lK', 3),
(75, '1259759661300093', 'default1.jpg', '', '$2y$10$qMkkjzPqss5D1vvOawjPVeW9LnzaJjmTz2t.JfS1oKONDSf5QAPfK', 3),
(76, '6953765666220002 ', 'default1.jpg', '', '$2y$10$nQ6FHxq4elZIa2eLmzSXi.KgLR9rljGVyjkoatUW..2UjekU9xPKW', 3),
(77, '1651762663110052', 'default1.jpg', '', '$2y$10$R49fi9Nicx2Y3UKun/LPDOBqyg7Ey6eH3w5ASd6V/oeIwrtlajyVm', 3),
(126, 'fandiiksan', '1.jpg', '2fandiiksan@gmail.com', '$2y$10$r.upx7wj76Qwm/NnwJnh..pJT4ozS6uRhz84yudrH42Sr1zoO8fGi', 1),
(127, '9538741642300042', 'default1.jpg', '', '$2y$10$Sj4EyrXcPe2/L7PGwzTUyeMbJ/pxmRPfZnWDFzX0R7x4XkIrCdcr2', 3),
(128, '0055821123', '1494928232815.jpg', '', '$2y$10$KbaDmn63rUR7uzlpwU0f3OAdfm.6FS/cNNn7soz9HgJb8kaXhkmIy', 4),
(129, '0058718471', 'Screenshot_2017-01-22-16-34-16-1.png', '', '$2y$10$3KOAbDDZJbVjcS5AXO5dmeqvowUk3ZI9ZSnUbQRsrGcE4TulyPP2W', 4),
(130, '0059378132', 'FB_IMG_14883235042176858.jpg', '', '$2y$10$l534z23wFvFdG7c16.36w.YD2Weugnw/NNbV4B4lk0SCLpmpnuVbq', 4),
(131, '3055038434', 'org.jpg', '', '$2y$10$6Lchfpfezun2uBWTs9LrgeolC7XqgIbZFwainCTBPeMlMqnJBw64C', 4),
(132, '0037890648', 'usses1.jpg', '', '$2y$10$wYsdu2saijFob1pVwuyB/eAcirL1txOcGTWlgt7OusI45h5sSMrSa', 4),
(134, '0054134375 ', 'default1.jpg', '', '$2y$10$tSy0USE3ty5aJViBWq9Tk.U0Y879Vy.pbdSDOUCRUaiNkYUOf4V9S', 4),
(135, '0038529258 ', 'default1.jpg', '', '$2y$10$hknFyvTiVBIJE8NEeth6tOnnl4iA8AIuKYghBAw2jHD9Grg0fiLfe', 4),
(136, '3045155439 ', 'default1.jpg', '', '$2y$10$hwrk8hCDorQvUQi85z3DUO7njLlcySPHLDffRkkjFtxyZxYCyW6Ca', 4),
(137, '0055287603 ', 'default1.jpg', '', '$2y$10$QNiUAoF3nOyD0F0a8uPG5uhc8QF/9wb7UzcJEcKFmDmiMh/khNCs6', 4),
(138, '0068110187 ', 'default1.jpg', '', '$2y$10$ZKppibQLydx9xSNzOzl/I.vBd7hRDRT5BEodZ1ujvVvpE4jUizRPa', 4),
(139, '0053954749 ', 'default1.jpg', '', '$2y$10$DvL1toC8w9eq96dX4FYaD.I3WTSibVd8K5ZIG/jpQOilEhITwTkIK', 4),
(140, 'Salima Jafar', '', 'salimajafar@gmail.com', '$2y$10$0ZukVMWOGniGArQ8GBxS6OZqps.drelwuV.4O0vm.7nOJ/mqXnqym', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `id_menu`, `id_role`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 1, 2),
(11, 2, 2),
(12, 3, 2),
(13, 4, 2),
(14, 5, 2),
(15, 6, 2),
(16, 7, 2),
(17, 8, 2),
(18, 10, 1),
(19, 11, 1),
(20, 1, 3),
(21, 12, 3),
(22, 13, 3),
(24, 14, 3),
(25, 1, 4),
(26, 15, 4),
(27, 16, 4),
(28, 17, 4),
(29, 18, 1),
(30, 18, 2),
(31, 18, 3),
(32, 18, 4),
(33, 3, 4),
(34, 3, 3),
(35, 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `asesmen`
--
ALTER TABLE `asesmen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_mengajar`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_admin` (`id_user`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mapel` (`id_mengajar`),
  ADD KEY `id_ruangan` (`id_ruangan`),
  ADD KEY `id_thn_ajar` (`id_thn_ajar`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rombel` (`id_rombel`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_thn_ajar` (`id_thn_ajar`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mengajar` (`id_mengajar`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_rombel`),
  ADD KEY `id_rombel` (`id_user`);

--
-- Indeks untuk tabel `thn_ajar`
--
ALTER TABLE `thn_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `asesmen`
--
ALTER TABLE `asesmen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rombel`
--
ALTER TABLE `rombel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT untuk tabel `thn_ajar`
--
ALTER TABLE `thn_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `asesmen`
--
ALTER TABLE `asesmen`
  ADD CONSTRAINT `asesmen_ibfk_1` FOREIGN KEY (`id_mengajar`) REFERENCES `mengajar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asesmen_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_mengajar`) REFERENCES `mengajar` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `jadwal_ibfk_4` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `jadwal_ibfk_6` FOREIGN KEY (`id_thn_ajar`) REFERENCES `thn_ajar` (`id`);

--
-- Ketidakleluasaan untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `mengajar_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mengajar_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id`),
  ADD CONSTRAINT `mengajar_ibfk_3` FOREIGN KEY (`id_rombel`) REFERENCES `rombel` (`id`),
  ADD CONSTRAINT `mengajar_ibfk_4` FOREIGN KEY (`id_thn_ajar`) REFERENCES `thn_ajar` (`id`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_mengajar`) REFERENCES `mengajar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rombel`
--
ALTER TABLE `rombel`
  ADD CONSTRAINT `rombel_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_rombel`) REFERENCES `rombel` (`id`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_3` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `user_access_menu_ibfk_4` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
