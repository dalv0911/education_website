<?php
	session_start(); // start session
	include 'models/author.model.php';
?>
<?php
	class authorController extends Controller{
		private $authorModel=null;
		public function index(){
			$this->authorModel=new authorModel();
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$author_id=$_GET['id'];
				$this->registry->template->result=$this->authorModel->getPages($author_id);
				// Load menu bar
				$this->registry->template->menu=$this->authorModel->getMenu();
				if(isset($_SESSION['id'])){
					$this->registry->template->num_notice=$this->authorModel->count_notice($_SESSION['id']);
				}
				// End load menubar
				$this->registry->template->title="Bài viết theo tác giả";
				$this->registry->template->users=$this->authorModel->getNewUsers();
				$this->registry->template->top_class=$this->authorModel->get_top_class();
				$this->registry->template->show("users/author/index");
			}else{
				redirect_to();
			}
		}
	}
?>
