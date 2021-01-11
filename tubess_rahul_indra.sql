-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2021 pada 05.25
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubess_rahul_indra`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` text NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `no_hp`, `alamat`, `email`) VALUES
(1, 'Admin', 'admin', 'Admin', '08123456789', 'Indramayu', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` text CHARACTER SET latin1 NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi_produk` text CHARACTER SET latin1 NOT NULL,
  `foto_produk` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `deskripsi_produk`, `foto_produk`) VALUES
(1, 'Gitar Akustik Greg Bennett Jumbo', 500000, 'Gitar akustik Greg Bennett ini punya bodi solid yang menggunakan kayu spruce. Desain gitar akustik terbaik ini mengadopsi standar internasional karena merek Greg Bennett sendiri memang berasal dari Amerika Serikat. Berbekal panel elektrik, gitar akustik elektrik ini bisa disambungkan dengan amplifier untuk experience yang lebih jauh.', 'Akustik Greg Bennet.jpg'),
(2, 'Gitar Akustik Yamaha C315', 950000, 'Gitar akustik Yamaha C315 dibuat dari kayu spruce dan agathis yang kokoh namun tidak berbobot berat. Suara yang dihasilkan dari gitar akustik terbaik ini juga tergolong berkualitas. Meski ditujukan untuk kelas pemula, tapi Yamaha tetap memerhatikan kualitas suara. Keunggulan lain pada gitar akustik Yamaha C315 ini ada pada senar yang berbahan nilon.', 'Akustik Yamaha C315.jpg'),
(3, 'Gitar Akustik Cole Clark Top Cyprus', 600000, 'Merek gitar akustik terbaik Cole Clark berasal dari Melbourne, Australia. Gitar aksutik ini menggunakan kayu berdurabilitas tinggi yang awet dipakai lama, yakni Mahogany dan Rosewood. Berbicara tentang suara, gitar akustik ini dibuat dengan teknik integral neck yang membuat suara lebih stabil karena bersatunya neck dengan face/top gitar.', 'Akustik Cole clark.jpg'),
(4, ' Gitar Akustik Yamaha JR 1', 950000, 'Murah dan punya konstruksi bagus, gitar akustik terbaik Yamaha dengan seri JR 1 ini membuktikan bahwa kualitas tidak selalu bisa didapat dari biaya yang mahal. Menilik ukurannya yang compact, gitar ini sangat ideal digunakan oleh orang yang kerap berpergian sembari membawa gitar akustik. Seperti membawa gitar akustik saat pergi jalan-jalan atau naik gunung. ', 'Akustik Yamaha JR1.jpg'),
(5, 'Gitar Akustik Espanola CS 412', 700000, 'Meski namanya tidak terlalu populer, tapi gitar akustik Espanola CS 412 bisa jadi pilihan. Ukuran bodinya terbilang menengah. Potongan bodinya juga ramping. Konstruksi bodi seperti itu akan memudahkanmu yang belum terbiasa memangku gitar akustik. String yang dipakai juga berbahan nilon, bersahabat dengan jari yang sebelumnya tak pernah menggenjreng gitar akustik.', 'Gitar Akustik Espanola CS 412.jpg'),
(6, 'Gitar Akustik Gibson YH-36C', 700000, 'Gitar ini sangat cocok khususnya untuk pemula, dan ini gitar akustik terbaik ini juga cocok untuk dipakai perempuan. Dengan ukuran yang tidak begitu lebar, mungil, serta harga yang begitu terjangkau. Gitar akustik ini merupakan yang terbaik menurut Acoustik Guitar Blog\'s untuk ukuran dan harga gitar akustik terbaik di bawah Rp1 juta.', 'Akustik Gibson YH-36C.jpg'),
(7, 'Gitar Akustik Yamaha APX 500 II', 650000, 'Yamaha APX 500II adalah salah satu gitar akustik terbaik yang telah disempurnakan dan kini menjadi gitar terlaris di dunia. Gitar ini cukup ringan dengan body yang ramping sehingga sangat direkomendasikan untuk pemula. Soal kualitas suara, kamu tidak perlu meragukannya lagi karena jenis kayu yang digunakan gitar akustik ini terbuat dari kayu spruce dan kayu nato yang mampu menghasilkan resonansi suara yang seimbang dan tajam. Gitar akustik ini juga dilengkapi dengan sistem pickup dan preamp SRT yang menghasilkan suara alami gitar akustik terbaik dengan kualitas studio.', 'Akustik Yamaha APX 500 II.jpg'),
(8, 'Gitar Akustik Schecter Synyster Gates', 950000, 'Merek gitar akustik terbaik yang satu ini berasal dari Amerika Serikat yang didirikan pada tahun 1976. Gitar ini telah menjadi salah satu deretan merek gitar akustik terbaik yang sering dipakai oleh banyak gitaris terkenal dunia. Untuk seri gitar akustik ini memiliki kekuatan suara bright yang khas. ', 'Akustik Schecter Synyster Gates.jpg'),
(9, 'Gitar Akustik Cowboy GWC235NS', 650000, 'Produk dengan nama Cowboy ini adalah gitar akustik terbaik tipe steel string atau folk yang tahan lama dengan senar string anti karat. Body gitar akustik ini terbuat dari basswood, sedangkan fingerboard-nya terbuat dari kayu mahoni yang dikenal kokoh. Jadi, bila kamu menginginkan gitar akustik terbaik yang awet, gitar akustik ini sangat cocok untuk kamu.', 'Akustik Cowboy GWC235NS.jpg'),
(10, 'Gitar Akustik Gibson J200', 650000, 'Nama legendaris Gibson di dunia musik tentu saja sangat berperan dalam menjamin kualitas tinggi produknya. Brand asli Amerika ini sudah berpengalaman selama hampir seabad memproduksi berbagai instrumen musik. Tidak heran bila gitar akustik merek Gibson menjadi favorit banyak orang di Indonesia, bahkan dunia. Salah satunya adalah gitar akustik Gibson J200 yang memiliki kelebihan dalam meredam gangguan suara.', 'Akustik Gibson J200.jpg'),
(11, 'Gitar Listrik Ibanez GSA60', 3000000, 'New\r\nOriginal by Ibanez\r\n\r\nInclude :\r\nDus, Manual Book, Handle, Kunci L & Cable\r\n\r\nSPECS :\r\nneck type GSA Maple neck\r\nbody Mahogany body\r\nfretboard Rosewood fretboard w/White dot inlay\r\nfret Medium frets\r\nbridge SAT10 tremolo bridge\r\nneck pickup Infinity RS (S) neck pickup (Passive/Ceramic)\r\nmiddle pickup Infinity RS (S) middle pickup (Passive/Ceramic)\r\nbridge pickup Infinity R (H) bridge pickup (Passive/Ceramic)\r\nfactory tuning 1E, 2B, 3G, 4D, 5A, 6E\r\nstring gauge ./.032/.042\r\nhardware color : Chrome', 'Listrik Ibanez GSA60.png'),
(12, 'Gitar Listrik Yamaha Pacifica PAC112J', 2250000, '@ Yamaha Gitar Elektrik PAC112J\r\n\r\n* Salah satu dari elektrik gitar terbaik lebih dari satu dekade, Yamaha gitar Pacifica tersohor karena suara yang bagus dan playability yang hebat. Pacifica Series menawarkan body dengan bentuk yang nyaman digunakan, desain neck bolt-on, vibratos vintage style , dan konfigurasi H-S-S pick up dengan 5-way switching.\r\n\r\n# Konstruksi Bolt-on\r\n* Panjang Skala 25 1/2\" (647.7mm)\r\n* Papan Jari Rosewood\r\n* Radius 13 3/4\" (350mm)\r\n* Fret 22\r\n* Body Alder\r\n* Neck Maple\r\n* General specifications\r\n* Tuners Diecast\r\n\r\n@ Spesifikasi Umum\r\n* Batang Vintage Style Tremolo\r\n* Pickup Single x 2, Humbucker x 1\r\n* Tombol Pickup 5-Position Lever\r\n* Pengaturan Master Volume, Master Tone', 'Listrik Yamaha Pacifica PAC112J.png'),
(13, 'Gitar Listrik CORT M200-BK-403779403 ', 4000000, 'CONSTRUCTION: Bolt-on\r\nBODY: Mahogany\r\nNECK: Canadian Hard Maple\r\nBINDING: N/A\r\nFRETBOARD: Rosewood, 12\" Radius(305mm)\r\nFRETS: 22 / Large (2.7mm)\r\nSCALE: 24 3/4\" (629mm)\r\nINLAY: White Dot\r\nTUNERS: Die cast\r\nBRIDGE: T.O.M Bridge & Stop Tailpiece\r\nPICKUPS: Powersound PSLP-1F & PSLP-1R (H-H)\r\nELECTRONICS: 1 volume, 1 tone, 3way toggle\r\nHARDWARE: CR (Chrome)\r\nSTRINGS: D\'addario EXL110(046-010)', 'Listrik Cort M200 BK.png'),
(14, 'Gitar Listirk Epiphone Les Paul Standard', 9500000, 'Body Shape: Les Paul\r\nBody Material: Solid Mahogany (Body), AAA flame maple (Top)\r\nBody Color: Heritage Cherry Sunburst\r\nFretboard Radius: 12\"\r\nScale Length: 24.75\"\r\nNo. of Frets: 22\r\nFretboard Inlays: Pearloid Trapezoid Inlays\r\nPickup: ProBucker-2 (Neck), ProBucker-3 (Bridge)\r\nBridge: LockTone Tune-o-matic\r\nPickguard: 1-ply cream binding\r\nStrings: DAddario 10, 13, 17, 26, 36, 46\r\nTuning Machines: Grover 14:1', 'Listrik Epiphone Les Paul Stndrt.png'),
(15, 'Gitar Listrik Rockwell SCG 01 Mahogani Stain', 2500000, '...', 'Listrik Rockwell SCG 01.png'),
(16, 'Gitar Listrik Schecter Omen Extreme-6 FR BCH Black Cherry', 5500000, 'Model Name: Omen Extreme-FR\r\nItem Number: 20029\r\nColour: Vintage Sunburst (VSB)\r\nDexterity: Right Handed\r\nCountry of Origin: Indonesia\r\nConstruction: Bolt-on\r\nBody Material: Mahogany\r\nTop Material: Quilted Maple\r\nTop Contour: Arched Top\r\nBinding: Crème Multi-ply\r\nNeck Material: Maple\r\nFretboard Material: Rosewood\r\nInlays: Abalone & Pearloid Vector\r\nScale: 25.5” (648mm)\r\nFrets: 24 X-Jumbo\r\nFretboard Radius: 14” (355mm)\r\nNeck Shape: Thin ‘C’\r\nThickness: @ 1st Fret- .787” (20mm)/ @ 12th Fret- .866” (22mm)\r\nNut Width: 1.625” (41.3mm)\r\nNut: Floyd Rose Special\r\nTruss Rod: 2-Way Adjustable Rod w/ 5/32” (4mm) Allen Nut\r\nBridge Pickup: Schecter Diamond Plus\r\nNeck Pickup: Schecter Diamond Plus\r\nControls: Volume/Volume/Tone(Push-Pull)/3-Way Switch\r\nHardware Colour: Black Chrome\r\nBridge: Floyd Rose Special\r\nTuners: Schecter\r\nKnobs: Metal Knurled w/ Set Screw\r\nStrings: Ernie Ball Regular Slinky 2221 (.010-.046)\r\nCase: SGR-1C (Sold Separately)', '@.png'),
(18, 'Gitar Listrik Epiphone Les Paul Standard', 5500000, 'Gitar listrik lain yang juga sangat cocok untuk pemula adalah Epiphone Les Paul Standard. Bagian body dari gitar ini terbuat dari kayu Mahogani atau kayu mahoni.\r\n\r\nSedangkan bagian leher menggunakan D-shaped yang juga terbuat dari kayu Mahogani. Anda juga akan dapat memainkan 22 fret yang ada pada bagian leher gitar ini.\r\n\r\nBagian dari fretboard tersebut terbuat dari rosewood. Anda akan mendapati bahwa suara yang dihasilkan sangat jelas dan juga lantang, karena gitar ini dapat menangani berbagai macam distorsi dan overdrive, sehingga membuat Anda semakin percaya diri dalam memainkan gitar.', 'Gitar-Listrik-Epiphone-Les-Paul-Standard.jpg'),
(19, ' Gitar Listrik Gretsch Electromagnetic G5425', 4000000, 'Desain dari body gitar tersebut juga tampak sangat menarik dan cool. Bagian leher terbuat dari kayu maple yang mana menampakkan desain retro.\r\n\r\nKeseluruhan gitar ini didesain dengan sangat khusus, sehingga penggunanya akan dapat menggunakan dalam waktu yang lama dan tidak mudah lelah.\r\n\r\nAnda akan dapat memainkan musik dengan genre klasik maupun heavy rock dengan menggunakan gitar yang satu ini. Bahkan Anda akan merasakan bahwa gitar listrik yang satu ini sangat ringan dan nyaman untuk dibawa-bawa.', 'Gitar-Listrik-Gretsch-Electromagnetic-G5425-1.jpg'),
(20, 'Gitar Listrik Ibanez RG450DX', 6500000, 'Gitar listrik dengan harga terjangkau berikutnya adalah Ibanez RG450DX. Gitar yang satu ini sangat cocok digunakan oleh pemula.\r\n\r\nBagian body gitar terbuat dari basswodd dan bagian leher terbuat dari kayu Maple. Jumlah fret total yang ditawarkan adalah 24 fret dan membuat pemiliknya akan mampu mengadakan performa solo.', 'Gitar-Listrik-Ibanez-RG450DX-1024x1024.jpg'),
(21, 'Gitar Listrik Fender Modern Player Telecaster', 5000000, 'Salah satu gitar listrik dengan penampilannya yang modern dan glossy adalah fender Modern Player Telecaster. Gitar yang satu ini cocok digunakan oleh pemula maupun orang yang sudah mahir.\r\n\r\nGitar yang satu ini memiliki desain leher berbentuk C-shaped yang modern. Bagian fretboard terbuat dari kayu maple dan memiliki 22 fret.', 'Gitar-Listrik-Fender-Modern-Player-Telecaster-1024x683.jpg'),
(22, 'Gitar Bass Ibanez Talman TMB100M', 3300000, 'Untuk Anda yang tidak terlalu pintar untuk menyetel nada, bass yang satu ini dapat menjadi pilihan Anda. Bass ini dilengkapi dengan bridge B10 atau penyangga senar yang membuatnya stabil ketika di-tune. Selain itu, nada yang dihasilkan juga sangat seimbang antara bass dan treble. Jadi, Anda yang masih pemula akan mudah mengenali nada dan memainkan bass Anda tanpa overpitch', 'c2049a8a8aa49bdd9fc4b33570360b5b.png'),
(23, 'Gitar Bass Fender Player Mustang Bass PJ', 10500000, 'Bass dari Fender berikut ini merupakan salah satu desain bass yang sudah bertahan lama. Bass ini juga dapat digunakan untuk berbagai kalangan baik pemula atau profesional. Dilengkapi dengan double pick-up, Anda dapat memainkan bass Anda dengan berbagai jenis musik. Baik precision maupun jazz, apa pun gaya bermain Anda, bass ini dapat mengakomodasinya. ', '03054675f67ec846903d7dc43dd11de0.jpg'),
(24, 'Gitar Bass Ibanez SR Mezzo SRMD200', 4400000, 'Berukuran 32 inci, bass dari Ibanez ini lebih pendek 2 inci dari ukuran standar. Skala bass ini memang belum dikatakan sebagai skala kecil. Akan tetapi, bass dapat menjadi bass peralihan dari skala kecil ke ukuran standar. Bass ini juga cocok untuk Anda yang ingin merasakan ukuran bass sebenarnya walaupun masih pemula.\r\n\r\n\r\nSeperti bass dari Ibanez yang ada dalam daftar rekomendasi, bass yang satu ini juga menggunakan double pick-up. Selain itu, bridge yang digunakan juga membuat nada yang dihasilkannya stabil. Hal lainnya adalah kontrol yang dimiliki membuat Anda dapat mengatur keseimbangan nada, treble, dan bass sekaligus.', 'a6def72bae04759cb82ad9f927a22d8d.png'),
(25, 'Gitar Bass Yamaha TRBX305\r\n', 4860000, 'Dalam memilih bass, material kayu yang digunakan memang sangat menentukan bunyi yang akan dikeluarkan. Apabila Anda yang ingin mendapatkan suara terbaik ketika memulai latihan, Yamaha Bass Elektrik TRBX305 dapat menjadi jawaban. Kombinasi kayu maple pada neck, rosewood pada fingerboard, dan solid mahogany pada body memberikan kualitas suara sangat baik.\r\n\r\nSelain suara, material tersebut menjadikan bobot bass gitar ini lebih ringan sehingga cocok bagi Anda para pemula. Tak ketinggalan desain yang sederhana memberikan kesan cool saat bermain. Anda juga tidak perlu khawatir masalah warna karena bass jenis ini tersedia dalam lima warna pilihan.\r\n', '56c4a2874e898bdf8198c4eac3456d06.jpg'),
(26, 'Gitar Bass Cort\r\nAction Bass V Plus\r\n', 2590000, 'Bagi pemula yang ingin belajar bermain bass pastinya belum terbiasa berlatih dalam waktu yang lama. Cort Action Bass V Plus ini memiliki keunggulan di bagian desainnya, yakni gabungan antara klasik dan modern. Desain yang ergonomis, berguna saat Anda memainkan bass dalam waktu yang lama. \r\n\r\nDesain seperti ini dapat mengurangi rasa lelah dan meningkatkan permainan Anda. Selain itu, bass ini juga ringan di bagian lehernya. Desain dan bobotnya benar-benar memanjakan Anda yang baru mulai belajar bass sehingga bisa berlatih lebih maksimal dalam waktu yang lama.', '9d061875f42d81a6747748d9a91febd8.png'),
(27, 'Gitar Bass Sterling by Music Man\r\nStingRay Ray4', 4920000, 'Mencari bass untuk basist kidal memang tidaklah mudah. Akan tetapi, produk Sterling by Music Man ini juga tersedia dalam model lefty. Bass yang satu ini juga memiliki kelebihan lainnya, yaitu bridge yang dapat diatur. Bridge ini dapat disesuaikan dengan teknik bermain Anda. Baik musik heavy metal maupun musik jazz, Anda akan dapat memainkan tanpa membuat jari-jari Anda lelah saat bermain.', '796f16d86333920501ffbbd8261c158b.png'),
(28, 'Gitar Bass Gretsch\r\nG2220 Electromatic Junior Jet Bass', 3300000, 'Dalam memilih bass yang cocok untuk digunakan, anatomi tubuh sangatlah berperan penting terutama bagian badan dan tangan kita. Bagi Anda yang berpostur kecil, jenis Gretsch G2220 Junior Jet Electric Bass ini sangatlah cocok untuk Anda.\r\n\r\nMemiliki panjang bagian neck yang lebih pendek dari electric bass pada umumnya, Anda bisa memainkannya dengan nyaman. Selain itu, body yang ramping juga memberikan berat yang lebih ringan untuk membantu Anda bermain dengan lebih baik.', 'c66ac27fd5494662fa672757e9e08d7e.png'),
(29, 'Gitar Bass Schecter\r\nOmen-4', 5100000, 'Bass asli buatan Indonesia ini dapat menjadi pilihan Anda para pencinta produk lokal. Terbuat dari kayu kenari, Schecter menjadi banyak pilihan bagi bassist pemula di dalam atau di luar negeri. Selain itu, bass ini juga sudah dilengkapi dengan tas untuk penyimpanan. Menggunakan bass ini ketika Anda bermain atau berlatih dijamin akan memuaskan Anda.', 'fcdcbf9cecaaf1e7187e9e54368fe76b.png'),
(30, 'Gitar Bass Fender\r\nStandar Jazz Bass', 10700000, 'bass tipe jazz sangat disarankan untuk pemula. Begitu pula dengan bass dari Fender berikut ini. Bermain bass akan menjadi lebih mudah karena bass ini dilengkapi dengan fret atau jarak antara not yang lebar. Memiliki not standar C, Anda yang baru mempelajari bass dari gitar akustik akan lebih mudah memahami nada. ', '5d6f75808d1924656784466d1ab4c8ae.jpg'),
(31, 'Gitar Bass Yamaha\r\nBB434', 3680000, 'Bagi Anda yang ingin memulai latihan bermain bass, Yamaha BB434 dapat menjadi salah satu opsi terbaik. Dikenal dengan instrumen yang legendaris dan desain yang indah, produk ini menggunakan material soft maple pada bagian neck. \r\n\r\n\r\nBass ini menciptakan nuansa yang smooth dan balanced ketika dimainkan. Selain itu, bass ini juga dilengkapi dengan teknologi 6-Bolt Miter. Teknologi ini dapat memperkokoh dan juga menjaga resonansi pada body dan neck menjadi presisi.', '8be5acbb8586760d91b9e8ab64c0746a.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
