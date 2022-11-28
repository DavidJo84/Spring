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
  <%MemberVO mvo = (MemberVO)request.getAttribute("mvo"); %>
	<div id="wrap" align="center">
		<h1>회원가입</h1>
		<form name="frm" method="post" action="modyAction">
			<table>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" value="${mvo.name }"></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td><input type="text" readonly name="id" value="${mvo.id }"> * 아이디는 변경할 수 없습니다.</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass" value="${mvo.pass }"> * 필수 (회원정보 수정
						삭제시 필요합니다.)</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="tel" value="${mvo.tel }"></td>
				</tr>
				<tr>
					<th>등급</th>
					<td><select name="grade">
					<%if(mvo.getGrade().equals("vip")){
						out.print("<option value='vip' selected>VIP</option><option value='일반'> 일반</option>");
					}else{
						out.print("<option value='vip'>VIP</option><option value='일반' selected> 일반</option>");
					}
						%></select></td>
				</tr>
			</table>
			<br> <br> <input type="submit" value="회원수정">
		</form>
	</div>
</body>
</html>