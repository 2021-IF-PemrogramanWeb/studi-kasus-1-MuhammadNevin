<?php

$email = $_POST["email"];
$password = $_POST["password"];

if($email == "nevin.muhammad@gmail.com" && $pass="12") {
    // echo "Selamat datang";
    readfile("table.php");
}
else {
    // echo "Password atau email anda salah";
    readfile("login-wrong.html");
}

?>

