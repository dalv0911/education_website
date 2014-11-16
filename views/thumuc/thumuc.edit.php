<?php
	include'views/header.php';
?>
			<?php
				if(!empty($errors)){
					check_for_thumuc($errors);
				}
				if(isset($message)){
					echo $message;
				}
			?>
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">Thư mục mới</h3>
				</div>
				<div class="panel-body">
					<form role="form" method="post">
						<div>
							<label class="col-md-3">Tên thư mục</label>
							<input class="form-group" placeholder="Enter text " name="name" value="<?php
								echo isset($thumuc['name'])?$thumuc['name']:'';?>">
							<i id="ajax_notify"></i>
						</div>
						<div>
							<label class="col-md-3">Menu</label>
							<select class="form-group" name="menu_id">
								<option value="">Select Option</option>
								<?php
									if(isset($menu)){
										$i=0;
										while($menu[$i]!=null){
											if($menu[$i]['id']==$_POST['menu_id']|| $menu[$i]['id']==$thumuc['menu_id']){
												echo "<option value='".$menu[$i]['id']."' selected>".$menu[$i]['name']."</option>";
											}else{
												echo "<option value='".$menu[$i]['id']."'>".$menu[$i]['name']."</option>";
											}
											$i++;
										}
									}else{
										echo "<option value=1>1</option>";
									}
								?>
							</select>
						</div>
						<div>
							<label class="col-md-3">Position</label>
							<select class="form-group" name="position">
								<option value="">Select Option</option>
								<?php
									if(isset($max_position)){
										for($i=1;$i<=$max_position+1;$i++){
											if($i==$_POST['position'] ||$i==$thumuc['position'] ){
												echo "<option values='{$i}' selected>".$i."</option>";
											}else{
												echo "<option values='{$i}'>".$i."</option>";
											}	
										}
									}
								?>
							</select>
						</div>
						<div>
							<button type="submit" class="btn btn-default btn-success" name="submit">Create</button>
						</div>
					</form>
				</div>
			</div>
<?php
	include'views/side_bar.php';
	include'views/footer.php';
?>