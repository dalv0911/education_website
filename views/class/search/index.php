<?php
    include'views/header.php';
    include'views/users/side_left.php';
?>
<div class="col-lg-6">
<div class="panel panel-success">
    <div class="panel-heading"><strong>Danh sách các lớp học hiện đang hoạt động trên website .</strong></div>
    <div class="panel-body">
        <?php
            $i=0;
            while(isset($class[$i]['id']) && !empty($class[$i]['id'])){
                echo'<div class="row">
                <div class="col-lg-2"><img src="upload/class/thumb_'.$class[$i]['image'].'" alt="'.$class[$i]['name'].'"></div>
                <div class="col-lg-5 col-lg-offset-1">
                    <p><strong><a href="?rt=class&id='.$class[$i]['id'].'">'.$class[$i]['name'].'</a></strong></p>
                    <p>'.$class[$i]['des'].'</p>
                    <i>'.$class[$i]['time_on'].'</i><br>
                </div><br></div>
                ';
                $i++;
            }
        ?>
    </div>
</div>
</div>
<?php
    include'views/footer.php';
?>