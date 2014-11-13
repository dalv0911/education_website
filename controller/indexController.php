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
		$this->registry->template->menu=$this->indexModel->getMenu();
		$this->registry->template->show('index');
	}
}
?>