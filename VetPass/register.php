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
					<h2> Register </h2>
				</div>
			<form method="post" action="register.php">

				<?php include('errors.php'); ?>

				<div class="input-group">
					<label>Lietotājvārds</label>
					<input class="form-control" type="text" name="username" value="<?php echo $username; ?>">
				</div>
				<div class="input-group">
					<label>Lietotāja vārds</label>
					<input class="form-control" type="text" name="fname" value="<?php echo $fname; ?>">
				</div>
				<div class="input-group">
					<label>Lietotāja uzvārds</label>
					<input class="form-control" type="text" name="lname" value="<?php echo $lname; ?>">
				</div>
				<div class="input-group">
					<label>Telefona numurs</label>
					<input class="form-control" type="tel" name="phone" value="<?php echo $phone; ?>">
				</div>
				<div class="input-group">
					<label>E-pasts</label>
					<input class="form-control" type="email" name="email" value="<?php echo $email; ?>">
				</div>
				<div class="input-group">
					<label>Dzīvnieka vārds</label>
					<input class="form-control" type="text" name="animalname" value="<?php echo $animalname; ?>">
				</div>
				<div class="input-group">
					<label>Password</label>
					<input class="form-control" type="password" name="password_1">
				</div>
				<div class="input-group">
					<label>Confirm password</label>
					<input class="form-control" type="password" name="password_2">
				</div>
				<div class="input-group">
					<button class="button" type="submit" class="btn" name="reg_user">Register</button>
				</div>
				<p class="login-text">
					Already a member? <a href="login.php">Sign in</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>