<div class="col-lg-3">
	<div class="list-group">
		<p class="list-group-item active">Danh sách đề thi</p>
		<?php
			$i=0;
			while(isset($danhsachdethi[$i]['id']) && !empty($danhsachdethi[$i]['id'])){
				echo'
				<a href="?rt=kiemtra/question&dethi_id='.$danhsachdethi[$i]['id'].'"class="list-group-item">'.$danhsachdethi[$i]['name'].'
					 <i style="font-size:20px;color:red;">'.$danhsachdethi[$i]['socauhoi'].'</i></a>
				';
				$i++;
			}
		?>
	</div>
</div>
<?php
	if(isset($_SESSION['level']) && $_SESSION['level']>=4){
		echo'<div class="col-lg-5">';
	}else{
		echo'<div class="col-lg-8">';
	}
?>
