

</div>
    <!--  Search -->
<div class="col-lg-3">
    <div clas="row">
        <div class="input-group">
            <input type="text" class="form-control" name="search">
            <span class="input-group-btn">
                <button class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
            </span>
        </div>
    </div>
    <!-- End search -->
    <br>
    <!-- <div class="row"> -->
        <div class="list-group">
            <a class="list-group-item active">Thành viên mới đăng kí</a>
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
</div>