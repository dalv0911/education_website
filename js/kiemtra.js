$(document).ready(function(){
	$('.answer_select').click(function(){
		var question_id=$(this).attr('id');
		var answer=$(this).val();
		var nextContainer=$(this).parent().next();
		$.ajax({
			type:"POST",
			url:"?rt=kiemtra/test_insert",
			data:{question_id:question_id,answer:answer},
			success:function(){
				nextContainer.after('hidden');
			}
		});
	});
});