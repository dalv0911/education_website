<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-9">
	<div class="panel panel-success">
	<div class="panel panel-heading">9.Đưa ra lịch sử học tập của thành viên có ID=1 </div>
	<div class="panel-body">
		<div class="panel-body">
			<img src="img_report/cau9.png">
		</div>
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