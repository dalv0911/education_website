<?php
	session_start();
	include'models/index.model.php';
?>
<?php
class indexController extends Controller{
	private $indexModel=null;
	public function index(){
		// Load Model
		$this->indexModel=new indexModel();
		if(isset($_SESSION['id'])){
			$this->registry->template->num_notice=$this->indexModel->count_notice($_SESSION['id']);
		}
		$this->registry->template->pages=$this->indexModel->getPages();
		$this->registry->template->menu=$this->indexModel->getMenu();
		$this->registry->template->users=$this->indexModel->getNewUsers();
		$this->registry->template->show('index');
	}
}
?>