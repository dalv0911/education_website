<?php
	class LoadSiteModel extends db{
		private static $conn=null;

		public function getMenu(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name,position FROM menu ORDER BY position";
			$stmt=self::$conn->query($sql);
			$i=0;
			$item=array(array());
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$item[$i++]=$row;
			}
			$i--;
			return $item;
		}
		public function getNewUsers(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,CONCAT_WS(' ',first_name,last_name) AS name,username,email,avatar,time_on
					FROM users limit 10";
			$stmt=self::$conn->query($sql);
			$i=0;
			$users=array(array());
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$users[$i++]=$row;
			}
			$i--;
			return $users;
		}
		public function count_notice($id_to){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT count('id') AS num_user
					FROM notify
					WHERE id_to=? AND view=0
					GROUP BY id_to";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id_to);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$num=$stmt->fetch();
			return $num['num_user'];
		}
		
	}
?>