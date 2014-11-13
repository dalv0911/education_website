<?php
	include('../admin/views/header.php');
	include('../admin/views/SideBarAdmin.php');
?>
<div class="container">
	<div class="row">
		<div class="col-lg-8 col-md-offset-2">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h2 class="panel-title">View Menu</h2>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover table-striped">
							<thead>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Edit</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<?php
									$i=0;
									while(isset($view[$i])&&!empty($view[$i])){
										echo "<tr>";
											echo "<td>".$view[$i]['name']."</td>";
											echo "<td>".$view[$i]['position']."</td>";
											echo "<td><a href='?rt=menu/edit&id={$view[$i]['id']}'>Edit</a></td>";
											echo "<td><a href='?rt=menu/delete&id={$view[$i]['id']}'>Delete</a></td>";
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
	</div>
</div>
<?php
	include('../admin/views/footer.php');
?>