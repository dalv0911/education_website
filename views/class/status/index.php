<?php
    include'views/header.php';
    include'views/class/side_left.php';
?>
<?php
    if(isset($joined) && $joined=="yes"){

    }
    echo'
        <div class="panel panel-success">
            <div class="panel-body">
                <div class="show">
                    <p><a href="?rt=users&id='.$status['id'].'"><span style="font-weight:bold;">'.$status['name'].'</span></a></p>
                    <span><i style="font-size:12px;">'.$status['time_on'].'</i></span>
                    <p>'.$status['content'].'</p>';
                    if(isset($_SESSION['id']) && $_SESSION['id']==$status['user_id']){
                        echo'
                        <a class="status_edit" id='.$status['id'].' title="Edit"><i class="glyphicon glyphicon-edit"></i></a>
                        <a class="status_del" id='.$status['id'].' title="Delete"><i class="glyphicon glyphicon-trash"></i></a>';
                    }
                    $i=0;
                    echo'<div class="list-group">';
                    while(isset($comment[$i]) && !empty($comment[$i])){
                        echo'
                        <div class="list-group-item">
                            <span><a href="?rt=users&id='.$comment[$i]['user_id'].'">'.$comment[$i]['name'].'</a></span>
                            <span><i style="font-size:12px;">'.$comment[$i]['time_on'].'</i></span>';
                            if(isset($_SESSION['id']) && $_SESSION['id']==$comment[$i]['user_id']){
                                echo' <a class="del_cmt" id='.$comment[$i]['id'].'><i class="glyphicon glyphicon-trash"></i></a>';
                            }
                        echo'
                            <p>'.$comment[$i]['content'].'</p>
                        </div>
                        ';
                        $i++;
                    }
                    echo'</div>';
                    if(isset($joined) && $joined=="yes"){
                        echo'
                        <form method="post">
                            <div>
                                <textarea name="comment" placeholder="Bình luận lịch sự , tiếng việt có dấu ." style="width:100%;height:50px;border-radius: 10px;"></textarea>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-success" name="submit_cmt" value="'.$status['id'].'">Bình luận</button>
                            </div>
                        </form>
                        ';
                    }
           echo'</div>
                <div class="hidden">
                    <form method="post">
                        <textarea name="edit_content"  class="content" style="width:100%;height:100px;border-radius: 10px;">'.$status['content'].'</textarea><br>
                        <button type="submit" name="save_stt" class="btn btn-success" value="'.$status['id'].'">Save</button>
                    </form>
                </div>     
            </div>
        </div>
            ';
?>

<?php
    include'views/class/side_right.php';
    include'views/footer.php';
?>