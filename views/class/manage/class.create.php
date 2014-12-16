<?php
    include'views/header.php';
?>
<?php
    if(isset($message)){
        echo $message;
    }
    if(!empty($errors)){
        check_error_class($errors);
    }
?>
<div class="panel panel-success">
    <div class="panel-heading"><strong>Đăng ký lớp học</strong></div>
    <div class="panel-body">
        <form method="post">
            <div>
            <label class="col-lg-3">Tên lớp học</label>
                <input type="text" name="name" id="class_name" placeholder="Tên lớp học" value="<?php
                        echo isset($_POST['name'])?$_POST['name']:'';?>">
                <i id="ajax_notify"></i>
            </div><br>
            <div>
                <label class="col-lg-3">Mô tả</label>
                <textarea name="des" placeholder="Mô tả cho lớp học của bạn" id="class_des"><?php
                        echo isset($_POST['des'])?$_POST['des']:'';?></textarea>
            </div><br>
            <div>
                <label class="col-lg-3">&nbsp;</label>
                <button class="btn btn-success" name="submit" type="submit" >Đăng ký</button>
            </div>
        </form>
    </div>
</div>
<?php
    include'views/side_bar.php';
    include'views/footer.php';
?>