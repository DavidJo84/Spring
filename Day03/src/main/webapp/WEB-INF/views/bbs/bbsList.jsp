<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../top.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/shopping.css">
<style type="text/css">
#pageNoTable {
	margin: 0 auto;
	margin-top: 15px;
}
</style>
</head>

<body>

	<hr>

	<%@ page import="java.util.*"%>
	<%@ page import="com.human.vo.*"%>
	<%
		ArrayList<BoardVO> bList = (ArrayList) request.getAttribute("bList");
		//out.print(al.size() +" / 가나다라마바사 <br>" );

		//for(int i=0; i < al.size(); i++){
		//      BoardVO bvo = al.get(i);
		//   out.print(bvo.getNum());
		//      out.print(bvo.getName());
		//   out.print("<hr>");      
		//   }
	%>
	<div id="wrap" align="center">
		<h1>게시글 리스트</h1>
		<table id="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right"><a
					href="wrForm">게시글 등록</a></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
				<th>수정/삭제</th>
			</tr>
			<!-- 아래 Tr 이 게시글 수 만큼 반복.. -->

			<%
				if (bList.size() == 0) {
					out.print("<tr class='record'>");
					out.print("<td colspan=5>등록된 글이 없습니다.</td>");
					out.print("</tr>");
				} else {
					for (int i = 0; i < bList.size(); i++) {
						BoardVO bvo = bList.get(i);
						out.print("<tr class='record'>");
						out.print("<td>" + bvo.getNum() + "</td>");
						out.print("<td><a href='" + request.getContextPath() + "/boardView?num=" + bvo.getNum() + "'>"
								+ bvo.getTitle() + "</td>");
						out.print("<td>" + bvo.getName() + "</td>");
						out.print("<td>" + bvo.getIndate() + "</td>");
						out.print("<td>" + bvo.getCnt() + "</td>");
						out.print("<td><a href='modyForm?num="+bvo.getNum()+"'>M");
						out.print("<a href='delAction?num="+bvo.getNum()+"'>/D</td>");
						out.print("</tr>");
					}
				}
			%>

			<!-- 아래 Tr 이 게시글 수 만큼 반복.. -->
		</table>
		<table id="pageNoTable">
			<tr style="text-align: center;">
				<td id="pageNo"><c:if test="${pvo.prev }">
						<span><a href="bbsList?page=${pvo.startPage -1 }">[이전]</a></span>
					</c:if> <c:forEach begin="${pvo.startPage }" end="${pvo.endPage }"
						var="idx">
						<a href="bbsList?page=${idx }"
							<c:if test="${pvo.page==idx }">style="color:yellowgreen;"</c:if>>${idx }</a>
					</c:forEach> <c:if test="${pvo.next }">
						<span><a href="bbsList?page=${pvo.endPage +1 }">[다음]</a></span>
					</c:if></td>
			</tr>
		</table>
	</div>
</body>
</html>