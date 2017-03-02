$("#btUpdate").click(function() {
	var id = $('#id').text();
	var shopName = $('#shopName').val();
	var shopNo = $('#shopNo').val();
	var shopType = $('#shopType').val();
	var note = $('#note').val();
	var ul;
	if(id == null || id == undefined || id == ''){
		ul=ctx+ "/updateByIds.do"
	}else {
		ul=ctx + "/updateById.do";
	}
	$.ajax({
		type : "POST",
		async : true,
		url : ul,
		data : {
			"id" : id,
			"shopNo" : shopNo,
			"shopName" : shopName,
			"shopType" : shopType,
			"note" : note,
		},
		error : function() {
			alert("修改失败");
		},
		success : function(msg) {
			alert("修改成功");
			window.location.href=ctx + '/show.do';

		}
	});
});

