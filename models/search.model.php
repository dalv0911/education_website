<?php
	class searchModel extends LoadSiteModel{
		private static $conn=null;

		public function getResult($keyword,$curr){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct p.name,p.id,CONCAT_WS(' ',first_name,last_name) AS user_name,author_id,p.time_on,p.des,p.image_icon
					FROM pages AS p,tags_target AS tg,tags AS t,users AS u
					WHERE p.id=tg.page_id AND t.id=tg.tag_id AND u.id=p.author_id
						AND t.name LIKE'%$keyword%' limit $curr,4";
			$stmt=self::$conn->prepare($sql);
			//$stmt->bindParam(1,$keyword);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$result=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$result[$i++]=$row;
			}
			$i--;
			return $result;
		}
		public function get_num_row($keyword){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT distinct p.id 
					FROM pages AS p,tags_target AS tg,tags AS t,users AS u
					WHERE p.id=tg.page_id AND t.id=tg.tag_id AND u.id=p.author_id
						AND t.name LIKE'%$keyword%'";
			$stmt=self::$conn->prepare($sql);
			$stmt->execute();
			$num=$stmt->rowCount();
			return $num;
		}
		
	}
?>