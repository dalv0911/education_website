<?php
	session_start();
	include'models/author.model.php';
	include'models/class.model.php';
	include'models/favorite.model.php';
	include'models/index.model.php';
	include'models/kiemtra.model.php';
	include'models/menu.model.php';
	include'models/notify.model.php';
	include'models/pages.model.php';
	include'models/search.model.php';
	include'models/status.model.php';
	include'models/thumuc.model.php';
	include'models/thumuc2.model.php';
	include'models/users.model.php';
	include'models/report.model.php';
?>
<?php
	class reportController extends Controller{
		private $authorModel	=null;
		private $classModel		=null;
		private $favoriteModel	=null;
		private $indexModel		=null;
		private $kiemtraModel	=null;
		private $menuModel		=null;
		private $notifyModel	=null;
		private $pagesModel		=null;
		private $searchModel	=null;
		private $statusModel	=null;
		private $thumucModel	=null;
		private $thumuc2Model	=null;
		private $usersModel		=null;
		private $reportModel	=null;
		public function index(){
			$this->registry->template->show('report/index');
		}
		public function cau1(){
			$this->menuModel	=new menuModel();
			$this->registry->template->menu 	=$this->menuModel->getMenu();
			$this->registry->template->show('report/cau1');
		}
		public function cau2(){
			$this->menuModel	=new menuModel();
			$this->registry->template->thumuc 	=$this->menuModel->getThuMucByMenu(8);
			$this->registry->template->show('report/cau2');
		}
		public function cau3(){
			$this->searchModel	=new searchModel();
			$this->registry->template->pages 	=$this->searchModel->getResult("tieng nhat",0);
			$this->registry->template->show('report/cau3');
		}
		public function cau4(){
			$this->searchModel	=new searchModel();
			$this->registry->template->users 	=$this->searchModel->getNewUsers();
			$this->registry->template->show('report/cau4');
		}
		public function cau5(){
			$this->pagesModel	=new pagesModel();
			$this->registry->template->pages 	=$this->pagesModel->get_pages_around(25);
			$this->registry->template->show('report/cau5');
		}
		public function cau6(){
			$this->registry->template->show('report/cau6');
		}
		public function cau9(){
			$this->usersModel	=new usersModel();
			$this->registry->template->history = $this->usersModel->getHistory(1);
			$this->registry->template->show('report/cau9');
		}
		public function cau10(){
			$this->favoriteModel	=new favoriteModel();
			$this->registry->template->favorite = $this->favoriteModel->get_favorite(1);
			$this->registry->template->show('report/cau10');
		}
		public function cau11(){
			$this->classModel	=new classModel();
			$this->registry->template->class = $this->classModel->getClassById(6);
			$this->registry->template->show('report/cau11');
		}
		public function cau12(){
			$this->classModel	=new classModel();
			$this->registry->template->users = $this->classModel->getUsersByClass(6);
			$this->registry->template->show('report/cau12');
		}
		public function cau13(){
			$this->reportModel	=new reportModel();
			$this->registry->template->cau13=$this->reportModel->cau13();
			$this->registry->template->show('report/cau13');
		}
		public function cau14(){
			$this->reportModel	=new reportModel();
			$this->registry->template->users=$this->reportModel->cau14();
			$this->registry->template->show('report/cau14');
		}
		public function cau15(){
			$this->reportModel	=new reportModel();
			$this->registry->template->cau15=$this->reportModel->cau15(1,1);
			$this->registry->template->show('report/cau15');
		}
		public function cau16(){
			$this->kiemtraModel	=new kiemtraModel();
			$this->registry->template->SoNguoiDung 	=$this->kiemtraModel->so_nguoi_dung(1,1);
			$this->registry->template->SoNguoiSai 	=$this->kiemtraModel->so_nguoi_sai(1,1);
			$this->registry->template->show('report/cau16');
		}
	}
?>