<?php
	include'views/header.php';
?>
<?php
	if(isset($message)){
		echo $message;
	}
?>
	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title">Delete lớp học :<?php echo $class['name'];?></h2>
		</div>
		<div class="panel-body">
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
<?php
	include'views/side_bar.php';
	include'views/footer.php';
?>