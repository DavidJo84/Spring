<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.104.2">
<title>찬누리한방병원 관리시스템</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/dashboard/">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

.chart {
	display: inline-block;
}

td, th {
	font-size: 0.9em;
}

#pageNo a {
	text-decoration: none;
	color: black;
	font-size: 1.2em;
	margin-right: 4px;
}
</style>


<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/dashboard.css"
	rel="stylesheet">
</head>
<body>
	<%@ page import="java.util.*"%>
	<%@ page import="com.human.vo.*"%>
	<%
		ArrayList<BoardVO> bList = (ArrayList) request.getAttribute("bList");
	%>
	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
	<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">찬누리
		한방병원</a>
	<button class="navbar-toggler position-absolute d-md-none collapsed"
		type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
		aria-controls="sidebarMenu" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<input class="form-control form-control-dark w-100 rounded-0 border-0"
		type="text" placeholder="검색" aria-label="Search">
	<div class="navbar-nav">
		<div class="nav-item text-nowrap">
			<a class="nav-link px-3" href="../login/login.html">로그인</a>
		</div>
	</div>
	</header>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
			<div class="position-sticky pt-3 sidebar-sticky">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="/final_web"> <span data-feather="home"
							class="align-text-bottom"></span> 환자현황
					</a></li>
					<li class="nav-item"><a class="nav-link active" href="bbsList">
							<span data-feather="file" class="align-text-bottom"></span> 공지사항
					</a></li>
					<!--<li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="shopping-cart" class="align-text-bottom"></span>
              Products
            </a>
          </li>-->
					<li class="nav-item"><a class="nav-link" href="#"> <span
							data-feather="users" class="align-text-bottom"></span> 사용자관리
					</a></li>
					<!--<li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="bar-chart-2" class="align-text-bottom"></span>
              Reports
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="layers" class="align-text-bottom"></span>
              Integrations
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
          <span>Saved reports</span>
          <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle" class="align-text-bottom"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Current month
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Last quarter
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Social engagement
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Year-end sale
            </a>
          </li>
        </ul>-->
			</div>
			</nav>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2">공지사항</h1>
				<div class="btn-toolbar mb-2 mb-md-0">
					<div class="btn-group me-2">
						<button type="button" onclick="href='wrForm'"
							class="btn btn-sm btn-outline-secondary" style="font-size: 0.8em;">글쓰기</button>
						<!-- <button type="button" class="btn btn-sm btn-outline-secondary">엑셀저장</button> -->
					</div>
					<!-- <button type="button"
						class="btn btn-sm btn-outline-secondary dropdown-toggle">
						<span data-feather="calendar" class="align-text-bottom"></span>
						This week
					</button> -->
					<!-- <div>
              <span data-feather="calendar" class="align-text-bottom"></span>
              <select>
                <option>일별</option>
                <option>주별</option>
                <option>월별</option>
              </select>
            </div> -->
				</div>
			</div>


			<!-- <h2 class="border-bottom">공지 사항</h2> -->
			<div class="table-responsive" style="width: 75vw;">
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<th scope="col"><input type="checkbox" id="allChk"
								onchange="allChk1()"></th>
							<th scope="col"></th>
							<th scope="col" style="text-align: center;">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">작성일</th>
							<th scope="col">조회</th>
						</tr>
					</thead>
					<form id="delAll" action="bbsDelAll" method="get">
					<tbody id="board_list">
						<%
							if (bList.size() == 0) {
								out.print("<tr class='record'>");
								out.print("<td colspan=6>등록된 글이 없습니다.</td>");
								out.print("</tr>");
							} else {
								for (int i = 0; i < bList.size(); i++) {
									BoardVO bvo = bList.get(i);
									out.print("<tr class='record'>");
									out.print("<td><input type='checkbox' name='delNum' value='" + bvo.getNum() + "'></td>");
									out.print("<td>" + bvo.getNum() + "</td>");
									out.print("<td><a class='nav-link hoverEv' href='" + request.getContextPath() + "/boardView?num="
											+ bvo.getNum() + "'>" + bvo.getTitle() + "</td>");
									out.print("<td>" + bvo.getName() + "</td>");
									out.print("<td>" + bvo.getIndate().substring(2, 10) + "</td>");
									out.print("<td>" + bvo.getCnt() + "</td>");
									out.print("</tr>");
								}
							}
						%>

					</tbody>
					</form>
				</table>

				<table class="table table-sm">

					<tr style="text-align: center;">



						<td id="pageNo">
							<div class="btn-group me-2" style="float: left;">
								<button type="button" onclick="delRow()"
									class="btn btn-sm btn-outline-secondary"
									style="font-size: 0.8em;">선택삭제</button>
								<!-- <button type="button" class="btn btn-sm btn-outline-secondary">엑셀저장</button> -->
							</div> <c:if test="${pvo.prev }">
								<span><a href="bbsList?page=${pvo.startPage -1 }">[이전]</a></span>
							</c:if> <c:forEach begin="${pvo.startPage }" end="${pvo.endPage }"
								var="idx">
								<a href="bbsList?page=${idx }"
									<c:if test="${pvo.page==idx }">style="color:blue;"</c:if>>${idx }</a>
							</c:forEach> <c:if test="${pvo.next }">
								<span><a href="bbsList?page=${pvo.endPage +1 }">[다음]</a></span>
							</c:if>
						</td>
					</tr>
				</table>

			</div>
			</main>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>
		$('.hoverEv').hover(function(){
			$(this).css("text-decoration","underline");
		},function(){
			$(this).css("text-decoration","none");
		})
		
		allChk1 = () => {
    		const table = document.getElementById('board_list');
   			for (let i = 0; i < table.rows.length; i++) {
     			if(document.getElementById('allChk').checked){
       			table.rows[i].cells[0].childNodes[0].checked = true;
     			}else{
       		 	table.rows[i].cells[0].childNodes[0].checked = false;
      			}
    		}
    
  		}
		
		delRow = () => {
			let flag= false;
			const table = document.getElementById('board_list');
			for (let i = 0; i < table.rows.length; i++) {
			      var chkBox = table.rows[i].cells[0].childNodes[0].checked;
			      if (chkBox) {
			        flag=true;
			      }
			    }
			if(flag){
				let delChk = confirm("선택한 글을 삭제하시겠습니까?");
				
			    if(delChk){
			    	$("#delAll").submit();
			    }
			}else{
				alert("선택한 글이 없습니다.")
			}
		    
		}
	</script>

	<!-- <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
 -->
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<!-- <script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script> -->
	<script
		src="${pageContext.request.contextPath}/resources/js/dashboard.js"></script>
</body>

</html>