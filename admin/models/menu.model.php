<?php
	class menuModel extends db{
			private static $conn;

		public function create(array $menu){
			// Connect to database ....	
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			//Prepare statement ....
			$stmt=self::$conn->prepare('INSERT INTO menu(name,position,url) VALUES(?,?,?)');
			//Gán các biến (lúc này chưa mang giá trị) vào các placeholder theo thứ tự tương ứng

			$stmt->bindParam(1, $name);
			$stmt->bindParam(2, $position);
			$stmt->bindParam(3,$url);

			$name = $menu['name'];
			$position = $menu['position'];
			$url=$menu['url'];
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getPosition(){
			// Connect to database ....	
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$stmt=self::$conn->query('SELECT position FROM menu ORDER BY position DESC LIMIT 1');
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_BOTH);
			$row=$stmt->fetch();
			return $row['position'];

		}
		public function edit(array $menu){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$stmt=self::$conn->prepare('UPDATE menu 
						SET name=?,position=?,url=? WHERE id=?');
			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$position);
			$stmt->bindParam(3,$url);
			$stmt->bindParam(4,$id);

			$name=$menu['name'];
			$position=$menu['position'];
			$url=$menu['url'];
			$id=$menu['id'];

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function getView(){
			// Connect to database ....
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql =" SELECT id,name,position FROM menu";

			$stmt=self::$conn->query($sql);
			$view=array(array());
			$i=0;
			while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
				$view[$i++]=$row;
			}
			$i--;
			return $view;
			
		}
		public function getMenuById($id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			// Prepare query ...
			$stmt=self::$conn->prepare('SELECT id,name,position FROM menu WHERE id=?');
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$menu=$stmt->fetch(PDO::FETCH_ASSOC);
			return $menu;
		}
		// DELETE 
		public function delete($id){
			// Connect to database ...
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}

			$stmt=self::$conn->prepare('DELETE FROM menu WHERE id=?');

			$stmt->bindParam(1,$id);

			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
	}
?>