<?php
	session_start();
	include 'models/users.model.php';
	include 'models/check_ajax.model.php';
	include 'includes/images.php';
?>
<?php
	class usersController extends Controller{
		private $usersModel=null;
		private $check_ajaxModel=null;
		public function index(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->usersModel=new usersModel();
				$id=$_GET['id'];
				$this->registry->template->users=$this->usersModel->getUsers($id);
				$this->registry->template->menu=$this->usersModel->getMenu();
				$this->registry->template->show("users/index");
			}else{
				redirect_to();
			}
		}
		public function info(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$users=array();
				$users_temp=array();
				$errors=array();
				$this->usersModel=new usersModel();
				$this->check_ajaxModel=new check_ajaxModel();
				$id=$_GET['id'];
				$users['id']=$id;
				$users_temp=$this->usersModel->getUsers($id);
				$this->registry->template->users=$users_temp;
				if($_SERVER['REQUEST_METHOD']=="POST"){
					if(!empty($_POST['first_name'])){
						$users['first_name']=strip_tags($_POST['first_name']);
					}else{
						$users['first_name']=null;
					}
					if(!empty($_POST['last_name'])){
						$users['last_name']=strip_tags($_POST['last_name']);
					}else{
						$users['last_name']=null;
					}
					if(!empty($_POST['email'])){
						if(!$this->check_ajaxModel->check_email_users($_POST['email'],$id)){
							$users['email']=strip_tags($_POST['email']);
						}else{
							$srrors[]="email_avaiable";
						}
					}else{
						$errors[]="email";
					}
					if(!empty($_POST['username'])){
						if(!$this->check_ajaxModel->check_name_users($_POST['username'],$id)){
							$users['username']=strip_tags($_POST['username']);
						}else{
							$srrors[]="username_avaiable";
						}
					}else{
						$users['username']=null;
					}
					if(isset($_POST['gender'])){
						$users['gender']=$_POST['gender'];
					}
					if(!empty($_FILES['avatar']['name'])){
						$temp=process_images_upload($_FILES['avatar'],100);
						if($temp!=null){
							$users['avatar']=$temp;
							if($this->usersModel->insert_storage_image($users)){
							}else{

							}
						}else{
							$errors[]="avatar";
						}
					}else{
						$users['avatar']=$users_temp['avatar'];;
					}
					if(!empty($_POST['address'])){
						$users['address']=$_POST['address'];
					}
					if(!empty($_POST['state'])){
						$users['state']	=$_POST['state'];
					}
					if(!empty($_POST['des'])){
						$users['des']=$_POST['des'];
					}
					if(!empty($_POST['sign'])){
						$users['sign']=$_POST['sign'];
					}
					if(empty($errors)){
						if($this->usersModel->update_info_user($users)){
							$message="<div class='alert alert-success'>Bạn đã cập nhật thông tin thành công !</div>";
							$this->registry->template->message=$message;
						}else{
							$message="<div class='alert alert-warning'>Có lỗi xảy ra từ phía server , chúng tôi sẽ sớm khắc phục .
										<br>Chúng tôi xin lỗi cho sự phiền phức này .</div>";
							$this->registry->template->message=$message;
						}
					}
					$this->registry->template->errors=$errors;
				}
				$this->registry->template->menu=$this->usersModel->getMenu();
				$this->registry->template->title="Info";
				$this->registry->template->show('users/info/index');
			}else{
				redirect_to();
			}
		}
		public function gallery(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->usersModel=new usersModel();
				$users=array();
				$users['id']=$_GET['id'];
				if($_SERVER['REQUEST_METHOD']=="POST"){
					if(isset($_POST['select']) &&filter_var($_POST['select'],FILTER_VALIDATE_INT,array('min_range'=>1))){
						if($_POST['select']==1){
							if(isset($_POST['imgCheck'])&& filter_var($_POST['select'],FILTER_VALIDATE_INT,array('min_range'=>1))){
								$avatar=array();
								$avatar=$this->usersModel->getGalleryById($_POST['imgCheck']);
								if($this->usersModel->update_avatar($users['id'],$avatar['name'])){
									$message="<div class='alert alert-success'>Thay đổi ảnh đại diện thành công .</div>";
									$this->registry->template->message=$message;
								}else{
									$message="<div class='alert alert-warning'>Có lỗi xảy ra trong quá trình change avatar .</div>";
									$this->registry->template->message=$message;
								}
							}else{
								$message="<div class='alert alert-warning'>Không có ảnh nào được chọn .</div>";
								$this->registry->template->message=$message;
							}
						}else if($_POST['select']==2){
							if($this->usersModel->delete_gallery($_POST['imgCheck'])){
								$message="<div class='alert alert-success'>Bạn đã xóa thành công .</div>";
								$this->registry->template->message=$message;
							}else{
								$message="<div class='alert alert-warning'>Ảnh chưa được xóa .</div>";
								$this->registry->template->message=$message;
							}
						}
					}else{
						$message="<div class='alert alert-warning'>Bạn chưa chọn option .</div>";
						$this->registry->template->message=$message;
					}
				}
				$this->registry->template->gallery_num=$this->usersModel->get_gallery_num($users['id']);
				$this->registry->template->gallery=$this->usersModel->getGallery($users['id']);
				$this->registry->template->users=$this->usersModel->getUsers($users['id']);
				$this->registry->template->menu=$this->usersModel->getMenu();
				$this->registry->template->title="Info";
				$this->registry->template->show('users/gallery/index');
			}else{
				redirect_to();
			}
		}
		public function history(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->usersModel=new usersModel();
				$users=array();
				$users['id']=$_GET['id'];
				$this->registry->template->history=$this->usersModel->getHistory($users['id']);
				$this->registry->template->users=$this->usersModel->getUsers($users['id']);
				$this->registry->template->menu=$this->usersModel->getMenu();
				$this->registry->template->title="History";
				$this->registry->template->show('users/history/index');
			}else{
				redirect_to();
			}
		}
	}
?>