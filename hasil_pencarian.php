<?php
// Ambil keyword dari URL
$keyword = $_GET['keyword'];

// Koneksi ke database atau sumber data lainnya
$koneksi = mysqli_connect("localhost", "root", "", "pariwisata");

// Cek koneksi database
if (mysqli_connect_error()) {
    echo "Koneksi database gagal: " . mysqli_connect_error();
    exit();
}

// Query pencarian data
$query = "SELECT * FROM tbl_wisata WHERE nama LIKE '%$keyword%' or kategori LIKE '%$keyword%' or harga_tiket LIKE '%$keyword%'";
$result = mysqli_query($koneksi, $query);

// Cek hasil query
if (mysqli_num_rows($result) > 0) {
    // Tampilkan data yang ditemukan
    while ($row = mysqli_fetch_assoc($result)) {
        echo "ID: " . $row['id_wisata'] . "<br>";
        echo "Gambar: " . $row['gambar'] . "<br>";
        echo "Nama: " . $row['nama'] . "<br>";
        echo "Lokasi: " . $row['lokasi'] . "<br>";
        echo "Harga_tiket: " . $row['harga_tiket'] . "<br>";
        echo "Deskripsi: " . $row['deskripsi'] . "<br>";
        echo "Kategori: " . $row['kategori'] . "<br>";
        echo "<br>";
    }
} else {
    echo "Tidak ada data yang ditemukan.";
}

// Tutup koneksi database
mysqli_close($koneksi);
?>
