</div>
    <!--  Search -->
<div class="col-lg-3">
    <div clas="row">
        <form action="?rt=search" method="post">
            <div class="input-group">
                <input type="text" class="form-control" name="keyword" placeholder="Tìm kiếm ...">
                <span class="input-group-btn">
                    <button class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        </form>
    </div>
    <!-- End search -->
    <br>
        <?php
        if(isset($_SESSION['level']) && $_SESSION['level']>=2){
            echo'
            <div class="list-group">
               
                <div class="list-group-item active">'.$class['name'].'</div>
                <a href="?rt=kiemtra" class="list-group-item">Kho đề kiểm tra</a>
                
            </div>
            ';
        }
        ?>
    <!-- <div class="row"> -->
        <div class="list-group">
            <a class="list-group-item active">Thành viên điểm cao nhất</a>
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
</div>