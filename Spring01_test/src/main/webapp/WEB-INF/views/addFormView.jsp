<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="home.jsp"%>
<hr>
	<section>
		<form action="addAction" method="get">
			<table>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><input type="textArea" name="context"></td>
				</tr>
				<tr>
				<td colspan = "2" style="text-align: center;"><input type="submit" value="저장"></td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>