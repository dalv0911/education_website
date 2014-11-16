<?php
	session_start();
	include 'models/thumuc.model.php';
	include 'models/check_ajax.model.php';
?>
<?php
	class thumucController extends Controller{
		private $thumucModel=null;
		public function index(){
			// Load model ...
			$this->thumucModel=new thumucModel();
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$thumuc_id=$_GET['id'];

				$this->registry->template->thumuc=$this->thumucModel->getThuMucById($thumuc_id);
				$this->registry->template->pages=$this->thumucModel->getPages($thumuc_id);
				$this->registry->template->thumuc2=$this->thumucModel->getThuMuc2($thumuc_id);
				$this->registry->template->menu_detail=$this->thumucModel->getMenuByThuMucId($thumuc_id);
			}
			// Load menu bar
			$this->registry->template->menu=$this->thumucModel->getMenu();
			// End load menubar
			$this->registry->template->show("thumuc/index");
		}
		public function create(){
			$this->thumucModel=new thumucModel();
			$this->check_ajaxModel=new check_ajaxModel();
			$thumuc=array();
			if(!isset($_SESSION['level'])|| $_SESSION['level']!=3){
				redirect_to();
			}
			if($_SERVER['REQUEST_METHOD']=='POST'){
				$errors=array();
				if(!empty($_POST['name'])){
					if($this->check_ajaxModel->check_name_thumuc($_POST['name'])){
						$errors[]="name_is_available";
					}else{
						$thumuc['name']=strip_tags($_POST['name']);
						$thumuc['url']=vn2latin(strip_tags($_POST['name']),true);
					}
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
					if($this->thumucModel->create($thumuc)){
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
			$this->registry->template->menu=$this->thumucModel->getMenu();
			// End load menubar
			$this->registry->template->max_position=$this->thumucModel->getPosition();
			$this->registry->template->title="Tạo mới thư mục DA-MVC";
			$this->registry->template->show('thumuc/thumuc.create');
		}
		public function edit(){
			if(!isset($_SESSION['level'])|| $_SESSION['level']!=3){
				redirect_to();
			}
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->thumucModel=new thumucModel();
				$this->check_ajaxModel=new check_ajaxModel();
				$id=$_GET['id'];
				$this->registry->template->thumuc=$this->thumucModel->getThuMucById($id);
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
						if($this->thumucModel->edit($thumuc)){
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
				$this->registry->template->menu=$this->thumucModel->getMenu();
				// End load menubar
				$this->registry->template->max_position=$this->thumucModel->getPosition();
				$this->registry->template->title="Sửa thư mục DA-MVC";
				$this->registry->template->show('thumuc/thumuc.edit');
			}else{
				redirect_to();
			}
		}
		public function delete(){
			// Load model ..
			$this->thumucModel=new thumucModel();
			// Xử lý form ..
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$thumuc_id=$_GET['id'];
				$thumuc=array();
				$thumuc=$this->thumucModel->getThuMucById($thumuc_id);
				$this->registry->template->item_page=$this->thumucModel->getPagesOfThuMuc($thumuc_id);
				$this->registry->template->item_thumuc2=$this->thumucModel->getThuMuc2OfThuMuc($thumuc_id);
				if(empty($thumuc['name'])){
					redirect_to('index.php');
				}else{
					$this->registry->template->title="Deleting ".$thumuc['name'];
					$this->registry->template->thumuc=$thumuc;
				}
			}
			if($_SERVER['REQUEST_METHOD']=='POST'){
				if(isset($_POST['delete-radio']) &&$_POST['delete-radio']=="delete"){
					if($this->thumucModel->delete($thumuc_id)){
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
					redirect_to('index.php');
				}
			}
				// Load menu bar
				$this->registry->template->menu=$this->thumucModel->getMenu();
				// End load menubar
			$this->registry->template->show('thumuc/thumuc.delete');
		}
	}
?>