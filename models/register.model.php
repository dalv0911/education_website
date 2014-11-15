<?php
	class registerModel extends LoadSiteModel{

		private static $conn=null;

		public function register(array $users){
			if(empty(self::$conn)){
				self::$conn = $this->connect_pdo();
			}
			$sql="INSERT INTO users(email,password,username,active,time_on) VALUES(?,?,?,?,NOW())";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$email);
			$stmt->bindParam(2,$password);
			$stmt->bindParam(3,$username);
			$stmt->bindParam(4,$active);

			$email=$users['email'];
			$password=$users['password'];
			$username=$users['email'];//Mặc định username khi mới đăng kí cho người dùng
			$active=$users['active'];
			
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function isEmail($email){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT email FROM users WHERE email=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$email);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
	}
?>