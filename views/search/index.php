<?php
	include'views/header.php';
?>
<?php
    if(isset($pages[0]) && !empty($pages[0])){
        $i=0;
        echo'<div class="list-group">';
         while(!empty($pages[$i])){
            echo'<div class="list-group-item">
                    <div class="row" style="padding-left:20px;"><a href="?rt=pages&id='.$pages[$i]['id'].'"><span style="font-size:20px;font-weight:bold;">'.$pages[$i]['name'].'</span></a></div>
                    <div class="row">
                        <div class="col-lg-3"><img src="upload/images/thumb_'.$pages[$i]['image_icon'].'"></div>
                        <div class="col-lg-9">
                            <p>'.$pages[$i]['des'].'</p>
                        <span>Vào lúc :<i style="font-size:12px;">'.$pages[$i]['time_on'].'</i> </span>
                        <span>- Bởi :<a href="?rt=users&id='.$pages[$i]['author_id'].'"><i style="font-weight:bold;"> '.$pages[$i]['user_name'].'</i></a></span>
                    </div>
                    </div>
                </div>';
            $i++;
        }
        if($num>4){
            echo'<div class="list-group-item">';
            for($i=0;$i<ceil($num/4);$i++){
                echo'
                    <span><a href="?rt=search&keyword='.$keyword.'&s='.$i.'">'.$i.'</a></span>
                ';
            }
            echo'</div>';
        }
        echo'</div>';
        
    }else{
        echo'<div class="alert alert-warning">Not Found !</div>';
    }
?>
<?php
	include'views/side_bar.php';
	include'views/footer.php';
?>