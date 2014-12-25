<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-8">
	<div class="panel panel-success">
	<div class="panel-heading" style="font-weight:bold;">2.Show danh sách các thư mục cấp 1 trong menu THƯ VIỆN.</div>
	<div class="panel-body">
		<div class="row">
			<center><img src="img_report/cau2.png"></center>
		</div>
		<div class="table-responsive">
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>NAME</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$i=0;
						while(isset($thumuc[$i])&&!empty($thumuc[$i])){
							echo "<tr>";
								echo "<td>".$thumuc[$i]['id']."</td>";
								echo "<td>".$thumuc[$i]['name']."</td>";
							echo "</tr>";
							$i++;
						}
					?>
				</tbody>
			</table>
		</div>
	</div>
	</div>
</div>