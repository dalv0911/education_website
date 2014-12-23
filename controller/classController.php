<?php
	session_start();
	include'models/class.model.php';
	include'models/users.model.php';
	include'models/notify.model.php';
	include'models/check_ajax.model.php';
	include'includes/images.php';
	include'models/status.model.php';
?>
<?php
	class classController extends Controller{
		private $classModel      =null;
		private $check_ajaxModel =null;
		private $usersModel		 =null;
		private $notifyModel 	 =null;
		private $statusModel	 =null;
		public function index(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->classModel	=new classModel();
				$this->notifyModel	=new notifyModel();
				$this->statusModel	=new statusModel();
				$class=array();
				$class=$this->classModel->getClassById($_GET['id']);
				if(isset($_SESSION['id'])){
					if($this->classModel->is_user($_SESSION['id'],$_GET['id']) || $this->notifyModel->is_sent($_SESSION['id'],$_GET['id']) || $_SESSION['id']==$class['giao_vien_id']){
						$this->registry->template->joined="yes";
						$errors=array();
						if(isset($_POST['post'])){
							$status=array();
							if (!empty($_POST['content'])) {
								$status['content']=$_POST['content'];
								$status['user_id']=$_SESSION['id'];
								$status['class_id']=$_GET['id'];
							}else{
								$errors[]="content";
							}
							if(empty($errors)){
								if($this->statusModel->create($status)){
								}else{
									$message_status="<div class='alert alert-warning'>Có lỗi xảy ra do hệ thống của chúng tôi nên bài viết của bạn hiện chưa được đăng .
												Xin vui lòng thử lại hoặc báo cho bộ phân kĩ thuật .Chúng tôi rất xin lỗi vì sự phiền phức này .</div>";
									$this->registry->template->message_status=$message_status;
								}
							}
						}
						if(isset($_POST['save_stt'])){
							if(isset($_POST['edit_content']) && !empty($_POST['edit_content'])){
								$content=$_POST['edit_content'];
								if(!$this->statusModel->edit($content,$_POST['save_stt'])){
									$message_status="<div class='alert alert-warning'>Có lỗi xảy ra do hệ thống của chúng tôi nên bài viết của bạn hiện chưa được sửa .
												Xin vui lòng thử lại hoặc báo cho bộ phân kĩ thuật .Chúng tôi rất xin lỗi vì sự phiền phức này .</div>";
									$this->registry->template->message_status=$message_status;
								}
							}
						}
						if(isset($_POST['submit_cmt']) && !empty($_POST['submit_cmt'])){
							if(isset($_POST['comment']) && !empty($_POST['comment'])){
								$comment=array();
								$comment['content']=$_POST['comment'];
								$comment['user_id']=$_SESSION['id'];
								$comment['stt_id']=$_POST['submit_cmt'];
								if(!$this->classModel->insert_comment($comment)){
								}
							}
						}
					}else{
						$this->registry->template->joined="no";
						if($_SERVER['REQUEST_METHOD']=="POST"){
							$notice=array();
							$notice['id_from']=$_SESSION['id'];
							$notice['id_to']=$class['giao_vien_id'];
							$notice['id_class']=$_GET['id'];
							$notice['type_id']=1;
							if($this->notifyModel->insert($notice)){
								$notify="<div class='alert alert-success'>Gửi thành công . Bạn vui lòng chờ sự xác nhận từ giáo viên phụ trách .</div>";
								$this->registry->template->notify=$notify;
							}else{
								$notify="<div class='alert alert-warning'>Gửi không thành công . Vui lòng thử lại lần sau .</div>";
								$this->registry->template->notify=$notify;
							}
						}
					}
				}
				if(isset($_SESSION['id'])){
					$this->registry->template->num_notice=$this->classModel->count_notice($_SESSION['id']);
				}
				$class['num_users']=$this->classModel->count_users($_GET['id']);
				$this->registry->template->class=$class;
				$this->registry->template->status=$this->statusModel->get_status_class($_GET['id']);
				$this->registry->template->menu=$this->classModel->getMenu();
				$this->registry->template->users=$this->classModel->getUsersByClass($_GET['id']);
				$this->registry->template->title=$class['name'];
				$this->registry->template->show("class/index");
			}else{	
				redirect_to();
			}
		}
		public function status(){
			if(isset($_GET['stt_id'],$_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))&& 
					filter_var($_GET['stt_id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$class_id=$_GET['id'];
				$stt_id=$_GET['stt_id'];
				$class=array();
				$this->classModel	=new classModel();
				$this->statusModel	=new statusModel();
				$class=$this->classModel->getClassById($_GET['id']);
				if(isset($_SESSION['id'])){
					if($this->classModel->is_user($_SESSION['id'],$_GET['id']) || $_SESSION['id']==$class['giao_vien_id']){
						$this->registry->template->joined="yes";
						if(isset($_POST['save_stt'])){
							if(isset($_POST['edit_content']) && !empty($_POST['edit_content'])){
								$content=$_POST['edit_content'];
								if(!$this->statusModel->edit($content,$_POST['save_stt'])){
									$message_status="<div class='alert alert-warning'>Có lỗi xảy ra do hệ thống của chúng tôi nên bài viết của bạn hiện chưa được sửa .
												Xin vui lòng thử lại hoặc báo cho bộ phân kĩ thuật .Chúng tôi rất xin lỗi vì sự phiền phức này .</div>";
									$this->registry->template->message_status=$message_status;
								}
							}
						}
						if(isset($_POST['submit_cmt']) && !empty($_POST['submit_cmt'])){
							if(isset($_POST['comment']) && !empty($_POST['comment'])){
								$comment=array();
								$comment['content']=$_POST['comment'];
								$comment['user_id']=$_SESSION['id'];
								$comment['stt_id']=$_POST['submit_cmt'];
								if(!$this->classModel->insert_comment($comment)){
								}
							}
						}
						
					}else{
						$this->registry->template->joined="no";
						
					}
					$this->registry->template->num_notice=$this->classModel->count_notice($_SESSION['id']);
				}
				
				$class['num_users']=$this->classModel->count_users($_GET['id']);
				$this->registry->template->class=$class;
				$this->registry->template->comment=$this->classModel->get_comment($stt_id);
				$this->registry->template->status=$this->statusModel->get_status($stt_id);
				$this->registry->template->menu=$this->classModel->getMenu();
				$this->registry->template->users=$this->classModel->getUsersByClass($_GET['id']);
				$this->registry->template->title=$class['name'];
				$this->registry->template->show("class/status/index");
			}else{
				redirect_to();
			}
		}
		public function danhsach(){
			if($_SESSION['id']){
				$this->classModel	=new classModel();
				if(isset($_SESSION['id'])){
					$this->registry->template->num_notice=$this->classModel->count_notice($_SESSION['id']);
				}
				$this->registry->template->class=$this->classModel->getClassByGiaoVienId($_SESSION['id']);
				$this->registry->template->menu=$this->classModel->getMenu();
				$this->registry->template->users=$this->classModel->getNewUsers();
				$this->registry->template->title="Lớp học của bạn";
				$this->registry->template->show("class/manage/class.list");
			}else{
				redirect_to();
			}
		}
		public function search(){
			if(isset($_SESSION['id'])){
				$this->classModel	=new classModel();
				$this->usersModel	=new usersModel();
				if(isset($_SESSION['id'])){
					$this->registry->template->num_notice=$this->classModel->count_notice($_SESSION['id']);
				}
				$this->registry->template->vaitro=$this->usersModel->getLevel($_SESSION['id']);
				$this->registry->template->users=$this->usersModel->getUsers($_SESSION['id']);
				$this->registry->template->class=$this->classModel->getClass();
				$this->registry->template->menu=$this->classModel->getMenu();
				$this->registry->template->title="Tìm kiếm lớp học";
				$this->registry->template->show("class/search/index");
			}else{
				redirect_to();
			}
		}
		public function create(){
			$this->classModel			=new classModel();
			$this->check_ajaxModel		=new check_ajaxModel();
			if(isset($_SESSION['id'])){
				if($_SERVER['REQUEST_METHOD']=="POST"){
					$class 	=array();
					$errors =array();
					if(!empty($_POST['name'])){
						if($this->check_ajaxModel->isClass_name($_POST['name'])){
							$errors[]="name_avaiable";
						}else{
							$class['name']=$_POST['name'];
						}
					}else{
						$errors[]="name_empty";
					}
					if(!empty($_POST['des'])){
						$class['des']=$_POST['des'];
					}else{
						$class['des']=null;
					}
					$class['giao_vien_id']=$_SESSION['id'];
					$class['image']="default.jpg";
					if(empty($errors)){
						if($this->classModel->create($class)){
							$message="<div class='alert alert-success'>Bạn đã đăng ký lớp học thành công .</div>";
							$this->registry->template->message=$message;
						}else{
							$message="<div class='alert alert-warning'>Có lỗi xảy ra trong quá trình đăng ký . 
										Chúng tôi xin lỗi bạn vì sự phiền phức này .</div>";
							$this->registry->template->message=$message;
						}
					}
				}
				$this->registry->template->num_notice=$this->classModel->count_notice($_SESSION['id']);
				$this->registry->template->menu=$this->classModel->getMenu();
				$this->registry->template->users=$this->classModel->getNewUsers();
				$this->registry->template->title="Đăng ký lớp học";
				$this->registry->template->show("class/manage/class.create");
			}else{
				redirect_to();
			}
		}
		public function edit(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1)) &&isset($_SESSION['id'])){
				$this->classModel		=new classModel();
				$this->check_ajaxModel	=new check_ajaxModel();
				$temp_class=$this->classModel->getClassById($_GET['id']);
				if($_SERVER['REQUEST_METHOD']=="POST"){
					$class 	=array();
					$errors =array();
					$class['id']=$_GET['id'];
					if(!empty($_POST['name'])){
						if($this->check_ajaxModel->is_class_name_without_id($_POST['name'],$_GET['id'])){
							$errors[]="name_avaiable";
						}else{
							$class['name']=$_POST['name'];
						}
					}else{
						$errors[]="name_empty";
					}
					if(!empty($_POST['des'])){
						$class['des']=$_POST['des'];
					}else{
						$class['des']=null;
					}
					$class['giao_vien_id']=$_SESSION['id'];
					if(!empty($_POST['sdt'])){
						$class['sdt']=$_POST['sdt'];
					}else{
						$class['sdt']=null;
					}
					if(!empty($_POST['email'])){
						$class['email']=$_POST['email'];
					}else{
						$class['email']=null;
					}
					if(!empty($_POST['address'])){
						$class['address']=$_POST['address'];
					}else{
						$class['address']=null;
					}
					if(!empty($_FILES['image']['name'])){
						$temp=process_images_class($_FILES['image'],100);
						if($temp!=null){
							$class['image']=$temp;
						}else{
							$class['image']="default.jpg";
						}
					}else if(!empty($temp_class['image'])){
						$class['image']=$temp_class['image'];
					}else{
						$class['image']="default.jpg";
					}
					if(empty($errors)){
						if($this->classModel->update($class)){
							$message="<div class='alert alert-success'>Bạn đã cập nhật thông tin thành công . 
									Click <a href='?rt=class/danhsach'>vào đây </a>để quay về trang quản lý</div>";
							$this->registry->template->message=$message;
						}else{
							$message="<div class='alert alert-warning'>Có lỗi xảy ra trong quá trình đăng ký . 
										Chúng tôi xin lỗi bạn vì sự phiền phức này .</div>";
							$this->registry->template->message=$message;
						}
					}
				}
				$this->registry->template->num_notice=$this->classModel->count_notice($_SESSION['id']);
				$this->registry->template->class=$temp_class;
				$this->registry->template->menu=$this->classModel->getMenu();
				$this->registry->template->users=$this->classModel->getNewUsers();
				$this->registry->template->title="Đăng ký lớp học";
				$this->registry->template->show("class/manage/class.edit");
			}else{
				redirect_to();
			}
		}
		public function del(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1)) && isset($_SESSION['id'])){
				$this->classModel	=new classModel();
				if($_SERVER['REQUEST_METHOD']=="POST"){
					if(isset($_POST['delete-radio']) && $_POST['delete-radio']=="delete"){
						if($this->classModel->del($_GET['id'])){
							$message="<div class='alert alert-success'>Bạn đã xóa thành công lớp học . 
									Click <a href='?rt=class/danhsach'>vào đây </a>để quay lại trang quản lý</div>";
							$this->registry->template->message=$message;
						}else{
							$message="<div class='alert alert-warning'>Có lỗi xảy ra do hệ thống của chúng tôi 申し訳ございません</div>";
							$this->registry->template->message=$message;
						}
					}else{
						redirect_to("?rt=class/danhsach");
					}
				}
				$this->registry->template->num_notice=$this->classModel->count_notice($_SESSION['id']);
				$this->registry->template->class=$this->classModel->getClassById($_GET['id']);
				$this->registry->template->menu=$this->classModel->getMenu();
				$this->registry->template->users=$this->classModel->getNewUsers();
				$this->registry->template->title="Đăng ký lớp học";
				$this->registry->template->show("class/manage/class.delete");
			}else{
				redirect_to();
			}
		}
	}
?>