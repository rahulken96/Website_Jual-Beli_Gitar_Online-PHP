<?php 
//Koneksi kedalam database
$db = mysqli_connect("localhost", "root", "", "tubess_rahul_indra");

function query($query){
    global $db;
    $hasil = mysqli_query($db, $query);
    $baris = [];
    while ($row = mysqli_fetch_assoc($hasil)){
        $baris[] = $row;
    }
    return $baris;
}

//Ambil data inputan dari setiap field
function tambah($data){
    global $db;
    $namaProduk = htmlspecialchars($data["nama_produk"]);
    $harga = htmlspecialchars($data["harga"]);
    $descProduk = htmlspecialchars($data["deskripsi_produk"]);
    
    // upload gambar
    $fotoProduk = upload();
    if(!$fotoProduk){
        return false;
    }

    //Masukin data
    $value = "INSERT INTO produk VALUES ('','$namaProduk','$harga','$descProduk','$fotoProduk')";
    mysqli_query($db, $value);

    return mysqli_affected_rows($db);

}
    
//Hapus data
function hapus($id){
    global $db;
    $value = "DELETE FROM produk WHERE id_produk = $id ";
    mysqli_query($db, $value);

    return mysqli_affected_rows($db);

}

//fungsi search pada form pencarian
function cari($keyword){
    $cari = "SELECT * FROM produk WHERE nama_produk LIKE '%$keyword%'";
    return query($cari);
}

// Fungsi upload gambar
function upload(){
    $namaFile = $_FILES["foto_produk"]["name"];
    $sizeFile = $_FILES["foto_produk"]["size"];
    $error = $_FILES["foto_produk"]["error"];
    $tmpName = $_FILES["foto_produk"]["tmp_name"];

    // Cek apakah yang diupload adalah gambar
    $ekstensiValid = ["jpg","jpeg","png"];
    $ekstensiFotoProduk = explode(".","$namaFile");
    $ekstensiFotoProduk = strtolower(end($ekstensiFotoProduk));
    if(!in_array($ekstensiFotoProduk,$ekstensiValid)){
        echo "<script>
        alert('Yang anda upload bukan gambar!');
        </script>";
        return false;
    }

    //cek ukuran foto terlalu besar
    if($sizeFile > 500000){
        echo "<script>
        alert('Foto yang anda upload terlalu besar!');
        </script>";
        return false;
    }

    //gambar siap diupload
    move_uploaded_file($tmpName, '../img/'.$namaFile);

    return $namaFile;
}

function ubah($data){
    global $db;

    $id = $data["id_produk"];
    $namaProduk = htmlspecialchars($data["nama_produk"]);
    $harga = htmlspecialchars($data["harga"]);
    $descProduk = htmlspecialchars($data["deskripsi_produk"]);
    
    // upload gambar
    $fotoProduk = upload();
    if(!$fotoProduk){
        return false;
    }

    //Masukin data
    $value = "UPDATE produk SET nama_produk = '$namaProduk', harga = '$harga', deskripsi_produk = '$descProduk', foto_produk = '$fotoProduk' WHERE id_produk = '$id' ";
    mysqli_query($db, $value);

    return mysqli_affected_rows($db);
}

?>







