<?php
	class LoadSiteModel extends db{
		private static $conn=null;

		public function getMenu(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name,position FROM menu ORDER BY position";
			$stmt=self::$conn->query($sql);
			$i=0;
			$item=array(array());
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$item[$i++]=$row;
			}
			$i--;
			return $item;
		}
		
	}
?>