<?php
	session_start();
	include 'models/pages.model.php';
	include 'models/check_ajax.model.php';
?>
<?php
	class pagesController extends Controller{
		private $pagesModel=null;
		private $check_ajaxModel=null;
		public function index(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$id=$_GET['id'];
				$this->pagesModel=new pagesModel();
				$pages=$this->pagesModel->getPages($id);
				$pages['id']=$id;
				$this->registry->template->pages=$pages;
				// Load menu bar
				$this->registry->template->menu=$this->pagesModel->getMenu();
				// End load menubar
				$this->registry->template->title=$pages['title'];
				$this->registry->template->show("pages/index");
			}else{
				redirect_to();
			}
		}
		public function create(){
			if(isset($_SESSION['level']) && $_SESSION['level']==3){
				$this->pagesModel=new pagesModel();
				$this->check_ajaxModel=new check_ajaxModel();
				$pages=array();
				$errors=array();
				$pages['author_id']=$_SESSION['id'];
				if($_SERVER['REQUEST_METHOD']=='POST'){
					if(!empty($_POST['name'])){
						if($this->check_ajaxModel->check_name_pages($_POST['name'])){
							$errors[]="name_is_available";
						}else{
							$pages['name']=strip_tags($_POST['name']);
							$pages['url']=vn2latin($_POST['name'],true);
						}
					}else{
						$errors[]='name';
					}
					if(!empty($_POST['title'])){
						$pages['title']=strip_tags($_POST['title']);
					}else{
						$errors[]='title';
					}
					if(!empty($_POST['chuyen_muc'])){
						if($_POST['chuyen_muc']>=100 && $_POST['chuyen_muc']<1000){
							$pages['menu_id']=$_POST['chuyen_muc']-100;
							$pages['thumuc_id']=null;
							$pages['thumuc2_id']=null;
						}else if($_POST['chuyen_muc']>1000 &&$_POST['chuyen_muc']<10000){
							$pages['menu_id']=null;
							$pages['thumuc_id']=$_POST['chuyen_muc']-1000;
							$pages['thumuc2_id']=null;
						}else if($_POST['chuyen_muc']>10000){
							$pages['menu_id']=null;
							$pages['thumuc_id']=null;
							$pages['thumuc2_id']=$_POST['chuyen_muc']-10000;
						}
					}else{
						$errors[]='chuyen_muc';
					}
					if(!empty($_FILES['image_icon']['name'])){
						$temp=upload($_FILES['image_icon']);
						if($temp!="success"){
							$errors[]="image_icon";
							$this->registry->template->image_error=$temp;
						}else{
							$pages['image_icon']=$_FILES['image_icon']['name'];
						}
					}else{
						$pages['image_icon']=null;
					}
					if(!empty($_FILES['mp3']['name'])){
						$temp=upload($_FILES['mp3']);
						if($temp!="success"){
							$errors[]="mp3";
							$this->registry->template->mp3_error=$temp;
						}else{
							$pages['mp3']=$_FILES['mp3']['name'];
						}
					}else{
						$pages['mp3']=null;
					}
					if(!empty($_POST['content'])){
						$pages['content']=$_POST['content'];
					}else{
						$errors[]="content";
					}
					if(!empty($_POST['des'])){
						$pages['des']=$_POST['des'];
					}else{
						$errors[]="des";
					}
					if(!empty($_POST['keyword'])){
						$pages['keyword']=$_POST['keyword'];
					}else{
						$errors[]="keyword";
					}
					if(!empty($_POST['meta'])){
						$pages['meta']=$_POST['meta'];
					}else{
						$errors[]="meta";
					}
					if(empty($errors)){
						if($this->pagesModel->create($pages)){
							$id=$this->pagesModel->getPageId($pages['name']);
							if(!empty($id)&&!empty($pages['menu_id'])){
								if($this->pagesModel->insert_page_menu($id,$pages['menu_id'])){
									$message="<div class='alert alert-success'>
											<strong>Well done !</strong> Bài viết của bạn đã được đăng thành công .</div>";
									$this->registry->template->message=$message;
								}else{
									$message="<div class='alert alert-warning'>
												<strong>Error !</strong>Có lỗi xảy ra khi insert to page_name .</div>";
									$this->registry->template->message=$message;
								}
							}else if(!empty($id)&&!empty($pages['thumuc_id'])){
								if($this->pagesModel->insert_page_thumuc($id,$pages['thumuc_id'])){
									$message="<div class='alert alert-success'>
											<strong>Well done !</strong> Bài viết của bạn đã được đăng thành công .</div>";
									$this->registry->template->message=$message;
								}else{
									$message="<div class='alert alert-warning'>
												<strong>Error !</strong>Có lỗi xảy ra khi insert to page_thumuc .</div>";
									$this->registry->template->message=$message;
								}
							}else if(!empty($id)&&!empty($pages['thumuc2_id'])){
								if($this->pagesModel->insert_page_thumuc2($id,$pages['thumuc2_id'])){
									$message="<div class='alert alert-success'>
											<strong>Well done !</strong> Bài viết của bạn đã được đăng thành công .</div>";
									$this->registry->template->message=$message;
								}else{
									$message="<div class='alert alert-warning'>
												<strong>Error !</strong>Có lỗi xảy ra khi insert to page_thumuc2 .</div>";
									$this->registry->template->message=$message;
								}
							}
							
						}else{
							$message="<div class='alert alert-warning'>
									<strong>Error !</strong>Có lỗi xảy ra ... xin vui lòng thử lại lần sau .</div>";
							$this->registry->template->message=$message;
						}
					}
				}
				$this->registry->template->errors=$errors;
				$this->registry->template->menu=$this->pagesModel->getMenu();
				$this->registry->template->thumuc=$this->pagesModel->getThuMuc();
				$this->registry->template->thumuc2=$this->pagesModel->getThuMuc2();
				// Load menu bar
				$this->registry->template->menu=$this->pagesModel->getMenu();
				// End load menubar
				$this->registry->template->show('pages/pages.create');
			}else{
				redirect_to("");
			}
		}
		public function edit(){
			if(isset($_SESSION['level']) && $_SESSION['level']==3){
				if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
					$this->pagesModel=new pagesModel();
					$this->check_ajaxModel=new check_ajaxModel();
					$pages=array();
					$errors=array();
					$id=$_GET['id'];
					$this->registry->template->pages=$this->pagesModel->getPages($id);
					$page_menu=$this->pagesModel->getMenuById($id);
					$page_thumuc=$this->pagesModel->getThuMucById($id);
					$page_thumuc2=$this->pagesModel->getThuMuc2ById($id);
					$pages['author_id']=$_SESSION['id'];
					if($_SERVER['REQUEST_METHOD']=='POST'){
						if(!empty($_POST['name'])){
							if($this->check_ajaxModel->check_edit_name_pages($_POST['name'],$id)){
								$errors[]="name_is_available";
							}else{
								$pages['name']=strip_tags($_POST['name']);
								$pages['url']=vn2latin($_POST['name'],true);
							}
						}else{
							$errors[]='name';
						}
						if(!empty($_POST['title'])){
							$pages['title']=strip_tags($_POST['title']);
						}else{
							$errors[]='title';
						}
						if(!empty($_POST['chuyen_muc'])){
							if($_POST['chuyen_muc']>=100 && $_POST['chuyen_muc']<1000){
								$pages['menu_id']=$_POST['chuyen_muc']-100;
								$pages['thumuc_id']=null;
								$pages['thumuc2_id']=null;
							}else if($_POST['chuyen_muc']>1000 &&$_POST['chuyen_muc']<10000){
								$pages['menu_id']=null;
								$pages['thumuc_id']=$_POST['chuyen_muc']-1000;
								$pages['thumuc2_id']=null;
							}else if($_POST['chuyen_muc']>10000){
								$pages['menu_id']=null;
								$pages['thumuc_id']=null;
								$pages['thumuc2_id']=$_POST['chuyen_muc']-10000;
							}
						}else{
							$errors[]='chuyen_muc';
						}
						if(!empty($_FILES['image_icon']['name'])){
							$temp=upload($_FILES['image_icon']);
							if($temp!="success"){
								$errors[]="image_icon";
								$this->registry->template->image_error=$temp;
							}else{
								$pages['image_icon']=$_FILES['image_icon']['name'];
							}
						}else{
							$pages['image_icon']=null;
						}
						if(!empty($_FILES['mp3']['name'])){
							$temp=upload($_FILES['mp3']);
							if($temp!="success"){
								$errors[]="mp3";
								$this->registry->template->mp3_error=$temp;
							}else{
								$pages['mp3']=$_FILES['mp3']['name'];
							}
						}else{
							$pages['mp3']=null;
						}
						if(!empty($_POST['content'])){
							$pages['content']=$_POST['content'];
						}else{
							$errors[]="content";
						}
						if(!empty($_POST['des'])){
							$pages['des']=$_POST['des'];
						}else{
							$errors[]="des";
						}
						if(!empty($_POST['keyword'])){
							$pages['keyword']=$_POST['keyword'];
						}else{
							$errors[]="keyword";
						}
						if(!empty($_POST['meta'])){
							$pages['meta']=$_POST['meta'];
						}else{
							$errors[]="meta";
						}
						if(empty($errors)){
							if($this->pagesModel->edit($pages)){
								if(!empty($page_menu['menu_id'])&&empty($pages['menu_id'])){
									if($this->pagesModel->delete_page_menu($id)){
									}else{
										$message="errors";
										$this->registry->template->message=$message;
									}
								}else if(!empty($page_thumuc['thumuc_id'])&&empty($pages['thumuc_id'])){
									if($this->pagesModel->delete_page_thumuc($id)){
									}else{
										$message="errors";
										$this->registry->template->message=$message;
									}
								}else if(!empty($page_thumuc2['thumuc2_id'])&&empty($pages['thumuc2_id'])){
									if($this->pagesModel->delete_page_thumuc2($id)){
									
									}else{
										$message="errors";
										$this->registry->template->message=$message;
									}
								}elseif(!empty($id)&&!empty($pages['menu_id'])){
									if($this->pagesModel->insert_page_menu($id,$pages['menu_id'])){
										$message="<div class='alert alert-success'>
												<strong>Well done !</strong> Bài viết của bạn đã được đăng thành công .</div>";
										$this->registry->template->message=$message;
									}else{
										$message="<div class='alert alert-warning'>
													<strong>Error !</strong>Có lỗi xảy ra khi insert to page_name .</div>";
										$this->registry->template->message=$message;
									}
								}else if(!empty($id)&&!empty($pages['thumuc_id'])){
									if($this->pagesModel->insert_page_thumuc($id,$pages['thumuc_id'])){
										$message="<div class='alert alert-success'>
												<strong>Well done !</strong> Bài viết của bạn đã được đăng thành công .</div>";
										$this->registry->template->message=$message;
									}else{
										$message="<div class='alert alert-warning'>
													<strong>Error !</strong>Có lỗi xảy ra khi insert to page_thumuc .</div>";
										$this->registry->template->message=$message;
									}
								}else if(!empty($id)&&!empty($pages['thumuc2_id'])){
									if($this->pagesModel->insert_page_thumuc2($id,$pages['thumuc2_id'])){
										$message="<div class='alert alert-success'>
												<strong>Well done !</strong> Bài viết của bạn đã được đăng thành công .</div>";
										$this->registry->template->message=$message;
									}else{
										$message="<div class='alert alert-warning'>
													<strong>Error !</strong>Có lỗi xảy ra khi insert to page_thumuc2 .</div>";
										$this->registry->template->message=$message;
									}
								}
							}else{
								$message="<div class='alert alert-warning'>
										<strong>Error !</strong>Có lỗi xảy ra ... xin vui lòng thử lại lần sau .</div>";
								$this->registry->template->message=$message;
							}
						}
					}
					$this->registry->template->errors=$errors;
					$this->registry->template->menu=$this->pagesModel->getMenu();
					$this->registry->template->thumuc=$this->pagesModel->getThuMuc();
					$this->registry->template->thumuc2=$this->pagesModel->getThuMuc2();
					// Load menu bar
					$this->registry->template->menu=$this->pagesModel->getMenu();
					// End load menubar
					$this->registry->template->show('pages/pages.edit');
				}else{
					redirect_to("error404");
				}
			}else{
				redirect_to();
			}
		}
		public function delete(){
			if(isset($_SESSION['level']) && $_SESSION['level']==3){
				$this->pagesModel=new pagesModel();
				if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
					$id=$_GET['id'];
					$pages=array();
					$pages=$this->pagesModel->getPageById($id);
					if(empty($pages['name'])){
						redirect_to('index.php');
					}else{
						$this->registry->template->title=$pages['name'];
						$this->registry->template->pages=$pages;
					}
				}
				if($_SERVER['REQUEST_METHOD']=='POST'){
					if(isset($_POST['delete-radio']) &&$_POST['delete-radio']=="delete"){
						if($this->pagesModel->delete($id)){
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
				$this->registry->template->menu=$this->pagesModel->getMenu();
				// End load menubar
				$this->registry->template->show('pages/pages.delete');
			}else{
				redirect_to();
			}
		}
	}
?>