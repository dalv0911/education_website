<?php
	class usersModel extends LoadSiteModel{
		private static $conn=null;
		public function getUsers($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,first_name,last_name,CONCAT_WS(' ',first_name,last_name) AS name,email,level,username,
						gender,des,address,state,sign,time_on,avatar
					FROM users
					WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$users=$stmt->fetch();
			return $users;
		}
		public function update_info_user(array $users){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="UPDATE users 
						SET first_name=?,last_name=?,email=?,
							username=?,gender=?,des=?,address=?,state=?,sign=?,avatar=? 
						WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$users['first_name']);
			$stmt->bindParam(2,$users['last_name']);
			$stmt->bindParam(3,$users['email']);
			$stmt->bindParam(4,$users['username']);
			$stmt->bindParam(5,$users['gender']);
			$stmt->bindParam(6,$users['des']);
			$stmt->bindParam(7,$users['address']);
			$stmt->bindParam(8,$users['state']);
			$stmt->bindParam(9,$users['sign']);
			$stmt->bindParam(10,$users['avatar']);
			$stmt->bindParam(11,$users['id']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function insert_storage_image(array $users){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO storage_images(user_id,name) VALUES(?,?)";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$users['id']);
			$stmt->bindParam(2,$users['avatar']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getGallery($user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name FROM storage_images WHERE user_id=?";

			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$gallery=array(array());
			while($row=$stmt->fetch()){
				$gallery[$i++]=$row;
			}
			$i--;
			return $gallery;
		}
		public function update_avatar($id,$avatar){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="UPDATE users SET avatar=? WHERE id=?";

			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$avatar);
			$stmt->bindParam(2,$id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getGalleryById($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name FROM storage_images WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$avatar=$stmt->fetch();
			return $avatar;
		}
		public function delete_gallery($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="DELETE FROM storage_images WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function get_gallery_num($user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT count(id) 
					FROM storage_images 
					WHERE user_id=?
					GROUP BY user_id
					 ";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->execute();
			$gallery_num=$stmt->fetch();
			return $gallery_num;
		}
		public function insert_history($user_id,$page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO history(user_id,page_id,time_on) VALUES(?,?,NOW())";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$user_id);
			$stmt->bindParam(2,$page_id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function check_history($user_id,$page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id FROM history WHERE user_id=? AND page_id=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$user_id);
			$stmt->bindParam(2,$page_id);
			$stmt->execute();
			$row_num=$stmt->rowCount();
			if($row_num>0){
				return false;
			}else{
				return true;
			}
		}
		public function getHistory($user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT h.id,page_id,name,h.time_on
					FROM history AS h LEFT JOIN pages AS p
						ON h.page_id=p.id
					WHERE user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$history=array(array());
			while($row=$stmt->fetch()){
				$history[$i++]=$row;
			}
			$i--;
			return $history;
		}
	}
?>