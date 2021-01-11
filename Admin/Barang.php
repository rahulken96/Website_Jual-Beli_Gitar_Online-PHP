<?php
require '../Function/function.php';
$produk = query("SELECT * FROM produk");

//ketika tombol cari ditekan
if (isset($_POST["cari"])) {
    $produk = cari($_POST["keyword"]);
}

//Memangkas huruf pada kolom dekripsi
$num_char = 50;

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Produk</title>
    <link rel="stylesheet" href="../css/styles.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
</head>

<body>
    <div class="container-fluid">
        <h1 class="mt-4">Data Produk</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="../index.php">Menu Utama</a></li>
            <li class="breadcrumb-item">Produk</li>
        </ol>
        <a href="tambahbarang.php" class="btn btn-primary mb-2">Tambah Produk</a>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table mr-1">Tabel Produk</i>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <div id="offline_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <div class="row">
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_length" id="offline_length">
                                    <label>Jumlah Baris : <select name="offline_length" aria-setsize="10">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select> Baris
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div id="offline_filter" class="dataTables_filter">
                                    <form action="#offline_length" method="post">
                                        <label>Search:
                                            <input type="text" name="keyword" size="10" placeholder="Cari.." autocomplete="off" autofocus>
                                            <button type="submit" name="cari">Cari</button>
                                        </label>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <table class="table table-bordered dataTable no-footer" id="offline" role="grid" aria-describedby="offline_info" style="width: 100%;" width="100%" cellspacing="0">
                                    <thead>
                                        <tr class="text-center" role="row">
                                            <th class="sorting_asc" tabindex="0" aria-controls="offline" rowspan="1" colspan="1" style="width: 99px;" aria-sort="ascending" aria-label="No: activate to sort column descending">No.
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="offline" rowspan="1" colspan="1" style="width: 147px;" aria-label="Nama: activate to sort column ascending">
                                                Gambar</th>
                                            <th class="sorting" tabindex="0" aria-controls="offline" rowspan="1" colspan="1" style="width: 147px;" aria-label="Nama: activate to sort column ascending">
                                                Nama Produk</th>
                                            <th class="sorting" tabindex="0" aria-controls="offline" rowspan="1" colspan="1" style="width: 111px;" aria-label="NIK: activate to sort column ascending">
                                                Harga
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="offline" rowspan="1" colspan="1" style="width: 139px;" aria-label="Email: activate to sort column ascending">
                                                Deskripsi</th>
                                            <th class="sorting" tabindex="0" aria-controls="offline" rowspan="1" colspan="1" style="width: 118px;" aria-label="Aksi: activate to sort column ascending">
                                                Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $nomor = 1; ?>
                                        <?php foreach ($produk as $row) : ?>
                                            <tr class="odd">
                                                <td class="text-center"><?= $nomor; ?></td>
                                                <td><img src="../img/<?= $row['foto_produk']; ?>" width=100></td>
                                                <td><?= $row['nama_produk']; ?></td>
                                                <td>Rp. <?= number_format($row['harga']); ?></td>
                                                <td><?= substr($row['deskripsi_produk'], 0, 50), ""; ?> <a href="">(Selengkapnya..)</a></td>
                                                <td>
                                                    <a href="HapusBarang.php?id_produk=<?= $row['id_produk']; ?>" class="btn-danger btn mt-2" onclick="return confirm('Yakin?');">Hapus</a>
                                                    <a href="UbahBarang.php?id_produk=<?= $row['id_produk']; ?>" class="btn-info btn mt-2"><i class="fa fa-edit">Ubah</i></a>
                                                </td>
                                            </tr>
                                            <?php $nomor++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-5">
                                <!-- <div class="dataTables_info" id="offline_info" role="status" aria-live="polite">
                                    Showing 0 to 0 of 0 entries
                                </div> -->
                            </div>
                            <div class="col-sm-12 col-md-7">
                                <div class="dataTables_paginate paging_simple_numbers" id="offline_paginate">
                                    <ul class="pagination">
                                        <li class="paginate_button page-item previous disabled" id="offline_previous"><a href="#" aria-controls="offline" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                        <li class="paginate_button page-item next disabled" id="offline_next"><a href="#" aria-controls="offline" data-dt-idx="1" tabindex="0" class="page-link">Next</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>