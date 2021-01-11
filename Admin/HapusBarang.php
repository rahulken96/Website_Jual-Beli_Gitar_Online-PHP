<?php
require '../Function/function.php';
$idProduk = $_GET["id_produk"];

    //Cek data hapus atau tidak
    if (hapus($idProduk) > 0) {
        echo "<script>
        alert('Produk berhasil dihapus!');
        document.location.href = 'barang.php';
        </script>";
        // var_dump($idProduk);
    } else {
        echo "<script>
        alert('Produk gagal dihapus!');
        document.location.href = 'barang.php';
        </script>";
        // var_dump($idProduk);
    }

?>