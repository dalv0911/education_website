<?php
	session_start();
	include 'models/search.model.php';
?>
<?php
	class searchController extends Controller{
		private $searchModel=null;
		public function index(){
			$this->searchModel=new searchModel();
			if($_SERVER['REQUEST_METHOD']=="POST"||isset($_GET['keyword'])){
				if(isset($_POST['keyword']) && !empty($_POST['keyword'])){
					$keyword=$_POST['keyword'];
				}elseif(isset($_GET['keyword']) && !empty($_GET['keyword'])){
					$keyword=$_GET['keyword'];
				}else{
					redirect_to();
				}
				if(isset($keyword)){
					if(preg_match("/[A-Z  | a-z]+/",$keyword)){
						if(isset($_GET['s']) && filter_var($_GET['s'],FILTER_VALIDATE_INT,array('min_range'=>1))){
							$s=$_GET['s'];
						}else{
							$s=0;
						}
						$curr=$s*4;
						$keyword=strtolower($keyword);

						$this->registry->template->pages=$this->searchModel->getResult($keyword,$curr);
						$this->registry->template->keyword=$keyword;
						$this->registry->template->num=$this->searchModel->get_num_row($keyword);
						// Load menu bar
						$this->registry->template->menu=$this->searchModel->getMenu();
						// End load menubar
						$this->registry->template->title="Tìm kiếm ".$keyword;
						$this->registry->template->users=$this->searchModel->getNewUsers();
						$this->registry->template->show("search/index");
					}
				}
			}else{
				redirect_to();
			}
		}
	}
?>