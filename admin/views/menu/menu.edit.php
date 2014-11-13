<?php
	include('../admin/views/header.php');
	include('../admin/views/SideBarAdmin.php');
?>
<div class="container">
	<div class="row">
	<div class="col-lg-8 col-md-offset-2">
	<!-- Xử lý lỗi ... -->
		<?php
			if(isset($errors) && in_array('name',$errors)){
				echo "
					<div class='alert alert-warning'>
						<strong>Warning !</strong>Bạn chưa điền tên Menu !
					</div>
				";
			}
			if(isset($errors) && in_array('position',$errors)){
				echo "
					<div class='alert alert-warning'>
						<strong>Warning!</strong>Vui lòng chọn position !
					</div>
				";
			}
			if(isset($message)){
				echo $message;
			}
		?>
		<!-- End xử lý lỗi  -->
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">Create Menu</h3>
			</div>
			<div class="panel-body">
				<form role="form" method="post">
					<div>
						<label>Menu Name</label>
						<input class="form-group" placeholder="Enter text "name="name"
							value="<?php if(isset($menu['menu'])) echo$menu['name'];?>">
					</div>
					<div>
						<label>Position</label>
						<select class="form-group" name="position">
							<option value="">Select Option</option>
							<?php
								if(isset($max_position)){
									for($i=1;$i<=$max_position+1;$i++){
										if(isset($cat['position']) &&$cat['position']==$i){
											echo "<option values='{$i}' select='selected'>".$i."</option>";
										}else{
											echo "<option values='{$i}'>".$i."</option>";
										}
										
									}
								}
							?>
						</select>
					</div>
					<div>
						<button type="submit" class="btn btn-default btn-success" name="submit">Create</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
</div>

<?php
	include('../admin/views/footer.php');
?>