<?php
	include'views/kiemtra/header.php';
	include'views/kiemtra/side_left.php';
?>
<?php
	if(isset($ok) && $ok==1 && isset($question['stt'])){

		echo'
		<div class="panel panel-success">
			<div class="panel-heading">Bạn đang làm đề thi '.$dethi['name'].' </div>
			<div class="panel-body">
				<span>'.$question['stt'].'.</span>
				<span style="color:red;"> -- '.$question['score'].' Điểm</span><br>';
				if(isset($so_nguoi_dung) && !empty($so_nguoi_dung)){
					echo'<span>Số người trả lời đúng :</span><span style="color:red;font-weight:bold;">'.$so_nguoi_dung.'</span><br>';		
				}
				if(isset($so_nguoi_sai) && !empty($so_nguoi_sai)){
					echo'<span>Số người trả lời sai:</span><span style="color:red;font-weight:bold;">'.$so_nguoi_sai.'</span><br>';
				}
				echo'
				<p>'.$question['question'].'</p>
				<form method="post">';
				$i=0;
				while(isset($dapan[$i]['id']) && !empty($dapan[$i]['id'])){
					if(isset($tested) && $tested==1){
						if($test['answer']==$dapan[$i]['stt']){
							echo'
							<div class="radio">
								<label>
									<input type="radio" name="dapan" value='.$dapan[$i]['stt'].' checked>'.$dapan[$i]['content'].'
								</label>
							</div>
							';
						}else{
							echo'
							<div class="radio">
								<label>
									<input class="answer_select" type="radio" name="dapan" id='.$question['id'].' value='.$dapan[$i]['stt'].'>'.$dapan[$i]['content'].'
								</label>
							</div>
							';
						}
					}else{
						echo'
						<div class="radio">
							<label>
								<input class="answer_select" type="radio" name="dapan" id='.$question['id'].' value='.$dapan[$i]['stt'].'>'.$dapan[$i]['content'].'
							</label>
						</div>
							';
					}
					
					$i++;
				}

			echo'
					<div class="row">
						<button class="btn btn-success col-lg-2 col-lg-offset-5" name="nopbai" type="submit">Nộp Bài</button>
					</div>
				</form><br>
				<span><a href="?rt=kiemtra/question&dethi_id='.$dethi['id'].'&stt='.($question['stt']-1).'" class="btn btn-success">Preview</a></span>
				<span style="margin-left:260px;"><a href="?rt=kiemtra/question&dethi_id='.$dethi['id'].'&stt='.($question['stt']+1).'" class="btn btn-success">Next</a></span>
			</div>
		</div>
		';
	}else{
		if(isset($score['tong_so_cau_lam']) && !empty($score['tong_so_cau_lam'])){
			if($score['tong_so_cau_lam']==$dethi['socauhoi']){
				echo'
				<div class="panel panel-success">
					<div class="panel-body">
						Bạn đã hoàn thành '.$score['tong_so_cau_lam'].'/'.$dethi['socauhoi'].' câu hỏi . Vui lòng click vào <a href="?rt=kiemtra/nopbai&dethi_id='.$dethi['id'].'" class="btn btn-success">Nộp bài</a> để xem đáp án .
						Cảm ơn bạn đã tham gia bài học.
					</div>
				</div>';
			}else{
				echo'
				<div class="panel panel-success">
					<div class="panel-body">
						Bạn đã hoàn thành '.$score['tong_so_cau_lam'].'/'.$dethi['socauhoi'].' câu hỏi . Vui lòng click vào <a href="?rt=kiemtra/question&dethi_id='.$dethi['id'].'&stt=1" class="btn btn-success">Start</a> để hoành thành nốt bài kiểm tra .
						Chúc bạn làm bài tốt .
					</div>
				</div>';
			}
		}else{
			echo'
			<div class="panel panel-success">
				<div class="panel-body">
					Bạn đã sẵn sàng làm bài. Vui lòng click vào <a href="?rt=kiemtra/question&dethi_id='.$dethi['id'].'&stt=1" class="btn btn-success">Start</a> để bắt đầu bài kiểm tra 
					Chúc bạn làm bài tốt .
				</div>
			</div>';
		}	
	}
?>
<?php
	if(isset($_SESSION['level']) && $_SESSION['level']>=4){
	include'views/kiemtra/side_right.php';
	}
	include'views/kiemtra/footer.php';
?>