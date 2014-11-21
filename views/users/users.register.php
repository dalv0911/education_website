<?php
	include 'views/header.php';
?>
<?php
					if(isset($errors)){
						check_error_register($errors);
					}
					if(isset($message)){
						echo $message;
					}
				?>
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Register</h3>
					</div>
					<div class="panel-body">
						<form method="post">
							<div>
								<label class="col-md-3">Email</label>
								<input name="email" id="email_users"class="form-group" type="text" placeholder="Enter text ...">
								<i id="ajax_notify"></i>
							</div>
							<div>
								<label class="col-md-3">Password</label>
								<input name="password" class="form-group" type="password">
							</div>
							<div>
								<label class="col-md-3">Re-Password</label>
								<input name="re-password" class="form-group" type="password">
							</div>
							<div>
								<button class="btn btn-success" name="register">Register</button>
							</div>
						</form>
					</div>
				</div>
<?php
	include 'views/side_bar.php';
	include 'views/footer.php';
?>