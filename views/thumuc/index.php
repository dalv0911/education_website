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
            				if(isset($_SESSION['level']) && $_SESSION['level']==3){
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
            			 			if(isset($_SESSION['level']) && $_SESSION['level']==3){
	            						echo "<td><a href='?rt=thumuc2/edit&id={$thumuc2[$i]["id"]}' title='Sửa'><span class='glyphicon glyphicon-edit'></span</a></td>
	            							<td><a href='?rt=thumuc2/delete&id={$thumuc2[$i]["id"]}' title='Xóa'><span class='glyphicon glyphicon-trash'></span</a></td>
	            							";
            						}
            			 		echo "</tr>";
            			 		$i++;
            			 	}
                            $i=0;
                            while(!empty($pages[$i])){
                                echo "<tr>";
                                    echo"<td><a href='?rt=pages&id=".$pages[$i]['id']."'>".$pages[$i]['name']."</a></td>";
                                echo "</tr>";
                                $i++;
                            }
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