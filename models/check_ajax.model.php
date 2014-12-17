<?php
	class check_ajaxModel extends db{
		private static $conn=null;
		public function check_name_menu($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name FROM menu WHERE name=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function check_name_thumuc($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name FROM thumuc WHERE name=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function check_name_thumuc2($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name FROM thumuc2 WHERE name=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function check_name_pages($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name FROM pages WHERE name=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function check_email_users($name,$id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT email FROM users WHERE email=? AND id!=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$id);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function check_email($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT email FROM users WHERE email=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function check_name_users($name,$id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT username FROM users WHERE username=? AND id!=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$id);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function check_edit_name_pages($name,$id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name FROM pages WHERE name=? AND id!=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$id);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function del_comment($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="DELETE FROM comment WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function isClass_name($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name FROM class WHERE name=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$name);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function is_class_name_without_id($name,$id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name FROM class WHERE name=? AND id!=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$id);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row>0){
				return true;
			}else{
				return false;
			}
		}
		public function accept_join(array $notify){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO join_class(user_id,class_id,time_on) VALUES(?,?,NOW())";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$notify['id_from']);
			$stmt->bindParam(2,$notify['id_class']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function reject_notify($id){
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

	}
?>