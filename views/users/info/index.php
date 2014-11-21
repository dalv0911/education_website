<?php
	include 'views/header.php';
	include 'views/users/side_left.php';
?>
<div class="col-lg-6">
	<?php
		if(isset($message)){
			echo $message;
		}
		if(isset($errors) && in_array('email',$errors)){
			echo "<div class='alert alert-warning'>Bạn chưa nhập email . Đây là một trường bắt buộc .</div>";
		}
		if(isset($errors) && in_array('avatar',$errors)){
			echo "<div class='alert alert-warning'>Ảnh đại diện của bạn chưa được upload .</div>";
		}
	?>
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3>Thông tin cá nhân</h3>
		</div>
		<div class="panel-body">
			<form method="post" enctype="multipart/form-data">
				<div>
					<label class="col-lg-3">First Name</label>
					<input type="text" placeholder="First Name" name="first_name" 
							value="<?php echo isset($_POST['first_name'])?$_POST['last_name']:$users['first_name'];?>">
				</div></br>
				<div>
					<label class="col-lg-3">Last Name</label>
					<input type="text" placeholder="Last Name" name="last_name"
							value="<?php echo isset($_POST['first_name'])?$_POST['first_name']:$users['last_name'];?>">
				</div><br>
				<div>
					<label class="col-lg-3">Email</label>
					<input type="text" placeholder="Your Email" name="email" id="email_users"
							value="<?php echo isset($_POST['email'])?$_POST['email']:$users['email'];?>">
					<i id="ajax_notify"></i>
				</div><br>
				<div>
					<label class="col-lg-3">UserName</label>
					<input type="text" placeholder="UserName" name="username" id="username"
							value="<?php echo isset($_POST['username'])?$_POST['username']:$users['username'];?>">
					<i id="ajax_notify"></i>
				</div><br>
				<div class="radio">
					<label class="col-lg-3">Giới tính</label>
					<label><input type="radio" name="gender" value="1" <?php if($users['gender']==1) echo "checked";?>>Nam</label>
					<label><input type="radio" name="gender" value="2" <?php if($users['gender']==2) echo "checked";?>>Nữ</label>
					<label><input type="radio" name="gender" value="3" <?php if($users['gender']==3) echo "checked";?>>Không xác định</label>
				</div><br>
				<div>
					<label class="col-md-3">Ảnh đại diện</label>
					<input type="file" name="avatar"/><br>
				</div><br>
				<div>
					<label class="col-lg-3">Address</label>
					<input type="text" placeholder="Address" name="address"
							value="<?php echo isset($_POST['address'])?$_POST['address']:$users['address'];?>">
				</div><br>
				<div>
					<label class="col-lg-3">Trường</label>
					<input type="text" placeholder="Trường học" name="state"
							value="<?php echo isset($_POST['state'])?$_POST['state']:$users['state'];?>">
				</div><br>
				<div>
					<label class="col-lg-3">Mô tả bản thân</label>
					<input type="text" placeholder="Mô tả bản thân" name="des"
							value="<?php echo isset($_POST['des'])?$_POST['des']:$users['des'];?>">
				</div><br>
				<div>
					<label class="col-lg-3">Chữ ký</label>
					<textarea name="sign"><?php 
						echo isset($_POST['sign'])?$_POST['sign']:$users['sign'];
						?></textarea> 
				</div><br>
				<div>
					<button type="buttom" class="btn btn-lg btn-success col-lg-offset-3" name="submit">Cập nhật thông tin</button>
				</div>
			</form>
		</div>
	</div>
</div>
<?php
	include 'views/users/side_right.php';
	include 'views/footer.php';
?>