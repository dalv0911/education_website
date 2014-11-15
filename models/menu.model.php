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
		public function getPosition(){
			// Connect to database ....	
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$stmt=self::$conn->query('SELECT position FROM thumuc ORDER BY position DESC LIMIT 1');
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_BOTH);
			if(!$row=$stmt->fetch()){
				$row['position']=0;
			}
			return $row['position'];

		}
		public function create(array $thumuc){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}

			$sql="INSERT INTO thumuc(name,position,url,menu_id) VALUES(?,?,?,?)";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$position);
			$stmt->bindParam(3,$url);
			$stmt->bindParam(4,$menu_id);

			$name=$thumuc['name'];
			$position=$thumuc['position'];
			$url=$thumuc['url'];
			$menu_id=$thumuc['menu_id'];

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function edit(array $thumuc){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}

			$sql="UPDATE thumuc SET name=?,position=?,url=?,menu_id=? WHERE id=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$position);
			$stmt->bindParam(3,$url);
			$stmt->bindParam(4,$menu_id);
			$stmt->bindParam(5,$id);

			$name=$thumuc['name'];
			$position=$thumuc['position'];
			$url=$thumuc['url'];
			$menu_id=$thumuc['menu_id'];
			$id=$thumuc['id'];
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function delete($id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql='DELETE FROM thumuc WHERE id=?';
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$id);

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
	}
?>