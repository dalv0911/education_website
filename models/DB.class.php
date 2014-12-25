<?php
	include 'configuration.php';
	 class db{

		private  $host=null;
		private  $db_user=null;
		private  $db_password=null;
		private  $db_name=null;
		private  $rows=null;
		public function __construct(){
			$this->host 		    =Config::$host;
			$this->db_user 		=Config::$db_user;
			$this->db_password 	=Config::$db_password;
			$this->db_name 		=Config::$db_name;
		}
		// Function connect to database ...
		public function connect_pdo(){
			try{
				$conn=new PDO('mysql:host=localhost;dbname=education_web',$this->db_user,$this->db_password,
								array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8"));
				$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_SILENT);
			}catch(PDOException $e){
				echo "No connect to database !";
				die($e->getMessage());
			}
			return $conn;
		}
	}
?>