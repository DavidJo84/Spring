<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/shopping.css">

</head>

<body>
<%@ include file="../home.jsp"%>
   <hr>
     
<%@ page import="java.util.*"%>
<%@ page import="com.human.vo.*" %>
<%
   ArrayList<MemberVO> mList = (ArrayList)request.getAttribute("mList");
   
%>
   <div id="wrap" align="center">
      <h1>회원정보</h1>
      <table class="list">
         <tr>
            <th>아이디</th>
            <th>이름</th>
            <th>전화번호</th>
            <th>포인트</th>
            <th>수정/삭제</th>
         </tr>
         <!-- 아래 Tr 이 게시글 수 만큼 반복.. -->
         
         <%
         if(mList.size()==0){
            out.print("<tr class='record'>");
            out.print("<td colspan=5>등록된 글이 없습니다.</td>");   
            out.print("</tr>");
         }else{
            for(int i=0; i < mList.size(); i++){
               MemberVO mvo = mList.get(i);
               out.print("<tr class='record'>");
               out.print("<td>"+mvo.getId()+"</td>");   
               out.print("<td><a href='"+request.getContextPath()+"/memberOne?id="+mvo.getId()+"'>"+mvo.getName()+"</a></td>");
               out.print("<td>"+mvo.getTel()+"</td>");
               out.print("<td>"+mvo.getPoint()+"</td>");
               out.print("<td><a href='"+request.getContextPath()+"/modyMember?id="+mvo.getId()+"'>M</a>"+"<a href='"+request.getContextPath()+"/delMember?id="+mvo.getId()+"'>/D</td>");
               out.print("</tr>");
            }
         }      
         
         %>
            
         <!-- 아래 Tr 이 게시글 수 만큼 반복.. -->
      </table>
   </div>
</body>
</html>