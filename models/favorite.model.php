<?php
	class favoriteModel extends db{
		private static $conn	=null;
		public function checked($user_id,$page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO favorites(user_id,page_id,time_on) VALUES(?,?,NOW())";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->bindParam(2,$page_id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function is_checked($user_id,$page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT user_id FROM favorites WHERE user_id=? AND page_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->bindParam(2,$page_id);
			$stmt->execute();
			$num=$stmt->rowCount();
			if($num==1){
				return true;
			}else{
				return false;
			}
		}
		public function un_check($user_id,$page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="DELETE FROM favorites WHERE user_id=? AND page_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->bindParam(2,$page_id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function get_favorite($user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT p.id AS page_id,p.name,f.time_on
					FROM pages AS p
				    	LEFT JOIN favorites AS f
				        ON f.page_id=p.id
				    WHERE user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->execute();
			$favorites=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$favorites[$i++]=$row;
			}
			$i--;
			return $favorites;
		}
	}
?>