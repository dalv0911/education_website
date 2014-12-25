<?php
	define('BASE_URL','http://localhost/education/');
	function redirect_to($page="index.php"){
		$url=BASE_URL.$page;
		header("Location:$url");
		exit(1);
	}
	function redirect_to_login($page="?rt=login&key=1"){
		$url=BASE_URL.$page;
		header("Location:$url");
		exit(1);
	}
	function vn2latin($cs, $tolower = false)
		{
		/*Mảng chứa tất cả ký tự có dấu trong Tiếng Việt*/
		$marTViet=array("à","á","ạ","ả","ã","â","ầ","ấ","ậ","ẩ","ẫ","ă",
		"ằ","ắ","ặ","ẳ","ẵ","è","é","ẹ","ẻ","ẽ","ê","ề",
		"ế","ệ","ể","ễ",
		"ì","í","ị","ỉ","ĩ",
		"ò","ó","ọ","ỏ","õ","ô","ồ","ố","ộ","ổ","ỗ","ơ",
		"ờ","ớ","ợ","ở","ỡ",
		"ù","ú","ụ","ủ","ũ","ư","ừ","ứ","ự","ử","ữ",
		"ỳ","ý","ỵ","ỷ","ỹ",
		"đ",
		"À","Á","Ạ","Ả","Ã","Â","Ầ","Ấ","Ậ","Ẩ","Ẫ","Ă",
		"Ằ","Ắ","Ặ","Ẳ","Ẵ",
		"È","É","Ẹ","Ẻ","Ẽ","Ê","Ề","Ế","Ệ","Ể","Ễ",
		"Ì","Í","Ị","Ỉ","Ĩ",
		"Ò","Ó","Ọ","Ỏ","Õ","Ô","Ồ","Ố","Ộ","Ổ","Ỗ","Ơ","Ờ","Ớ","Ợ","Ở","Ỡ",
		"Ù","Ú","Ụ","Ủ","Ũ","Ư","Ừ","Ứ","Ự","Ử","Ữ",
		"Ỳ","Ý","Ỵ","Ỷ","Ỹ",
		"Đ"," ");
		 
		/*Mảng chứa tất cả ký tự không dấu tương ứng với mảng $marTViet bên trên*/
		$marKoDau=array("a","a","a","a","a","a","a","a","a","a","a",
		"a","a","a","a","a","a",
		"e","e","e","e","e","e","e","e","e","e","e",
		"i","i","i","i","i",
		"o","o","o","o","o","o","o","o","o","o","o","o",
		"o","o","o","o","o",
		"u","u","u","u","u","u","u","u","u","u","u",
		"y","y","y","y","y",
		"d",
		"A","A","A","A","A","A","A","A","A","A","A","A",
		"A","A","A","A","A",
		"E","E","E","E","E","E","E","E","E","E","E",
		"I","I","I","I","I",
		"O","O","O","O","O","O","O","O","O","O","O","O","O","O","O","O","O",
		"U","U","U","U","U","U","U","U","U","U","U",
		"Y","Y","Y","Y","Y",
		"D","-");
		 
		if ($tolower) {
		return strtolower(str_replace($marTViet,$marKoDau,$cs));
		}
		 
		return str_replace($marTViet,$marKoDau,$cs);
		 
	}
	function check_for_thumuc(array $errors){
		if(in_array('name',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa nhập tên thư mục.</div>";
		}else if(in_array('menu_id',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa chọn menu .</div>";
		}else if(in_array('position',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa chọn vị trí cho bài viết .</div>";
		}
	}
	function check_for_thumuc2(array $errors){
		if(in_array('name',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa nhập tên thư mục.</div>";
		}else if(in_array('thumuc_id',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa chọn thư mục cha .</div>";
		}else if(in_array('position',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa chọn vị trí cho bài viết .</div>";
		}
	}
	function check_error_pages(array $errors){
		if(in_array('name',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa nhập tên bài viết .</div>";
		}else if(in_array('title',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa nhập title cho bài viết .</div>";
		}else if(in_array('chuyen_muc',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa chọn chuyên mục cho bài viết .</div>";
		}else if(in_array('content',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa nhập nội dung bài viết .</div>";
		}else if(in_array('keyword',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa nhập keyword .</div>";
		}else if(in_array('des',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa nhập mô tả cho bài viết .</div>";
		}else if(in_array('tags',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa nhập tags bài viết .</div>";
		}else if(in_array('name_is_available',$errors)){
				echo "<div class='alert alert-warning'>Đã có một bài viết trùng tên .</div>";
		}else if(in_array('upload',$errors)){
				echo "<div class='alert alert-warning'>File tải lên không thành công .</div>";
		}else if(in_array('system',$errors)){
				echo "<div class='alert alert-warning'>Có lỗi xảy ra do hệ thống.</div>";
		}
	}
	// check error for form register
	function check_error_register(array $errors){
		if(in_array('email',$errors)){
			echo "<div class='alert alert-warning'><strong>Email của bạn không hợp lệ !</strong></div>";
		}elseif(in_array('password',$errors)){
			echo "<div class='alert alert-warning'>Bạn chưa nhập password ! <strong>Đây là một trường bắt buộc</strong></div>";
		}elseif(in_array('re-password',$errors)){
			echo "<div class='alert alert-warning'>Bạn chưa nhập re-password ! <strong>Đây là một trường bắt buộc</strong></div>";
		}elseif(in_array('wrong-pass',$errors)){
			echo "<div class='alert alert-warning'>Password không khớp ! Vui lòng thử lại</div>";
		}else if(in_array('email_is_available',$errors)){
			echo "<div class='alert alert-warning'>Email đã tồn tại ... Bạn không thể đăng kí với Email này .</div>";
		}
	}
	function check_error_login(array $errors){
		if(in_array('username_is_empty',$errors)){
			echo "<div class='alert alert-warning'>Bạn chưa nhập username !<strong>Đây là một trường băt buộc </strong></div>";
		}else if(in_array('password_is_empty',$errors)){
			echo "<div class='alert alert-warning'>Bạn chưa nhập password ! <strong>Đây là một trường bắt buộc </strong></div>";
		}else if(in_array('wrong_username',$errors)){
			echo "<div class='alert alert-warning'>Username không chính xác !. Vui lòng thử lại ...</div>";
		}else if(in_array('wrong_password',$errors)){
			echo "<div class='alert alert-warning'>Password không chính xác !. Vui lòng thử lại ...</div>";
		}
	}
	function check_error_class(array $errors){
		if(in_array('name_empty',$errors)){
			echo "<div class='alert alert-warning'>Bạn chưa nhập tên cho lớp học !<strong>Đây là một trường băt buộc </strong></div>";
		}else if(in_array('name_avaiable',$errors)){
			echo "<div class='alert alert-warning'>Tên lớp học này đã tồn tại ! <strong>Vui lòng chọn tên khác .</strong></div>";
		}else if(in_array('content',$errors)){
			echo "<div class='alert alert-warning'>Nội dung không được để trống ! <strong>.</strong></div>";
		}
	}

	function upload(array $file){
		$allowedExts1 = array("jpg","jpeg","gif", "png");
		$allowedExts2 = array("mp3", "mp4", "wma");
		$extension = substr($file['name'], strrpos($file['name'], '.') + 1);
		$message=null;
		if(in_array($extension, $allowedExts1))
		{
			if ($file["error"] >0)
		    {
		    	$message="<div class='alert alert-warning'>Return Code: ".$file["error"]."</div><br />";
		    }else{
		    	if (file_exists("upload/images/".$file["name"]))
		      	{
		        	$message="<div class='alert alert-warning'>".$file["name"]." already exists. </div>";
		      	}else{
		       		move_uploaded_file($file["tmp_name"],"upload/images/".$file["name"]);
		       		$message="success";
		      	}
		    }
		}else if(in_array($extension,$allowedExts2)){
			if ($file["error"] >0)
		    {
		    	$message= "<div class='alert alert-warning'>Return Code: ".$file["error"]."</div><br />";
		    }else{
		    	if (file_exists("upload/mp3/".$file["name"]))
		      	{
		        	$message= "<div class='alert alert-warning'>".$file["name"]." already exists. </div>";
		      	}else{
		       		move_uploaded_file($file["tmp_name"],"upload/mp3/".$file["name"]);
		       		$message="success";
		      	}
		    }
		}else{
		  	// $message="<div class='alert alert-warning'>Invalid file</div>";
		}
		return $message;
	}
	function upload_avatar(array $file){
		$allowedExts1 = array("jpg","jpeg","gif", "png");
		$extension = substr($file['name'], strrpos($file['name'], '.') + 1);
		$message=null;
		if(in_array($extension, $allowedExts1))
		{
			if ($file["error"] >0)
		    {
		    	$message="<div class='alert alert-warning'>Return Code: ".$file["error"]."</div><br />";
		    }else{
		    	if (file_exists("upload/avatar/".$file["name"]))
		      	{
		        	$message="<div class='alert alert-warning'>".$file["name"]." already exists. </div>";
		      	}else{
		       		move_uploaded_file($file["tmp_name"],"upload/avatar/".$file["name"]);
		       		$message="success";
		      	}
		    }
		}else{
		  	$message="<div class='alert alert-warning'>Invalid file</div>";
		}
		return $message;
	}
	function caltime($time1,$time2)
	{
	    $c1=mktime(0,0,0,$time1[1],$time1[2],$time1[0]);
	    $c2=mktime(0,0,0,$time2[1],$time2[2],$time2[0]);
	    $diff=$c1-$c2;
	    if($diff<0)
	        $diff=-$diff;
	    $h=date('t',$diff);
	    $m=date('i',$diff);
	    $s=date('s',$diff);
	    return "$h ";
	}
	function diff_time($time){
		$date1 = new DateTime(date("Y-m-d",time()));
		$date2 = new DateTime($time);
		$interval = $date1->diff($date2);
		return $interval->m*30+$interval->days." days ";
	}
	function show_time($time) {
	    $s = date("Y-m-d h:i:s",time()) - $time;
	    if ($s <= 60) { // if < 60 seconds
	        return 'Khoảng 1 phút trước';
	    } else {
	        $t = intval($s / 60);
	        if ($t >= 60) {
	            $t = intval($t / 60);
	            if ($t >= 24) {
	                $t = intval($t / 24);
	                if ($t >= 30) {
	                    $t = intval($t / 30);
	                    if ($t >= 12) {
	                        $t = intval($t / 12);
	                        return $t . ' năm trước';
	                    } else {
	                        return $t . ' tháng trước';
	                    }
	                } else {
	                    return $t . ' ngày trước';
	                }
	            } else {
	                return $t . ' giờ trước';
	            }
	        } else {
	            return $t . ' phút trước';
	        }
    }
}  
	function gender($gender){
		switch($gender){
			case 1: $message="Nam";break;
			case 2: $message="Nữ";break;
			case 3: $message="Không xác định";break;
			default:$message="Không xác định";break;
		}
		return $message;
	}
	function resize_image_max($images,$max_width,$max_height) {
		$image=ImageCreateFromJpeg($images);
	    $w = imagesx($image); //current width
	    $h = imagesy($image); //current height
	    if ((!$w) || (!$h)) { $GLOBALS['errors'][] = 'Image couldn\'t be resized because it wasn\'t a valid image.'; return false; }
	 
	    if (($w <= $max_width) && ($h <= $max_height)) { return $image; } //no resizing needed
	 
	    //try max width first...
	    $ratio = $max_width / $w;
	    $new_w = $max_width;
	    $new_h = $h * $ratio;
	 
	    //if that didn't work
	    if ($new_h > $max_height) {
	        $ratio = $max_height / $h;
	        $new_h = $max_height;
	        $new_w = $w * $ratio;
	    }
	 
	    $new_image = imagecreatetruecolor ($new_w, $new_h);
	    imagecopyresampled($new_image,$image, 0, 0, 0, 0, $new_w, $new_h, $w, $h);
	    return $new_image;
	}

