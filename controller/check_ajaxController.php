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
				if($this->check_ajaxModel->check_name_thumuc($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function thumuc2(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name'])){
				$name=$_GET['name'];
				if($this->check_ajaxModel->check_name_thumuc2($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function pages(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name'])){
				$name=$_GET['name'];
				if($this->check_ajaxModel->check_name_pages($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function pages_edit(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name']) && isset($_GET['id'])){
				$name=$_GET['name'];
				$id=$_GET['id'];
				if($this->check_ajaxModel->check_edit_name_pages($name,$id)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
		public function menu_name(){
			$this->check_ajaxModel=new check_ajaxModel();
			if(isset($_GET['name'])){
				$name=$_GET['name'];
				if($this->check_ajaxModel->check_name_menu($name)){
					echo "NO";
				}else{
					echo "YES";
				}
			}
		}
	}
?>