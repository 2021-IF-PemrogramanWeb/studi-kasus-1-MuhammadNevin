<?php

$server = 'localhost';
$user = 'root';
$password = '';
$database = 'datapemesanan';

$db_connection = mysqli_connect($server, $user, $password, $database);
$jumlah = mysqli_query($db_connection, "SELECT jumlah FROM data_per_bulan order by id asc");

if(!$db_connection){
	die('Gagal Terhubung(Lost Connect): '.mysqli_connect_error() );
}else{
	// echo "Berhasil terkoneksi dengan database. Silahkan memilih menu yang disediakan.";
}
?>