	</div>
</div>
<div class="col-lg-3">
	<div class="row">
		<div class="action_customer">
			<div class="cen">
				<?php
				echo'
				<h2 class="cen"><a href="?rt=users&id='.$users['id'].'">';?><?php echo isset($users['name'])?$users['name']:'Vô Danh';?></a></h2>
				<!-- <h3 class="live cen">ONLINE</h3> -->
				<?php
				echo '<img src="upload/avatar/thumb_'.$users['avatar'].'" id="loading-img" />
				
				<h4><strong><i style="color:red;">'.$vaitro.'</i></strong></h4>';
				?>
				<div>
					<p><?php echo isset($users['des'])?$users['des']:'';?></p>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
	    <div class="list-group">
	        <p class="list-group-item">Giới tính : <?php if(isset($users['gender'])) echo gender($users['gender']);?></p>
	        <p class="list-group-item">Địa chỉ : <?php if(!empty($users['address'])) echo $users['address'];?></p>
	        <p class="list-group-item">Trường: <?php if(!empty($users['state'])) echo $users['state'];?></p>
	        <p class="list-group-item">Điểm thành tích: <?php if(!empty($users['score'])) echo $users['score'];?></p>
	        <p class="list-group-item">Tham gia được: <?php if(isset($users['time_on']))echo diff_time($users['time_on']);?></p>
	        <?php
	        	if(isset($_SESSION['id'],$users['id']) &&$_SESSION['id']==$users['id']){
	        
	        echo	'<a href="?rt=users/info&id='.$users['id'].'" class="list-group-item" style="color:#0080A0;font-weight:bold;">Xem thông tin cá nhân</a>';
	       	?>
	        	<br>
	        	<div class="cen">
	        	  	<a href="?rt=logout"><button class="btn btn-lg btn-danger">Thoát tài khoản</button></a>
	        	</div>
	        <?php 
	    		}
	    	?>
	    </div>	    
	</div>
</div>
<div class="col-lg-6">