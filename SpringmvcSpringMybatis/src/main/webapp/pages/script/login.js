//初始化数据
$(document).ready(function() {
	var username = getLocalStorage("username");
	if (!isNull(username)) {
		$('#username').val(username);
	}
});

//登录
$("#btnLogin").click(function() {
	var username = $('#username').val();
	var password = $('#password').val();
	if (isNull(username)) {
		showmsg("请输入门店编号");
		return false;
	}
	if (isNull(password)) {
		showmsg("请输入您的密码");
		return false;
	}
	//加密
	//password = $.md5(password);

	showLoadingDialog("登录中，请稍后...");

	$.ajax({
		type : "POST",
		async : true,
		url : ctx + "/login.do",
		data : {
			"shopNo" : username,
			"password" : password
		},
		error : function() {
			hideLoadingDialog();
			showmsg("登录异常");
		},
		success : function(vo) {
			hideLoadingDialog();
			if (!isNull(vo)) {
				//console.log(res.shopNo);
				//console.log(res);
				clearLocalStorage();
				setLocalStorage("username", vo.shopNo);//用于记住用户名，不清除
				setLocalStorage("shopNo", vo.shopNo);
				setLocalStorage("shopId", vo.id);
				setLocalStorage("shopInfo", JSON.stringify(vo));

				showmsg("恭喜你，登录成功！");
				window.location.href=ctx + '/main.do';

			} else {
				showmsg("用户名或密码错误");
			}
		}
	});
});
