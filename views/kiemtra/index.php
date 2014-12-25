<?php
	include'views/kiemtra/header.php';
	include'views/kiemtra/side_left.php';
?>
<?php
	if(isset($_SESSION['level']) && $_SESSION['level']>=4){
	include'views/kiemtra/side_right.php';
	}
	include'views/kiemtra/footer.php';
?>