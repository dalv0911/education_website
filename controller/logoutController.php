<?php
	session_start();
	class logoutController extends Controller{
		public function index(){
			session_destroy();
			$this->registry->template->message="<div class='alert alert-success'>Thank you for visited to my website !</div>";
			$this->registry->template->show('users/users.logout');			
		}
	}
?>