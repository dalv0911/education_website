<?php
	include'views/header.php';
?>

	<div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><?php echo isset($title)?$title:'';?></h3>
        </div>
        <div class="panel-body">
            <div class="table-responsive">
            	<table class="table table-hover table-striped">
            		
            	</table>
            </div>
        </div>
    </div>

<?php
	include'views/side_bar.php';
	include'views/footer.php';
?>