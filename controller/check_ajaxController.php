<?php
	session_start();
	include 'models/check_ajax.model.php';
	include 'models/notify.model.php';
?>
<?php
	class check_ajaxController extends Controller{
		private $check_ajaxModel=null;
		private $notifyModel	=null;
		public function index(){
		}
		public function thumuc(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name'])){
				$name=$_GET['name'];
				if($this->check_ajaxModel->check_name_thumuc($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function thumuc2(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name'])){
				$name=$_GET['name'];
				if($this->check_ajaxModel->check_name_thumuc2($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function pages(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name'])){
				$name=$_GET['name'];
				if($this->check_ajaxModel->check_name_pages($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function pages_edit(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name']) && isset($_GET['id'])){
				$name=$_GET['name'];
				$id=$_GET['id'];
				if($this->check_ajaxModel->check_edit_name_pages($name,$id)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function menu_name(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name'])){
				$name=$_GET['name'];
				if($this->check_ajaxModel->check_name_menu($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function email_users(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['email'])){
				$email=$_GET['email'];
				if($this->check_ajaxModel->check_email($email)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function username(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['username'])){
				$username=$_GET['username'];
				if($this->check_ajaxModel->check_name_users($username)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function del_comment(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_POST['id']) && filter_var($_POST['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$id=$_POST['id'];
				if($this->check_ajaxModel->del_comment($id)){
					return true;
				}else{
					return false;
				}
			}
		}
		public function class_name(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name'])){
				$name=$_GET['name'];
				if($this->check_ajaxModel->isClass_name($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function accept_join(){
			$this->check_ajaxModel	=new check_ajaxModel();
			$this->notifyModel		=new notifyModel();
			if(isset($_POST['id']) && filter_var($_POST['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$id=$_POST['id'];
				$notify=array();
				$notify=$this->notifyModel->getNotifyById($id);
				if(!empty($notify)){
					if($this->check_ajaxModel->reject_notify($id)){
						if($this->check_ajaxModel->accept_join($notify)){
							return true;
						}else{
							return false;
						}
					}else{
						return false;
					}
				}else{
					return false;
				}
			}
		}
		public function reject_notify(){
			$this->check_ajaxModel	=new check_ajaxModel();
			if(isset($_POST['id']) && filter_var($_POST['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				if($this->check_ajaxModel->reject_notify($_POST['id'])){
					return true;
				}else{
					return false;
				}
			}
		}
	}
?>