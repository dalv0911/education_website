<?php
	include'views/header.php';
?>

	<div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><?php echo isset($title)?$title:'';?></h3>
        </div>
        <div class="panel-body">
            <div class="table-responsive">
            	<table class="table table-hover table-striped">
            		<thead>
            		</thead>
            		<tbody>
            			<?php
                            if(isset($menu_detail['name'])){
                                echo "
                                    <ol class='breadcrumb'>
                                        <li>
                                            <span><i class='glyphicon glyphicon-th-large'></i><a href='?rt=menu&id=".$menu_detail['id']."'> ".$menu_detail['name']."</a></span>
                                        </li>";                                   
                                    echo "</ol>";
                            }
                        ?>
            			<?php
            				if(isset($_SESSION['level']) && $_SESSION['level']>=4){
            					echo '<tr>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="?rt=pages/create" title="Viết bài mới"><span class="glyphicon glyphicon-pencil"></span>Viết bài mới</a>
                                                </li>
                                                <li>
                                                    <a href="?rt=thumuc/create" title="Thư mục mới"><span class="glyphicon glyphicon-plus"></span>Thư mục mới</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </tr>';
            				}
            			?>
            			<?php
            			 	$i=0;
            			 	while(!empty($thumuc[$i])){
            			 		echo "<tr>";
            			 			echo"<td><a href='?rt=thumuc&id=".$thumuc[$i]['id']."'>".$thumuc[$i]['name']."</a></td>";
            			 			if(isset($_SESSION['level']) && $_SESSION['level']==3){
	            						echo "<td><a href='?rt=thumuc/edit&id={$thumuc[$i]["id"]}' title='Sửa'><span class='glyphicon glyphicon-edit'></span</a></td>
	            							<td><a href='?rt=thumuc/delete&id={$thumuc[$i]["id"]}' title='Xóa'><span class='glyphicon glyphicon-trash'></span</a></td>
	            							";
            						}
            			 		echo "</tr>";
            			 		$i++;
            			 	}
            			 	$i=0;
                            echo'<div class="list-group">';
                            while(!empty($pages[$i])){
                                echo'<div class="list-group-item">
                                        <div class="row" style="padding-left:20px;"><a href="?rt=pages&id='.$pages[$i]['id'].'"><span style="font-size:20px;font-weight:bold;">'.$pages[$i]['name'].'</span></a></div>
                                        <div class="row">
                                            <div class="col-lg-3"><img src="upload/images/'.$pages[$i]['image_icon'].'"></div>
                                            <div class="col-lg-8" style="padding-left:25px;">
                                                <p>'.$pages[$i]['des'].'</p>
                                                <span>Vào lúc :<i style="font-size:12px;">'.$pages[$i]['time_on'].'</i> </span>
                                                <span>- Bởi :<a href="?rt=users&id='.$pages[$i]['author_id'].'"><i style="font-weight:bold;"> '.$pages[$i]['user_name'].'</i></a></span>
                                            </div>
                                        </div>
                                    </div>';
                                $i++;
                            }
                            echo'</div>';
            			 ?>
            		</tbody>
            	</table>
            </div>
        </div>
    </div>

<?php
	include'views/side_bar.php';
	include'views/footer.php';
?>