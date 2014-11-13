<?php
	class Registry{
		private $vars=array();
		public function __set($key,$value){
			$this->vars[$key]=$value;
		}
		public function __get($key){
			return $this->vars[$key];
		}
	}
?>