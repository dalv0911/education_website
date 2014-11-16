<?php
	class thumuc2Model extends LoadSiteModel{
		private static $conn=null;
		public function getBreadCrumb($thumuc2_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT mn.name AS menu_name,mn.id AS menu_id,tm.id AS thumuc_id,
							tm.name AS thumuc_name,tm2.id AS thumuc2_id,tm2.name AS thumuc2_name
					FROM menu AS mn INNER JOIN thumuc AS tm 
						ON mn.id=tm.menu_id 
					LEFT JOIN thumuc2 AS tm2
						ON tm2.thumuc_id=tm.id
					WHERE tm2.id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$thumuc2_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$BreadCrumb=array(array());
			while($row=$stmt->fetch()){
				$BreadCrumb[$i++]=$row;
			}
			$i--;
			return $BreadCrumb;
		}
		public function getThuMuc($thumuc2_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name,id 
					FROM thumuc 
					WHERE menu_id=(SELECT menu_id 
									FROM thumuc AS tm INNER JOIN thumuc2 AS tm2
										ON tm2.thumuc_id=tm.id
									WHERE tm2.id=?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$thumuc2_id);
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
		public function getPosition(){
			// Connect to database ....	
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$stmt=self::$conn->query('SELECT position FROM thumuc2 ORDER BY position DESC LIMIT 1');
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_BOTH);
			if(!$row=$stmt->fetch()){
				$row['position']=0;
			}
			return $row['position'];

		}
		public function create(array $thumuc2){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}

			$sql="INSERT INTO thumuc2(name,position,url,thumuc_id) VALUES(?,?,?,?)";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$position);
			$stmt->bindParam(3,$url);
			$stmt->bindParam(4,$thumuc_id);

			$name=$thumuc2['name'];
			$position=$thumuc2['position'];
			$url=$thumuc2['url'];
			$thumuc_id=$thumuc2['thumuc_id'];

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getThuMuc2ById($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name,position,thumuc_id FROM thumuc2 WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$thumuc2=$stmt->fetch();
			return $thumuc2;
		}
		public function edit(array $thumuc2){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}

			$sql="UPDATE thumuc2 SET name=?,position=?,url=?,thumuc_id=? WHERE id=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$position);
			$stmt->bindParam(3,$url);
			$stmt->bindParam(4,$thumuc_id);
			$stmt->bindParam(5,$id);

			$name=$thumuc2['name'];
			$position=$thumuc2['position'];
			$url=$thumuc2['url'];
			$thumuc_id=$thumuc2['thumuc_id'];
			$id=$thumuc2['id'];
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getPagesOfThuMuc2($thumuc2_id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT p.id,p.name 
					FROM pages AS p LEFT JOIN page_thumuc2 AS ptm2
						ON p.id=ptm2.page_id
					WHERE ptm2.thumuc2_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$thumuc2_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$item_pages=array(array());
			while($row=$stmt->fetch()){
				$item_pages[$i++]=$row;
			}
			$i--;
			return $item_pages;
		}
		public function delete($id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql='DELETE FROM thumuc2 WHERE id=?';
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