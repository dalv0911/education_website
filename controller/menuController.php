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
				if(isset($_SESSION['id'])){
					$this->registry->template->num_notice=$this->menuModel->count_notice($_SESSION['id']);
				}
				$this->registry->template->thumuc=$this->menuModel->getThuMucByMenu($menu_id);
				$this->registry->template->menu_detail=$this->menuModel->getMenuById($menu_id);
				$this->registry->template->pages=$this->menuModel->getPages($menu_id);
				// Load menu bar
				$this->registry->template->menu=$this->menuModel->getMenu();
				// End load menubar
				$this->registry->template->users=$this->menuModel->getNewUsers();
				$this->registry->template->top_class=$this->menuModel->get_top_class();
				$this->registry->template->show("menu/index");
			}else{
				redirect_to();
			}
		}
		
	}
?>