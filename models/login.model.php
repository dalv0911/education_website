
<?php
	class loginModel extends LoadSiteModel{
		private static $conn=null;

		public function getUserName(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,username,password,level FROM users";

			$stmt=self::$conn->query($sql);
			$users=array(array());
			$i=0;
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$users[$i++]=$row;
			}
			$i--;
			return $users;
		}
		public function getUserId($username){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id FROM users WHERE username=?";

			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$username);

			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$row=$stmt->fetch();
			$user_id=$row['id'];
			return $user_id;
		}
		public function getUsers($user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT username,CONCAT_WS(' ',firstname,lastname) AS name,email FROM users WHERE user_id=?";

			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

			$users=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$users[$i++]=$row;
			}
			$i--;
			return $users;
		}
	}
?>