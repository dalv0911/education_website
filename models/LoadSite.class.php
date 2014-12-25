<?php
	class LoadSiteModel extends db{
		private static $conn=null;

		public function getMenu(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name,position FROM menu ORDER BY position DESC";
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
					FROM users 
					ORDER BY time_on DESC limit 5";
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
					WHERE id_to=?
					GROUP BY id_to";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id_to);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$num=$stmt->fetch();
			return $num['num_user'];
		}
		public function get_top_class(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT c.id,c.name,count(jc.user_id) AS num_user
					FROM class AS c
					LEFT JOIN join_class AS jc
						ON c.id=jc.class_id
					GROUP BY c.id
					ORDER BY count(jc.user_id) DESC limit 3
					";
			$stmt=self::$conn->query($sql);
			$class=array(array());
			$i=0;
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$class[$i++]=$row;
			}
			$i--;
			return $class;
		}
	}
?>