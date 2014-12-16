<?php
    include'views/header.php';
?>
<?php
    if(isset($message)){
        echo $message;
    }
?>
<div class="panel panel-success">
    <div class="panel-heading"><strong>Thông tin lớp học</strong></div>
    <div class="panel-body">
        <form method="post" enctype="multipart/form-data">
            <div>
            <label class="col-lg-3">Tên lớp học</label>
                <input type="text" name="name" id="class_name" placeholder="Tên lớp học" value="<?php
                        echo isset($_POST['name'])?$_POST['name']:$class['name'];?>">
                <i id="ajax_notify"></i>
            </div><br>
            <div>
                <label class="col-lg-3">Ảnh mô tả</label>
                <input type="file" name="image" id="imageInput"/><br>
            </div>
            <div>
                <label class="col-lg-3">SĐT</label>
                <input type="text" name="sdt" id="class_sdt" placeholder="Số điện thoại" value="<?php
                        echo isset($_POST['sdt'])?$_POST['sdt']:$class['sdt'];?>">
            </div><br>
            <div>
                <label class="col-lg-3">Email</label>
                <input type="text" name="email" id="class_email" placeholder="Email lớp học" value="<?php
                        echo isset($_POST['email'])?$_POST['email']:$class['email'];?>">
            </div><br>
            <div>
                <label class="col-lg-3">Địa chỉ lớp học</label>
                <input type="text" name="address" id="class_address" placeholder="Địa chỉ lớp học" value="<?php
                        echo isset($_POST['address'])?$_POST['address']:$class['address'];?>">
            </div><br>
            <div>
                <label class="col-lg-3">Mô tả</label>
                <textarea name="des" placeholder="Mô tả cho lớp học của bạn" id="class_des"><?php
                        echo isset($_POST['des'])?$_POST['des']:$class['des'];?></textarea>
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