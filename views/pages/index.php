<?php
    include'views/header.php';
?>
<div class="panel panel-info">
    <div class="panel-heading">
        <h2 class="panel-title"><strong><?php echo isset($pages['name'])?$pages['name']:"";?></strong></h2>
    </div>
    <div class="panel-body">
        <?php
            if(!empty($pages)){
                    echo "
                        <div class='row'>
                            ";
                    echo
                            "<div class='col-lg-10'>
                                
                                <p style='font-size:13px'>Đăng <b>".$pages['time_on']."</b> bởi <b>".$pages['user_name']."</b></p>";
                                if(isset($_SESSION['level']) && $_SESSION['level']==3){
                                    echo "<a href='?rt=pages/edit&id=".$pages['id']."' title='Sửa bài viết'><span class='glyphicon glyphicon-edit'></span></a>&nbsp;
                                          <a href='?rt=pages/delete&id=".$pages['id']."'title='Delete bài viết'><span class='glyphicon glyphicon-trash'></span></a>";
                                }
                        echo"</div>
                        </div>";
                        if(!empty($pages['mp3'])){
                            echo
                            "<div class='row'>
                                <div class='col-lg-3 col-lg-offset-3'>
                                    <audio controls>
                                    <source src='data/mp3/".$pages['mp3']."' type='audio/wav'>
                                    </audito>
                                </div>
                            </div>";
                        }
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
    include'views/side_bar.php';
    include'views/footer.php';
?>