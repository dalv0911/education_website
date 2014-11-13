<?php
	include '../configuration.php';
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
			// Khi làm việc với PDo .. luôn phải đặt try catch để bắt ngoại lệ ....                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
			try{
				$conn=new PDO('mysql:host=localhost;dbname=education_web',$this->db_user,$this->db_password,
								array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8"));
				// Set attribute .. Dùng để thiết lập cách báo lỗi 
				$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
			}catch(PDOException $e){
				echo "connected to database !";
				die($e->getMessage());
			}
			return $conn;
		}
		
	}
?>