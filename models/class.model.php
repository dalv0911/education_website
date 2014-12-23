<?php
	class classModel extends LoadSiteModel{
		private static $conn=null;
		public function create(array $class){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO class(name,des,giao_vien_id,image,time_on) VALUES(?,?,?,?,NOW())";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$class['name']);
			$stmt->bindParam(2,$class['des']);
			$stmt->bindParam(3,$class['giao_vien_id']);
			$stmt->bindParam(4,$class['image']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function update(array $class){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="UPDATE class SET name=?,des=?,giao_vien_id=?,sdt=?,email=?,address=?,image=? WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$class['name']);
			$stmt->bindParam(2,$class['des']);
			$stmt->bindParam(3,$class['giao_vien_id']);
			$stmt->bindParam(4,$class['sdt']);
			$stmt->bindParam(5,$class['email']);
			$stmt->bindParam(6,$class['address']);
			$stmt->bindParam(7,$class['image']);
			$stmt->bindParam(8,$class['id']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getClass(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name,des,image,time_on
					FROM class";
			$stmt=self::$conn->query($sql);
			$class=array(array());
			$i=0;
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$class[$i++]=$row;
			}
			$i--;
			return $class;
		}
		public function getClassByGiaoVienId($giao_vien_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT c.id,c.name,c.des,c.image,c.time_on,c.sdt,c.email,c.address,
						CONCAT_WS(' ',first_name,last_name) AS giaovien
					FROM users AS u
				    LEFT JOIN class AS c
				        ON c.giao_vien_id=u.id
					WHERE giao_vien_id=? ";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$giao_vien_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$class=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$class[$i++]=$row;
			}
			$i--;
			return $class;
		}
		public function getClassById($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT c.id,c.name,c.giao_vien_id,CONCAT_WS(' ',first_name,last_name) AS giao_vien,
							c.sdt,c.address,c.email,c.des,c.time_on,c.image
					FROM class AS c
					    LEFT JOIN users AS u
					        ON u.id=c.giao_vien_id
					WHERE c.id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$class=$stmt->fetch();
			return $class;
		}
		public function count_users($class_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT count('user_id') AS num_users
					FROM join_class
					WHERE class_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$class_id);
			$stmt->execute();
			$num_user=$stmt->fetch();
			return $num_user['num_users'];

		}
		public function getClassByUserId($user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name
					FROM join_class AS jc
						LEFT JOIN class AS c
						ON c.id=jc.class_id
					WHERE user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$class=array(array());
			while($row=$stmt->fetch()){
				$class[$i++]=$row;
			}
			$i--;
			return $class;
		}
		public function del($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="DELETE FROM class WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getUsersByClass($class_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct id,username,CONCAT_WS(' ',first_name,last_name) AS name,score
					FROM join_class AS jc
						LEFT JOIN users AS u
						ON u.id=jc.user_id
					WHERE class_id=?
					ORDER BY score DESC limit 10 ";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$class_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$users=array(array());
			while($row=$stmt->fetch()){
				$users[$i++]=$row;
			}
			$i--;
			return $users;
		}
		public function is_user($user_id,$class_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT user_id FROM join_class WHERE user_id=? AND class_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->bindParam(2,$class_id);
			$stmt->execute();
			$num=$stmt->rowCount();
			if($num>0){
				return true;
			}else{
				return false;
			}
		}
		public function insert_comment(array $comment){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO comment(user_id,content,stt_id,time_on) VALUES(?,?,?,NOW())";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$comment['user_id']);
			$stmt->bindParam(2,$comment['content']);
			$stmt->bindParam(3,$comment['stt_id']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function get_comment($stt_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT cmt.id,cmt.content,cmt.stt_id,cmt.user_id,
					CONCAT_WS(' ',first_name,last_name) AS name,cmt.time_on 
					FROM comment AS cmt
					LEFT JOIN users AS u 
						ON u.id=cmt.user_id
					WHERE stt_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$stt_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$comment=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$comment[$i++]=$row;
			}
			$i--;
			return $comment;
		}
		
		public function logout_class($user_id,$class_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="DELETE FROM join_class WHERE user_id=? AND class_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->bindParam(2,$class_id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
	}
?>