<?php
	class statusModel extends db{
		private static $conn=null;
		public function create(array $status){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO status(user_id,class_id,content,time_on) VALUES(?,?,?,NOW())";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$status['user_id']);
			$stmt->bindParam(2,$status['class_id']);
			$stmt->bindParam(3,$status['content']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function edit($content,$id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="UPDATE status SET content=? WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$content);
			$stmt->bindParam(2,$id);
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
			$sql="DELETE FROM status WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function get_status_class($class_id,$current){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT stt.id,stt.content,CONCAT_WS(' ',first_name,last_name) AS name,user_id,stt.time_on
					FROM status AS stt
						LEFT JOIN users AS u
						ON u.id=stt.user_id
					WHERE class_id=?
					ORDER BY stt.time_on DESC LIMIT $current,4";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$class_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$status=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$status[$i++]=$row;
			}
			$i--;
			return $status;
		}
		public function get_status($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT stt.id,stt.content,CONCAT_WS(' ',first_name,last_name) AS name,user_id,stt.time_on
					FROM status AS stt
					LEFT JOIN users AS u
						ON u.id=stt.user_id
					WHERE stt.id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$status=$stmt->fetch();
			return $status;
		}
		public function get_status_user($user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT stt.id,stt.content,CONCAT_WS(' ',first_name,last_name) AS name,user_id,stt.time_on
					FROM status AS stt
						LEFT JOIN users AS u
						ON u.id=stt.user_id
					WHERE user_id=? AND class_id IS NULL
					ORDER BY stt.time_on DESC";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$status=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$status[$i++]=$row;
			}
			$i--;
			return $status;
		}
		public function get_num_status($class_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT count(id) AS num
					FROM status 
					WHERE class_id=?
					GROUP BY class_id";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$class_id);
			$stmt->execute();
			$num=$stmt->fetch();
			return $num['num'];
		}
	}
?>