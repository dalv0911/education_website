<?php
	include('../admin/views/header.php');
	include('../admin/views/SideBarAdmin.php');
?>
<div class="container">
<div class="col-lg-8 col-md-offset-2">
	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title">Delete Menu </h2>
		</div>
			<div class="panel-body">
				<?php
					if(isset($message)){
						echo $message;
					}
				?>
				<div class='alert alert-warning'>
					<strong>Warning !</strong>Bạn có chắc muốn xóa không ? 
					<strong>Nếu bạn chọn Delete thì tất cả các thể loại bài học thuộc mục này sẽ bị xóa </strong>!
				</div>
				
				<form method="post">
					<label class="radio-inline">
						<input type="radio" name="delete-radio" id="delete-radio" value="delete">Delete
					</label>
					<label class="radio-inline">
						<input type="radio" name="delete-radio" id="delete-radio" value="cancel" checked>Cancel
					</label>
					<div>
						<button class="bt btn-default btn-success" name="submit">Submit</button>
					</div>
				</form>

			</div>
	</div>
</div>
<?php
	include('../admin/views/footer.php');
?>