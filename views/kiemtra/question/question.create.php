<?php
	include'views/kiemtra/header.php';
	include'views/kiemtra/side_left.php';
?>
<div class="panel panel-success">
	<div class="panel-body">
		<?php
			if(isset($dethi['socauhoi']) &&$dethi['socauhoi']>0){
				if($stt<=$dethi['socauhoi']){
		?>
					<?php
						if(isset($ok) && $ok==1){
							echo'<span> Bạn đã viết xong câu hỏi số '.$stt.' . Vui lòng click vào chữ <a href="?rt=kiemtra/question_create&dethi_id='.$dethi['id'].'&stt='.($stt+1).'" class="btn btn-success">NEXT</a> để chuyển sang câu hỏi tiếp theo .</span>';
						}elseif($socau_hoanthanh<$dethi['socauhoi'] && $stt<$socau_hoanthanh){
							echo'<span> Bạn đã hoàn thành được '.$socau_hoanthanh.'/'.$dethi['socauhoi'].' câu hỏi .Vui lòng click vào chữ <a href="?rt=kiemtra/question_create&dethi_id='.$dethi['id'].'&stt='.($socau_hoanthanh+1).'" class="btn btn-success">NEXT</a> để hoàn thành nốt số câu hỏi còn lại .</span>';
						}elseif($socau_hoanthanh==$dethi['socauhoi']){
							echo'<span> Bạn đã hoàn thành được '.$socau_hoanthanh.'/'.$dethi['socauhoi'].' câu hỏi .</span>';
						}else{
					?>
					<form method="post">
						<div>
							<textarea class="content"name="question" placeholder="Đề bài " style="width:100%;height:100px;border-radius:10px;"><?php echo isset($_POST["question"])?$_POST["question"]:'';?></textarea>
						</div><br>
						<div>
							<input type="text" name="score" placeholder="Số điểm của câu này - number" value="<?php echo isset($_POST['score'])?$_POST['score']:'';?>">
						</div><br>
						<div>
							<textarea name="stt_1" placeholder="Đáp Án A " style="width:100%;height:50px;border-radius:10px;"><?php echo isset($_POST["stt_1"])?$_POST["stt_1"]:'';?></textarea>
							<textarea name="stt_2" placeholder="Đáp Án B " style="width:100%;height:50px;border-radius:10px;"><?php echo isset($_POST["stt_2"])?$_POST["stt_2"]:'';?></textarea>
							<textarea name="stt_3" placeholder="Đáp Án C " style="width:100%;height:50px;border-radius:10px;"><?php echo isset($_POST["stt_3"])?$_POST["stt_3"]:'';?></textarea>
							<textarea name="stt_4" placeholder="Đáp Án D " style="width:100%;height:50px;border-radius:10px;"><?php echo isset($_POST["stt_4"])?$_POST["stt_4"]:'';?></textarea>
						</div><br>
						<div>
							<select name="dapan">
								<option>Select Option</option>
								<option value="1">A</option>
								<option value="2">B</option>
								<option value="3">C</option>
								<option value="4">D</option>
							</select>
						</div><br>
						<div class="giaithich">
							<textarea name="giaithich" placeholder="Giải thích cho câu trả lời" style="width:100%;height:100px;border-radius:10px;"><?php echo isset($_POST["giaithich"])?$_POST["giaithich"]:'';?></textarea>
						</div>
						<div>
							<button name="submit" type="submit" class="btn btn-success">Viết</button>
						</div>
					</form>
				<?php
					}
				}else{
					echo'Đề thi của bạn gồm có '.$dethi['socauhoi'].' câu hỏi';
				}
			}
		?>
	</div>
</div>
<?php
	include'views/kiemtra/side_right.php';
	include'views/kiemtra/footer.php';
?>