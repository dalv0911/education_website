<?php
	class pagesModel extends LoadSiteModel{
		private static $conn=null;
		public function getMenu(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct name,id FROM menu";
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
			$sql="SELECT distinct name,id,menu_id FROM thumuc";
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
			$sql="SELECT distinct name,id,thumuc_id FROM thumuc2";
			$stmt=self::$conn->query($sql);
			$i=0;
			$thumuc2=array(array());
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$thumuc2[$i++]=$row;
			}
			$i--;
			return $thumuc2;
		}
		public function getMenuById($page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct menu_id FROM page_menu WHERE page_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$page_menu=$stmt->fetch();
			return $page_menu;
		}
		public function getThuMucById($page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct thumuc_id FROM page_thumuc WHERE page_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$page_thumuc=$stmt->fetch();
			return $page_thumuc;
		}
		public function getThuMuc2ById($page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct thumuc2_id FROM page_thumuc2 WHERE page_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$page_thumuc2=$stmt->fetch();
			return $page_thumuc2;
		}
		public function create(array $pages){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO pages(name,title,content,url,des,keyword,image_icon,mp3,author_id,time_on)
							 VALUES(?,?,?,?,?,?,?,?,?,NOW())";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$title);
			$stmt->bindParam(3,$content);
			$stmt->bindParam(4,$url);
			$stmt->bindParam(5,$des);
			$stmt->bindParam(6,$keyword);
			$stmt->bindParam(7,$image_icon);
			$stmt->bindParam(8,$mp3);
			$stmt->bindParam(9,$author_id);

			$name=$pages['name'];
			$title=$pages['title'];
			$content=$pages['content'];
			$url=$pages['url'];
			$des=$pages['des'];
			$keyword=$pages['keyword'];
			$image_icon=$pages['image_icon'];
			$author_id=$pages['author_id'];
			$mp3=$pages['mp3'];

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function edit(array $pages){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="UPDATE pages SET name=?,title=?,content=?,url=?,des=?,keyword=?,image_icon=?,mp3=?,author_id=?,time_on=NOW() WHERE id=?";
			$stmt=self::$conn->prepare($sql);

			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$title);
			$stmt->bindParam(3,$content);
			$stmt->bindParam(4,$url);
			$stmt->bindParam(5,$des);
			$stmt->bindParam(6,$keyword);
			$stmt->bindParam(7,$image_icon);
			$stmt->bindParam(8,$mp3);
			$stmt->bindParam(9,$author_id);
			$stmt->bindParam(10,$id);
			$name=$pages['name'];
			$title=$pages['title'];
			$content=$pages['content'];
			$url=$pages['url'];
			$des=$pages['des'];
			$keyword=$pages['keyword'];
			$image_icon=$pages['image_icon'];
			$author_id=$pages['author_id'];
			$mp3=$pages['mp3'];
			$id=$pages['id'];
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
		public function delete_page_menu($page_id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}

			$stmt=self::$conn->prepare('DELETE FROM page_menu WHERE page_id=?');

			$stmt->bindParam(1,$page_id);

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
		public function delete_page_thumuc($page_id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}

			$stmt=self::$conn->prepare('DELETE FROM page_thumuc WHERE page_id=?');

			$stmt->bindParam(1,$page_id);

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
		public function delete_page_thumuc2($page_id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}

			$stmt=self::$conn->prepare('DELETE FROM page_thumuc2 WHERE page_id=?');

			$stmt->bindParam(1,$page_id);

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
		public function getPages($id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT 
							CONCAT_WS(' ',first_name,last_name) AS user_name,
							p.id,name,title,url,content,p.des,keyword,
							image_icon,p.time_on,mp3,author_id
					FROM pages AS p 
					LEFT JOIN users AS u
						ON u.id=p.author_id
					WHERE p.id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			if($row=$stmt->fetch()){
				return $row;
			}else{
				return null;
			}
		}
		public function delete($id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}

			$stmt=self::$conn->prepare('DELETE FROM pages WHERE id=?');

			$stmt->bindParam(1,$id);

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getPageById($id){
	 		// Connect to database ..
	 		if(empty(self::$conn)){
	 			self::$conn=$this->connect_pdo();
	 		}
	 		$sql="SELECT name,id FROM pages WHERE id=?";
	 		$stmt=self::$conn->prepare($sql);
	 		$stmt->bindParam(1,$id);
	 		$stmt->execute();
	 		$stmt->setFetchMode(PDO::FETCH_ASSOC);
	 		$row=$stmt->fetch();
	 		return $row;
	 	}
	 	public function insert_comment(array $comment){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO comment(user_id,page_id,content,time_on) VALUES(?,?,?,NOW())";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$comment['user_id']);
			$stmt->bindParam(2,$comment['page_id']);
			$stmt->bindParam(3,$comment['content']);

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getComment($page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT c.id,u.id AS user_id,CONCAT_WS(' ',first_name,last_name) AS name,c.page_id,content,c.time_on
					FROM comment AS c LEFT JOIN users AS u
						ON c.user_id=u.id
					WHERE c.page_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$comment=array(array());
			while($row=$stmt->fetch()){
				$comment[$i++]=$row;
			}
			$i--;
			return $comment;
		}
		// ==============================TAG =====================================
		public function insert_tags($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO tags(name) VALUES(?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$name);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function is_tags($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name FROM tags WHERE name=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$name);
			$stmt->execute();
			$num_row=$stmt->rowCount();
			if($num_row<=0){
				return false;
			}else{
				return true;
			}
		}
		public function del_tags_target($page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="DELETE FROM tags_target WHERE page_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function insert_tags_target($page_id,$tag_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO tags_target(page_id,tag_id) VALUES(?,?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			$stmt->bindParam(2,$tag_id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function get_id_tags($name){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id FROM tags WHERE name=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$name);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$tag=$stmt->fetch();
			return $tag['id'];
		}
		public function get_tags_target($page_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT name,t.id 
					FROM tags AS t
					LEFT JOIN tags_target AS tg
						ON tg.tag_id=t.id
					WHERE page_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$page_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$i=0;
			$tags=array(array());
			while($row=$stmt->fetch()){
				$tags[$i]=$row;
				$i++;
			}
			$i--;
			return $tags;
		}
		// ==============================TAG =====================================
		public function get_pages_around($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT p.id,p.name,p.des,p.image_icon
					FROM pages AS p
					LEFT JOIN users AS u
						ON u.id=p.author_id
					WHERE p.id<? limit 3
					";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$pages=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$pages[$i++]=$row;
			}
			$i--;
			return $pages;
		}
	}
?>