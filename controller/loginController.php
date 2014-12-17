<?php
	session_start();
?>
<?php
	include 'models/login.model.php';
?>
<?php
	class loginController extends Controller{
		private $loginModel=null;
		public function index(){
			$this->loginModel = new loginModel();
			if($_SERVER['REQUEST_METHOD']=="POST"){
				$errors=array();
				$users=array();
				if(!empty($_POST['username'])){
					$users['username']=strip_tags($_POST['username']);
				}else{
					$errors[]="username_is_empty";
				}
				if(!empty($_POST['password'])){
					$users['password']=$_POST['password'];
				}else{
					$errors[]="password_is_empty";
				}
				if(empty($errors)){
					$users_data=array(array());
					$users_data=$this->loginModel->getUserName();
					$i=0;
					$check_user=0;
					$check_pass=0;
					while(isset($users_data[$i])&&$users_data[$i]!=null){
						if($users['username']==$users_data[$i]['username']){
							$check_user=1;
							if($users['password']==$users_data[$i]['password']){
								$check_pass=1;
								// Set Session user_id
								$_SESSION['id']=$users_data[$i]['id'];
								//$users=$this->loginModel->getUsers($user_id);
								$_SESSION['username']=$users_data[$i]['username'];
								$_SESSION['level']=$users_data[$i]['level'];
								break;
							}
						}
						$i++;
					}
					if($check_user==0){
						$errors[]="wrong_username";
					}elseif($check_pass==0){
						$errors[]="wrong_password";
					}else if($check_pass==1){
						$message="<div class='alert alert-success'>
								<strong>Successfull !Bạn đã đăng nhập thành công vào hệ thống.
								Bạn có thể quay trở lại <a href='index.php'>trang chủ</a> để bắt đầu học.</strong></div>";
						$this->registry->template->message=$message;
					}
				}
				$this->registry->template->errors=$errors;
			}
			$this->registry->template->title='Login - Da CMS';
			$this->registry->template->menu=$this->loginModel->getMenu();
			$this->registry->template->users=$this->loginModel->getNewUsers();
			$this->registry->template->show('users/users.login');
		}
	}
?>