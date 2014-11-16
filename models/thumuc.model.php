<?php
	class thumucModel extends LoadSiteModel{
		private static $conn=null;
		public function getPages($thumuc_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT p.id,p.name 
					FROM pages AS p LEFT JOIN page_thumuc AS ptm
						ON p.id=ptm.page_id 
					WHERE ptm.thumuc_id =?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$thumuc_id);
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
		public function getThuMuc2($thumuc_id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct name,id
					FROM thumuc2
				    WHERE thumuc_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$thumuc_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$thumuc2=array(array());
			while($row=$stmt->fetch()){
				$thumuc2[$i++]=$row;
			}
			$i--;
			return $thumuc2;
		}
		public function getThuMucById($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name,position,menu_id FROM thumuc WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$thumuc=$stmt->fetch();
			return $thumuc;
		}
		public function getMenuByThuMucId($thumuc_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT mn.id,mn.name 
				FROM thumuc AS tm LEFT JOIN menu AS mn 
			 		ON tm.menu_id=mn.id 
			 	WHERE tm.id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$thumuc_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$menu=$stmt->fetch();
			return $menu;
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
		public function getPagesOfThuMuc($thumuc_id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct p.name,p.id
					FROM pages AS p INNER JOIN page_thumuc AS ptm
				    	ON ptm.page_id=p.id
				    WHERE ptm.thumuc_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$thumuc_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$item_page=array(array());
			while($row=$stmt->fetch()){
				$item_page[$i++]=$row;
			}
			$i--;
			return $item_page;
		}
		public function getThuMuc2OfThuMuc($thumuc_id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct name,id
					FROM thumuc2
				    WHERE thumuc_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$thumuc_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$item_thumuc2=array(array());
			while($row=$stmt->fetch()){
				$item_thumuc2[$i++]=$row;
			}
			$i--;
			return $item_thumuc2;
		}

	}
?>