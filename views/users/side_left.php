	</div>
</div>
<div class="col-lg-3">
	<div class="row">
		<div class="action_customer">
			<div class="cen">
				<h2 class="cen"><?php echo isset($users['name'])?$users['name']:'Vô Danh';?></h2>
				<h3 class="live cen">ONLINE</h3>
				<?php
				echo '<img src="upload/avatar/thumb_'.$users['avatar'].'" id="loading-img" />';
				?>
				<h4>Thành viên <strong><i style="color:red;">VIP</i></strong></h4>
				<div>
					<p><?php echo isset($users['des'])?$users['des']:'';?></p>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
	    <div class="list-group">
	        <p class="list-group-item">Giới tính : <?php if(isset($users['gender'])) echo gender($users['gender']);?></p>
	        <p class="list-group-item">Bài Viết :</p>
	        <p class="list-group-item">Sổ học bạ </p>
	        <p class="list-group-item">Tham gia được: <?php $time=time();if(isset($users['time_on']))echo caltime($time,$users['time_on'])?> ngày </p>
	        <p class="list-group-item">Online cách đây : xx giây trước </p>
	        <?php
	        	if(isset($_SESSION['id'],$users['id']) &&$_SESSION['id']==$users['id']){
	        
	        echo	'<a href="?rt=users/info&id='.$users['id'].'" class="list-group-item" style="color:#0080A0;font-weight:bold;">Xem thông tin cá nhân</a>';
	       	?>
	        	<br>
	        	<div class="cen">
	        	  	<a href="?rt=logout"><button class="btn btn-lg btn-danger">Thoát tài khoản</button></a>
	        	</div>
	    </div>
	    <div class="list-group">
	    	<?php
		    	echo'<a href="?rt=users/info&id='.$users['id'].'" class="list-group-item active">Quản lý tài khoản</a>
		    	<a href="" class="list-group-item"><i class="glyphicon glyphicon-link"></i> Thông tin tài khoản</a>
		    	<a href="?rt=users/gallery&id='.$users['id'].'" class="list-group-item"><i class="glyphicon glyphicon-user"></i> Thay đổi hình đại diện</a>
		    	<a href="" class="list-group-item"><i class="glyphicon glyphicon-edit"></i> Thay đổi chữ ký</a>
		    	<a href="" class="list-group-item"><i class="glyphicon glyphicon-cog"></i> Thay đổi mật khẩu</a>
	    	
	    </div><br>
	    <div class="list-group">
	    	<a href="" class="list-group-item active">Bài học của thành viên này</a>
	    	<a href="" class="list-group-item"><i class="glyphicon glyphicon-heart"></i> Bài học yêu thích</a>
	    	<a href="?rt=users/history&id='.$users['id'].'" class="list-group-item"><i class="glyphicon glyphicon-time"></i> Lịch sử học tập</a>
	    </div>';
	    
	    	}
	    ?>
	</div>
</div>