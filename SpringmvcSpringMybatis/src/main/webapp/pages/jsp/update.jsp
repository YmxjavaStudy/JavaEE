<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request['contextPath']}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改商店信息</title>
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
		<script src="/SpringmvcSpringMybatis/pages/script/jquery.min.js"></script>
		<script src="/SpringmvcSpringMybatis/pages/script/md5.js"></script>
		<script src="/SpringmvcSpringMybatis/pages/script/common.js"></script>
		<script src="/SpringmvcSpringMybatis/pages/script/myValidate.js"></script>
		<script src="/SpringmvcSpringMybatis/pages/script/validator.js"></script>
		<script src="/SpringmvcSpringMybatis/pages/script/update.js"></script>
	</div>
</body>
</html>