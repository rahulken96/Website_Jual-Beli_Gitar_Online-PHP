<?php 

?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Situs Jual Beli Online Gitar</title>


  <!-- load CSS -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400"> <!-- Google web font "Open Sans" -->
  <link rel="stylesheet" href="../css/bootstrap.min.css"> <!-- https://getbootstrap.com/ -->
  <link rel="stylesheet" href="../css/fontawesome-all.min.css"> <!-- Font awesome -->
  <link rel="stylesheet" href="../css/tooplate-style.css"> <!-- Templatemo style -->
  <link rel="stylesheet" href="../css/login.css">

  <script>
    var renderPage = true;

    if (navigator.userAgent.indexOf('MSIE') !== -1 ||
      navigator.appVersion.indexOf('Trident/') > 0) {
      /* Microsoft Internet Explorer detected in. */
      alert("Lihat web ini di browser modern!");
      renderPage = false;
    }
  </script>

</head>

<body>

  <!-- Loader -->
  <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>

  <div class="tm-main">

    <div class="tm-welcome-section" >
      <div class="container tm-navbar-container">
        <div class="row">
          <div class="col-xl-12">
            <nav class="navbar navbar-expand-sm">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a href="../index.php" class="nav-link tm-nav-link tm-text-white">Home</a>
                </li>
                <li class="nav-item">
                  <a href="../about.php" class="nav-link tm-nav-link tm-text-white">About</a>
                </li>
                <li class="nav-item">
                  <a href="../contact.php" class="nav-link tm-nav-link tm-text-white">Contact</a>
                </li>
                <li class="nav-item active">
                  <a href="login.php" class="nav-link tm-nav-link tm-text-white active">Login</a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>

      <div class="contain">
          <h1>Sign Up</h1>
            <form class="login">
                <label for="namalengkap">Nama Lengkap</label><br>
                <input type="text" name="namalengkap" id="namalengkap" placeholder="Nama Lengkap">
                <label for="notelepon">No Telepon</label><br>
                <input type="text" name="notelepon" id="notelepon" placeholder="No. telepon">
                <label for="email">E-Mail</label><br>
                <input type="text" name="email" id="email" placeholder="Email">
                <label for="username">Username</label><br>
                <input type="text" name="username" id="username" placeholder="username">
                <label for="password">Password</label><br>
                <input type="password" name="password" id="password" placeholder="password">
                <table>
                  <tr>
                      <td><button class="signup" type="submit" style="margin-right: 50px;" formaction="login.php"> Cancel</button></td>
                      <td><button class="login" type="submit" style="margin-right: 50px;">Accept</button></td>
                  </tr>
                </table>
            </form>
        </div>     

    

      <!-- load JS -->
  <script src="../js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script>
    /* DOM is ready
    ------------------------------------------------*/
    $(function() {

      if (renderPage) {
        $('body').addClass('loaded');
      }

      $('.tm-current-year').text(new Date().getFullYear()); // Update year in copyright
    });
  </script>

</body>
</html>