    <?php
        include'views/header.php';
        include'views/class/side_left.php';
    ?>
    <?php
        if(isset($notify)){
            echo $notify;
        }
    ?>
    <?php
        if(isset($joined) && $joined=="no"&& !isset($_POST['submit'])){
    ?>
    <div class="panel panel-success">
        <div class="panel-heading">
            Hiện tại bạn chưa là thành viên của lớp học , xin vui lòng gửi yêu cầu tham gia lớp học đến giáo viên phụ trách 
        </div>
        <div class="panel-body">
            <form method="post">
                <button type="submit" class="btn btn-success"  name="submit">Gửi yêu cầu</button>
            </form>
        </div>
    </div>
    <?php
        }elseif(isset($joined) && $joined=="yes"){
    ?>
        <?php
            if(isset($errors)){
                check_error_class($errors);
            }
            if(isset($message_status)){
                echo $message_status;
            }
        ?>
    <div class="panel panel-success">
        <div class="panel-heading">
        </div>
        <div class="panel-body">
            <form method="post">
                <textarea name="content" class="content" placeholder="Luôn luôn lắng nghe , hãy biết chia sẻ ."  style="width:100%;height:100px;border-radius: 10px;"></textarea><br>
                <button type="submit" name="post" class="btn btn-success">Đăng</button>
            </form>
        </div>
    </div>
    <?php
        }
        $i=0;
        while(isset($status[$i]) && !empty($status[$i])){
            echo'
            <div class="panel panel-success">
                <div class="panel-body">
                    <div class="show">
                        <p><a href="?rt=users&id='.$status[$i]['id'].'"><span style="font-weight:bold;">'.$status[$i]['name'].'</span></a></p>
                        <span><i style="font-size:12px;">'.$status[$i]['time_on'].'</i></span>
                        <p>'.$status[$i]['content'].'</p>';
                        if(isset($_SESSION['id']) && $_SESSION['id']==$status[$i]['user_id']){
                            echo'
                            <a class="status_edit" id='.$status[$i]['id'].' title="Edit"><i class="glyphicon glyphicon-edit"></i></a>
                            <a class="status_del" id='.$status[$i]['id'].' title="Delete"><i class="glyphicon glyphicon-trash"></i></a>';
                        }
                        if(isset($joined) && $joined=="yes"){
                            echo'
                            <p><a href="?rt=class/status&id='.$class['id'].'&stt_id='.$status[$i]['id'].'">Bình Luận</a></p>
                            ';
                        }
                echo'</div>
                    <div class="hidden">
                        <form method="post">
                            <textarea name="edit_content"  class="content" style="width:100%;height:100px;border-radius: 10px;">'.$status[$i]['content'].'</textarea><br>
                            <button type="submit" name="save_stt" class="btn btn-success" value="'.$status[$i]['id'].'">Save</button>
                        </form>
                    </div>     
                </div>
            </div>
            ';
            $i++;
        }
    ?>
    <?php
        include'views/class/side_right.php';
        include'views/footer.php';
    ?>