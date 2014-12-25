<?php
	session_start();
	include'models/notify.model.php';
	include'models/users.model.php';
	include'models/class.model.php';
?>
<?php
	class notifyController extends Controller{
		private $notifyModel	=null;
		private $usersModel		=null;
		private $classModel		=null;
		public function index(){
			if(isset($_SESSION['id'])){
				$this->notifyModel	=new notifyModel();
				$this->usersModel	=new usersModel();
				$this->classModel	=new classModel();
				$notice=array(array());
				$notice=$this->notifyModel->getNotify($_SESSION['id']);
				$this->registry->template->notice=$notice;
				$this->registry->template->my_class=$this->classModel->getClassByUserId($_SESSION['id']);
				$this->registry->template->vaitro=$this->usersModel->getLevel($_SESSION['id']);
				$this->registry->template->users=$this->usersModel->getUsers($_SESSION['id']);
				$this->registry->template->num_notice=$this->notifyModel->count_notice($_SESSION['id']);
				$this->registry->template->menu=$this->notifyModel->getMenu();
				$this->registry->template->show("users/notice/index");

			}else{
				redirect_to();
			}
		}
	}
?>