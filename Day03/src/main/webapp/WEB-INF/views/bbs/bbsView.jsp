<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../top.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- <style> <%@include file="../css/shopping.css" %></style> --%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/shopping.css">
</head>
<script>
	//비동기로
	//서버에게 요청 작성자를 파라미터로 보낼 테니 중복여부 확인해줘
	// 응답을 받아서
	// 등록된 사용자라면 vlaue=1로 바꾸는 코드를 짠다.
</script>
<body>
	<div id="wrap" align="center">
		<h1>게시글</h1>

		<!-- enc타입을 적어줘야만 첨부파일이 서버로 전송된다. -->
		<table id="list">
			<tr>
				<th>작성자</th>
				<td>${bvo.name }</td>
				<th>이메일</th>
				<td>${bvo.email }</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td>${bvo.indate }</td>
				<th>조회수</th>
				<td>${bvo.cnt }</td>
			</tr>

			<tr>
				<th>제목</th>
				<td colspan="3">${bvo.title }</td>
			</tr>

			<tr>
				<th>내용</th>
				<td colspan="3" style="height: 400px;">${bvo.content }</td>
			</tr>
			<tr>
				<th>첨부파일1</th>
				<td colspan="3">
				<c:forEach items = "${fList }" var="fname">
					<a href="download?filename=${fname}">${fname}</a><br>
				
				</c:forEach>
				</td>
			</tr>
			<!-- <tr>
               <th>첨부파일2</th>
               <td></td>
            </tr> -->
		</table>
		<br> <br> <input type="button" value="수정"> <input
			type="button" value="삭제">

	</div>
	<script type="text/javascript">
		
	</script>
</body>
</html>