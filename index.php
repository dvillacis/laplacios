<?php
include('login.php'); // Includes Login Script
if(isset($_SESSION['login_user'])){
header("location: profile.php");
}
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Banco Central del Laplacio</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700|Crete+Round:400i" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="style.css" type="text/css" />
	<link rel="stylesheet" href="css/dark.css" type="text/css" />
	<link rel="stylesheet" href="css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="css/animate.css" type="text/css" />
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
  </head>
  <body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap nopadding">

				<div class="section nopadding nomargin" style="width: 100%; height: 100%; position: absolute; left: 0; top: 0; background: #444;"></div>

				<div class="section nobg full-screen nopadding nomargin">
					<div class="container-fluid vertical-middle divcenter clearfix">

						<div class="center">
							<h1>Banco Central Laplacio</h1>
						</div>

						<div class="card divcenter noradius noborder" style="max-width: 400px;">
							<div class="card-body" style="padding: 40px;">
								<form id="login-form" name="login-form" class="nobottommargin" action="" method="post">
									<h3>Login to your Account</h3>

									<div class="col_full">
										<label for="login-form-username">Username:</label>
										<input type="text" id="login-form-username" name="login-form-username" value="" class="form-control not-dark" />
									</div>

									<div class="col_full">
										<label for="login-form-password">Password:</label>
										<input type="password" id="login-form-password" name="login-form-password" value="" class="form-control not-dark" />
									</div>

									<div class="col_full nobottommargin">
										<button class="button button-3d button-black nomargin" id="login-form-submit" name="login-form-submit" value="login">Login</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>

		</section><!-- #content end -->

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>

</body>
  <body>
    <div id="main">
    <h1>Banco Central del Laplacio</h1>
    <div id="login">
        <h2>LOGIN</h2>
        <form action="" method="post">
            <label>UserName :</label>
            <input id="name" name="username" placeholder="username" type="text">
            <label>Password :</label>
            <input id="password" name="password" placeholder="**********" type="password">
            <input name="submit" type="submit" value=" Login ">
            <span><?php echo $error; ?></span>
        </form>
    </div>
    </div>
  </body>
</html>
