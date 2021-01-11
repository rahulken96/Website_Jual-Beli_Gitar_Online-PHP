<?php
require 'Function/function.php';

//Data semua produk
$produk = query("SELECT * FROM produk");

//ketika tombol cari ditekan
if (isset($_POST["cari"])) {
  $produk = cari($_POST["keyword"]);
}

?>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Situs Jual Beli Online Gitar</title>


  <!-- load CSS -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400"> <!-- Google web font "Open Sans" -->
  <link rel="stylesheet" href="css/bootstrap.min.css"> <!-- https://getbootstrap.com/ -->
  <link rel="stylesheet" href="css/fontawesome-all.min.css"> <!-- Font awesome -->
  <link rel="stylesheet" href="css/tooplate-style.css"> <!-- Templatemo style -->
  <link rel="stylesheet" href="css/body-scroll.css">

  <script>
    var renderPage = true;

    if (navigator.userAgent.indexOf('MSIE') !== -1 ||
      navigator.appVersion.indexOf('Trident/') > 0) {
      /* Microsoft Internet Explorer detected in. */
      alert("Lihat web ini di browser modern!");
      renderPage = false;
    }
  </script>

</head>

<body>

  <!-- Loader -->
  <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>

  <div class="tm-main">
    <div class="tm-welcome-section">
      <div class="container tm-navbar-container">
        <div class="row">
          <div class="col-xl-12">
            <nav class="navbar navbar-expand-sm">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a href="index.php" class="nav-link tm-nav-link tm-text-white active">Home</a>
                </li>
                <li class="nav-item">
                  <a href="about.php" class="nav-link tm-nav-link tm-text-white">About</a>
                </li>
                <li class="nav-item">
                  <a href="contact.php" class="nav-link tm-nav-link tm-text-white">Contact</a>
                </li>
                <li class="nav-item active">
                  <a href="Login/login.php" class="nav-link tm-nav-link tm-text-white">Login</a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>

      <div class="container text-center tm-welcome-container">
        <div class="tm-welcome">
          <img src="img/png-transparent-musical-instrument-illustration-musical-elements-poster-logo-violin-removebg-preview.png" alt="Gambar Musik" style="width: 20%;">
          <h1 class="text-uppercase mb-3 tm-site-name">S.Co</h1>
          <p class="tm-site-description">Toko Alat Musik</p>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="row tm-albums-container grid">
        <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
          <figure class="effect-sadie">
            <img src="img/gitar_akustik.jpg" style="width: 100%;" alt="Image" class="img-fluid">
            <figcaption>
              <h2>Gitar Akustik</h2>
              <p>Getaran senar gitar yang dialirkan melalui sadel dan jembatan...</p>
            </figcaption>
          </figure>
        </div>
        <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
          <figure class="effect-sadie">
            <img src="img/gitar_listrik.jpg" style="width: 100%;" alt="Image" class="img-fluid">
            <figcaption>
              <h2>Gitar Listrik</h2>
              <p>Menggunakan beberapa pickup untuk mengubah bunyi atau getaran...</p>
            </figcaption>
          </figure>
        </div>
        <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
          <figure class="effect-sadie">
            <img src="img/insertion-260x390-02.jpg" style="width: 100%;" alt="Image" class="img-fluid">
            <figcaption>
              <h2>Gitar Bass</h2>
              <p>Alat musik dawai yang menggunakan listrik untuk memperbesar suaranya...</p>
            </figcaption>
          </figure>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-12">
          <div class="tm-tag-line ">
            <h2 class="tm-tag-line-title">Musik itu pewarna.. Mewarnai hidupmu..</h2>
          </div>
        </div>
      </div>
      <br>
      <div class="tm-search-form-container">
        <form action="#cari-barang" method="post" class="form-inline tm-search-form">
          <div class="text-uppercase tm-new-release" id="cari-barang">Baru Rilis</div>
          <div class="form-group tm-search-box">
            <!-- Search Barang -->
            <input type="text" name="keyword" class="form-control tm-search-input" placeholder="Masukkan kata pencarian..." autocomplete="off">
            <button type="submit" name="cari" class="form-control tm-search-submit">Cari</button>
          </div>
        </form>
      </div>

      <div class="scrolling-box">
        <?php foreach ($produk as $row) : ?>
          <!-- Tampilan untuk semua produk (Default) -->
          <div class="row mb-5">
            <div class="col-xl-12">
              <div class="media-boxes">
                <div class="media">
                  <img src="img/<?= $row["foto_produk"]; ?>" width="250px" alt="Image" class="mr-3">
                  <div class="media-body tm-bg-gray">
                    <div class="tm-description-box">
                      <h5 class="tm-text-blue"><?= $row["nama_produk"]  ?></h5>
                      <p class="mb-0"><?= $row["deskripsi_produk"] ?></p>
                    </div>
                    <div class="tm-buy-box">
                      <a href="#" class="tm-bg-blue tm-text-white tm-buy">buy</a>
                      <span class="tm-text-blue tm-price-tag"> Rp <?= number_format($row["harga"], 0, ",", "."); ?></span>
                    </div>
                  </div>
                </div>
              </div> <!-- media-boxes -->
            </div>
          </div>
        <?php endforeach ?>
        <!-- Isi produk -->
      </div>

      <div class="row tm-mb-big tm-subscribe-row">
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 tm-bg-gray tm-subscribe-form">
          <h3 class="tm-text-pink tm-mb-30">Follow Kami!</h3>
          <p class="tm-mb-30">Agar tidak ketinggalan update dan produk baru ^_^</p>
          <form action="index.html" method="POST">
            <div class="form-group mb-0">
              <input type="text" class="form-control tm-subscribe-input" placeholder="Masukkan Email...">
              <input type="submit" value="Lanjutkan" class="tm-bg-pink tm-text-white d-block ml-auto tm-subscribe-btn">
            </div>
          </form>
        </div>
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 img-fluid pl-0 tm-subscribe-img"></div>
      </div>

        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
          <h4 class="mb-4 tm-font-300">Quick Links</h4>
          <a href="admin/barang.php" class="tm-text-blue-dark d-block mb-2">Barang</a>
        </div>
      </div>
      <footer class="row">
        <div class="col-xl-12">
          <p class="text-center p-4">Copyright &copy; <span class="tm-current-year"></span>
              Rahul & Indra
          </p>
        </div>
      </footer>
    </div> <!-- .container -->

  </div> <!-- .main -->

  <!-- load JS -->
  <script src="js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script>
    /* DOM is ready
    ------------------------------------------------*/
    $(function() {

      if (renderPage) {
        $('body').addClass('loaded');
      }

      $('.tm-current-year').text(new Date().getFullYear()); // Update year in copyright
    });
  </script>

</body>

</html>