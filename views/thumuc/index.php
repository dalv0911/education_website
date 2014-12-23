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
                            if(!empty($menu_detail['name'])){
                                echo "
                                    <ol class='breadcrumb'>
                                        <li>
                                            <i class='glyphicon glyphicon-th-large'></i><a href='?rt=menu&id=".$menu_detail['id']."'> ".$menu_detail['name']."</a>
                                        </li>";
                                        if(!empty($thumuc['name'])){
                                            echo "
                                                <li class='active'>
                                                    <i class='glyphicon glyphicon-stats'></i> ".$thumuc['name']."
                                                 </li>
                                            ";
                                        }
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
                                                    <a href="?rt=thumuc2/create&thumuc_id='.$thumuc['id'].'" title="Thư mục mới"><span class="glyphicon glyphicon-plus"></span>Thư mục mới</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </tr>';
            				}
            			?>
            			<?php
            			 	$i=0;
            			 	while(!empty($thumuc2[$i])){
            			 		echo "<tr>";
            			 			echo"<td><a href='?rt=thumuc2&id=".$thumuc2[$i]['id']."'>".$thumuc2[$i]['name']."</a></td>";
            			 			if(isset($_SESSION['level']) && $_SESSION['level']>=4){
	            						echo "<td><a href='?rt=thumuc2/edit&id={$thumuc2[$i]["id"]}' title='Sửa'><span class='glyphicon glyphicon-edit'></span</a></td>
	            							<td><a href='?rt=thumuc2/delete&id={$thumuc2[$i]["id"]}' title='Xóa'><span class='glyphicon glyphicon-trash'></span</a></td>
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
                                            <div class="col-lg-3"><img src="upload/images/thumb_'.$pages[$i]['image_icon'].'"></div>
                                            <div class="col-lg-9">
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
            <?php
                $i=0;
                if($num_tm2>5){
                    echo'<div class="phantrang">';
                    for($i=0;$i<ceil($num_tm2/10);$i++){
                        echo'
                        <span><a href="?rt=thumuc&id='.$thumuc['id'].'&s='.$i.'">'.$i.'</a></span>
                        ';
                    }
                    echo'</div>';
                }
            ?>
        </div>
    </div>

<?php
	include'views/side_bar.php';
	include'views/footer.php';
?>