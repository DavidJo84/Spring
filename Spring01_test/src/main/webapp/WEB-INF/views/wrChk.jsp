<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.human.testvo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="home.jsp"%>
	<section>
		<form action="addAction" method="get">
			<table>
				<tr>
					<th>이름</th>
					<td>${tvo.name}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${tvo.title}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${tvo.context}</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>