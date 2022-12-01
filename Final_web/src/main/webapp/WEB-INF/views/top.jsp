<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body>
   <div id="titleDV">
      Kim Teacher HomePage
   </div>
   <div id="logininfo">
      Login user :${login } 님 
      <c:if test = "${login!=null }">
      <a href="logout">[로그아웃]</a>
      </c:if>
   </div>

   <header> 스프링게시판1</header>

   <nav>
      <a href="/day03/">[home]</a> 
      <a href="wrForm">[Write]</a> 
      <a href="bbsList">[BBSList]</a>

   </nav>


</body>
</html>