<?php
    include'views/kiemtra/header.php';
?>
<!-- <div class="row"> -->
        <div class="list-group col-lg-10">
            <a class="list-group-item active">4.Đưa ra danh sách 5 thành viên mới đăng ký .</a>
            <div class="list-group-item">
                <center><img src="img_report/cau4.png"></center>
            </div>
            <?php
                $i=0;
                while(isset($users[$i])){
                    if(!empty($users[$i]['name'])){
                        echo "<a href='?rt=users&id=".$users[$i]["id"]."' class='list-group-item'>".$users[$i]['name']."</a>";
                    }else if(!empty($users[$i]['username'])){
                        echo "<a href='?rt=users&id=".$users[$i]["id"]."' class='list-group-item'>".$users[$i]['username']."</a>";
                    }else{
                        echo "<a href='?rt=users&id=".$users[$i]["id"]."' class='list-group-item'>Vô Danh</a>";
                    }
                    $i++;
                }
            ?>
            
        </div>
    <!-- </div> -->