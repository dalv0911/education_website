<?php
	session_start();
	include'models/kiemtra.model.php';
?>
<?php
	class kiemtraController extends Controller{
		private $kiemtraModel=null;
		public function index(){
			if(!isset($_SESSION['id']) || $_SESSION['level']<1){
				redirect_to_login();
			}
			$this->kiemtraModel	=new kiemtraModel();
			$this->registry->template->danhsachdethi=$this->kiemtraModel->get_dethi_all();
			$this->registry->template->dethi_by_author=$this->kiemtraModel->get_dethi_all_by_author($_SESSION['id']);
			$this->registry->template->show('kiemtra/index');
		}
		public function dethi_create(){
			if(!isset($_SESSION['id']) || $_SESSION['level']<=3){
				redirect_to();
			}
			$this->kiemtraModel	=new kiemtraModel();
			$errors=array();
			if($_SERVER['REQUEST_METHOD']=="POST"){
				if(!empty($_POST['name'])){
					$name=$_POST['name'];
				}else{
					$errors[]="name_empty";
				}
				if(!empty($_POST['socauhoi']) && filter_var($_POST['socauhoi'],FILTER_VALIDATE_INT,array('min_range'=>1))){
					$socauhoi=$_POST['socauhoi'];
				}else{
					$errors[]="socauhoi";
				}
				if(empty($errors)){
					if($this->kiemtraModel->dethi_create($name,$socauhoi,$_SESSION['id'])){
						$this->registry->template->ok=1;
					}else{
						$this->registry->template->ok=0;
					}
				}
			}
			$this->registry->template->danhsachdethi=$this->kiemtraModel->get_dethi_all();
			$this->registry->template->dethi_by_author=$this->kiemtraModel->get_dethi_all_by_author($_SESSION['id']);
			$this->registry->template->show('kiemtra/dethi/dethi.create');
		}
		public function question_create(){
			if(!isset($_SESSION['id']) || $_SESSION['level']<=3){
				redirect_to();
			}
			$this->kiemtraModel	=new kiemtraModel();
			$errors=array();
			$question=array();
			$dapan=array(array());
			if(isset($_GET['dethi_id']) && filter_var($_GET['dethi_id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				if(isset($_GET['stt']) && filter_var($_GET['stt'],FILTER_VALIDATE_INT,array('min_range'=>1))){
					$question['stt']		=$_GET['stt'];
					$question['dethi_id']	=$_GET['dethi_id'];
					if(!empty($_POST['question'])){
						$question['question']=$_POST['question'];
					}else{
						$errors[]="question";
					}
					if(!empty($_POST['score'])){
						$question['score']=$_POST['score'];
					}else{
						$question['score']=2;
					}
					if(!empty($_POST['giaithich'])){
						$question['giaithich']=$_POST['giaithich'];
					}else{
						$question['giaithich']=null;
					}
					if(isset($_POST['dapan'])){
						$question['answer']=$_POST['dapan'];
					}else{
						$errors[]="dapan";
					}
					$num_dapan=0;
					if(!empty($_POST['stt_1'])){
						$dapan[0]['content']=$_POST['stt_1'];
						$dapan[0]['stt']=1;
						$num_dapan=1;
						if(!empty($_POST['stt_2'])){
							$dapan[1]['content']=$_POST['stt_2'];
							$dapan[1]['stt']=2;
							$num_dapan=2;
							if(!empty($_POST['stt_3'])){
								$dapan[2]['content']=$_POST['stt_3'];
								$dapan[2]['stt']=3;
								$num_dapan=3;
								if(!empty($_POST['stt_4'])){
									$dapan[3]['content']=$_POST['stt_4'];
									$dapan[3]['stt']=4;
									$num_dapan=4;
								}
							}
						}
					}
					if(empty($errors)){
						if($this->kiemtraModel->question_insert($question)){
							$question_id=$this->kiemtraModel->get_question_id_by_name($question['question'],$question['dethi_id']);
							if($question_id!=null){
								$i=0;
								while($i<$num_dapan){
									if($this->kiemtraModel->dapan_insert($dapan[$i],$question_id) && $i==$num_dapan-1){
										$this->registry->template->ok=1;
									}else{
										$this->registry->template->ok=0;
									}
									$i++;
								}
								
							}
						}
					}
					$this->registry->template->stt=$_GET['stt'];
				}
				$this->registry->template->socau_hoanthanh=$this->kiemtraModel->get_socau_hoanthanh($_GET['dethi_id']);
				$this->registry->template->dethi=$this->kiemtraModel->get_dethi_by_id($_GET['dethi_id']);
				$this->registry->template->dethi_by_author=$this->kiemtraModel->get_dethi_all_by_author($_SESSION['id']);
				$this->registry->template->danhsachdethi=$this->kiemtraModel->get_dethi_all();
				$this->registry->template->show('kiemtra/question/question.create');
			}
			
		}
		public function question(){
			if(!isset($_SESSION['id']) || $_SESSION['level']<1){
				redirect_to();
			}
			if(isset($_GET['dethi_id']) && filter_var($_GET['dethi_id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->kiemtraModel=new kiemtraModel();
				if(isset($_GET['stt']) && filter_var($_GET['stt'],FILTER_VALIDATE_INT,array('min_range'=>1))){
					$question=array();
					$test=array();
					$question=$this->kiemtraModel->get_question_by_stt($_GET['dethi_id'],$_GET['stt']);

					$this->registry->template->so_nguoi_dung=$this->kiemtraModel->so_nguoi_dung($_GET['dethi_id'],$_GET['stt']);
					$this->registry->template->so_nguoi_sai=$this->kiemtraModel->so_nguoi_sai($_GET['dethi_id'],$_GET['stt']);
					
					$this->registry->template->question=$question;
					$this->registry->template->dapan=$this->kiemtraModel->get_dapan($question['id']);
					if($this->kiemtraModel->tested($_GET['dethi_id'],$_GET['stt'],$_SESSION['id'])){
						$this->registry->template->tested=1;
						$this->registry->template->test=$this->kiemtraModel->get_test_by_stt($_GET['dethi_id'],$_GET['stt'],$_SESSION['id']);
					}else{
						$this->registry->template->tested=0;
					}
					if(isset($_POST['nopbai'])){
						redirect_to('?rt=kiemtra/nopbai&dethi_id='.$_GET['dethi_id'].'');
					}
					$this->registry->template->ok=1;
				}
				$this->registry->template->score=$this->kiemtraModel->get_score($_GET['dethi_id'],$_SESSION['id']);
				$this->registry->template->dethi=$this->kiemtraModel->get_dethi_by_id($_GET['dethi_id']);
				$this->registry->template->danhsachdethi=$this->kiemtraModel->get_dethi_all();
				$this->registry->template->dethi_by_author=$this->kiemtraModel->get_dethi_all_by_author($_SESSION['id']);
				$this->registry->template->show('kiemtra/question/index');				
			}
		}
		public function test_insert(){
			if(isset($_POST['question_id'],$_POST['answer'])){
				$this->kiemtraModel	=new kiemtraModel();
				$test=array();
				$question=array();
				$test['user_id']=$_SESSION['id'];
				$test['answer']=$_POST['answer'];
				$test['question_id']=$_POST['question_id'];
				$question=$this->kiemtraModel->get_question_by_id($_POST['question_id']);
				if($test['answer']==$question['answer']){
					$test['score']=$question['score'];
				}else{
					$test['score']=0;
				}
				if($this->kiemtraModel->is_answer($test['question_id'],$_SESSION['id'])){
					if($this->kiemtraModel->update_test($test)){
						$score_temp=$this->kiemtraModel->get_score_user($_SESSION['id']);
						$this->kiemtraModel->update_score_users($score_temp,$id);
						return true;
					}else{
						return false;
					}
				}else{
					if($this->kiemtraModel->test_insert($test)){
						$score_temp=$this->kiemtraModel->get_score_user($_SESSION['id']);
						$this->kiemtraModel->update_score_users($score_temp,$_SESSION['id']);
						return true;
					}else{
						return false;
					}
				}
			}
		}
		public function nopbai(){
			if(!isset($_SESSION['id']) || $_SESSION['level']<1){
				redirect_to();
			}
			if(isset($_GET['dethi_id']) && filter_var($_GET['dethi_id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$this->kiemtraModel	=new kiemtraModel();
				if(isset($_POST['lamlai'])){
					if($this->kiemtraModel->del_test($_SESSION['id'],$_GET['dethi_id'])){
						redirect_to('?rt=kiemtra/question&dethi_id='.$_GET['dethi_id'].'');
					}
				}
				$this->registry->template->so_cau_sai		=$this->kiemtraModel->so_cau_sai($_GET['dethi_id'],$_SESSION['id']);
				$this->registry->template->score 			=$this->kiemtraModel->get_score($_GET['dethi_id'],$_SESSION['id']);
				$this->registry->template->dapan 			=$this->kiemtraModel->get_dapan_by_dethi($_GET['dethi_id']);
				$this->registry->template->nopbai 			=$this->kiemtraModel->nopbai($_GET['dethi_id'],$_SESSION['id']);
				$this->registry->template->dethi 			=$this->kiemtraModel->get_dethi_by_id($_GET['dethi_id']);
				$this->registry->template->danhsachdethi	=$this->kiemtraModel->get_dethi_all();
				$this->registry->template->dethi_by_author 	=$this->kiemtraModel->get_dethi_all_by_author($_SESSION['id']);
				$this->registry->template->show('kiemtra/question/nopbai');	
			}
		}
	}
?>