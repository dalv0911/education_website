<?php
	session_start();
	include'models/menu.model.php';
?>
<?php
	class menuController extends Controller{
		private $menuModel=null;
		public function index(){
			// Load model ...
			$this->menuModel=new menuModel();
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$menu_id=$_GET['id'];
				$this->registry->template->thumuc=$this->menuModel->getThuMucByMenu($menu_id);
				$this->registry->template->menu_detail=$this->menuModel->getMenuById($menu_id);
			}
			// Load menu bar
			$this->registry->template->menu=$this->menuModel->getMenu();
			// End load menubar
			$this->registry->template->show("menu/index");
		}
		public function create(){
			$this->menuModel=new menuModel();
			$thumuc=array();
			if(!isset($_SESSION['level'])|| $_SESSION['level']!=3){
				redirect_to();
			}
			if($_SERVER['REQUEST_METHOD']=='POST'){
				$errors=array();
				if(!empty($_POST['name'])){
					$thumuc['name']=strip_tags($_POST['name']);
					$thumuc['url']=vn2latin(strip_tags($_POST['name']),true);
				}else{
					$errors[]="name";
				}
				if(!empty($_POST['menu_id'])){
					$thumuc['menu_id']=$_POST['menu_id'];
				}else{
					$errors[]="menu_id";
				}
				if(!empty($_POST['position'])){
					$thumuc['position']=$_POST['position'];
				}else{
					$errors[]="position";
				}
				if(empty($errors)){
					if($this->menuModel->create($thumuc)){
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
			}
				// Load menu bar
			$this->registry->template->menu=$this->menuModel->getMenu();
			// End load menubar
			$this->registry->template->max_position=$this->menuModel->getPosition();
			$this->registry->template->title="Tạo mới thư mục DA-MVC";
			$this->registry->template->show('menu/menu.create');
		}
		public function edit(){
			$this->menuModel=new menuModel();
			if(!isset($_SESSION['level'])|| $_SESSION['level']!=3){
				redirect_to();
			}
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$id=$_GET['id'];
				$this->registry->template->thumuc=$this->menuModel->getThuMucById($id);
				$thumuc=array();
				$thumuc['id']=$id;
				if($_SERVER['REQUEST_METHOD']=='POST'){
					$errors=array();
					if(!empty($_POST['name'])){
						$thumuc['name']=strip_tags($_POST['name']);
						$thumuc['url']=vn2latin(strip_tags($_POST['name']),true);
					}else{
						$errors[]="name";
					}
					if(!empty($_POST['menu_id'])){
						$thumuc['menu_id']=$_POST['menu_id'];
					}else{
						$errors[]="menu_id";
					}
					if(!empty($_POST['position'])){
						$thumuc['position']=$_POST['position'];
					}else{
						$errors[]="position";
					}
					if(empty($errors)){
						if($this->menuModel->edit($thumuc)){
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
				}
					// Load menu bar
				$this->registry->template->menu=$this->menuModel->getMenu();
				// End load menubar
				$this->registry->template->max_position=$this->menuModel->getPosition();
				$this->registry->template->title="Sửa thư mục DA-MVC";
				$this->registry->template->show('menu/menu.edit');
			}else{
				redirect_to();
			}
			
			
		}
	}
?>