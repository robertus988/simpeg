-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17 Jun 2019 pada 05.41
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpeg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anak`
--

CREATE TABLE `anak` (
  `id_anak` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tpt_lhr` varchar(50) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `pddk` varchar(50) NOT NULL,
  `pkrj` varchar(50) NOT NULL,
  `stts_hub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anak`
--

INSERT INTO `anak` (`id_anak`, `id_pegawai`, `nik`, `nama`, `tpt_lhr`, `tgl_lhr`, `jk`, `pddk`, `pkrj`, `stts_hub`) VALUES
(1, 2, '8723273249279', 'Robert Junior', 'New York', '2025-05-10', 'Laki-laki', 'SD', 'Siswa', 'Anak Kandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahasa`
--

CREATE TABLE `bahasa` (
  `id_bahasa` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `bahasa` varchar(50) NOT NULL,
  `kmp_bcr` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bahasa`
--

INSERT INTO `bahasa` (`id_bahasa`, `id_pegawai`, `bahasa`, `kmp_bcr`) VALUES
(1, 2, 'Inggris', 'Aktif'),
(2, 2, 'Jepang', 'Pasif'),
(3, 1, 'Inggris', 'Aktif'),
(4, 1, 'Jepang', 'Pasif'),
(5, 1, 'Korea', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_master_eselon` int(11) NOT NULL,
  `id_master_jabatan` int(11) NOT NULL,
  `jenis_jbt` varchar(50) NOT NULL,
  `no_sk_jbt` varchar(50) NOT NULL,
  `tgl_sk_jbt` date NOT NULL,
  `awal_masa_jbt` date NOT NULL,
  `akhir_masa_jbt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `id_pegawai`, `id_master_eselon`, `id_master_jabatan`, `jenis_jbt`, `no_sk_jbt`, `tgl_sk_jbt`, `awal_masa_jbt`, `akhir_masa_jbt`) VALUES
(1, 2, 7, 2, 'Jabatan Pelaksana', '8737439489358', '2020-02-01', '2020-02-01', '2024-02-01'),
(2, 25, 2, 4, 'Jabatan Struktural', '812827482749', '2016-01-01', '2016-01-01', '2022-01-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_krj`
--

CREATE TABLE `lokasi_krj` (
  `id_lokasi` int(11) NOT NULL,
  `kode_lokasi` varchar(20) NOT NULL,
  `nm_lokasi` varchar(32) NOT NULL,
  `alamat_lokasi` varchar(128) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi_krj`
--

INSERT INTO `lokasi_krj` (`id_lokasi`, `kode_lokasi`, `nm_lokasi`, `alamat_lokasi`, `no_hp`) VALUES
(1, 'LOK001', 'Pekanbaru', 'Jalan Srikandi No. 7 - 8 Panam', '0812249233555'),
(2, 'LOK002', 'Batam', 'Jalan Kutilang Ujung No. 12, Batam', '081365580887'),
(3, 'LOK003', 'Medan', 'Jalan Sisimangaraja 12 No. 50', '0852923353'),
(4, 'LOK004', 'Rantepao', 'Jalan A Mappanyuki', '081304929201'),
(5, 'LOK005', 'Lamunan', 'Jl. Poros Makale-Bera KM 3', '082290009830');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_eselon`
--

CREATE TABLE `master_eselon` (
  `id_master_eselon` int(11) NOT NULL,
  `eselon` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_eselon`
--

INSERT INTO `master_eselon` (`id_master_eselon`, `eselon`) VALUES
(1, 'Ia'),
(2, 'Ib'),
(3, 'IIa'),
(4, 'IIb'),
(5, 'IIIa'),
(6, 'IIIb'),
(7, 'IVa'),
(8, 'IVb'),
(9, 'Va');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_golongan`
--

CREATE TABLE `master_golongan` (
  `id_master_golongan` int(11) NOT NULL,
  `golongan` varchar(50) NOT NULL,
  `pangkat` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_golongan`
--

INSERT INTO `master_golongan` (`id_master_golongan`, `golongan`, `pangkat`) VALUES
(1, 'CPNS', 'Calon Pegawai Negeri Sipil'),
(2, 'I/A', 'Juru Muda'),
(3, 'I/B', 'Juru Muda Tingkat I'),
(4, 'I/C', 'Juru'),
(5, 'I/D', 'Juru Tingkat I'),
(6, 'II/A', 'Pengatur Muda'),
(7, 'II/B', 'Pengatur Muda Tingkat I'),
(8, 'II/C', 'Pengatur'),
(9, 'II/D', 'Pengatur Tingkat I'),
(10, 'III/A', 'Penata Muda'),
(11, 'III/B', 'Penata Muda Tingkat I'),
(12, 'III/C', 'Penata'),
(13, 'III/D', 'Penata Tingkat I'),
(14, 'IV/A', 'Pembina'),
(15, 'IV/B', 'Pembina Tingkat I'),
(16, 'IV/C', 'Pembina Utama Muda'),
(17, 'IV/D', 'Pembina Utama Madya'),
(18, 'IV/E', 'Pembina Utama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jabatan`
--

CREATE TABLE `master_jabatan` (
  `id_master_jabatan` int(11) NOT NULL,
  `nm_jabatan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_jabatan`
--

INSERT INTO `master_jabatan` (`id_master_jabatan`, `nm_jabatan`) VALUES
(1, 'Direktur Utama'),
(2, 'Manajer'),
(3, 'Supervisor'),
(4, 'Staff'),
(5, 'Coordinator'),
(7, 'Sekretaris'),
(8, 'IT'),
(10, 'Kepala Dinas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi`
--

CREATE TABLE `mutasi` (
  `id_mutasi` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `jenis_mutasi` varchar(50) NOT NULL,
  `no_sk_mts` varchar(50) NOT NULL,
  `tgl_mts` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mutasi`
--

INSERT INTO `mutasi` (`id_mutasi`, `id_pegawai`, `jenis_mutasi`, `no_sk_mts`, `tgl_mts`) VALUES
(1, 2, 'Masuk', '9274979427479', '2019-07-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orangtua`
--

CREATE TABLE `orangtua` (
  `id_orangtua` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tpt_lhr` varchar(50) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `pddk` varchar(50) NOT NULL,
  `pkrj` varchar(50) NOT NULL,
  `stts_hub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orangtua`
--

INSERT INTO `orangtua` (`id_orangtua`, `id_pegawai`, `nik`, `nama`, `tpt_lhr`, `tgl_lhr`, `pddk`, `pkrj`, `stts_hub`) VALUES
(1, 2, '91239273237287', 'Lilis Turu\' Padang', 'Lamunan', '1974-09-27', 'SMP', 'IRT', 'Ibu'),
(2, 2, '9232732938983', 'Valentinus Male', 'Bajawa', '1970-02-15', 'SMP', 'Freelancer', 'Ayah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkat`
--

CREATE TABLE `pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_master_golongan` int(11) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `tmt_pkt` date NOT NULL,
  `pjb_pgs_pkt` varchar(50) NOT NULL,
  `no_sk_pkt` varchar(50) NOT NULL,
  `tgl_sk_pkt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pangkat`
--

INSERT INTO `pangkat` (`id_pangkat`, `id_pegawai`, `id_master_golongan`, `pangkat`, `tmt_pkt`, `pjb_pgs_pkt`, `no_sk_pkt`, `tgl_sk_pkt`) VALUES
(1, 2, 1, 'Calon Pegawai Negeri Sipil', '2020-01-01', 'Alexander Pierce', '127328428648', '2020-01-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nm_pegawai` varchar(32) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `tpt_lhr` varchar(32) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `agama` varchar(20) NOT NULL,
  `gol_darah` varchar(2) NOT NULL,
  `stts_pnkh` varchar(20) NOT NULL,
  `stts_kpgw` varchar(20) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(32) NOT NULL,
  `alamat` varchar(64) NOT NULL,
  `tgl_msk` date NOT NULL,
  `tgl_knk_pkt` date NOT NULL,
  `tgl_knk_gj` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nm_pegawai`, `foto`, `jk`, `tpt_lhr`, `tgl_lhr`, `agama`, `gol_darah`, `stts_pnkh`, `stts_kpgw`, `no_hp`, `email`, `alamat`, `tgl_msk`, `tgl_knk_pkt`, `tgl_knk_gj`) VALUES
(1, '11212200420', 'Arfin Mani\' Poting', 'arfin.jpg', 'Laki-laki', 'Lea', '1997-10-22', 'Kristen Protestan', '-', 'Menikah', 'PNS', '085277882934', 'arfinmp@gmail.com', 'Lea', '2016-07-01', '0000-00-00', '0000-00-00'),
(2, '11212200421', 'Robertus Robert', 'robert.jpg', 'Laki-laki', 'Lamunan', '1998-10-05', 'Katolik', 'A', 'Menikah', 'Pegawai Swasta', '082290009830', 'robertus988@gmail.com', 'Lamunan', '2016-07-01', '2020-01-01', '2022-01-01'),
(3, '11212200430', 'Faldias Eko Anugra', 'dias.jpg', 'Laki-laki', 'Buntao', '1998-12-27', 'Kristen Protestan', 'A', 'Menikah', 'PNS', '08526577819', 'faldias@gmail.com', 'Bunnoran', '2016-07-01', '0000-00-00', '0000-00-00'),
(5, '11220043011', 'Andre Lee Adi Kaseng', 'male-profile.png', 'Laki-laki', 'Rantepao', '1998-03-03', 'Kristen Protestan', 'A', 'Menikah', 'PNS', '081234871294', 'andre@gmail.com', 'Rantepao', '2010-10-16', '0000-00-00', '0000-00-00'),
(6, '11250837822', 'Irfa Rante', 'female-profile.png', 'Perempuan', 'Lolai', '1990-10-12', 'Kristen Protestan', 'A', '', '', '081224923354', 'irfa@gmail.com', 'Lolai', '2012-10-20', '0000-00-00', '0000-00-00'),
(7, '11251100701', 'Weren Christian', 'weren.jpg', 'Laki-laki', 'Bua', '1994-10-03', 'Katolik', 'A', '', '', '081224923350', 'weren@gmail.com', 'Bua', '2013-10-23', '0000-00-00', '0000-00-00'),
(8, '11251100702', 'Gapitra Pniel', 'pitra.jpg', 'Laki-laki', 'Makale', '1998-01-01', 'Kristen Protestan', 'A', '', '', '081224923351', 'gapitra@gmail.com', 'Ariang', '2016-07-01', '0000-00-00', '0000-00-00'),
(9, '11251100703', 'Risma Lukas', 'female-profile.png', 'Perempuan', 'Lolai', '1999-03-01', 'Kristen Protestan', 'A', '', '', '081224923353', 'risma@gmail.com', 'Lolai', '2016-07-01', '0000-00-00', '0000-00-00'),
(10, '11251100704', 'Risna Lukas', 'female-profile.png', 'Perempuan', 'Lolai', '1999-03-01', 'Kristen Protestan', 'A', '', '', '081224923359', 'risna@gmail.com', 'Lolai', '2016-07-01', '0000-00-00', '0000-00-00'),
(11, '11251100705', 'Wisnu Dwiki', 'wisnu.jpg', 'Laki-laki', 'Kendari', '1997-04-10', 'Kristen Protestan', 'A', '', '', '082198371293', 'dwiki@gmail.com', 'Malango', '2016-07-01', '0000-00-00', '0000-00-00'),
(12, '11251100712', 'Enohk Eigtry', 'enohk.jpg', 'Laki-laki', 'Makale', '1998-08-08', 'Kristen Protestan', 'A', '', '', '081224923360', 'enohk@gmail.com', 'Mandetek', '2015-07-01', '0000-00-00', '0000-00-00'),
(13, '11251100753', 'Miftahul Hadi Saputra', 'putra.jpg', 'Laki-laki', 'Makale', '1998-10-08', 'Islam', 'A', 'Menikah', 'PNS', '081224923354', 'miftahul@gmail.com', 'Makale', '2016-07-01', '0000-00-00', '0000-00-00'),
(14, '11251100759', 'Marni Dudung', 'female-profile.png', 'Perempuan', 'Makale', '1998-10-30', 'Kristen Protestan', 'A', '', '', '0813655902272', 'marni@gmail.com', 'Tombang Makale', '2016-07-01', '0000-00-00', '0000-00-00'),
(15, '11251200759', 'Grace Agnes', 'female-profile.png', 'Perempuan', 'Makale', '1998-08-01', 'Kristen Protestan', 'A', '', '', '081224927618', 'grace@gmail.com', 'Rantelemo', '2016-07-01', '0000-00-00', '0000-00-00'),
(16, '11212200457', 'Efron Dannari', 'efron.jpg', 'Laki-laki', 'Batupapan', '1997-04-01', 'Kristen Protestan', 'A', '', '', '08220909380080', 'efron@gmail.com', 'Batupapan', '2016-06-01', '0000-00-00', '0000-00-00'),
(22, '11212200666', 'Otniel Rismantho', 'kallon.jpg', 'Laki-laki', 'Rantelemo', '1990-01-04', 'Kristen Protestan', 'A', 'Belum Menikah', 'Pegawai Swasta', '08298329829', 'kallon@gmail.com', 'Rantelemo', '2011-01-01', '2016-07-01', '2020-02-20'),
(23, '216611056', 'Ferdian D Pakiding', 'FB_IMG_15583601290428414.jpg', 'Laki-laki', 'Rantepao', '1998-01-01', 'Kristen Protestan', '-', 'Menikah', 'Pegawai Swasta', '082174892912', 'ferdian@gmail.com', 'Singki', '2016-07-01', '2020-07-01', '2022-01-01'),
(24, '216611057', 'Febrian Fausan Lebang', 'FB_IMG_15583601515121557.jpg', 'Laki-laki', 'Rantepao', '1996-01-01', 'Kristen Protestan', 'B', 'Belum Menikah', 'PNS', '092797927403', 'febrian@gmail.com', 'Singki', '2016-01-01', '2020-01-01', '2022-01-01'),
(25, '11212200100', 'Melki Rante Payung', 'FB_IMG_15592063800246071.jpg', 'Laki-laki', 'Makale', '1999-01-03', 'Katolik', 'AB', 'Menikah', 'PNS', '09847927491', 'melki@gmail.com', 'Tarongko', '2016-01-01', '2020-01-01', '2022-01-01'),
(26, '1972492749', 'Silem Sarira', 'FB_IMG_15592064331772222.jpg', 'Laki-laki', 'Rembon', '1999-05-01', 'Kristen Protestan', '-', 'Belum Menikah', 'PNS', '098949749274', 'silem@gmail.com', 'Rembon', '2016-01-01', '2020-01-01', '2022-01-01'),
(27, '11297497249', 'Irianto Sarira', 'FB_IMG_15592064468500326.jpg', 'Laki-laki', 'Tapparan', '1997-08-15', 'Kristen Protestan', '-', 'Belum Menikah', 'PNS', '0972872597249', 'irianto@gmail.com', 'Tapparan', '2016-01-01', '2020-01-01', '2022-01-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tingkat` varchar(20) NOT NULL,
  `nm_skl_uv` varchar(100) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_ijz` int(11) NOT NULL,
  `tgl_ijz` date NOT NULL,
  `nm_ks_rk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`id_sekolah`, `id_pegawai`, `tingkat`, `nm_skl_uv`, `lokasi`, `jurusan`, `no_ijz`, `tgl_ijz`, `nm_ks_rk`) VALUES
(1, 2, 'SMA Sederajat', 'SMKN 1 Tana Toraja', 'Rantelemo', 'Teknik Komputer dan Jaringan', 1928328498, '2016-06-03', 'Daniel P. Kabanga'),
(2, 2, 'S1/D4', 'Institut Teknologi Bandung', 'Bandung', 'Teknik Informatika', 2147483647, '2022-09-01', 'Muhammad Ali'),
(3, 1, 'SMA Sederajat', 'SMKN 1 Tana Toraja', 'Rantelemo', 'Teknik Komputer dan Jaringan', 2147483647, '2015-06-01', 'Daniel P. Kabanga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suami_istri`
--

CREATE TABLE `suami_istri` (
  `id_suami_istri` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tpt_lhr` varchar(50) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `pddk` varchar(5) NOT NULL,
  `pkrj` varchar(50) NOT NULL,
  `stts_hub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suami_istri`
--

INSERT INTO `suami_istri` (`id_suami_istri`, `id_pegawai`, `nik`, `nama`, `tpt_lhr`, `tgl_lhr`, `pddk`, `pkrj`, `stts_hub`) VALUES
(1, 1, '923213912398', 'Jessica Mila', 'Jakarta', '1998-05-05', 'S2', 'Artis', 'Istri'),
(2, 2, '92382130232018', 'Black Widow', 'Moskow', '1998-01-01', 'D3/S1', 'Agent', 'Istri'),
(3, 3, '93849388984', 'kkjdajsdkjsjd', 'asdksajdak', '1987-01-01', 'SMA/S', 'operator', 'Istri'),
(4, 12, '12739124972497', 'jahdsjagsfg', 'ashdhkahshd', '1999-01-01', 'S3', 'Suster', 'Istri'),
(5, 7, '98274274874927', 'Christina', 'Bua', '1990-01-01', 'D3/S1', 'Dukun Beranak', 'Istri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `level` enum('Administrator','Pegawai') NOT NULL,
  `id_pegawai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `nama`, `no_hp`, `level`, `id_pegawai`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'Admin', '082290009830', 'Administrator', NULL),
(3, 'robertus', 'robertus988@gmail.com', '123', 'Robertus', '082290009830', 'Pegawai', 2),
(4, 'arfin', 'arfinmp@gmail.com', '123', 'Arfin Mani\' Poting', '089479472479', 'Pegawai', 1),
(5, 'faldias', 'faldias@gmail.com', '123', 'Faldias Eko', '089148280783', 'Pegawai', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id_anak`);

--
-- Indexes for table `bahasa`
--
ALTER TABLE `bahasa`
  ADD PRIMARY KEY (`id_bahasa`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `lokasi_krj`
--
ALTER TABLE `lokasi_krj`
  ADD PRIMARY KEY (`id_lokasi`),
  ADD KEY `id_lokasi` (`kode_lokasi`),
  ADD KEY `id_lokasi_2` (`kode_lokasi`);

--
-- Indexes for table `master_eselon`
--
ALTER TABLE `master_eselon`
  ADD PRIMARY KEY (`id_master_eselon`);

--
-- Indexes for table `master_golongan`
--
ALTER TABLE `master_golongan`
  ADD PRIMARY KEY (`id_master_golongan`);

--
-- Indexes for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  ADD PRIMARY KEY (`id_master_jabatan`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id_mutasi`);

--
-- Indexes for table `orangtua`
--
ALTER TABLE `orangtua`
  ADD PRIMARY KEY (`id_orangtua`);

--
-- Indexes for table `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `suami_istri`
--
ALTER TABLE `suami_istri`
  ADD PRIMARY KEY (`id_suami_istri`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anak`
--
ALTER TABLE `anak`
  MODIFY `id_anak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bahasa`
--
ALTER TABLE `bahasa`
  MODIFY `id_bahasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lokasi_krj`
--
ALTER TABLE `lokasi_krj`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_eselon`
--
ALTER TABLE `master_eselon`
  MODIFY `id_master_eselon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_golongan`
--
ALTER TABLE `master_golongan`
  MODIFY `id_master_golongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  MODIFY `id_master_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orangtua`
--
ALTER TABLE `orangtua`
  MODIFY `id_orangtua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suami_istri`
--
ALTER TABLE `suami_istri`
  MODIFY `id_suami_istri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
