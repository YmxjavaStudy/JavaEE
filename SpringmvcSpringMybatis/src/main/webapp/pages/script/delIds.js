// 删除
$("#delBtn").click(function() {
	var checked = [];
	flag = 0;
	$('input:checkbox:checked').each(function() {
		checked.push($(this).val());
	});

	$.ajax({
		type : 'POST',
		url : ctx + "/delByIds.do",
		cache : false,
		traditional : true, 
		data : {
			'checked' : checked
		},
		success : function(msg) {
			alert("删除成功");
			window.location.href=ctx + '/show.do';
		},
		error : function() {
			alert("删除失败")
		}
	});
});