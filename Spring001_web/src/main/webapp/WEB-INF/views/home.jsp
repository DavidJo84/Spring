<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style type="text/css">
ul li{
list-style: none;
display: inline;
}
h1{
float:left;
}
</style>
</head>
<body>
	<header>
		<h1>Spring 홈페이지</h1><img src="<%=request.getContextPath() %>/resources/image/캡처.PNG">
	</header>
	<nav>
	<ul>
	<li><a href="<%=request.getContextPath() %>">[홈으로]</a></li>
	<li><a href="wrForm">[글쓰기]</a></li>
	<li><a href="boardList">[글보기]</a></li>
	<li><a href="memberList">[회원보기]</a></li>
	<li><a href="joinForm">[회원가입]</a></li>
	
	</ul>
	</nav>
	<section>
	
	</section>
</body>
</html>
