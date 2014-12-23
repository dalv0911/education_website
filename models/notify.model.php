<?php
	class notifyModel extends LoadSiteModel{
		private static $conn=null;
		public function insert(array $notify){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO notify(id_from,id_to,id_class,type_id,time_on) VALUES(?,?,?,?,NOW())";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$notify['id_from']);
			$stmt->bindParam(2,$notify['id_to']);
			$stmt->bindParam(3,$notify['id_class']);
			$stmt->bindParam(4,$notify['type_id']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function del($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="DELETE FROM notify WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function is_sent($id_from,$id_class){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id FROM notify WHERE id_from=? AND id_class=? AND type_id=1";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id_from);
			$stmt->bindParam(2,$id_to);
			$stmt->execute();
			$num=$stmt->rowCount();
			if($num>0){
				return true;
			}else{
				return false;
			}
		}
		public function getNotify($id_to){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct n.id,id_from,id_to,id_class,c.name AS name_class,content,
					CONCAT_WS(' ',u.first_name,u.last_name) AS name_from,CONCAT_WS(' ',u2.first_name,u2.last_name) AS name_to,type_id,n.time_on
					FROM type_notify
						LEFT JOIN notify AS n
						ON type_notify.id=n.type_id
						LEFT JOIN users AS u
						ON u.id=n.id_from
						LEFT JOIN users AS u2
						ON u2.id =n.id_to
						LEFT JOIN class AS c 
						ON c.id=n.id_class
						LEFT JOIN join_class AS jc
						ON jc.class_id=n.id_class
					WHERE jc.user_id=? OR id_to=? AND hide=0
					ORDER BY n.time_on DESC";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id_to);
			$stmt->bindParam(2,$id_to);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$notice=array(array());
			while($row=$stmt->fetch()){
				$notice[$i++]=$row;
			}
			$i--;
			return $notice;
		}
		public function viewed($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="UPDATE notify SET view=1 WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getNotifyById($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id_from,id_to,id_class FROM notify WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$row=$stmt->fetch();
			return $row;
		}
		public function hide($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="UPDATE notify SET hide=1 WHERE id=?";
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