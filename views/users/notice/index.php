<?php
	include 'views/header.php';
	include 'views/users/side_left.php';
?>
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3>Thông báo .</h3>
		</div>
		<div class="panel-body">
			<?php
				$i=0;
				while(isset($notice[$i]['id']) && !empty($notice[$i]['id'])){
					echo'
					<div class="alert alert-success">
						<a href="?rt=users&id='.$notice[$i]['id_from'].'">'.$notice[$i]['name_from'].'</a>
					';
						if($notice[$i]['type_id']==1){
							echo'đã yêu cầu tham gia lớp học ';
						}elseif($notice[$i]['type_id']==2 && $_SESSION['id']==$notice[$i]['id_to']){
							echo'đã cho phép bạn tham gia lớp học ';
						}elseif($notice[$i]['type_id']==2 && $_SESSION['id']!=$notice[$i]['id_to']){
							echo 'đã cho phép bạn <a href="?rt=users&id='.$notice[$i]['id_to'].'">'.$notice[$i]['name_to'].'</a> tham gia lớp học ';
						}
					echo'
						<a href="?rt=class&id='.$notice[$i]['id_class'].'">'.$notice[$i]['name_class'].'</a><br>
						<i>'.$notice[$i]['time_on'].'</i>'

					;
					if($notice[$i]['type_id']==1){
						echo '
							<a class="accept" id='.$notice[$i]['id'].' title="Accept"><i class="glyphicon glyphicon-ok"></i></a>
							<a class="reject" id='.$notice[$i]['id'].' title="Reject"><i class="glyphicon glyphicon-remove"></i></a>
						';
					}else if($notice[$i]['type_id']>=2){
						echo'
							<a class="hide_notify" id='.$notice[$i]['id'].' title="Hide"><i class="glyphicon glyphicon-eye-close"></i></a>
							<a class="del_notify" id='.$notice[$i]['id'].' title="Delete"><i class="glyphicon glyphicon-trash"></i></a>
						';
					}
					echo'
					</div>';
					$i++;
				}
			?>
		</div>
	</div>
<?php
	include 'views/users/side_right.php';
	include 'views/footer.php';
?>