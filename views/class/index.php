<?php
    include'views/header.php';
    include'views/class/side_left.php';
?>
<?php
    if(isset($notify)){
        echo $notify;
    }
?>
<div class="panel panel-success">
    <div class="panel-heading">
        <?php
            if($joined="no"){
                echo'Nếu bạn chưa là thành viên của lớp học , xin vui lòng gửi yêu cầu tham gia lớp học đến giáo viên phụ trách .';
            }
        ?>
    </div>
    <div class="panel-body">
        <?php
            if($joined=="no"){
        ?>
            <form method="post">
                <textarea name="content" placeholder="Lời nhắn của bạn ..." size="20"></textarea><br>
                <button type="submit" class="btn btn-success"  name="submit">Gửi yêu cầu</button>
            </form>
        <?php
            }
        ?>
    </div>
</div>
<?php
    include'views/class/side_right.php';
    include'views/footer.php';
?>