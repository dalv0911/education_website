</div><!-- END  -->
<div class="col-lg-3">
	<div class="panel-body">
			<div class="list-group-item active">Quản lý đề thi</div>
			<a href="?rt=kiemtra/dethi_create"class="list-group-item">Tạo đề thi</a>
			<?php
				$i=0;
				while(isset($dethi_by_author[$i]['id']) && !empty($dethi_by_author[$i]['id'])){
					echo'
					<a href="?rt=kiemtra/question_create&dethi_id='.$dethi_by_author[$i]['id'].'&stt=1"class="list-group-item">'.$dethi_by_author[$i]['name'].'
						 <i style="font-size:20px;color:red;">'.$dethi_by_author[$i]['socau_hoanthanh'].'/'.$dethi_by_author[$i]['socauhoi'].'</i></a>
					';
					$i++;
				}
			?>
	</div>
</div>