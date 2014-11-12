<?php
class Template{
	private $registry;
	private $vars=array();

	function __construct($registry){
		$this->registry=$registry;
	}
	
	function __set($key,$value){
		$this->vars[$key]=$value;
	}
	
	function show($name){
		$path=_SITE_PATH.'/views/'.$name.'.php';
		if(file_exists($path)==false){
			throw new Exception("Not found directory :".$path, 1);
			return false;			
		}
		foreach ($this->vars as $key => $value) {
			$$key=$value;
		}
		include($path);
	}
	
}
?>