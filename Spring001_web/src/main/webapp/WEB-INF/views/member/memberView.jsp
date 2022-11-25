<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/shopping.css">
</head>
<body>
<%@ include file="../home.jsp"%>
 <hr>
 <%@ page import="com.human.vo.*" %>
	<div id="wrap" align="center">
		<h1>회원가입</h1>
		<form name="frm" method="post" action="joinAction">
			<table>
				<tr>
					<th>이름</th>
					<td>${mvo.name }</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>${mvo.id }</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>${mvo.pass }</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${mvo.tel }</td>
				</tr>
				<tr>
					<th>등급</th>
					<td>${mvo.grade }</td>
				</tr>
				<tr>
					<th>포인트</th>
					<td>${mvo.point }</td>
				</tr>
			</table>
			<br> <br> <input type="submit" value="회원가입">
		</form>
	</div>
</body>
</html>