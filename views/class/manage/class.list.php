<?php
    include'views/header.php';
?>
<div class="panel panel-success">
    <div class="panel-heading"><strong>Danh sách các lớp học.</strong></div>
    <div class="panel-body">
        <?php
            $i=0;
            while(isset($class[$i]['id']) && !empty($class[$i]['id'])){
                echo'<div class="row">
                <div class="col-lg-2"><img src="upload/class/thumb_'.$class[$i]['image'].'" alt="'.$class[$i]['name'].'"></div>
                <div class="col-lg-5">
                    <p><strong><a href="?rt=class&id='.$class[$i]['id'].'">'.$class[$i]['name'].'</a></strong></p>
                    <p>'.$class[$i]['des'].'</p>
                    <i>'.$class[$i]['time_on'].'</i><br>
                    <a href="?rt=class/edit&id='.$class[$i]['id'].'"><i class="glyphicon glyphicon-edit"></i></a>
                    <a href="?rt=class/del&id='.$class[$i]['id'].'"><i class="glyphicon glyphicon-trash"></i></a>
                </div><br></div>
                ';
                $i++;
            }
        ?>
    </div>
</div>
<?php
    include'views/side_bar.php';
    include'views/footer.php';
?>