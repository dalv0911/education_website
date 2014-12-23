<?php
	include 'views/header.php';
?>
				<?php
					if(isset($errors)){
						check_error_login($errors);
					}
					if(isset($message)){
						echo $message;
					}
				?>
				<?php
					if(!isset($message)){
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
							<!-- <div>
								<label class="col-md-offset-3">
									<input type="checkbox" name="forget_pass" value="yes">Ghi nhớ tôi
									<a href="" class="col-sm-offset-1">Quên mật khẩu</a>
								</label>
							</div> -->
							<div>
								<button class="btn btn-success col-md-offset-3" name="login">Login</button>
								<a href="?rt=register" class="col-md-offset-3">Register</button>
							</div>
						</form>
					</div>
				</div>
				<?php
					}
				?>
<?php
	include 'views/side_bar.php';
	include 'views/footer.php';
?>