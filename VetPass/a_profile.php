<?php 
	session_start(); 

	if (!isset($_SESSION['username'])) {
		$_SESSION['msg'] = "You must log in first";
		header('location: login.php');
	}

	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header("location: login.php");
	}

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <title>Document</title>
</head>
<body>
	<!-- Home banner -->
    <div class="home_banner">
            <div class="overlay"></div>
            <div class="home_navigation">
                <div class="home_navigation_logo">
                    <h6 class="home_navigation_logo-text">
                        VetPass
                    </h6>
                    <div class="content">
                    <!-- logged in user information -->
                    <?php  if (isset($_SESSION['username'])) : ?>
                        <p> <a href="index.php?logout='1'" style="color: red;"><span class="material-symbols-outlined">logout</span></a> </p>
                    <?php endif ?>
	            </div>
                </div>
                <div class="home_navigation_nav">
                    <a href="f_profile.php" class="home_navigation_nav-link">Profils</a>
                    <a href="#" class="home_navigation_nav-link">Medicīnas dati</a>
                    <a href="#" class="home_navigation_nav-link">Pieraksti</a>
                    <a href="#" class="home_navigation_nav-link">Piezīmes</a>
                </div>
            </div>
            <div class="home_banner_content">
               <div class="f_profile">
                    <div class="f_profile_nav">
                        <a href="f_profile.php" class="f_profile_nav-link">Lietotājs</a>
                        <a href="a_profile.php" class="f_profile_nav-link">Dzīvnieks</a>
                    </div>
                    <div class="f_profile_info">
                        <p class="f_profile_info">Vārds:</p>
                        <p class="f_profile_info">Šķirne:</p>
                        <p class="f_profile_info">Dzimums:</p>
                        <p class="f_profile_info">Dzimšanas datums:</p>
                        <button class="button" type="button"> Labot </button>
                    </div>
               </div>
            </div>
        </div>
		
</body>
</html>