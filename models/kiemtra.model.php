x`x<?php
	class kiemtraModel extends db{
		private static $conn=null;
		public function dethi_create($name,$socauhoi,$author_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO dethi(name,socauhoi,author_id) VALUES(?,?,?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$name);
			$stmt->bindParam(2,$socauhoi);
			$stmt->bindParam(3,$author_id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function get_dethi_all(){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT dethi.id,dethi.name,socauhoi
					FROM dethi 
					LEFT JOIN question AS q
						ON q.dethi_id=dethi.id
					GROUP BY q.dethi_id ";
			$stmt=self::$conn->query($sql);
			$dethi=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$dethi[$i++]=$row;
			}
			$i--;
			return $dethi;
		}
		public function get_dethi_all_by_author($author_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT dethi.id,dethi.name,socauhoi,count('stt') AS socau_hoanthanh
					FROM dethi 
					LEFT JOIN question AS q
						ON dethi.id=q.dethi_id
					WHERE author_id=?
					GROUP BY q.dethi_id ";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$author_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$dethi=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$dethi[$i++]=$row;
			}
			$i--;
			return $dethi;
		}
		public function get_dethi_by_id($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,name,socauhoi
					FROM dethi WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$dethi=$stmt->fetch();
			return $dethi;
		}
		public function question_insert(array $question){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO question(question,answer,giaithich,dethi_id,stt,score) VALUES(?,?,?,?,?,?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$question['question']);
			$stmt->bindParam(2,$question['answer']);
			$stmt->bindParam(3,$question['giaithich']);
			$stmt->bindParam(4,$question['dethi_id']);
			$stmt->bindParam(5,$question['stt']);
			$stmt->bindParam(6,$question['score']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function dapan_insert(array $dapan,$question_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO dapan(question_id,stt,content) VALUES(?,?,?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$question_id);
			$stmt->bindParam(2,$dapan['stt']);
			$stmt->bindParam(3,$dapan['content']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function get_question_id_by_name($question,$dethi_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id FROM question WHERE question=? AND dethi_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$question);
			$stmt->bindParam(2,$dethi_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$question=$stmt->fetch();
			return $question['id'];
		}
		public function get_socau_hoanthanh($dethi_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT count('stt') AS socau_hoanthanh
					FROM question 
					WHERE dethi_id=?
					GROUP BY dethi_id";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$question=$stmt->fetch();
			return $question['socau_hoanthanh'];
		}
		public function get_question_by_stt($dethi_id,$stt){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,question,answer,giaithich,dethi_id,stt,score
					FROM question
					WHERE dethi_id=? AND stt=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->bindParam(2,$stt);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$question=$stmt->fetch();
			return $question;
		}
		public function get_dapan($question_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,stt,content FROM dapan WHERE question_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$question_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$dapan=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$dapan[$i++]=$row;
			}
			$i--;
			return $dapan;
		}
		public function tested($dethi_id,$stt,$user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT t.answer 
				FROM test AS t
				LEFT JOIN question AS q
				ON q.id=t.question_id
				WHERE dethi_id=? AND stt=? AND user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->bindParam(2,$stt);
			$stmt->bindParam(3,$user_id);
			$stmt->execute();
			$num=$stmt->rowCount();
			if($num>0){
				return true;
			}else{
				return false;
			}
		}
		public function nopbai($dethi_id,$user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT t.user_id,t.score,t.answer,q.id,q.question,giaithich,q.stt,q.answer AS dapan
					FROM test AS t
					LEFT JOIN question AS q
						ON q.id=t.question_id
					WHERE user_id=? AND dethi_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->bindParam(2,$dethi_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$nopbai=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$nopbai[$i++]=$row;
			}
			$i--;
			return $nopbai;
		}
		public function get_test_by_stt($dethi_id,$stt,$user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT user_id,q.id,q.stt,t.answer,t.score
					FROM test AS t
					LEFT JOIN question AS q
					ON q.id=t.question_id
					WHERE dethi_id=? AND stt=? AND user_id=? ";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->bindParam(2,$stt);
			$stmt->bindParam(3,$user_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$test=$stmt->fetch();
			return $test;
		}
		public function get_question_by_id($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT id,answer,score,stt,question,giaithich 
					FROM question
					WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$question=$stmt->fetch();
			return $question;
		}
		public function is_answer($question_id,$user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT question_id FROM test WHERE question_id=? AND user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$question_id);
			$stmt->bindParam(2,$user_id);
			$stmt->execute();
			$num=$stmt->rowCount();
			if($num>0){
				return true;
			}else{
				return false;
			}
		}
		public function update_test(array $test){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="UPDATE test SET answer=?,score=? WHERE question_id=? AND user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$test['answer']);
			$stmt->bindParam(2,$test['score']);
			$stmt->bindParam(3,$test['question_id']);
			$stmt->bindParam(4,$test['user_id']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function test_insert(array $test){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="INSERT INTO test(user_id,question_id,answer,score) VALUES(?,?,?,?)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$test['user_id']);
			$stmt->bindParam(2,$test['question_id']);
			$stmt->bindParam(3,$test['answer']);
			$stmt->bindParam(4,$test['score']);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function get_dapan_by_dethi($dethi_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT da.question_id,da.stt,da.content
					FROM dapan AS da
					LEFT JOIN question AS q
						ON q.id=da.question_id
					WHERE dethi_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$dapan=array(array());
			$i=0;
			while($row=$stmt->fetch()){
				$dapan[$i++]=$row;
			}
			$i--;
			return $dapan;
		}
		public function get_score($dethi_id,$user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT count(t.answer) AS tong_so_cau_lam,sum(t.score) AS score
					FROM test AS t
					LEFT JOIN question AS q
						ON q.id=t.question_id
					WHERE dethi_id=? AND user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->bindParam(2,$user_id);
			$stmt->execute();
			$score=$stmt->fetch();
			return $score;
		}
		public function so_cau_sai($dethi_id,$user_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT count(t.answer) AS so_cau_sai 
					FROM test AS t
					LEFT JOIN question AS q
						ON q.id=t.question_id
					WHERE t.score=0 AND dethi_id=? AND user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->bindParam(2,$user_id);
			$stmt->execute();
			$answer=$stmt->fetch();
			return $answer['so_cau_sai'];

		}
		public function get_score_user($id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="SELECT sum(score) AS score
					FROM test
					WHERE user_id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$id);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$score=$stmt->fetch();
			return $score['score'];
		}
		public function update_score_users($score,$id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="UPDATE users SET score=? WHERE id=?";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$score);
			$stmt->bindParam(2,$id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}

		}
		public function del_test($user_id,$dethi_id){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql="DELETE FROM test 
					WHERE user_id=? 
						AND question_id IN(
							SELECT id 
							FROM question WHERE dethi_id=? 
							)";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$user_id);
			$stmt->bindParam(2,$dethi_id);
			if($stmt->execute()){
				return true;
			}else{
				return false;
			}
		}
		public function so_nguoi_dung($dethi_id,$stt){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql=" SELECT dethi_id, stt, count(t.user_id) AS SoNguoiDung 
					    FROM test as t 
					    LEFT JOIN question AS q 
					    ON q.id=t.question_id 
					    WHERE dethi_id=? AND q.stt=? AND t.score<>0 
					    GROUP BY dethi_id,stt 
					    ";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->bindParam(2,$stt);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$result=$stmt->fetch();
			return $result['SoNguoiDung'];
		}
		public function so_nguoi_sai($dethi_id,$stt){
			if(empty(self::$conn)){
				self::$conn=$this->connect_pdo();
			}
			$sql=" SELECT dethi_id, stt, count(t.user_id) as SoNguoiSai 
					        FROM test as t 
					        LEFT JOIN question AS q 
					        ON q.id=t.question_id 
					        WHERE dethi_id=? AND q.stt=? AND t.score=0 
					        GROUP BY dethi_id, stt 
					";
			$stmt=self::$conn->prepare($sql);
			$stmt->bindParam(1,$dethi_id);
			$stmt->bindParam(2,$stt);
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$result=$stmt->fetch();
			return $result['SoNguoiSai'];
		}
	}
?>