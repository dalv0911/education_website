<?php
	include "views/header.php";
	include "views/users/side_left.php";
?>
<?php
	if(isset($message_status)){
		echo $message_status;
	}
	if(isset($errors)){
        check_error_class($errors);
    }
	if(isset($_SESSION['id']) && $_SESSION['id']==$users['id']){
?>
	<div class="panel panel-success">
		<div class="panel-body">
		    <form method="post">
		        <textarea name="content" placeholder="Luôn luôn lắng nghe , hãy biết chia sẻ ." style="width:100%;height:100px;border-radius: 10px;"></textarea><br>
		        <button type="submit" name="post" class="btn btn-success">Đăng</button>
		    </form>
		</div>
	</div>
<?php
	}
?>
<?php
        $i=0;
        while(isset($status[$i]) && !empty($status[$i])){
            echo'
            <div class="panel panel-success">
                <div class="panel-body">
                    <div class="show">
                        <p><a href="?rt=users&id='.$status[$i]['id'].'"><span style="font-weight:bold;">'.$status[$i]['name'].'</span></a></p>
                        <p>'.$status[$i]['content'].'</p>';
                        if(isset($_SESSION['id']) && $_SESSION['id']==$status[$i]['user_id']){
                            echo'
                            <a class="status_edit" id='.$status[$i]['id'].' title="Edit"><i class="glyphicon glyphicon-edit"></i></a>
                            <a class="status_del" id='.$status[$i]['id'].' title="Delete"><i class="glyphicon glyphicon-trash"></i></a>';
                        }
                echo'</div>
                    <div class="hidden">
                        <form method="post">
                            <textarea name="edit_content" style="width:100%;height:100px;border-radius: 10px;">'.$status[$i]['content'].'</textarea><br>
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
	if(isset($_SESSION['id']) && $_SESSION['id']==$users['id']){
		include "views/users/side_right.php";
	}
	include "views/footer.php";
?>