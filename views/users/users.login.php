
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo isset($title)?$title:"Admin CPanel "?></title>
       <!-- jQuery Version 1.11.0 -->
    <script src="bootstrap/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="bootstrap/js/plugins/morris/raphael.min.js"></script>
    <script src="bootstrap/js/plugins/morris/morris.min.js"></script>
    <script src="bootstrap/js/plugins/morris/morris-data.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="bootstrap/css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="bootstrap/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bootstrap/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrapper">
		<div class="container">
			<div class="col-lg-6 col-md-offset-1">
				<?php
					if(isset($errors)){
						check_error_login($errors);
					}
					if(isset($message)){
						echo $message;
					}
				?>
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Login</h3>
					</div>
					<div class="panel-body">
						<form method="post">
							<div>
								<label class="col-md-3">Username</label>
								<input class="form-group" placeholder="Enter text .." name="username" value="<?php if(isset($_SESSION['username'])) echo $_SESSION['username'];?>">
							</div>
							<div>
								<label class="col-md-3">Password</label>
								<input type="password"class="form-group" name="password">
							</div>
							<div>
								<label class="col-md-offset-3">
									<input type="checkbox" name="forget_pass" value="yes">Ghi nhớ tôi
									<a href="" class="col-sm-offset-1">Quên mật khẩu</a>
								</label>
							</div>
							<div>
								<button class="btn btn-success col-md-offset-3" name="login">Login</button>
								<a href="?rt=register" class="col-md-offset-3">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>