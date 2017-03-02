//传入checkbox
$("#updateBtn").click(function() {
	var checked = [];
	flag = 0;
	$('input:checkbox:checked').each(function() {
		checked.push($(this).val());
	});

	$.ajax({
		type : 'POST',
		url : ctx + "/updateMore.do",
		cache : false,
		traditional : true, 
		data : {
			'checked' : checked
		},
		success : function(msg) {
			window.location.href=ctx + '/pages/jsp/update.jsp';
		},
		error : function() {
			alert("跳转失败")
		}
	});
});