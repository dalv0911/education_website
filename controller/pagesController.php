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
			$this->registry->template->title="";
			$this->registry->template->show("pages/");
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
					if(isset($_FILES['image_icon'])){
						$temp=upload($_FILES['image_icon']);
						if($temp!="success"){
							$errors[]="image_icon";
							$this->registry->template->image_error=$temp;
						}else{
							$pages['image_icon']=$_FILES['image_icon']['name'];
						}
					}
					if(isset($_FILES['mp3'])){
						$temp=upload($_FILES['mp3']);
						if($temp!="success"){
							$errors[]="mp3";
							$this->registry->template->mp3_error=$temp;
						}else{
							$pages['mp3']=$_FILES['mp3']['name'];
						}
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
			}else{
				redirect_to("error404");
			}

			$this->registry->template->errors=$errors;
			$this->registry->template->menu=$this->pagesModel->getMenu();
			$this->registry->template->thumuc=$this->pagesModel->getThuMuc();
			$this->registry->template->thumuc2=$this->pagesModel->getThuMuc2();
			// Load menu bar
			$this->registry->template->menu=$this->pagesModel->getMenu();
			// End load menubar
			$this->registry->template->show('pages/pages.create');
		}
	}
?>