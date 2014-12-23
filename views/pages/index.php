<?php
    include'views/header.php';
?>
<div class="panel panel-green">
    <div class="panel-heading">
        <h2 class="panel-title"><strong><?php echo isset($pages['name'])?$pages['name']:"";?></strong></h2>
    </div>
    <div class="panel-body">
        <?php
            if(isset($_SESSION['id'])){
        ?>
        <form method="post">
            <label>
                <input type="checkbox" class="favorite" id="<?php echo $pages['id'];?>" <?php if(isset($is_checked) &&$is_checked==1)echo 'checked="checked"';?>>Yêu thích
            </label>
        </form>
        <?php
            }   
        ?>
        <?php
            if(!empty($pages)){
                    echo "
                        <div class='row'>
                            ";
                    echo
                            "<div class='col-lg-10'>
                                
                                <p style='font-size:13px;'>Đăng <b>".$pages['time_on']."</b> bởi <b><a href='?rt=users&id=".$pages["author_id"]."'>".$pages['user_name']."</a></b></p>";
                                if(isset($_SESSION['level']) && $_SESSION['level']>=4){
                                    echo "<a href='?rt=pages/edit&id=".$pages['id']."' title='Sửa bài viết'><span class='glyphicon glyphicon-edit'></span></a>&nbsp;
                                          <a href='?rt=pages/delete&id=".$pages['id']."'title='Delete bài viết'><span class='glyphicon glyphicon-trash'></span></a>";
                                }
                        echo"</div>
                        </div>";
                        // if(!empty($pages['mp3'])){
                        //     echo
                        //     "<div class='row'>
                        //         <div class='col-lg-3 col-lg-offset-3'>
                        //             // <audio controls>
                        //             // <source src='data/mp3/".$pages['mp3']."' type='audio/wav'>
                        //             // </audito>
                        //         </div>
                        //     </div>";
                        // }
                    echo"<div class='row'>
                            <div class='col-lg-11'>
                                ".$pages['content']."
                            </div>
                        </div>";
            }
        ?>
    </div>
</div>
    <?php
        $i=0;
        echo'<div class="list-group">';
        while(isset($page_around[$i]) &&!empty($page_around[$i])){
            echo'
            <div class="list-group-item">
                <a href="?rt=pages&id='.$page_around[$i]['id'].'"><span>'.$page_around[$i]['name'].'</span></a>
            </div>
            ';
            $i++;
        }
        echo'</div>';
    ?>
        <div class="panel panel-green">
            <div class="panel-heading">
                <h4>Bình luận của bạn </h4>
            </div>
            <div class="panel-body">
            <?php
                $i=0;
                while(isset($comment[$i]) && $comment[$i]!=null){
                    echo'<div class="alert alert-success"><i style="color:red;font-size:15px;"><strong>'.$comment[$i]['name'].'</strong></i><i style="font-size:10px;">
                        '.$comment[$i]['time_on'].'</i>
                        <br>
                        '.$comment[$i]['content'];
                        if(isset($_SESSION['id']) && $_SESSION['id']==$comment[$i]['user_id']){
                            echo'<br><a class="remove" id="'.$comment[$i]['id'].'">Delete</a>';
                        }
                    echo'</div>';
                    $i++;
                }
            ?>
            
<?php
    if(isset($_SESSION['id'])){
?>
            <form method="post">
                <div>
                    <textarea name="comment" placeholder="Bình luận lịch sự , tiếng việt có dấu ." style="width:100%;height:70px;border-radius: 10px;"></textarea>
                </div>
                <div>
                    <button type="submit" class="btn btn-success" name="submit">Bình luận</button>
                </div>
            </form>
            
<?php
    }else{
        echo 'Bạn phải là thành viên thì mới có thể tham gia bình luận .';
    }
?>
            </div>
        </div>

<?php
    include'views/side_bar.php';
    include'views/footer.php';
?>