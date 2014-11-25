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
			<h3>Lịch sử học tập của :<?php echo isset($users['name'])?$users['name']:'';?></h3>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped">
					<thead>
						<tr>
							<th>Tên bài học</th>
							<th>Thời gian</th>
						</tr>
					</thead>
					<tbody>
					<?php
						$i=0;
						while(isset($history[$i]) && $history[$i]!=null){
							echo'<tr>
								<td><a href="?rt=pages&id='.$history[$i]['page_id'].'">'.$history[$i]["name"].'</a></td>
								<td>'.$history[$i]["time_on"].'</td>
							</tr>';
						$i++;
						}
					?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<?php
	include 'views/users/side_right.php';
	include 'views/footer.php';
?>