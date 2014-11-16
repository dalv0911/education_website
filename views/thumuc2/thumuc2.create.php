<?php
	include'views/header.php';
?>
			<?php
				if(!empty($errors)){
					check_for_thumuc2($errors);
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
							<div>
								<input class="form-group" placeholder="Enter text " id="name_thumuc2" name="name" value="<?php
									echo isset($_POST['name'])?$_POST['name']:'';?>">
								<i id="ajax_notify"></i>
							</div>
						</div>
						<div>
							<label class="col-md-3">Position</label>
							<select class="form-group" name="position">
								<option value="">Select Option</option>
								<?php
									if(isset($max_position)){
										for($i=1;$i<=$max_position+1;$i++){
											if($i==$_POST['position']){
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