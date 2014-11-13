
<?php
	session_start();
	include '../admin/models/menu.model.php';
	
?>

<?php
	class menuController extends Controller{
		private $menuModel;
		//function constructor ...
		//function index ...
		public function index(){
			if(!isset($_SESSION['user_id'])){
	    		redirect_to('index.php?rt=login');
	    	}
			$this->registry->template->show('index');
		}
		// Function create new categories
		public function create(){
			$this->menuModel=new menuModel();
			if($_SERVER['REQUEST_METHOD']=="POST"){
				$errors=array();
				$menu=array();
				if(!empty($_POST['name'])){
					$menu['name']=strip_tags($_POST['name']);
					$menu['url']=vn2latin(strip_tags($_POST['name']),true);
				}else{
					$errors[]="name";
				}
				if(isset($_POST['position'])){
					$menu['position']=$_POST['position'];
				}else{
					$errors[]="position";
				}
				if(empty($errors)){
					if($this->menuModel->create($menu)){
						$message="<div class='alert alert-success'>
										<strong>Well done !</strong>You was insert to database successfully !
									</div>";
						$this->registry->template->message=$message;
					}else{
						$message="<div class='alert alert-warning'>
									<strong>Wrong </strong>Have a error due to insert to database !
									</div>";
						$this->registry->template->message=$message;
					}
				}	
				$this->registry->template->errors=$errors;
				$this->registry->template->menu=$menu;
			}
			$this->registry->template->title="Create Menu - DA MVC ";
			$this->registry->template->max_position=$this->menuModel->getPosition();
			// Show views create_categories.php ...
			$this->registry->template->show('menu/menu.create');
		}
		public function view(){
			// Load model ....
			$this->menuModel=new menuModel();
			// Load view.....
			$this->registry->template->view=$this->menuModel->getView();
			$this->registry->template->title="View menu -DA MVC ";
			$this->registry->template->show('menu/menu.view');
		}
		public function edit(){
			$this->menuModel=new menuModel();
			$menu=array();
			if(isset($_GET['id']) &&filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min-range'=>1))){
				$id=$_GET['id'];
				$menu['id']=$id;
			}else{
				redirect_to("admin/index.php");
			}
			if($_SERVER['REQUEST_METHOD']=="POST"){

				$errors=array();
				if(!empty($_POST['name'])){
					$menu['name']=strip_tags($_POST['name']);
					$menu['url']=vn2latin(strip_tags($_POST['name']),true);
				}else{
					$errors[]="name";
				}
				if(isset($_POST['position'])){
					$menu['position']=$_POST['position'];
				}else{
					$errors[]="position";
				}
				if(empty($errors)){
					if($this->menuModel->edit($menu)){
						$message="<div class='alert alert-success'>
										<strong>Well done !</strong>You was edit to database successfully !
									</div>";
						$this->registry->template->message=$message;
					}else{
						$message="<div class='alert alert-warning'>
									<strong>Wrong </strong>Have a error due to edit database !
									</div>";
						$this->registry->template->message=$message;
					}
				}	
				// Truyền biến vào views ..Những biến này chi khi nào click vào nút create trên trình duyệt nó mới được truyền .
				$this->registry->template->errors=$errors;
			}
			$this->registry->template->menu=$menu;
			$this->registry->template->title="Edit Categories - DA MVC ";
			$this->registry->template->max_position=$this->menuModel->getPosition();
			// Show views create_categories.php ...
			$this->registry->template->show('menu/menu.edit');

		}
		public function delete(){
			// Load model ..
			$this->menuModel=new menuModel();
			// Xử lý form ..
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$id=$_GET['id'];
			}
			if($_SERVER['REQUEST_METHOD']=='POST'){
				if(isset($_POST['delete-radio']) && $_POST['delete-radio']=="delete"){
					if($this->menuModel->delete($id)){
						$message="<div class='alert alert-success'>
									<strong>Well done !</strong> Bạn đã xóa thành công 
								</div>";
					}else{
						$message="<div class='alert alert-warning'>
									<strong>Error !</strong>Có lỗi xảy ra ... Yêu cầu xóa của bạn không thành công !
								</div>";
					}
					$this->registry->template->message=$message;
				}else{
					redirect_to('admin/index.php');
				}
			}

			$this->registry->template->show('menu/menu.delete');
		}
	}
?>