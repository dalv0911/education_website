<?php
	include'views/kiemtra/header.php';
	include'views/kiemtra/side_left.php';
?>
<div class="panel panel-success">
	<div class="panel-body">
		<form method="post">
			<div>
				<label class="col-lg-3">Tên đề thi</label>
				<input type="text" name="name" placeholder="Tên đề thi">
			</div><br>
			<div>
				<label class="col-lg-3">Số câu hỏi *Số*</label>
				<input type="text" name="socauhoi" placeholder="Nhập vào 1 số">
			</div><br>
			<div>
				<button name="submit" type="submit" class="btn btn-success">Tạo đề thi</button>
			</div>
		</form>
	</div>
</div>
<?php
	include'views/kiemtra/side_right.php';
	include'views/kiemtra/footer.php';
?>