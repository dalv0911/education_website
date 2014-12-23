<?php
	session_start();
	include'models/class.model.php';
	class logoutController extends Controller{
		private $classModel	=null;
		public function index(){
			session_destroy();
			$this->registry->template->message="<div class='alert alert-success'>Thank you for visited to my website !</div>";
			$this->registry->template->show('users/users.logout');			
		}
		public function classs(){
			$this->classModel	=new classModel();
			if(!isset($_SESSION['id'])){
				redirect_to();
			}
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				if($this->classModel->logout_class($_SESSION['id'],$_GET['id'])){
					redirect_to('?rt=class&id='.$_GET['id'].'');
				}
			}
		}
	}
?>