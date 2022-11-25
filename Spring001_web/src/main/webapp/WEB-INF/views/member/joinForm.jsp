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
	<div id="wrap" align="center">
		<h1>회원가입</h1>
		<form name="frm" method="post" action="joinAction">
			<table>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id"> * 필수</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass"> * 필수 (회원정보 수정
						삭제시 필요합니다.)</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="tel"></td>
				</tr>
				<tr>
					<th>등급</th>
					<td><input type="radio" name="grade" value="vip">VIP <input type="radio" name="grade" value="일반"> 일반</td>
				</tr>
			</table>
			<br> <br> <input type="submit" value="회원가입">
		</form>
	</div>
</body>
</html>