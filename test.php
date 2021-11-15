<?php
    $conn = mysqli_connect('localhost', 'root', '', 'datapemesanan');
    $query = "SELECT * FROM data_per_bulan";
    $result = mysqli_query($conn, $query);
    // mysqli_fetch_assoc($result);
    $rows = [];
    while( $row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    echo '<pre>';
    echo var_dump($rows);
    echo '</pre>';
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>