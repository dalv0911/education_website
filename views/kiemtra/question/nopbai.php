<?php
	include'views/kiemtra/header.php';
	include'views/kiemtra/side_left.php';
?>
<div class="list-group">
	<?php
		$i=0;
		if(!empty($score['tong_so_cau_lam'])){
			echo'<div class="panel panel-success">
					<div class="panel-body">
						Bạn đã hoàn thành '.$score['tong_so_cau_lam'].'/'.$dethi['socauhoi'].' câu .Và trả lời đúng '.($score['tong_so_cau_lam']-$so_cau_sai).' câu .Tổng điểm trong đề này của bạn là :<span style="color:red;font-weight:bold;">'.$score['score'].'</span>
						<p>Bạn có thể làm lại đề thi này , nhưng xin chú ý rằng số điểm này sẽ bị xóa khỏi hệ thống . Và sẽ tự động được cập nhật khi bạn làm lại .</p>
						<form method="post">
							<button name="lamlai" type="submit" class="btn btn-success"> Làm lại</button>
						</form>
					</div>
				</div>';
		}
		while(isset($nopbai[$i]) && !empty($nopbai[$i])){
			echo'
			<div class="list-group-item">
				<span>'.$nopbai[$i]['stt'].'</span>
				<span style="color:rgb(16, 0, 255);font-weight:bold;"> + '.$nopbai[$i]['score'].' điểm.</span>
				<p>'.$nopbai[$i]['question'].'</p>';
				$j=0;
				while(isset($dapan[$j]) && !empty($dapan[$j])){
					if($dapan[$j]['question_id']==$nopbai[$i]['id']){
						if($dapan[$j]['stt']==$nopbai[$i]['dapan']){
							echo'
							<p style="color:#02CD14;font-weight:bold;">'.$dapan[$j]['content'].'</p>
							';
						}elseif($nopbai[$i]['answer']==$dapan[$j]['stt'] && $nopbai[$i]['answer']!=$nopbai[$i]['dapan']){
							echo'
							<p style="color:red;font-weight:bold;">'.$dapan[$j]['content'].'</p>
							';
						}else{
							echo'
							<p>'.$dapan[$j]['content'].'</p>
							';
						}
						
					}
					$j++;
				}
				if(!empty($nopbai[$i]['giaithich'])){
					echo'
						<p style="color:red;font-weight:bold;">答え</p>
						<span>'.$nopbai[$i]['giaithich'].'</span>
					';
				}
			echo'
			</div>

			';
			$i++;
		}
	?>
	
</div>
<?php
	if(isset($_SESSION['level']) && $_SESSION['level']>=4){
		include'views/kiemtra/side_right.php';
	}
	include'views/kiemtra/footer.php';
?>