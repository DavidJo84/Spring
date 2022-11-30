<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../top.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <%-- <style> <%@include file="../css/shopping.css" %></style> --%>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/shopping.css">
</head>
<script>
   //비동기로
   //서버에게 요청 작성자를 파라미터로 보낼 테니 중복여부 확인해줘
   // 응답을 받아서
   // 등록된 사용자라면 vlaue=1로 바꾸는 코드를 짠다. 

</script>
<body>
   <div id="wrap" align="center">
      <h1>게시글 등록</h1>
      <form name="frm" method="post" action="wrAction" encType="multipart/form-data">
      <!-- enc타입을 적어줘야만 첨부파일이 서버로 전송된다. -->
         <table id="list">
            <tr>
               <th>작성자</th>
               <td><input type="text" name="name"> * 필수
                  <input type="button" value="등록여부확인">
                  <input type="hidden" name="duplexChk" vlaue="0">
               
               </td>
            </tr>
            <tr>
               <th>비밀번호</th>
               <td><input type="password" name="pass"> * 필수 (게시물 수정
                  삭제시 필요합니다.)</td>
            </tr>
            <tr>
               <th>이메일</th>
               <td><input type="text" name="email"></td>
            </tr>
            <tr>
               <th>제목</th>
               <td><input type="text" size="70" name="title"> * 필수</td>
            </tr>
            <tr>
               <th>내용</th>
               <td><textarea cols="70" rows="15" name="content"></textarea></td>
            </tr>
            <tr>
               <th>첨부파일1</th>
               <td><input type="file" name="file"></td>
            </tr>
            <tr>
               <th>첨부파일2</th>
               <td><input type="file" name="file"></td>
            </tr>
         </table>
         <br>
         <br> <input type="submit" value="등록"> <input type="reset"
            value="다시 작성"> <input type="button" value="목록">
      </form>
   </div>
   <script type="text/javascript">

   
   </script>
</body>
</html>