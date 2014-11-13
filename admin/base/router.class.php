<?php
class router{
	private $registry;
	private $path;

	public $action;
	public $controller;
	public $file;

	function __construct($registry){
		$this->registry=$registry;
	}

	public function setPath($site_path){
		if(is_dir($site_path)==false){
			throw new Exception("Không tồn tại đường dẫn :".$site_path, 1);
		}else{
			$this->path=$site_path;
		}
	}
	public function loader(){
		$this->getController();
		if(is_readable($this->file)==false){
			$this->controller='error404';
			$this->file=$this->path.'/error404.php';
		}
		// Load file controller cần xử lý ra ...
		include $this->file;
		// $class chính là tên của controller kế thừa Controller .
		$class=$this->controller.'Controller';
		$controller=new $class($this->registry);
		// Kiểm tra xem action đã tồn tại trong controller chưa .
		if(is_callable(array($controller,$this->action))==false){
			$action='index';
		}else{
			$action=$this->action;
		}
		// Chạy phương thức action 
		$controller->$action();
	}
	public function getController(){
		$router=empty($_GET['rt'])?'':$_GET['rt'];
		if(empty($router)){
			$router='index';
		}else{
			$parts=explode('/',$router);
			$this->controller=$parts[0];
			if(isset($parts[1])){
				$this->action=$parts[1];
			}
		}
		if(empty($this->controller)){
			$this->controller='index';
		}
		if(empty($this->action)){
			$this->action='index';
		}
		$this->file=$this->path.'/'.$this->controller.'Controller.php';
	}
}


?>