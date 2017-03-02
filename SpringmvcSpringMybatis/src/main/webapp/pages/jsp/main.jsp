<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
登录成功
${message}
<br/>
<a href="/SpringmvcSpringMybatis/pages/jsp/add.jsp">增加商店信息</a>
<table align="center" border="1" cellspacing="0" width="680">
	<tr>
		<th>&nbsp;</th>
		<th>ID</th>
		<th>商店名称</th>
		<th>商店序号</th>
		<th>商店类型</th>
		<th>note</th>
		
	</tr>
	<c:forEach items="${voList}" var="vo" varStatus="vs" >	
	<tr>
		<td><input type="checkbox" value="${vo.id}" name="${vo.id}"></td>
		<td>${vo.id}</td>
		<td>${vo.shopName}</td>
		<td>${vo.shopNo}</td>
		<td>${vo.shopType}</td>
		<td>${vo.note}</td>
		<td width="120">
			<a href="updateOne.do?id=${vo.id}">修改</a>&nbsp;
			<a href="delById.do?id=${vo.id}">删除</a>
			
		</td>
	</tr>
	</c:forEach> 
</table>
<input type="submit" id="delBtn" name="delBtn" value="删除">
<input type="submit" id="updateBtn" name="updateBtn" value="修改">
	<script src="pages/script/jquery.min.js"></script>
	<script src="pages/script/md5.js"></script>
	<script src="pages/script/common.js"></script>
	<script src="pages/script/delIds.js"></script>
	<script src="pages/script/updateMore.js"></script>
</body>
</html>