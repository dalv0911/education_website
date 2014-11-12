<?php
	// Include the base controller class
	include 'base/'.'controller.class.php';

	// include the registry class
	include 'base/'.'registry.class.php';
	//Include the template class 
	include 'base/template.class.php';

	//include the route class
	include 'base/'.'router.class.php';

	include 'models/DB.class.php';

	include 'models/LoadSite.class.php';

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