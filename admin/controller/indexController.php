<?php
	session_start();
?>
<?php
	class indexController extends Controller{
		public function index(){
			if(!isset($_SESSION['user_id'])){
	    		redirect_to('index.php?rt=login');
	    	}
			$this->registry->template->title="This is title of my website";
			$this->registry->template->show('index');
		}
	}
?>