<?php
	include'views/kiemtra/header.php';
?>
<div class="col-lg-8">
	<?php
        $i=0;
        echo'<div class="list-group">
                <div class="list-group-item active">5.Đưa ra danh sách 3 bài viết trước bài có ID=25.</div>
                <div class="list-group-item">
                    <center><img src="img_report/cau5.png"></center>
                </div>
        ';
        while(isset($pages[$i]) &&!empty($pages[$i])){
            echo'
            <div class="list-group-item">
                <a href="?rt=pages&id='.$pages[$i]['id'].'"><span>'.$pages[$i]['name'].'</span></a>
            </div>
            ';
            $i++;
        }
        echo'</div>';
    ?>
</div>