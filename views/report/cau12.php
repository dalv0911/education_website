<?php
    include'views/kiemtra/header.php';
?>
<!-- <div class="row"> -->
        <div class="list-group col-lg-8">
            <a class="list-group-item active">12.Đưa ra 5 thành viên có thành tích cao nhất trong lớp học có ID=6.</a>
            <div class="list-group-item">
                <img src="img_report/cau12.png">
            </div>
            <?php
                $i=0;
                while(isset($users[$i]) && !empty($users[$i])){
                    if(!empty($users[$i]['name'])){
                        echo "<a href='?rt=users&id=".$users[$i]["id"]."' class='list-group-item'>".$users[$i]['name']." 
                            <span style='color:red;'>".$users[$i]["score"]." điểm</span>
                            </a>";
                    }else if(!empty($users[$i]['username'])){
                        echo "<a href='?rt=users&id=".$users[$i]["id"]."' class='list-group-item'>".$users[$i]['username']."
                            <span style='color:red;'>".$users[$i]["score"]." điểm</span>
                            </a>";
                    }else{
                        echo "<a href='?rt=users&id=".$users[$i]["id"]."' class='list-group-item'>Vô Danh
                            <span style='color:red;'>".$users[$i]["score"]." điểm</span>
                            </a>";
                    }
                    $i++;
                }
            ?>
            
        </div>
    <!-- </div> -->