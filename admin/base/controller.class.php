<?php
	include('../includes/function.php');
?>
<?php
	Abstract class Controller{
		
		protected $registry;
	    function __construct($registry){
	    	$this->registry=$registry;
		}
		// Bất kể controller nào kế thừa Controller đều phải có phương thức index ,
		abstract function index();
	}
?>