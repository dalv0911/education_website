<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-8">
	<div class="panel panel-success">
	<div class="panel-heading">16.Đưa ra số lượng user trả lời đúng và số lượng user trả lời sai câu hỏi thứ 1 (stt=1) trong Đềthi_id = 1 </div>
	<div class="panel-body">
		Số câu đúng<br>
		<img src="img_report/cau17-a.png"><br>
		Số câu sai<br>
		<img src="img_report/cau17-b.png">
		<div class="table-responsive">
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th>Số người trả lời đúng</th>
						<th>Số người trả lời sai</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					<?php
						echo'
							<tr>
								<td>'.$SoNguoiDung.'</td>
								<td>'.$SoNguoiSai.'</td>
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