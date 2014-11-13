<?php
	class error404Controller extends Controller{
		public function index(){
			$this->registry->template->error_notify="Not found !";
			$this->registry->template->show('error404');
		}
	}
?>