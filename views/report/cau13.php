<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-8">
	<div class="panel panel-success">
	<div class="panel-heading">13.Đưa ra danh sách thành viên tham gia lớp học ID=6 mà không tham gia lớp học ID=5.</div>
	<div class="panel-body">
		<img src="img_report/cau13.png">
		<div class="table-responsive">
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					<?php
						$i=0;
						while(isset($cau13[$i]) && !empty($cau13[$i])){
							echo'
							<tr>
								<td>'.$cau13[$i]['id'].'</td>
								<td>'.$cau13[$i]['name'].'</td>
							</tr>
							';
							$i++;
						}
					?>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</div>
</div>