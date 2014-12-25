<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-9">
	<div class="panel panel-success">
	<div class="panel-heading">14.Đưa ra danh sách tất cả giáo viên và số lượng đề thi do giáo viên đó soạn</div>
	<div class="panel-body">
		<img src="img_report/cau14.png">
		<div class="table-responsive">
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Số lượng đề thi</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					<?php
						$i=0;
						while(isset($users[$i]) && !empty($users[$i])){
							echo'
							<tr>
								<td>'.$users[$i]['id'].'</td>
								<td>'.$users[$i]['name'].'</td>
								<td>'.$users[$i]['num'].'</td>
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