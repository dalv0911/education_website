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
	$('#page_name_edit').change(function(){
		var name=$(this).val();
		var url=$(location).attr('search');
		var url_array=url.split('=');
		var id=url_array[url_array.lenght-1];
		var data='name='+name+'&id='+id;
		$('#ajax_notify').html('<span>Checking availability ...</span>');
		$.ajax({
			type:"get",
			url:"?rt=check_ajax/pages_edit",
			data:data,
			success:function(respone){
				if(respone=="YES"){
					$('#ajax_notify').html('<span style="color:#5cb85c;font-weight:bold;">Bạn có thể sử dụng tên này .</span>');
				}else if(respone=="NO"){
					$('#ajax_notify').html('<span style="color:red;font-weight:bold;">Tên thư mục đã tồn tại .</span>');
				}
			}
		});
	});
	$('#menu_name').change(function(){
		var name=$(this).val();
		$('#ajax_notify').html('<span>Checking availability ...</span>');
		$.ajax({
			type:"get",
			url:"?rt=check_ajax/menu_name",
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
	$('#class_name').change(function(){
		var name=$(this).val();
		$('#ajax_notify').html('<span>Checking availability ...</span>');
		$.ajax({
			type:"get",
			url:"?rt=check_ajax/class_name",
			data:"name="+name,
			success:function(respone){
				if(respone=="YES"){
					$('#ajax_notify').html('<span style="color:#5cb85c;font-weight:bold;">Bạn có thể sử dụng tên này .</span>');
				}else if(respone=="NO"){
					$('#ajax_notify').html('<span style="color:red;font-weight:bold;">Tên lớp đã tồn tại .</span>');
				}
			}
		});
	});
	$('#email_users').change(function(){
		var email=$(this).val();
		$('#ajax_notify').html('<span>Checking availability ...</span>');
		$.ajax({
			type:"get",
			url:"?rt=check_ajax/email_users",
			data:"email="+email,
			success:function(respone){
				if(respone=="YES"){
					$('#ajax_notify').html('<span style="color:#5cb85c;font-weight:bold;">Bạn có thể sử dụng tên này .</span>');
				}else if(respone=="NO"){
					$('#ajax_notify').html('<span style="color:red;font-weight:bold;">Tên này đã tồn tại .</span>');
				}
			}
		});
	});
	$('#username').change(function(){
		var username=$(this).val();
		$('#ajax_notify').html('<span>Checking availability ...</span>');
		$.ajax({
			type:"get",
			url:"?rt=check_ajax/username",
			data:"username="+username,
			success:function(respone){
				if(respone=="YES"){
					$('#ajax_notify').html('<span style="color:#5cb85c;font-weight:bold;">Bạn có thể sử dụng tên này .</span>');
				}else if(respone=="NO"){
					$('#ajax_notify').html('<span style="color:red;font-weight:bold;">Tên này đã tồn tại .</span>');
				}
			}
		});
	});
	$('.remove').click(function(){
		var container =$(this).parent();
		var id=$(this).attr('id');
		var data="id="+id;
		$.ajax({
			type:"POST",
			url:"?rt=check_ajax/del_comment",
			data:data,
			success:function(){
				container.slideUp('slow',function(){
					container.remove();
				});
			}
		});
	});
	$('.accept').click(function(){
		var container =$(this).parent();
		var id=$(this).attr('id');
		var data="id="+id;
		$.ajax({
			type:"POST",
			url:"?rt=check_ajax/accept_join",
			data:data,
			success:function(){
				container.slideUp('slow',function(){
					container.remove();
				});
			}
		});
	});
	$('.reject').click(function(){
		var container =$(this).parent();
		var id=$(this).attr('id');
		var data="id="+id;
		$.ajax({
			type:"POST",
			url:"?rt=check_ajax/reject_notify",
			data:data,
			success:function(){
				container.slideUp('slow',function(){
					container.remove();
				});
			}
		});
	});
	$('.hide_notify').click(function(){
		var container =$(this).parent();
		var id=$(this).attr('id');
		var data="id="+id;
		$.ajax({
			type:"POST",
			url:"?rt=check_ajax/hide_notify",
			data:data,
			success:function(){
				container.slideUp('slow',function(){
					container.remove();
				});
			}
		});
	});
	$('.del_notify').click(function(){
		var container =$(this).parent();
		var id=$(this).attr('id');
		var data="id="+id;
		$.ajax({
			type:"POST",
			url:"?rt=check_ajax/reject_notify",
			data:data,
			success:function(){
				container.slideUp('slow',function(){
					container.remove();
				});
			}
		});
	});
	$('.favorite').click(function(){
		var id=$(this).attr('id');
		var data="id="+id;
		if($(this).is(':checked')){
			$.ajax({
				type:"POST",
				url:"?rt=check_ajax/favorite_checked",
				data:data,
			});
		}else{
			$.ajax({
				type:"POST",
				url:"?rt=check_ajax/favorite_un_check",
				data:data,
			});
		}
	});
	$('.status_edit').click(function(){
		var container=$(this).parent();
		var nextContainer=$(this).parent().next();
		$.ajax({
			success:function(){
				container.slideUp('slow',function(){
					container.remove();
					nextContainer.removeClass('hidden');
				});
			}
		});
	});
	$('.status_del').click(function(){
		var container=$(this).parent();
		var id=$(this).attr('id');
		var data="stt_id="+id;
		$.ajax({
			type:"POST",
			url:"?rt=check_ajax/del_status",
			data:data,
			success:function(){
				container.parent().slideUp('slow',function(){
					container.parent().remove();
				});
			}
		});
	});
	$('.del_cmt').click(function(){
		var container=$(this).parent();
		var id=$(this).attr('id');
		var data="cmt_id="+id;
		$.ajax({
			type:"POST",
			url:"?rt=check_ajax/del_cmt",
			data:data,
			success:function(){
				container.slideUp('slow',function(){
					container.remove();
				});
			}
		});
	});
});