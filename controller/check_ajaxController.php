<?php
	session_start();
	include 'models/check_ajax.model.php';
	include 'models/notify.model.php';
	include 'models/favorite.model.php';
	include 'models/status.model.php';
?>
<?php
	class check_ajaxController extends Controller{
		private $check_ajaxModel=null;
		private $notifyModel	=null;
		private $favoriteModel	=null;
		private $statusModel	=null;
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
							$notice=array();
							$notice['id_from']=$notify['id_to'];
							$notice['id_to']=$notify['id_from'];
							$notice['id_class']=$notify['id_class'];
							$notice['type_id']=2;
							$this->check_ajaxModel->update_level($notify['id_from'],2);
							if($this->notifyModel->insert($notice)){
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
		public function hide_notify(){
			$this->notifyModel	=new notifyModel();
			if(isset($_POST['id']) && filter_var($_POST['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				if($this->notifyModel->hide($_POST['id'])){
					return true;
				}else{
					return false;
				}
			}
		}
		public function favorite_checked(){
			$this->favoriteModel	=new favoriteModel();
			if(isset($_POST['id']) && filter_var($_POST['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$page_id=$_POST['id'];
				if($this->favoriteModel->checked($_SESSION['id'],$page_id)){
					return true;
				}else{
					return false;
				}
			}
		}
		public function favorite_un_check(){
			$this->favoriteModel	=new favoriteModel();
			if(isset($_POST['id']) && filter_var($_POST['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$page_id=$_POST['id'];
				if($this->favoriteModel->un_check($_SESSION['id'],$page_id)){
					return true;
				}else{
					return false;
				}
			}
		}
		public function del_status(){
			$this->statusModel	=new statusModel();
			if(isset($_POST['stt_id']) && filter_var($_POST['stt_id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$stt_id=$_POST['stt_id'];
				if($this->statusModel->del($stt_id)){
					return true;
				}else{
					return false;
				}
			}
		}
		public function del_cmt(){
			$this->check_ajaxModel	=new check_ajaxModel();
			if(isset($_POST['cmt_id']) && filter_var($_POST['cmt_id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$cmt_id=$_POST['cmt_id'];
				if($this->check_ajaxModel->del_cmt($cmt_id)){
					return true;
				}else{
					return false;
				}
			}
		}
	}
?>