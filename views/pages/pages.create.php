<?php
	include'views/header.php';
?>
<?php
			check_error_pages($errors);
			if(isset($image_error)){
				echo $image_error;
			}
			if(isset($mp3_error)){
				echo $mp3_error;
			}
			if(isset($message)){
				echo $message;
			}
		?>	
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">Viết bài mới</h3>
			</div>
			<div class="panel-body">
				<form role="form" method="post" enctype="multipart/form-data">
					<div>
						<label class="col-lg-3">Name</label>
						<input class="form-group" type="text" placeholder=" Enter text " id="page_name" name="name" value="<?php
								echo isset($_POST['name'])?$_POST['name']:''?>"/>
						<i id="ajax_notify"></i>
					</div>
					<div>
						<label class="col-lg-3">Title</label>
						<input class="form-group" type="text" placeholder=" Enter text " name="title" value="<?php
								echo isset($_POST['title'])?$_POST['title']:''?>"/>
					</div>
					<div>
						<label class="col-lg-3">Chuyên mục</label>
						<select class="form-group" name="chuyen_muc">
							<option value="">Select Option</option>
							<?php
								$i=0;
								while(!empty($menu[$i])){
									if(isset($_POST['chuyen_muc']) && $_POST['chuyen_muc']-100==$menu[$i]['id']){
										echo "<option value='".(100+$menu[$i]['id'])."' selected>".$menu[$i]['name']."</option>";
									}else echo "<option value='".(100+$menu[$i]['id'])."'>".$menu[$i]['name']."</option>";
									$j=0;
									while(isset($thumuc[$j]) && !empty($thumuc[$j])){
										if($menu[$i]['id']==$thumuc[$j]['menu_id']){
											echo "<option value='".(1000+$thumuc[$j]['id'])."'> ---".$thumuc[$j]['name']."</option>";
										}
										$k=0;
										while(isset($thumuc2[$k]) &&!empty($thumuc2[$k])){
											if($thumuc[$j]['id']==$thumuc2[$k]['thumuc_id']){
												echo "<option value='".(10000+$thumuc2[$k]['id'])."'> ------".$thumuc2[$k]['name']."</option>";
											}
											$k++;
										}
										$j++;
									}
									$i++;
								}
							?>
						</select>
					</div>
					<div>
						<label class="col-md-3">Ảnh mô tả</label>
						<input type="file" name="image_icon"/><br>
					</div>
					<div>
						<label class="col-md-3">File Nghe</label>
						<input type="file" name="mp3"/><br>
					</div>
						<textarea class="content" name="content" row="6"placeholder="Nội dung bài viết"><?php
								echo isset($_POST['content'])?$_POST['content']:''?></textarea>
					<div>
						<label></label>
						<textarea class="form-control" row="3" name="des" placeholder="Mô tả bài viết"><?php
								echo isset($_POST['des'])?$_POST['des']:''?></textarea>
					</div>
					<div>
						<label></label>
						<textarea class="form-control" row="3" name="keyword" 
							placeholder="Keyword - Từ khóa cho bài viết"><?php
								echo isset($_POST['keyword'])?$_POST['keyword']:''?></textarea>
					</div>
					<div>
						<label></label>
						<textarea class="form-control" row="3" name="meta" placeholder="Meta bài viết "><?php
								echo isset($_POST['meta'])?$_POST['meta']:''?></textarea><br>
					</div>
					<div class="col-lg-3">
						<button type="submit" class="btn btn-default btn-success" name="submit">Create</button>
					</div>
				</form>
			</div>
		</div>


<?php
	include'views/side_bar.php';
	include'views/footer.php';
?>