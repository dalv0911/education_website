<?php
	class reportModel extends LoadSiteModel{
		private static $conn=null;
		public function cau13(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT u.id,CONCAT_WS(' ',first_name,last_name) AS name
					FROM join_class AS jc
				    LEFT JOIN users AS u
				    	ON jc.user_id=u.id
				    WHERE jc.class_id=6 AND jc.user_id NOT IN(
				        SELECT user_id
				        	FROM join_class 
				        	WHERE class_id=5
				        )
			";
			$stmt=self::$conn->query($sql);
			$cau13=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$cau13[$i++]=$row;
			}
			$i--;
			return $cau13;
		}
		public function cau14(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT u.id,CONCAT_WS(' ',first_name,last_name) AS name,count(dt.id) AS num
					FROM users AS u
					LEFT JOIN dethi AS dt
						ON u.id = dt.author_id
					WHERE level=4
					GROUP BY u.id
			";
			$stmt=self::$conn->query($sql);
			$cau13=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$cau13[$i++]=$row;
			}
			$i--;
			return $cau13;
		}
		public function cau15($dethi_id,$user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT u.id,CONCAT_WS(' ',first_name,last_name) AS name,count(t.answer) AS tong_so_cau_lam,
							sum(t.score) AS score
					FROM test AS t
					LEFT JOIN question AS q
						ON q.id=t.question_id
					LEFT JOIN users AS u
						ON u.id=t.user_id
					WHERE dethi_id=? AND user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->bindParam(2,$user_id);
			$stmt->execute();
			$score=$stmt->fetch();
			return $score;
		}
	}
?>