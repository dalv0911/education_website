<?php
	session_start();
	include 'models/check_ajax.model.php';
?>
<?php
	class check_ajaxController extends Controller{
		private $check_ajaxModel=null;
		public function index(){
		}
		public function thumuc(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name'])){
				$name=$_GET['name'];
				if($this->check_ajaxModel->check_thumuc($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
	}
?>