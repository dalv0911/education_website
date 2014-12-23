</div>
<!-- END BODY -->
<div class="col-lg-3">
	<div class="row">
		<div class="list-group">
		    	<?php
		    		if($_SESSION['level']==4 or $_SESSION['level']==5){
			    		echo'<p class="list-group-item active">Quản lý lớp học</p>';
			    		echo'<a href="?rt=class/create" class="list-group-item"><i class="glyphicon glyphicon-collapse-up"></i> Đăng ký lớp học</a>
			    			<a href="?rt=class/danhsach" class="list-group-item"><i class="glyphicon glyphicon-fire"></i> Quản trị lớp học</a>
			    		';

			    	}
		    	?>
		</div><br>    
		<div class="list-group">
		   	<p class="list-group-item active">Lớp học</p>
		   	<a href="?rt=class/search" class="list-group-item"><i class="glyphicon glyphicon-search"></i> Tìm lớp học</a>
		   	<?php
			   	$i=0;
			   	while(isset($my_class[$i]['id']) && !empty($my_class[$i]['id'])){
				   	echo'
				   	<a href="?rt=class/detail&id='.$my_class[$i]['id'].'" class="list-group-item"><i class="glyphicon glyphicon-fire"></i>'.$my_class[$i]['name'].'</a>
				   	';
				   	$i++;
			   	}
		   	?>
		</div>
		<?php
			echo'
			<div class="list-group">
		    	<a href="" class="list-group-item active">Bài học của thành viên này</a>
		    	<a href="?rt=users/favorites&id='.$users['id'].'" class="list-group-item"><i class="glyphicon glyphicon-heart"></i> Bài học yêu thích</a>
		    	<a href="?rt=users/history&id='.$users['id'].'" class="list-group-item"><i class="glyphicon glyphicon-time"></i> Lịch sử học tập</a>
	    	</div>
	    	<div class="list-group">
		    	<p class="list-group-item active">Quản lý tài khoản</p>
		    	<a href="?rt=users/info&id='.$users['id'].'" class="list-group-item"><i class="glyphicon glyphicon-link"></i> Thông tin tài khoản</a>
		    	<a href="?rt=users/gallery&id='.$users['id'].'" class="list-group-item"><i class="glyphicon glyphicon-user"></i> Thay đổi hình đại diện</a>
		    	<a href="" class="list-group-item"><i class="glyphicon glyphicon-edit"></i> Thay đổi chữ ký</a>
		    	<a href="" class="list-group-item"><i class="glyphicon glyphicon-cog"></i> Thay đổi mật khẩu</a>
	    </div><br>';
		?>
	</div>
</div>