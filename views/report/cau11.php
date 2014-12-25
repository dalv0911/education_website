<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-9">
	<div class="panel panel-success">
	<div class="panel panel-heading">11.Đưa ra tất cả thông tin của lớp học có ID=6.</div>
	<div class="panel-body">
			<img src="img_report/cau11.png">
		<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped">
					<thead>
						<tr>
							<th>ID lớp học</th>
							<th>Tên lớp học</th>
							<th>Giáo Viên ID</th>
							<th>Tên Giáo Viên</th>
							<th>SDT</th>
							<th>Address</th>
							<th>Email</th>
							<th>Mô tả lớp học</th>
						</tr>
					</thead>
					<tbody>
					<?php
						echo'<tr>
								<td>'.$class['id'].'</td>
								<td>'.$class['name'].'</td>
								<td>'.$class['giao_vien_id'].'</td>
								<td>'.$class['giao_vien'].'</td>
								<td>'.$class['sdt'].'</td>
								<td>'.$class['address'].'</td>
								<td>'.$class['email'].'</td>
								<td>'.$class['des'].'</td>
							</tr>';
					?>
					</tbody>
				</table>
			</div>
	</div>
</div>