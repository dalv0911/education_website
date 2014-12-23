<?php
	include 'views/header.php';
	include 'views/users/side_left.php';
?>
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3>Bài học yêu thích của :<?php echo isset($users['name'])?$users['name']:'';?></h3>
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
						while(isset($favorite[$i]) && $favorite[$i]!=null){
							echo'<tr>
								<td><a href="?rt=pages&id='.$favorite[$i]['page_id'].'">'.$favorite[$i]["name"].'</a></td>
								<td>'.$favorite[$i]["time_on"].'</td>
							</tr>';
						$i++;
						}
					?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
<?php
	include 'views/users/side_right.php';
	include 'views/footer.php';
?>