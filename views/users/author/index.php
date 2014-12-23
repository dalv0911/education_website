<?php
	include'views/header.php';
?>
<?php
    if(isset($result[0]) && !empty($result[0])){
        echo'
            <div class="panel panel-success">
                <div class="panel-heading">Bài viết của tác giả :'.$result[$i]['author'].'</div>
                <div class="panel-body">
                ';
                $i=0;
                while(isset($result[$i]) && !empty($result[$i])){
                    echo'<a href="?rt=pages&id='.$result[$i]['page_id'].'"><strong>'.$result[$i]['page_name'].'</strong></a>
                            <p>'.$result[$i]['des'].'</p>
                            <i>Posted by :<a href="?rt=users&id='.$result[$i]['author_id'].'">'.$result[$i]['author'].'</a> On :'.$result[$i]['time_on'].'</i><br>
                    ';
                    $i++;
                }
        echo'   </div>
            </div>
        ';
    }else{
        echo'<div class="alert alert-warning">Not Found !</div>';
    }
?>
<?php
	include'views/side_bar.php';
	include'views/footer.php';
?>