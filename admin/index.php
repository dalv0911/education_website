<?php
	error_reporting(E_ALL);
	
	$site_path=realpath(dirname(__FILE__));
	define('_SITE_PATH',$site_path);
	include('init.php');

	$registry->router=new router($registry);
	// Set path for controller admin
	$registry->router->setPath(_SITE_PATH.'/controller');

	$registry->template= new template($registry);

	$registry->router->loader();	

?>