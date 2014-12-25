<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-8">
<div class="list-group">
	<?php
		echo'
			<a href="?rt=report/cau1"class="list-group-item">1.Show danh sách menu sắp xếp theo thứ tự position .</a>
			<a href="?rt=report/cau2"class="list-group-item">2.Show danh sách các thư mục cấp 1 trong menu THƯ VIỆN.</a>
			<a href="?rt=report/cau3"class="list-group-item">3.Đưa ra kết quả tìm kiếm bài viết với KeyWord="tieng nhat" *Tối đa 4 bản ghi trả về*</a>
			<a href="?rt=report/cau4"class="list-group-item">4.Đưa ra danh sách 5 thành viên mới đăng ký .</a>
			<a href="?rt=report/cau5"class="list-group-item">5.Đưa ra danh sách 3 bài viết trước bài có ID=25.</a>
			<a href="?rt=report/cau6"class="list-group-item">6.Để có thể tham gia vào lớp học <span style="color:red;font-weight:bold;">JP-2014-N2</span> . 
				Thành viên cần gửi 1 thông báo đến cho<span style="color:red;font-weight:bold;"> Giáo Viên phụ trách</span>
				 lớp N2 đó 1 thông báo Xin Join vào lớp học . Ngoài Giáo Viên là người nhận được thông báo đó thì các 
				 <span style="color:red;font-weight:bold;">Thành viên trong lớp học </span> JP-2014-N2 cũng cần nhận được thông báo .
				 <br>Yêu cầu: Chỉ cần biết ID users đều có thể lấy được thông báo bất kể đó là Giáo Viên ,Thành Viên hay là Người yêu cầu
				  tham gia lớp học .</a>
			<a href="?rt=report/cau9"class="list-group-item">7.Đưa ra lịch sử học tập của thành viên có ID=1</span></a>
			<a href="?rt=report/cau10"class="list-group-item">8.Đưa ra các bài viết mà thành viên có ID=1 yêu thích.</a>
			<a href="?rt=report/cau11"class="list-group-item">9.Đưa ra tất cả thông tin của lớp học có ID=6.</a>
			<a href="?rt=report/cau12"class="list-group-item">10.Đưa ra 5 thành viên có thành tích cao nhất trong lớp học có ID=6.</a>
			<a href="?rt=report/cau13"class="list-group-item">11.Đưa ra danh sách thành viên tham gia lớp học ID=6 
																	mà không tham gia lớp học ID=5.</a>
			<a href="?rt=report/cau14"class="list-group-item">12.Đưa ra danh sách tất cả giao viên và số lượng đề thi do giáo viên đó soạn</a>
			<a href="?rt=report/cau15"class="list-group-item">13.Đưa ra số điểm mà thành viên có ID=1 đạt được trong đề thi có DETHI_ID=1.</a>
			<a href="?rt=report/cau16"class="list-group-item">14.Đưa ra số lượng user trả lời đúng và số lượng user trả lời sai câu hỏi thứ 1 (stt=1) trong Đềthi_id = 1 </a>

		';
	?>
</div>
</div>