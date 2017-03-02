<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request['contextPath']}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新数据</title>
</head>
<body>
<div>
		<fieldset>
			<legend>
				修改商店信息，ID:<span id="id">${vo.id}</span>
			</legend>
			<label for="shopName">shopName:</label>
				<input type="text" id="shopName" name="shopName" value="${vo.shopName}" tabindex="1" />
			<br />
			<label for="shopNo">shopNo:</label>
				<input type="text" id="shopNo" name="shopNo" value="${vo.shopNo}" tabindex="2" />
			<br />
			<label for="shopType">shopType:</label>
				<input type="text" id="shopType" name="shopType" value="${vo.shopType}" tabindex="3" />
			<br />
			<label for="note">note:</label>
				<input type="text" id="note" name="note" value="${vo.note}" tabindex="4" />
			<br />
			<div id="buttons">
				<label for="dummy"></label> <input id="reset" type="reset"
					tabindex="5" /> <input id="btUpdate" type="submit" tabindex="6"
					value="Update ShopInfo" />
			</div>
		</fieldset>
		<script src="../script/jquery.min.js"></script>
		<script src="../script/md5.js"></script>
		<script src="../script/common.js"></script>
		<script src="../script/validator.js"></script>
		
	</div>
	<script type="text/javascript">
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


	</script>
</body>
</html>