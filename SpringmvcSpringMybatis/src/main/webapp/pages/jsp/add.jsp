<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../script/validator.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加信息</title>
<script type="text/javascript">
  $(document).ready(function(){
	  $("#shopName").attr("datatype", "Require").attr("msg", "请填写商店名称");
		$("#shopNo").attr("datatype", "Require").attr("msg", "请填写商店编号");
		$("#shopType").attr("datatype", "Require").attr("msg", "请填写商店类型");
		$("#note").attr("datatype", "Require").attr("msg", "请填写商店备注");
		$("#shopPassword").attr("datatype", "Require").attr("msg", "请填写商店密码");
		$(document.bodys[0]).submit(function() {
			return Validator.Validate(this, 4);
		});
  })
</script>
</head>
<body>
 <form action="<%=request.getContextPath() %>/add.do" method="post">
   <fieldset>
				<legend>Add a shop info</legend>
				<label for="shopName">Shop Name:</label>
				<input type="text" id="shopName" name="shopName" value="" tabindex="1"/>
				<br/>
				<label for="shopNo">Shop No:</label>
				<input type="text" id="shopNo" name="shopNo" value="" tabindex="2"/>
				<br/>
				<label for="ShopType">ShopType:</label>
				<input type="text" id="shopType" name="shopType" value="" tabindex="3"/>
				<br/>
				<label for="Note">Note:</label>
				<input type="text" id="Note" name="Note" value="" tabindex="4"/>
				<br/>
				<div id="buttons">
				<input id="reset" type="reset" tabindex="5"/>
				<input id="submit" type="submit" tabindex="6" value="Add Shop Info"/>
				</div>
			</fieldset>
 </form>
</body>
</html>