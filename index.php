<?php 
session_start();


if(isset($_SESSION['login'])) {
  header("Location: 2_halaman-tabel.php");
  exit;
}

require_once 'functions.php';

if(!isset($_GET["log"])) {
  $error = "";
} else {
  $error = "username/password salah";
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
	<title>login</title>
	
	<link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <!-- Bootstrap icon -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.0/font/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="assets/css/styles.css" />
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<section class="container">
			<section class="login-form">
				<form method="post" action="aturlogin.php" method="POST" role="login">
					<img id="icon-wolf" class="mx-auto d-block" src="wolf-icon.png" alt="" width="72" height="auto">

					<p class="text-center text-danger"><?= $error; ?></p>
					
					<div class="form-floating">
						<input type="text" class="form-control" name="username" autofocus autocomplete="off" required placeholder="username">
						<!-- <label >Username</label> -->
					  </div>
			
					  <div class="form-floating">
						<input type="password" class="form-control" placeholder="Password" name="password" required>
						<!-- <label >Password</label> -->
					  </div>
					  
					
					<button type="submit" name="login" class="btn btn-lg btn-primary btn-block">Sign in</button>
					<div>
						<a href="#">Create account</a> or <a href="#">reset password</a>
						<p class="mt-5 mb-3 text-muted text-center">Pemrograman Web Kelas E</p>
					</div>
				</form>
			</section>
	</section>

  <div class="container pt-5">

        <div class="row row-cols-1 row-cols-md-4 g-4">
            <!-- card1 -->
            <div class="col">
                <div class="card">
                <img src="assets/images/ryan.jpg" class="card-img-top" alt="user1">
                <div class="card-body">
                    <h5 class="card-title text-center">User 1 : Ryan Giggs</h5>
                    <p class="card-text"><i class="bi bi-person-circle"></i> Username : ryan </p>
                    <p class="card-text"><i class="bi bi-key-fill"></i> Password : ryan123 </p>
                </div>
                </div>
            </div>

            <!-- card 2 -->
            <div class="col">
                <div class="card ">
                    <img src="assets/images/nova.jpg" class="card-img-top" alt="user2">
                    <div class="card-body">
                        <h5 class="card-title text-center">User 2 : Setya Novanto</h5>
                        <p class="card-text"><i class="bi bi-person-circle"></i> Username : nova</p>
                        <p class="card-text"><i class="bi bi-key-fill"></i> Password : nova123</p>
                    </div>
                </div>
            </div>

            <!-- card 3 -->
            <div class="col">
                <div class="card">
                <img src="assets/images/kayla.jpg" class="card-img-top" alt="user3">
                <div class="card-body">
                    <h5 class="card-title text-center">User 3 : Kayla Marixa</h5>
                    <p class="card-text"><i class="bi bi-person-circle"></i> Username : kayla</p>
                    <p class="card-text"><i class="bi bi-key-fill"></i> Password : kayla123</p>
                </div>
                </div>
            </div>

        </div>
    </div>
    <div class="form-links">
					<a href="#">www.website.com</a>
		</div>

  <!-- <div class="row">
    <div class="col-sm-6">
      <div class="card">
        <img src="assets/images/ryan.jpg" class="img-thumbnail" alt="user1">
        <div class="card-body">
          <h5 class="card-title">Special title treatment</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </div>

    <div class="col-sm-6">
      <div class="card">
        <img src="assets/images/kayla.jpg" class="card-img-top" alt="user2">
        <div class="card-body">
          <h5 class="card-title">Special title treatment</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </div>

    <div class="col-sm-6">
      <div class="card">
        <img src="assets/images/nova.jpg" class="card-img-top" alt="user3">
        <div class="card-body">
          <h5 class="card-title">Special title treatment</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </div>
  </div> -->
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
