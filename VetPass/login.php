<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>
<body>
	<div class="login-back">
		<div class="login">
			<div class="home_navigation_logo-arrow">
				<span>
					<a class="material-symbols-outlined arrow" href="sakums.html">arrow_back</a>
				</span>
				<div class="arrow-text">
					<a class="arrow-href  login-text" href="sakums.html"> Uz sākumu</a>
				</div>
			</div>

			<div class="login-title">
				<h2>Login</h2>
			</div>
			
			<form method="post" action="login.php">

				<?php include('errors.php'); ?>

				<div class="input-group">
					<label>Username</label>
					<input class="form-control" type="text" name="username" >
				</div>
				<div class="input-group">
					<label>Password</label>
					<input class="form-control" type="password" name="password">
				</div>
				<div class="input-group">
					<button class="button" type="submit" name="login_user">Login</button>
				</div>
				<p class="login-text">
					Not yet a member? <a href="register.php">Sign up</a>
				</p>
			</form>
		</div>
	</div>

</body>
</html>