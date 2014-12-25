<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-10">
	<div class="panel panel-success">
	<div class="panel-heading">15.Đưa ra số điểm mà thành viên có ID=1 đạt được trong đề thi có DETHI_ID=1.</div>
	<div class="panel-body">
		<img src="img_report/cau15.png">
		<div class="table-responsive">
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Tổng số câu làm</th>
						<th>Số điểm</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					<?php
						echo'
							<tr>
								<td>'.$cau15['id'].'</td>
								<td>'.$cau15['name'].'</td>
								<td>'.$cau15['tong_so_cau_lam'].'</td>
								<td>'.$cau15['score'].'</td>
							</tr>
							';
					?>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</div>
</div>