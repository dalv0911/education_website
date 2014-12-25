<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-10">
	<div class="panel panel-success">
	<div class="panel-heading">1.Show danh sách menu sắp xếp theo thứ tự position .</div>
	<div class="panel-body">
		<div class="row">
			<center><img src="img_report/cau1.png"></center>
		</div>
		<div class="table-responsive">
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th>Name</th>
						<th>Position</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$i=0;
						while(isset($menu[$i])&&!empty($menu[$i])){
							echo "<tr>";
								echo "<td>".$menu[$i]['name']."</td>";
								echo "<td>".$menu[$i]['position']."</td>";
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