<?php
	class indexModel extends LoadSiteModel{
		private static $conn=null;
		public function getPages(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT p.id,p.name,p.des,p.image_icon,p.time_on,author_id,CONCAT_WS(' ',first_name,last_name) AS user_name
					FROM pages AS p
					LEFT JOIN users AS u
						ON u.id=p.author_id
					ORDER BY p.time_on DESC limit 3";
			$stmt=self::$conn->query($sql);
			$pages=array(array());
			$i=0;
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$pages[$i++]=$row;
			}
			$i--;
			return $pages;
		}
	}
?>