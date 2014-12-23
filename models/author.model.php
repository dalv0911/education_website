<?php
	class authorModel extends LoadSiteModel{
		private static $conn=null;

		public function getPages($author_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT p.name AS page_name,p.id AS page_id,CONCAT_WS(' ',first_name,last_name) AS author,author_id,p.time_on,p.des
					FROM pages AS p,users AS u
					WHERE u.id=p.author_id
						AND p.author_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$author_id);
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
		
	}
?>