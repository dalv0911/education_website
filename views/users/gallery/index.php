<?php
	include 'views/header.php';
	include 'views/users/side_left.php';
?>

<div class="col-lg-6">
	<div class="panel panel-success">
		<?php
			if(isset($message)){
				echo $message;
			}
		?>
		<div class="panel-heading">
			<h3>Kho ảnh đại diện của bạn </h3>
		</div>
		<div class="panel-body">
			<i>Bạn hiện có <strong><?php echo $gallery_num['count(id)'];?> </strong>ảnh trong gallery .</i>
			<form method="post">
			<?php
				$i=0;
				while(!empty($gallery[$i])){
					echo '
							<img src="upload/avatar/thumb_'.$gallery[$i]['name'].'" id="image_gallery"/>
							<input type="radio" id="imgCheck" name="imgCheck" value="'.$gallery[$i]['id'].'">
						';
					$i++;
					if($i%4==0){
						echo '<br>';
					}
				}
			?>
				<br><br>
				<div class="row">
					<select name="select">
						<option value="">Select Option</option>
						<option value="1">Đặt làm ảnh đại diện</option>
						<option value="2">Xóa</option>
					</select>
					<button class="btn btn-lg btn-success" type="submit" name="submit">Submit</button>
				</div>
			</form>
		</div>
	</div>
</div>
<?php
	include 'views/users/side_right.php';
	include 'views/footer.php';
?>