<?php 
    session_start();
      if(!isset($_SESSION['login_user'])) {
        header("location: login.php");
      }else{
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="UI.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.min.css">

    <title>Samiwon Restaurant</title>
  </head>
  <body>

  <!-- Jumbotron -->
      <div class="jumbotron jumbotron-fluid text-center">
        <div class="container">
          
        </div>
      </div>
  <!-- Akhir Jumbotron -->

  <!-- Navbar -->
      <nav class="navbar sticky-top navbar-light" style="background-color:red">
        <div class="container">
        <a class="navbar-brand text-white" href="admin.php"><strong>Samiwon</strong> Restaurant</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link mr-4" href="admin.php">HOME</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mr-4" href="daftar_menu.php">DAFTAR MENU</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mr-4" href="pesanan.php">PESANAN</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mr-4" href="logout.php">LOGOUT</a>
            </li>
          </ul>
        </div>
       </div> 
      </nav>
  <!-- Akhir Navbar -->

  <!-- Menu -->    
      <div class="container">
        <div class="judul text-center mt-5">
          <h3 class="font-weight-bold">SELAMAT DATANG DI SamiWon RESTAURANT</h3>
          <h4>Since 2023</h4>
          <h5>Surabaya, Jawa Timur
          <br>Buka Jam <strong>10:00 - 23:00</strong></h5>
        </div>

        <div class="row mb-3 mt-3">
          <div class="col-md-3 d-flex justify-content-end">
            <div class="card text-white border-light">
              <img src="images/background/bg1.jpg" class="card-img" alt="Lihat Daftar Menu">
              <img src="images/background/korean2.jpg" class="card-img" alt="Lihat Daftar Menu" style="margin-top: 20%">
            </div>
          </div>

          <div class="col-md-3 d-flex justify-content-start">
            <div class="card text-white border-light">
              <img src="images/background/korean3.jpg" class="card-img" alt="Lihat Pesanan">
              <img src="images/background/korean4.jpg" class="card-img" alt="Lihat Daftar Menu" style="margin-top: 29%">
            </div>
          </div>

          <div class="col-md-3 d-flex justify-content-end">
            <div class="card text-white border-light">
              <img src="images/background/korean5.jpg" class="card-img" alt="Lihat Daftar Menu">
              <img src="images/background/korean6.jpg" class="card-img" alt="Lihat Daftar Menu" style="margin-top: 28%">
            </div>
          </div>

          <div class="col-md-3 d-flex justify-content-end">
            <div class="card text-white border-light">
              <img src="images/background/korean7.jpg" class="card-img" alt="Lihat Daftar Menu">
              <img src="images/background/korean8.jpg" class="card-img" alt="Lihat Daftar Menu" style="margin-top: 27%">
            </div>
          </div>
      </div>
  <!-- Akhir Menu -->

  <!-- Awal Footer -->
      <hr class="footer">
      <div class="container" style="background-color: red">
        <div class="row footer-body">
          <div class="col-md-6">
          <div class="copyright">
            <strong>SamiWon</strong> <i class="far fa-copyright"></i> Restaurant Since 2021</p>
          </div>
          </div>

          <div class="col-md-6 d-flex justify-content-end">
          <div class="icon-contact">
          <label class="font-weight-bold">Follow Us </label>
          <a href="#"><img src="images/icon/fb.png" class="mr-3 ml-4" data-toggle="tooltip" title="Facebook"></a>
          <a href="#"><img src="images/icon/ig.png" class="mr-3" data-toggle="tooltip" title="Instagram"></a>
          <a href="#"><img src="images/icon/twitter.png" class="" data-toggle="tooltip" title="Twitter"></a>
        </div>
          </div>
        </div>
      </div>
  <!-- Akhir Footer -->


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
  </body>
</html>
<?php } ?>
