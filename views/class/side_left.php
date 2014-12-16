	</div>
</div>
<div class="col-lg-3">
	<div class="row">
		<div class="action_customer">
			<div class="cen">
				<?php
				echo'
				<h2 class="cen"><a href="?rt=class&id='.$class['id'].'">';?><?php echo $class['name']?></a></h2>
				<?php
				echo '<img src="upload/class/thumb_'.$class['image'].'" id="loading-img" />';
				?><br>
				<div>
					<i style="color:#329349;"><?php echo isset($class['des'])?$class['des']:'';?></i>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
	    <div class="list-group">
	        <p class="list-group-item">Số lượng học viên : <?php if(isset($class['num_users'])) echo $class['num_users'];?></p>
	        <p class="list-group-item">Giáo Viên : <strong><?php echo '<a href="?rt=users&id='.$class['giao_vien_id'].'">'.$class['giao_vien'].'</a>';?></strong></p>
	        <p class="list-group-item">SDT: <i style="color:#269607;font-weight:bold;"><?php echo !empty($class['sdt'])?$class['sdt']:'';?></i></p>
	        <p class="list-group-item">Email: <?php echo !empty($class['email'])?$class['email']:'';?></p>
	        <p class="list-group-item">Địa chỉ : <?php echo !empty($class['address'])?$class['address']:'';?></p>
	        <p class="list-group-item">Ngày mở lớp : <?php echo $class['time_on'];?></p>
	    </div>
	    
	</div>
</div>
<div class="col-lg-6">