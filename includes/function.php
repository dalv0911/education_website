<?php
	define('BASE_URL','http://localhost/education_website/');
	function redirect_to($page="index.php"){
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
		}else if(in_array('meta',$errors)){
				echo "<div class='alert alert-warning'>Bạn chưa nhập meta bài viết .</div>";
		}else if(in_array('name_is_available',$errors)){
				echo "<div class='alert alert-warning'>Đã có một bài viết trùng tên .</div>";
		}else if(in_array('upload',$errors)){
				echo "<div class='alert alert-warning'>File tải lên không thành công .</div>";
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
		  	$message="<div class='alert alert-warning'>Invalid file</div>";
		}
		return $message;
	}
	
