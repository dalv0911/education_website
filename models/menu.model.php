<?php
	class menuModel extends LoadSiteModel{
		private static $conn=null;
		public function getThuMucByMenu($menu_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name FROM thumuc WHERE menu_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$menu_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$thumuc=array(array());
			while($row=$stmt->fetch()){
				$thumuc[$i++]=$row;
			}
			$i--;
			return $thumuc;
		}
		public function getThuMucById($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name,position,menu_id FROM thumuc WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$thumuc=$stmt->fetch();
			return $thumuc;
		}
		public function getMenuById($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name FROM menu WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$menu=$stmt->fetch();
			return $menu;
		}
		public function getPages($menu_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT p.id,p.name,p.des,p.image_icon,p.des,p.time_on,CONCAT_WS(' ',first_name,last_name) AS user_name,p.author_id
					FROM pages AS p 
					LEFT JOIN page_menu AS pmn
						ON p.id=pmn.page_id 
					LEFT JOIN users AS u
						ON u.id=p.author_id
					WHERE pmn.menu_id =?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$menu_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$pages=array(array());
			while($row=$stmt->fetch()){
				$pages[$i++]=$row;
			}
			$i--;
			return $pages;
		}
		
	}
?>