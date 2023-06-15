<?php
require_once "koneksi.php";
if(function_exists($_GET['function'])){
    $_GET['function']();
}
function insert_wisata(){
    global $connect;
    $check = array('id_wisata' => '', 'gambar' => '', 'nama' => '', 'lokasi' => '','harga_tiket' => '', 'deskripsi' => '', 'kategori' => '');
    $check_match = count(array_intersect_key($_POST, $check));
    if($check_match = count($check)){
        $result = mysqli_query($connect, "INSERT INTO tbl_wisata SET 
        id_wisata = '$_POST[id_wisata]',
        gambar = '$_POST[gambar]'
        nama = '$_POST[nama]'
        lokasi = '$_POST[lokasi]'
        harga_tiket = '$_POST[harga_tiket]'
        deskripsi = '$_POST[deskripsi]'
        kategori = '$_POST[kategori]'  ");

        if($result){
            $respons = array(
                'status' =>1,
                'message' => 'Insert Data Sukses'
            );
        }
        else{
            $respons=array(
                'status'=>0,
                'message'=> 'Gagal Insert Data'
            );
        }
    }
    else{
        $respons=array(
            'status'=>0,
            'message'=>'parameternya salah'
        );
    }
    header('content-type:application/json');
    echo json_encode($respons);
}
function get_wisata(){
    global $connect;
    $query = $connect -> query("SELECT * FROM tbl_wisata");
    while($row=mysqli_fetch_object($query)){
        $data[]=$row;
    }
    $respons=array(
        'status'=>1,
        'message'=>'Sukses Menampilkan Data',
        'data'=>$data
    );
    header('content-type: application/json');
    echo json_encode($respons);

}
function get_wisata_id(){
    global $connect;
    if(!empty($_GET["id_wisata"])){
        $id=$_GET["id_wisata"];
    }
    $query = "SELECT * FROM tbl_wisata WHERE id =$id_wisata";
    $result = $connect->query($query);
    while($row = mysqli_fetch_object($result)){
        $data[]=$row;
    }
    if($data){
        $respons=array(
            'status'=>1,
            'message'=> 'Sukses Menampilkan Data Berdasarkan ID',
            'data'=> $data
        );
    }
    else{
        $respons=array(
            'status'=>0,
            'message'=> 'Data Tidak Ditemukan'
        );
    }
    header('content-type: application/json');
    echo json_encode($respons);

}
function update_wisata(){
    global $connect;
    if(!empty($_GET["id_wisata"])){
        $id=$_GET["id_wisata"];
    }
    $check=array('gambar' => '', 'nama' => '', 'lokasi' => '','harga_tiket' => '', 'deskripsi' => '', 'kategori' => '');
    $check_match=count(array_intersect_key($_POST, $check));
    if ($check_match == count($check)){
        $result=mysql_query($connect, "UPDATE tbl_wisata SET
        gambar = '$_POST[gambar]'
        nama = '$_POST[nama]'
        lokasi = '$_POST[lokasi]'
        harga_tiket = '$_POST[harga_tiket]'
        deskripsi = '$_POST[deskripsi]'
        kategori = '$_POST[kategori]' WHERE id_wisata = $id_wisata");
        if($result){
            $respons=array(
                'status'=>1,
                'message'=>'Update Data Berhasil'
            );
        }
        
        }else{
            $respons=array(
                'status'=>0,
                'message'=>'Gagal Mengupdate Data'
            );

    }
    header('contect-type: application/json');
    echo json_encode($respons);
}
function hapus_wisata(){
    global $connect;
    $id=$_GET['id_wisata'];
    $query = "DELETE FROM tbl_wisata WHERE id = ".$id_wisata;
    if(mysqli_query($connect,$query)){
        $respons=array(
            'status'=>1,
            'message'=>'Hapus Data Berhasil'
        );
    }
    else{
        $respons=array(
            'status'=>0,
            'message'=>'Gagal Menghapus Data'
        );
    }
    header('content-type: application/json');
    echo json_encode($respons);
}

