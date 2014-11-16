<?php
	include'views/header.php';
?>
	<?php
		if(isset($message)){
			echo $message;
		}
		if($_SERVER['REQUEST_METHOD']!='POST'){
			echo "<div class='alert alert-warning'>
					<strong>Warning !</strong>Bạn chắc chắn muốn xóa <strong>".$pages['name']."</strong>";
			echo "</div>";
		}
	?>
	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title">Delete Bài viết</h2>
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
	</div>
<?php
	include'views/side_bar.php';
	include'views/footer.php';
?>