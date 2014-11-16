<?php
	class pagesModel extends LoadSiteModel{
		private static $conn=null;
		public function getMenu(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name,id FROM menu";
			$stmt=self::$conn->query($sql);
			$i=0;
			$menu=array(array());
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$menu[$i++]=$row;
			}
			$i--;
			return $menu;
		}
		public function getThuMuc(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name,id,menu_id FROM thumuc";
			$stmt=self::$conn->query($sql);
			$i=0;
			$thumuc=array(array());
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$thumuc[$i++]=$row;
			}
			$i--;
			return $thumuc;
		}
		public function getThuMuc2(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name,id,thumuc_id FROM thumuc2";
			$stmt=self::$conn->query($sql);
			$i=0;
			$thumuc2=array(array());
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$thumuc2[$i++]=$row;
			}
			$i--;
			return $thumuc2;
		}
		public function create(array $pages){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO pages(name,title,content,url,des,keyword,meta,image_icon,mp3,author_id,time_on)
							 VALUES(?,?,?,?,?,?,?,?,?,?,NOW())";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$title);
			$stmt->bindParam(3,$content);
			$stmt->bindParam(4,$url);
			$stmt->bindParam(5,$des);
			$stmt->bindParam(6,$keyword);
			$stmt->bindParam(7,$meta);
			$stmt->bindParam(8,$image_icon);
			$stmt->bindParam(9,$mp3);
			$stmt->bindParam(10,$author_id);

			$name=$pages['name'];
			$title=$pages['title'];
			$content=$pages['content'];
			$url=$pages['url'];
			$des=$pages['des'];
			$keyword=$pages['keyword'];
			$meta=$pages['meta'];
			$image_icon=$pages['image_icon'];
			$author_id=$pages['author_id'];
			$mp3=$pages['mp3'];

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function insert_page_menu($page_id,$menu_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO page_menu(page_id,menu_id) VALUES(?,?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			$stmt->bindParam(2,$menu_id);

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function insert_page_thumuc($page_id,$thumuc_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO page_thumuc(page_id,thumuc_id) VALUES(?,?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			$stmt->bindParam(2,$thumuc_id);

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function insert_page_thumuc2($page_id,$thumuc2_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO page_thumuc2(page_id,thumuc2_id) VALUES(?,?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			$stmt->bindParam(2,$thumuc2_id);

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getPageId($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id FROM pages WHERE name=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$name);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$row=$stmt->fetch();
			return $row['id'];
		}
	}
?>