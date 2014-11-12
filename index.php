<?php
	//Cho phép hiển thị tất cả lỗi ra ngoài trình duyệt
	error_reporting(E_ALL);

	// Định nghĩa đường dẫn 
	$site_path=realpath(dirname(__FILE__));
	define('_SITE_PATH',$site_path);

	include('init.php');

	// Load route
	$registry->router= new router($registry);
	$registry->router->setPath(_SITE_PATH.'/controller');

	$registry->template = new template($registry);

	$registry->router->loader();

?>