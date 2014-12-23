<?php
	session_start();
	include 'models/thumuc2.model.php';
?>
<?php
	class thumuc2Controller extends Controller{
		private $thumuc2Model =null;
		// =========== INDEX ==================
		public function index(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$thumuc2_id=$_GET['id'];
				$this->thumuc2Model=new thumuc2Model();
				$this->registry->template->pages=$this->thumuc2Model->getPagesOfThuMuc2($thumuc2_id);
				$thumuc2=$this->thumuc2Model->getThuMuc2ById($thumuc2_id);
				$this->registry->template->title=$thumuc2['name'];
				if(isset($_SESSION['id'])){
					$this->registry->template->num_notice=$this->thumuc2Model->count_notice($_SESSION['id']);
					// Load menu bar
				}
				$this->registry->template->menu=$this->thumuc2Model->getMenu();
				// End load menubar
				$this->registry->template->BreadCrumb=$this->thumuc2Model->getBreadCrumb($thumuc2_id);
				$this->registry->template->users=$this->thumuc2Model->getNewUsers();
				$this->registry->template->show("thumuc2/index");
			}else{
				redirect_to();
			}
			
		}
		// ==========CREATE ==================
		public function create(){
			if(!isset($_SESSION['level'])|| $_SESSION['level']<4){
				redirect_to();
			}else if(isset($_GET['thumuc_id']) && filter_var($_GET['thumuc_id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->thumuc2Model=new thumuc2Model();
				$thumuc2=array();
				$thumuc2['thumuc_id']=$_GET['thumuc_id'];;//Thumuc_id
				if($_SERVER['REQUEST_METHOD']=='POST'){
					$errors=array();
					if(!empty($_POST['name'])){
						$thumuc2['name']=strip_tags($_POST['name']);
						$thumuc2['url']=vn2latin(strip_tags($_POST['name']),true);
					}else{
						$errors[]="name";
					}
					if(!empty($_POST['position'])){
						$thumuc2['position']=$_POST['position'];
					}else{
						$errors[]="position";
					}
					if(empty($errors)){
						if($this->thumuc2Model->create($thumuc2)){
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
				$this->registry->template->menu=$this->thumuc2Model->getMenu();
				$this->registry->template->num_notice=$this->thumuc2Model->count_notice($_SESSION['id']);
				// End load menubar
				$this->registry->template->max_position=$this->thumuc2Model->getPosition();
				$this->registry->template->title="Tạo mới thư mục DA-MVC";
				$this->registry->template->users=$this->thumuc2Model->getNewUsers();
				$this->registry->template->show('thumuc2/thumuc2.create');
			}else{
				redirect_to();
			}
		}
		public function edit(){
			if(!isset($_SESSION['level'])|| $_SESSION['level']<4){
				redirect_to();
			}
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->thumuc2Model=new thumuc2Model();
				$id=$_GET['id'];
				$this->registry->template->thumuc2=$this->thumuc2Model->getThuMuc2ById($id);
				$this->registry->template->thumuc=$this->thumuc2Model->getThuMuc($id);
				$thumuc2=array();
				$thumuc2['id']=$id;
				if($_SERVER['REQUEST_METHOD']=='POST'){
					$errors=array();
					if(!empty($_POST['name'])){
						$thumuc2['name']=strip_tags($_POST['name']);
						$thumuc2['url']=vn2latin(strip_tags($_POST['name']),true);
					}else{
						$errors[]="name";
					}
					if(!empty($_POST['thumuc_id'])){
						$thumuc2['thumuc_id']=$_POST['thumuc_id'];
					}else{
						$errors[]="thumuc_id";
					}
					if(!empty($_POST['position'])){
						$thumuc2['position']=$_POST['position'];
					}else{
						$errors[]="position";
					}
					if(empty($errors)){
						if($this->thumuc2Model->edit($thumuc2)){
							$message="<div class='alert alert-success'>
												<strong>Well done !</strong>Bạn đã sửa thư mục thành công !
											</div>";
							$this->registry->template->message=$message;
						}else{
							$message="<div class='alert alert-warning'>
											<strong>Wrong </strong>Có lỗi xảy ra ... Chúng tôi xin lỗi về sự bất tiện này .!
											</div>";
							$this->registry->template->message=$message;
						}
					}
					$this->registry->template->errors=$errors;
				}
					// Load menu bar
				$this->registry->template->menu=$this->thumuc2Model->getMenu();
				$this->registry->template->num_notice=$this->thumuc2Model->count_notice($_SESSION['id']);
				// End load menubar
				$this->registry->template->max_position=$this->thumuc2Model->getPosition();
				$this->registry->template->title="Sửa thư mục DA-MVC";
				$this->registry->template->users=$this->thumuc2Model->getNewUsers();
				$this->registry->template->show('thumuc2/thumuc2.edit');
			}else{
				redirect_to();
			}
		}
		public function delete(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1)) && isset($_SESSION['id'])){
				// Load model ..
				$this->thumuc2Model=new thumuc2Model();
				// Xử lý form ..
				$thumuc2_id=$_GET['id'];
				$thumuc2=array();
				$thumuc2=$this->thumuc2Model->getThuMuc2ById($thumuc2_id);
				$this->registry->template->item_page=$this->thumuc2Model->getPagesOfThuMuc2($thumuc2_id);
				if(empty($thumuc2['name'])){
					redirect_to('index.php');
				}else{
					$this->registry->template->title="Deleting ".$thumuc2['name'];
					$this->registry->template->thumuc2=$thumuc2;
				}
				if($_SERVER['REQUEST_METHOD']=='POST'){
					if(isset($_POST['delete-radio']) &&$_POST['delete-radio']=="delete"){
						if($this->thumuc2Model->delete($thumuc2_id)){
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
				$this->registry->template->menu=$this->thumuc2Model->getMenu();
				$this->registry->template->num_notice=$this->thumuc2Model->count_notice($_SESSION['id']);
				// End load menubar
				$this->registry->template->users=$this->thumuc2Model->getNewUsers();
				$this->registry->template->show('thumuc2/thumuc2.delete');
			}else{
				redirect_to();
			}
		}
	}
?>