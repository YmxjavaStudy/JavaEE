$(document).ready(function() {
	$("#shopName").attr("datatype", "Require").attr("msg", "请填写商店名称");
	$("#shopNo").attr("datatype", "Require").attr("msg", "请填写商店编号");
	$("#shopType").attr("datatype", "Require").attr("msg", "请填写商店类型");
	$("#note").attr("datatype", "Require").attr("msg", "请填写商店备注");
	$("#shopPassword").attr("datatype", "Require").attr("msg", "请填写商店密码");
	$(document.bodys[0]).submit(function() {
		return Validator.Validate(this, 4);
	});
});