<?php
require 'Function/function.php';
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

    <!-- <script>
        var renderPage = true;

        if (navigator.userAgent.indexOf('MSIE') !== -1 ||
            navigator.appVersion.indexOf('Trident/') > 0) {
            /* Microsoft Internet Explorer detected in. */
            alert("Lihat web ini di browser modern!");
            renderPage = false;
        }
    </script> -->

</head>

<body>
    <br><br>
    <div class="container">
        <div class="tm-search-form-container">
            <form action="" method="post" class="form-inline tm-search-form">
                <input type="text" name="keyword" size="30" placeholder="Masukkan kata pencarian..." autocomplete="off" autofocus>
                <button type="submit" name="cari">Cari</button>
                <a href="Admin/tambahbarang.php" target="" >Tambah Barang</a>
            </form>
        </div>

        <br><br>

        <?php foreach ($produk as $row) : ?>
            <div class="row mb-5">
                <div class="col-xl-12">
                    <div class="media-boxes">
                        <div class="media">
                            <img src="img/<?= $row["foto_produk"]; ?>" width="250px" alt="Image" class="mr-3">
                            <div class="media-body tm-bg-gray">
                                <div class="tm-description-box">
                                    <h5 class="tm-text-blue"><?= $row["nama_produk"]  ?> </h5>
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
        <?php endforeach ?> <!-- Isi produk -->
    </div>

</body>

</html>