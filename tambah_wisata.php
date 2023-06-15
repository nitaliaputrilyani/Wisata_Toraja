<?php
   
   require_once "koneksi.php";
    //jika tombol simpan di klik
    if(isset($_POST['simpan'])) {
        //membuat data array data yang kirim
        
        $data=array(
            'id_wisata' => $_POST['id_wisata'],
            'gambar' => $_POST['gambar'],
            'nama' => $_POST['nama'],
            'lokasi' => $_POST['lokasi'],
            'harga_tiket' => $_POST['harga_tiket'],
            'deskripsi' => $_POST['deskripsi'],
            'kategori' => $_POST['kategori']
        );
 

        $datajson=json_encode($data);

        var_dump($datajson);

        //url untuk tambah data
        $url="http://localhost/apiphp/tbl_wisata";
 
        $ch = curl_init(); 
 
        // set url 
        curl_setopt($ch, CURLOPT_URL, $url);
        // konversi hasil ke string
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
        //untuk metode POST
        curl_setopt($ch, CURLOPT_POST, true);
        //untuk data yang dikirim
        curl_setopt($ch, CURLOPT_POSTFIELDS, $datajson);

        // eksekusi
        $output = curl_exec($ch); 
 
        // tutup curl 
        curl_close($ch);      
 
        //memunculkan pesan 
        var_dump($output);
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title>Tambah Data dengan cURL</title>
</head>
<body>
    <h1>Input Data Wisata</h1>
<form method="POST">
    <table>
        <tr>
            <td>id_wisata</td>
            <td><input type="number" name="id_wisata"></td>
        </tr>
        <tr>
            <td>GAMBAR</td>
            <td><input type="images" name="gambar"></td>
        </tr>
        <tr>
            <td>NAMA</td>
            <td><input type="text" name="nama"></td>
        </tr>
        <tr>
            <td>lokasi</td>
            <td><input type="text" name="lokasi"></td>
        </tr>
        <tr>
            <td>Harga tiket</td>
            <td><input type="text" name="harga_tiket"></td>
        </tr>
        <tr>
            <td>Deskripsi</td>
            <td><input type="text" name="deskripsi"></td>
        </tr>
        <tr>
            <td>Kategori</td>
            <td><input type="text" name="kategori"></td>
        </tr>
        
        <tr>
            <td></td>
            <td>
                <button type="submit" name="simpan">SIMPAN</button>
                <button type="reset">BATAL</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>