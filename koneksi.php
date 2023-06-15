<?php
$serverlocal = 'localhost';
$username = 'root';
$password = '';
$database = 'pariwisata';

$connect = mysqli_connect($serverlocal, $username, $password, $database);
if(!$connect){
    die('Koneksi ke database gagal' . mysqli_connect_error());
}
?>