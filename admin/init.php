<?php
	// Include the base controller class
	include '../admin/base/'.'controller.class.php';

	// include the registry class
	include '../admin/base/'.'registry.class.php';
	//Include the template class 
	include '../admin/base/template.class.php';

	//include the route class
	include '../admin/base/'.'router.class.php';

	include '../admin/models/DB.class.php';

	function __autoload($filename){
		$filename=strtolower($filename).'.model.php';
		$file=_SITE_PATH.'/models/'.$filename;
		if(file_exists($file)==false){
			return false;
		}
		include($file);

	}
	$registry= new Registry();
	//Connect to database ....
?>