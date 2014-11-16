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
                            if(!empty($BreadCrumb['menu_name'])){
                                echo "
                                    <ol class='breadcrumb'>
                                        <li>
                                            <i class='glyphicon glyphicon-th-large'></i><a href='?rt=menu&id=".$BreadCrumb['menu_id']."'> ".$BreadCrumb['menu_name']."</a>
                                        </li>";
                                        if(!empty($BreadCrumb['thumuc_name'])){
                                            echo "
                                                <li>
                                                    <i class='glyphicon glyphicon-stats'></i><a href='?rt=thumuc&id=".$BreadCrumb['thumuc_name']."'>".$BreadCrumb['thumuc_name']."
                                                 </li>
                                            ";
                                        }
                                        if(!empty($BreadCrumb['thumuc2_menu'])){
                                            echo "
                                                <li class='active'>
                                                    <i class='glyphicon glyphicon-stats'>".$BreadCrumb['thumuc2_name']."
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
                                            </ul>
                                        </li>
                                    </tr>';
            				}
            			?>
            			<?php
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