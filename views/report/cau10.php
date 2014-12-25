<?php
	include'views/kiemtra/header.php';
?>
<div class="panel panel-success col-lg-8">
		<div class="panel-heading">10.Đưa ra các bài viết mà thành viên có ID=1 yêu thích.
		</div>
		<div class="panel-body">
			<div class="panel-body">
				<img src="img_report/cau10.png">
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