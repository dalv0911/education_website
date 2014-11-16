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
				$this->registry->template->pages=$this->menuModel->getPages($menu_id);
				// Load menu bar
				$this->registry->template->menu=$this->menuModel->getMenu();
				// End load menubar
				$this->registry->template->show("menu/index");
			}
		}
		
	}
?>