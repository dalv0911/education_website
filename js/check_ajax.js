$(document).ready(function(){
	$('#name_thumuc').change(function(){
		var name=$(this).val();
		$('#ajax_notify').html('<span>Checking availability ...</span>');
		$.ajax({
			type:"get",
			url:"?rt=check_ajax/thumuc",
			data:"name="+name,
			success:function(respone){
				if(respone=="YES"){
					$('#ajax_notify').html('<span style="color:#5cb85c;font-weight:bold;">Bạn có thể sử dụng tên này .</span>');
				}else if(respone=="NO"){
					$('#ajax_notify').html('<span style="color:red;font-weight:bold;">Tên thư mục đã tồn tại .</span>');
				}
			}
		});
	});
	$('#name_thumuc2').change(function(){
		var name=$(this).val();
		$('#ajax_notify').html('<span>Checking availability ...</span>');
		$.ajax({
			type:"get",
			url:"?rt=check_ajax/thumuc2",
			data:"name="+name,
			success:function(respone){
				if(respone=="YES"){
					$('#ajax_notify').html('<span style="color:#5cb85c;font-weight:bold;">Bạn có thể sử dụng tên này .</span>');
				}else if(respone=="NO"){
					$('#ajax_notify').html('<span style="color:red;font-weight:bold;">Tên thư mục đã tồn tại .</span>');
				}
			}
		});
	});
	$('#page_name').change(function(){
		var name=$(this).val();
		$('#ajax_notify').html('<span>Checking availability ...</span>');
		$.ajax({
			type:"get",
			url:"?rt=check_ajax/pages",
			data:"name="+name,
			success:function(respone){
				if(respone=="YES"){
					$('#ajax_notify').html('<span style="color:#5cb85c;font-weight:bold;">Bạn có thể sử dụng tên này .</span>');
				}else if(respone=="NO"){
					$('#ajax_notify').html('<span style="color:red;font-weight:bold;">Tên thư mục đã tồn tại .</span>');
				}
			}
		});
	});
});