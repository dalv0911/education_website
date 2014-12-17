<?php
	include 'models/register.model.php';
?>
<?php
	class registerController extends Controller{
		private $registerModel=null;
		public function index(){
			// Load model ...
			$this->registerModel=new registerModel();
			if($_SERVER['REQUEST_METHOD']=="POST"){
				$errors=array();
				$users=array();
				$regex = "/^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/"; 
				if(preg_match($regex,$_POST['email'])){
					if($this->registerModel->isEmail(strip_tags($_POST['email']))){	
						$errors[]="email_is_available";
					}else{
						$a=md5(uniqid(rand(),true));
						$users['email']=strip_tags($_POST['email']);
						$users['active']=$a;
					}
				}else{
					$errors[]="email";
				}
				if(empty($_POST['password'])){
					$errors[]="password";
				}else if(empty($_POST['re-password'])){
					$errors[]="re-password";
				}else if($_POST['password']!=$_POST['re-password']){
					$errors[]="wrong-pass";
				}else{
					$users['password']=$_POST['password'];
				}
				if(empty($errors)){
					if($this->registerModel->register($users)){
						
						// $body="Thank you for registering at the my website .Before we can activate your account one the last step must be taken to complete your registration .<br>";
						// $body.="Please note - You must complete this last step to become a registered member .You will only need to visit this url once to activate your account.<br>";
						// $body.="To complete your registration, please visit this url:<br>";
						// $body.=BASE_URL."activate?x=".urlencode($_POST['email'])."&y=".$a;
						// if(mail($_POST['email'],'Kích hoạt tài khoản',$body,'FROM :Localhost')){
							$message="<div class='alert alert-success'>
								<strong>Well done ! <strong>Để hoàn tất việc đăng kí tài khoản ,bạn vui lòng đi đến email của bạn để kích hoạt tài khoản .</div>";
						// }else{
						// 	$message="<div class='alert alert-warning'>
						// 		<strong>So Sad ! <strong> Chúng tôi không thể send mail đến tài khoản của bạn , Thật sự xin lỗi bài vì sự phức tạp này .</div>";
						// }
						
					    $this->registry->template->message=$message;
					}else{
						$message="<div class='alert alert-warning'>
								<strong>Error !</strong> Có lỗi xảy ra trong quá trình đăng ký tài khoản của bạn ,có thể là do server ... chúng tôi xin lỗi vì sự bất tiện này</div>";
						$this->registry->template->message=$message;
					}
				}
				$this->registry->template->errors=$errors;
			}
			$this->registry->template->title="Registry";
			$this->registry->template->menu=$this->registerModel->getMenu();
			$this->registry->template->users=$this->registerModel->getNewUsers();
			$this->registry->template->show("users/users.register");
		}
	}
?>