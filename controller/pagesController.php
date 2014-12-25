<?php
	session_start();
	include 'models/pages.model.php';
	include 'models/users.model.php';
	include 'models/check_ajax.model.php';
	include 'models/favorite.model.php';
	include 'includes/images.php';
?>
<?php
	class pagesController extends Controller{

		private $pagesModel		=null;
		private $check_ajaxModel=null;
		private $usersModel		=null;
		private $favoriteModel	=null;
		public function index(){
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->pagesModel		=new pagesModel();
				$this->usersModel		=new usersModel();
				$this->favoriteModel	=new favoriteModel();
				$pages=array();
				$pages=$this->pagesModel->getPages($_GET['id']);
				$this->registry->template->pages=$pages;
				if($_SERVER['REQUEST_METHOD']=="POST" && isset($_SESSION['id'])){
					if(!empty($_POST['comment'])){
						$comment=array();
						$comment['user_id']=$_SESSION['id'];
						$comment['page_id']=$_GET['id'];
						$comment['content']=strip_tags($_POST['comment']);
						if($this->pagesModel->insert_comment($comment)){			
						}else{
							$m_comment="Có lỗi xảy ra từ hệ thống , bình luận của bạn chưa được đăng .
										<br> Chúng tôi rất xin lỗi về sự bất tiện này";
							$this->registry->template->m_comment=$m_comment;
						}
					}
				}
				if(isset($_SESSION['id']) && $this->usersModel->check_history($_SESSION['id'],$_GET['id'])){
					if($this->usersModel->insert_history($_SESSION['id'],$_GET['id'])){
					}else{
					}	
				}
				if(isset($_SESSION['id'])){
					$this->registry->template->num_notice=$this->pagesModel->count_notice($_SESSION['id']);
					if($this->favoriteModel->is_checked($_SESSION['id'],$_GET['id'])){
						$this->registry->template->is_checked=1;
					}else{
						$this->registry->template->is_checked=0;
					}
				}
				$this->registry->template->page_around=$this->pagesModel->get_pages_around($_GET['id']);
				$this->registry->template->comment=$this->pagesModel->getComment($_GET['id']);
				// Load menu bar
				$this->registry->template->menu=$this->pagesModel->getMenu();
				// End load menubar
				$this->registry->template->title=$pages['title'];
				$this->registry->template->users=$this->pagesModel->getNewUsers();
				$this->registry->template->top_class=$this->pagesModel->get_top_class();
				$this->registry->template->show("pages/index");
			}else{
				redirect_to();
			}
		}
		public function create(){
			if(isset($_SESSION['level']) && $_SESSION['level']>=4){
				$this->pagesModel=new pagesModel();
				$this->check_ajaxModel=new check_ajaxModel();
				$pages=array();
				$errors=array();
				$tags=array();
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
						$temp=process_images_pages($_FILES['image_icon'],150);
						if($temp!=null){
							$pages['image_icon']=$temp;
						}else{
							$pages['image_icon']='default.jpg';
						}
					}else{
						$pages['image_icon']='default.jpg';
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
					if(!empty($_POST['tags'])){
							$tags=explode(",",$_POST['tags']);
							$i=0;
							while(isset($tags[$i]) &&$tags[$i]!=null){
								if(!$this->pagesModel->is_tags($tags[$i])){//Kiểm tra xem tag đã tồn tại chưa
									$this->pagesModel->insert_tags($tags[$i]); // Thêm tag vào cơ sở dữ liệu nếu tag chưa đk add
								}
								$i++;
							}
						}else{
							$errors[]="tags";
						}
					if(empty($errors)){
						if($this->pagesModel->create($pages)){
							$id=$this->pagesModel->getPageId($pages['name']);
							if(!empty($id)&&!empty($pages['menu_id'])){
								if($this->pagesModel->insert_page_menu($id,$pages['menu_id'])){
									$message="<div class='alert alert-success'>
											<strong>Well done !</strong> Bài viết của bạn đã được đăng thành công .
												Xem bài viết <a href='?rt=pages&id=".$id."'>tại đây</a></div>";
									$this->registry->template->message=$message;
								}else{
									$message="<div class='alert alert-warning'>
												<strong>Error !</strong>Có lỗi xảy ra khi insert to page_name .</div>";
									$this->registry->template->message=$message;
								}
							}else if(!empty($id)&&!empty($pages['thumuc_id'])){
								if($this->pagesModel->insert_page_thumuc($id,$pages['thumuc_id'])){
									$message="<div class='alert alert-success'>
											<strong>Well done !</strong> Bài viết của bạn đã được đăng thành công .
												Xem bài viết <a href='?rt=pages&id=".$id."'>tại đây</a></div>";
									$this->registry->template->message=$message;
								}else{
									$message="<div class='alert alert-warning'>
												<strong>Error !</strong>Có lỗi xảy ra khi insert to page_thumuc .</div>";
									$this->registry->template->message=$message;
								}
							}else if(!empty($id)&&!empty($pages['thumuc2_id'])){
								if($this->pagesModel->insert_page_thumuc2($id,$pages['thumuc2_id'])){
									$message="<div class='alert alert-success'>
											<strong>Well done !</strong> Bài viết của bạn đã được đăng thành công .
												Xem bài viết <a href='?rt=pages&id=".$id."'>tại đây</a></div>";
									$this->registry->template->message=$message;
								}else{
									$message="<div class='alert alert-warning'>
												<strong>Error !</strong>Có lỗi xảy ra khi insert to page_thumuc2 .</div>";
									$this->registry->template->message=$message;
								}
							}
							$i=0;
							while(isset($tags[$i]) &&$tags[$i]!=null){
								$tag_id=$this->pagesModel->get_id_tags($tags[$i]);
								$this->pagesModel->insert_tags_target($id,$tag_id);
								$i++;
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
				$this->registry->template->num_notice=$this->pagesModel->count_notice($_SESSION['id']);
				// End load menubar
				$this->registry->template->users=$this->pagesModel->getNewUsers();
				$this->registry->template->top_class=$this->pagesModel->get_top_class();
				$this->registry->template->show('pages/pages.create');
			}else{
				redirect_to("");
			}
		}
		public function edit(){
			if(isset($_SESSION['level']) && $_SESSION['level']>=4){
				if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
					$this->pagesModel=new pagesModel();
					$this->check_ajaxModel=new check_ajaxModel();
					$pages=array();
					$errors=array();
					$pages_temp=array();
					$id=$_GET['id'];
					$pages['id']=$id;
					$pages_temp=$this->pagesModel->getPages($id);
					$this->registry->template->pages=$pages_temp;
					$page_menu=$this->pagesModel->getMenuById($id);
					$page_thumuc=$this->pagesModel->getThuMucById($id);
					$page_thumuc2=$this->pagesModel->getThuMuc2ById($id);
					$pages['author_id']=$_SESSION['id'];
					$this->registry->template->tags=$this->pagesModel->get_tags_target($id);
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
							$temp=process_images_pages($_FILES['image_icon'],150);
							if($temp!=null){
								$pages['image_icon']=$temp;
							}else{
								$pages['image_icon']=$pages_temp['image_icon'];
							}
						}else{
							$pages['image_icon']=$pages_temp['image_icon'];
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
						if(!empty($_POST['tags'])){
							$tags=explode(",",$_POST['tags']);
							$i=0;
							while(isset($tags[$i]) &&$tags[$i]!=null){
								if(!$this->pagesModel->is_tags($tags[$i])){//Kiểm tra xem tag đã tồn tại chưa
									$this->pagesModel->insert_tags($tags[$i]); // Thêm tag vào cơ sở dữ liệu nếu tag chưa đk add
								}
								$i++;
							}
							if($this->pagesModel->del_tags_target($id)){
								//Xóa những tag của page_id để chuẩn bị cho việc sửa đổi
							}else{
								$errors[]="system";
							}
						}else{
							$errors[]="tags";
						}
						if(empty($errors)){
							if($this->pagesModel->edit($pages)){
								if(!empty($page_menu['menu_id'])){
									if($this->pagesModel->delete_page_menu($id)){
									}else{
										$message="errors";
										$this->registry->template->message=$message;
									}
								}else if(!empty($page_thumuc['thumuc_id'])){
									if($this->pagesModel->delete_page_thumuc($id)){
									}else{
										$message="errors";
										$this->registry->template->message=$message;
									}
								}else if(!empty($page_thumuc2['thumuc2_id'])){
									if($this->pagesModel->delete_page_thumuc2($id)){
									
									}else{
										$message="errors";
										$this->registry->template->message=$message;
									}
								}
								if(!empty($id)&&!empty($pages['menu_id'])){
									if($this->pagesModel->insert_page_menu($id,$pages['menu_id'])){
										$message="<div class='alert alert-success'>
											<strong>Well done !</strong> Bài viết của bạn đã được sửa thành công .
												Xem bài viết <a href='?rt=pages&id=".$id."'>tại đây</a></div>";
										$this->registry->template->message=$message;
									}else{
										$message="<div class='alert alert-warning'>
													<strong>Error !</strong>Có lỗi xảy ra khi insert to page_name .</div>";
										$this->registry->template->message=$message;
									}
								}else if(!empty($id)&&!empty($pages['thumuc_id'])){
									if($this->pagesModel->insert_page_thumuc($id,$pages['thumuc_id'])){
										$message="<div class='alert alert-success'>
											<strong>Well done !</strong> Bài viết của bạn đã được sửa thành công .
												Xem bài viết <a href='?rt=pages&id=".$id."'>tại đây</a></div>";
										$this->registry->template->message=$message;
									}else{
										$message="<div class='alert alert-warning'>
													<strong>Error !</strong>Có lỗi xảy ra khi insert to page_thumuc .</div>";
										$this->registry->template->message=$message;
									}
								}else if(!empty($id)&&!empty($pages['thumuc2_id'])){
									if($this->pagesModel->insert_page_thumuc2($id,$pages['thumuc2_id'])){
										$message="<div class='alert alert-success'>
											<strong>Well done !</strong> Bài viết của bạn đã được sửa thành công .
												Xem bài viết <a href='?rt=pages&id=".$id."'>tại đây</a></div>";
										$this->registry->template->message=$message;
									}else{
										$message="<div class='alert alert-warning'>
													<strong>Error !</strong>Có lỗi xảy ra khi insert to page_thumuc2 .</div>";
										$this->registry->template->message=$message;
									}
								}
								$i=0;
								while(isset($tags[$i]) &&$tags[$i]!=null){
									$tag_id=$this->pagesModel->get_id_tags($tags[$i]);
									$this->pagesModel->insert_tags_target($id,$tag_id);
									$i++;
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
					$this->registry->template->num_notice=$this->pagesModel->count_notice($_SESSION['id']);
					// End load menubar
					$this->registry->template->users=$this->pagesModel->getNewUsers();
					$this->registry->template->top_class=$this->pagesModel->get_top_class();
					$this->registry->template->show('pages/pages.edit');
				}else{
					redirect_to("error404");
				}
			}else{
				redirect_to();
			}
		}
		public function delete(){
			if(isset($_SESSION['level']) && $_SESSION['level']>=4){
				$this->pagesModel=new pagesModel();
				if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
					$id=$_GET['id'];
					$pages=array();
					$pages=$this->pagesModel->getPageById($id);
					$this->pagesModel->del_tags_target($id);
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
				$this->registry->template->num_notice=$this->pagesModel->count_notice($_SESSION['id']);
				// End load menubar
				$this->registry->template->users=$this->pagesModel->getNewUsers();
				$this->registry->template->top_class=$this->pagesModel->get_top_class();
				$this->registry->template->show('pages/pages.delete');
			}else{
				redirect_to();
			}
		}
	}
?>