<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("UTF-8");
	String url = "";
	if (request.getQueryString() != null) {
		String temp = URLDecoder.decode(request.getQueryString(), "UTF-8");
		int a = temp.indexOf("page");
		if (a != -1) {
			url = temp.substring(0, a - 1);
		} else {
			url = temp;
		}
	}
%>
<%
	Date date = new Date();
	int year = date.getYear();
	String thisYear = Integer.toString(year + 1900);
	pageContext.setAttribute("thisYear", thisYear);
%>
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
	font-size: 0.8em;
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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/final_web"> <span
							data-feather="home" class="align-text-bottom"></span> 환자현황
					</a></li>
					<li class="nav-item"><a class="nav-link" href="bbsList"> <span
							data-feather="file" class="align-text-bottom"></span> 공지사항
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
					<li class="nav-item"><a class="nav-link" href="#"> <span
							data-feather="bar-chart-2" class="align-text-bottom"></span>
							Reports
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <span
							data-feather="layers" class="align-text-bottom"></span>
							Integrations
					</a></li>
				</ul>

				<h6
					class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
					<span>Saved reports</span> <a class="link-secondary" href="#"
						aria-label="Add a new report"> <span
						data-feather="plus-circle" class="align-text-bottom"></span>
					</a>
				</h6>
				<ul class="nav flex-column mb-2">
					<li class="nav-item"><a class="nav-link" href="#"> <span
							data-feather="file-text" class="align-text-bottom"></span>
							Current month
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <span
							data-feather="file-text" class="align-text-bottom"></span> Last
							quarter
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <span
							data-feather="file-text" class="align-text-bottom"></span> Social
							engagement
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <span
							data-feather="file-text" class="align-text-bottom"></span>
							Year-end sale
					</a></li>
				</ul>
			</div>
			</nav>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2">환자현황</h1>
				<div class="btn-toolbar mb-2 mb-md-0">
					<div class="btn-group me-2">
						<button type="button" class="btn btn-sm btn-outline-secondary">인쇄</button>
						<button type="button" class="btn btn-sm btn-outline-secondary">엑셀저장</button>
					</div>
					<button type="button"
						class="btn btn-sm btn-outline-secondary dropdown-toggle">
						<span data-feather="calendar" class="align-text-bottom"></span>
						This week
					</button>
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
			<div>
				<div class="chart"
					style="width: 37vw; height: 30vh; border: rgba(0, 0, 0, .1) 1px solid;">
					<canvas class="my-4 w-100" id="myChart"></canvas>
				</div>
				<div class="chart"
					style="width: 37vw; height: 30vh; border: rgba(0, 0, 0, .1) 1px solid;">
					<canvas class="my-4 w-100" id="myChart2"></canvas>
				</div>
			</div>
			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 border-bottom">
				<h2 style="margin-top: 30px;">환자 리스트</h2>
				<div class="btn-group me-2">
					<button type="button" onclick="addPat()"
						class="btn btn-sm btn-outline-secondary"
						style="font-size: 0.8em; margin-top: 30px;">환자등록</button>
					<button type="button" onclick="showSearch()"
						class="btn btn-sm btn-outline-secondary dropdown-toggle"
						style="font-size: 0.8em; margin-top: 30px;">환자검색</button>
				</div>
			</div>
			<div class="table-responsive" style="width: 75vw;">
				<div id="searchBar"
					style="display: none; padding-top: 12px; width: 75vw; height: 6vh; border: rgba(0, 0, 0, .1) 1px solid; background-color: rgba(0, 0, 0, .1);">
					<form action="searchPat" method="get">
						<table style="float: right;">
							<tr>
								<td><input type="radio" name="outdate" value="inPat">재원환자</td>
								<td><input type="radio" name="outdate" value="outPat"
									style="margin-left: 6px;">퇴원환자</td>
								<td style="width: 3vw;"></td>
								<td>진료과<select onchange="selDepart(this)" name="depart">
										<option value="전체과">전체과</option>
										<option value="한방">한방과</option>
										<option value="양방과">양방과</option>
								</select></td>
								<td><select id="selDepart2" name="depart2">
										<option>--선택--</option>
								</select></td>
								<td style="width: 3vw;"></td>
								<td>입/퇴원일<select name="seldate">
										<option>--선택--</option>
										<option value="indate">입원일</option>
										<option value="outdate">퇴원일</option>
								</select></td>
								<td>시작일 <input type="date" name="startDate"></td>
								<td>종료일 <input type="date" name="endDate"></td>
								<td class="btn-group me-2">
									<button type="submit" class="btn btn-sm btn-outline-secondary"
										style="font-size: 0.8em;">검색</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<th scope="col"><input type="checkbox" id="allChk"
								onchange="allChk1()"></th>
							<th scope="col">호실</th>
							<th scope="col">이름</th>
							<th scope="col">성별/나이</th>
							<th scope="col" style="text-align: center;">구분</th>
							<th scope="col">입원일</th>
							<th scope="col">비고</th>
							<th scope="col" style="text-align: center;">진단명</th>
							<th scope="col">약</th>
							<th scope="col">PT처치/특이사항</th>
							<th scope="col">아침</th>
							<th scope="col">점심</th>
							<th scope="col">저녁</th>
							<th scope="col">퇴원일</th>
						</tr>
					</thead>
					<form id="delAll" action="patDelAll" method="get">

						<tbody id="pat_list">

							<c:forEach items="${pList }" var="pvo">
								<tr>
									<td><input type='checkbox' name='num' value='${pvo.no }'></td>
									<td>${pvo.room }</td>
									<td><a class='nav-link hoverEv'
										onclick="viewPat('${pvo.no }')">${pvo.name }</td>
									<td style="text-align: center;">${pvo.sex }/${pvo.age }</td>
									<td>${pvo.depart }/${pvo.depart2 }</td>
									<c:choose>
										<c:when
											test="${pvo.indate.substring(0,4) eq pageScope.thisYear }">
											<td>${pvo.indate.substring(5,10) }</td>
										</c:when>
										<c:otherwise>
											<td>${pvo.indate.substring(2,10) }</td>
										</c:otherwise>
									</c:choose>
									<td>${pvo.memo }</td>
									<td>${pvo.disease }</td>
									<td>${pvo.medicine }</td>
									<td>${pvo.pt }</td>
									<td>${pvo.mor }</td>
									<td>${pvo.noon }</td>
									<td>${pvo.evening }</td>
									<c:choose>
										<c:when
											test="${pvo.indate.substring(0,4) eq pageScope.thisYear }">
											<td>${pvo.outdate.substring(5,10) }</td>
										</c:when>
										<c:otherwise>
											<td>${pvo.outdate.substring(2,10) }</td>
										</c:otherwise>
									</c:choose>

								</tr>

							</c:forEach>
						</tbody>
					</form>
				</table>
				<table class="table table-sm">
					<tr style="text-align: center;">
						<td id="pageNo">
							<div class="btn-group me-2" style="float: left;">
								<button type="button" onclick="delRow()"
									class="btn btn-sm btn-outline-secondary"
									style="font-size: 0.8em;">환자삭제</button>
								<button type="button" onclick="outdateRow()"
									class="btn btn-sm btn-outline-secondary"
									style="font-size: 0.8em;">퇴원처리</button>
							</div> <c:if test="${pgvo.prev }">
								<span><a
									href="<% out.print("?"+url); %>&page=${pgvo.startPage -1 }">[이전]</a></span>
							</c:if> <c:forEach begin="${pgvo.startPage }" end="${pgvo.endPage }"
								var="idx">
								<a href="<% out.print("?"+url); %>&page=${idx }"
									<c:if test="${pgvo.page==idx }">style="color:blue;"</c:if>>${idx }</a>
							</c:forEach> <c:if test="${pgvo.next }">
								<span><a
									href="<% out.print("?"+url); %>&page=${pgvo.endPage +1 }">[다음]</a></span>
							</c:if>
						</td>
					</tr>
				</table>

			</div>
			</main>
		</div>
	</div>
	<form action="addPat" method="post">
		<div class="modal" id="staticBackdrop" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div
				class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">환자등록</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">환자번호</label> <input
								type="text" name="no" class="form-control" id="inputEmail4">
						</div>
						<br>

						<div class="col-md-6">
							<label for="inputPassword4" class="form-label">환자이름</label> <input
								type="text" name="name" class="form-control" id="inputPassword4">
						</div>
						<br> <label for="year" class="form-label">생년월일</label>
						<div>
							<select id="year" name="year" class="form-select form-select-sm"
								aria-label="Default select example"
								style="float: left; width: 20%;">
								<option selected>년</option>
							</select> <select id="month" name="month"
								class="form-select form-select-sm"
								aria-label="Default select example"
								style="float: left; width: 17%;">
								<option selected>월</option>
							</select> <select id="day" name="day" class="form-select form-select-sm"
								aria-label="Default select example" style="width: 17%;">
								<option selected>일</option>
							</select>
						</div>
						<br> <label class="form-label">성별</label><br>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="sex"
								id="flexRadioDefault1" value="M"> <label
								class="form-check-label" for="flexRadioDefault1"> 남 </label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="sex"
								id="flexRadioDefault2" value="W"> <label
								class="form-check-label" for="flexRadioDefault2"> 여 </label>
						</div>
						<br> <br>

						<div class="col-12">
							<label for="inputAddress" class="form-label">주소</label> <input
								type="text" name="address" class="form-control"
								id="inputAddress">
						</div>
						<br>
						<div class="col-6">
							<label for="room" class="form-label">입원호실</label> <input
								type="text" class="form-control" name="room" id="room"
								placeholder="ex)402-1">
						</div>
						<br> <label for="depart" class="form-label">진료과</label>
						<div>
							<select id="depart " name="depart"
								class="form-select form-select-sm"
								aria-label="Default select example"
								style="float: left; width: 22%;">
								<option value="한방1과">한방1과</option>
								<option value="한방2과">한방2과</option>
								<option value="양방과">양방과</option>
							</select> <select name="depart2" class="form-select form-select-sm"
								aria-label="Default select example" style="width: 17%;">
								<option value="TA">TA</option>
								<option value="의보">의보</option>
							</select>
						</div>
						<br>


						<div class="col-12">
							<label for="disease" class="form-label">진단명</label> <input
								type="text" class="form-control" name="disease" id="disease">
						</div>
						<br>

						<div class="col-12">
							<label for="pt" class="form-label">PT처치/특이사항</label> <input
								type="text" class="form-control" name="pt" id="pt">
						</div>
						<br>

						<div class="col-6">
							<label for="medicine" class="form-label">약처방</label> <input
								type="text" class="form-control" name="medicine" id="medicine">
						</div>
						<br>

						<div class="col-6">
							<label for="memo" class="form-label">비고</label> <input
								type="text" class="form-control" name="memo" id="memo">
						</div>
						<br>

						<div class="col-md-6">
							<label for="indate" class="form-label">입원일</label> <input
								type="date" class="form-control" name="indate" id="indate">
						</div>
						<br> <label for="mor" class="form-label">식사</label><br>
						<div class="col-md-2 form-check-inline">
							<input type="text" name="mor" class="form-control" id="mor"
								placeholder="아침">
						</div>
						<div class="col-md-2 form-check-inline">
							<input type="text" name="noon" class="form-control" id="noon"
								placeholder="점심">
						</div>
						<div class="col-md-2 form-check-inline">
							<input type="text" name="evening" class="form-control"
								id="evening" placeholder="저녁">
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">저장</button>
					</div>
				</div>
			</div>
		</div>
	</form>

	<form action="viewPat" method="post">
		<div class="modal viewPat" id="staticBackdrop"
			data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div
				class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">환자정보</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="col-md-6">
							<label for="no" class="form-label">환자번호</label> <input
								type="text" readonly name="no_v" class="form-control"
								id="no_v">
						</div>
						<br>

						<div class="col-md-6">
							<label for="name" class="form-label">환자이름</label> <input
								type="text" readonly name="name_v" class="form-control"
								id="name_v" >
						</div>
						<br> <label for="year" class="form-label">생년월일</label>
						<div>
							<input
								type="text" readonly name="year" class="form-control"
								id="birthday_v" >
						</div>
						<br> <label class="form-label">성별</label>
						<input
								type="text" readonly name="sex_v" class="form-control"
								id="sex_v">
						<br>

						<div class="col-12">
							<label for="address" class="form-label">주소</label> <input
								type="text" readonly name="address_v"
								class="form-control" id="address_v">
						</div>
						<br>
						<div class="col-6">
							<label for="room" class="form-label">입원호실</label> <input
								type="text" readonly class="form-control" name="room_v"
								id="room_v">
						</div>
						<br> <label for="depart" class="form-label">진료과</label>
						<div>
							<input
								type="text" readonly name="depart_v"
								class="form-control" id="depart_v" style="float: left; width: 22%;">
								
							<input
								type="text" readonly name="depart2_v"
								class="form-control" id="depart2_v" style="width: 17%;">
						</div>
						<br>


						<div class="col-12">
							<label for="disease" class="form-label">진단명</label> <input
								type="text" readonly class="form-control"
								name="disease_v" id="disease_v">
						</div>
						<br>

						<div class="col-12">
							<label for="pt" class="form-label">PT처치/특이사항</label> <input
								type="text" readonly class="form-control" name="pt_v"
								id="pt_v">
						</div>
						<br>

						<div class="col-6">
							<label for="medicine" class="form-label">약처방</label> <input
								type="text" readonly class="form-control"
								name="medicine_v" id="medicine_v">
						</div>
						<br>

						<div class="col-6">
							<label for="memo" class="form-label">비고</label> <input
								type="text" readonly class="form-control" name="memo_v"
								id="memo_v">
						</div>
						<br>

						<div class="col-md-6">
							<label for="indate" class="form-label">입원일</label> <input
								type="text" readonly class="form-control"
								name="indate_v" id="indate_v">
						</div>
						<br> <label for="mor" class="form-label">식사</label><br>
						<div class="col-md-2 form-check-inline">
							<input type="text" readonly name="mor_v"
								class="form-control" id="mor_v" placeholder="아침">
						</div>
						<div class="col-md-2 form-check-inline">
							<input type="text" readonly name="noon_v"
								class="form-control" id="noon_v" placeholder="점심">
						</div>
						<div class="col-md-2 form-check-inline">
							<input type="text" readonly name="evening_v"
								class="form-control" id="evening_v" placeholder="저녁">
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">정보수정</button>
					</div>
				</div>
			</div>
		</div>
	</form>

	<form action="modyPatForm" method="get">
		<div class="modal modyPatForm" id="staticBackdrop"
			data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div
				class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">환자등록</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">환자번호</label> <input
								type="text" name="no" class="form-control" id="inputEmail4">
						</div>
						<br>

						<div class="col-md-6">
							<label for="inputPassword4" class="form-label">환자이름</label> <input
								type="text" name="name" class="form-control" id="inputPassword4">
						</div>
						<br> <label for="year" class="form-label">생년월일</label>
						<div>
							<select id="year" name="year" class="form-select form-select-sm"
								aria-label="Default select example"
								style="float: left; width: 20%;">
								<option selected>년</option>
							</select> <select id="month" name="month"
								class="form-select form-select-sm"
								aria-label="Default select example"
								style="float: left; width: 17%;">
								<option selected>월</option>
							</select> <select id="day" name="day" class="form-select form-select-sm"
								aria-label="Default select example" style="width: 17%;">
								<option selected>일</option>
							</select>
						</div>
						<br> <label class="form-label">성별</label><br>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="sex"
								id="flexRadioDefault1" value="M"> <label
								class="form-check-label" for="flexRadioDefault1"> 남 </label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="sex"
								id="flexRadioDefault2" value="W"> <label
								class="form-check-label" for="flexRadioDefault2"> 여 </label>
						</div>
						<br> <br>

						<div class="col-12">
							<label for="inputAddress" class="form-label">주소</label> <input
								type="text" name="address" class="form-control"
								id="inputAddress">
						</div>
						<br>
						<div class="col-6">
							<label for="room" class="form-label">입원호실</label> <input
								type="text" class="form-control" name="room" id="room"
								placeholder="ex)402-1">
						</div>
						<br> <label for="depart" class="form-label">진료과</label>
						<div>
							<select id="depart " name="depart"
								class="form-select form-select-sm"
								aria-label="Default select example"
								style="float: left; width: 22%;">
								<option value="한방1과">한방1과</option>
								<option value="한방2과">한방2과</option>
								<option value="양방과">양방과</option>
							</select> <select name="depart2" class="form-select form-select-sm"
								aria-label="Default select example" style="width: 17%;">
								<option value="TA">TA</option>
								<option value="의보">의보</option>
							</select>
						</div>
						<br>


						<div class="col-12">
							<label for="disease" class="form-label">진단명</label> <input
								type="text" class="form-control" name="disease" id="disease">
						</div>
						<br>

						<div class="col-12">
							<label for="pt" class="form-label">PT처치/특이사항</label> <input
								type="text" class="form-control" name="pt" id="pt">
						</div>
						<br>

						<div class="col-6">
							<label for="medicine" class="form-label">약처방</label> <input
								type="text" class="form-control" name="medicine" id="medicine">
						</div>
						<br>

						<div class="col-6">
							<label for="memo" class="form-label">비고</label> <input
								type="text" class="form-control" name="memo" id="memo">
						</div>
						<br>

						<div class="col-md-6">
							<label for="indate" class="form-label">입원일</label> <input
								type="date" class="form-control" name="indate" id="indate">
						</div>
						<br> <label for="mor" class="form-label">식사</label><br>
						<div class="col-md-2 form-check-inline">
							<input type="text" name="mor" class="form-control" id="mor"
								placeholder="아침">
						</div>
						<div class="col-md-2 form-check-inline">
							<input type="text" name="noon" class="form-control" id="noon"
								placeholder="점심">
						</div>
						<div class="col-md-2 form-check-inline">
							<input type="text" name="evening" class="form-control"
								id="evening" placeholder="저녁">
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">저장</button>
					</div>
				</div>
			</div>
		</div>
	</form>

	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- <script src="../assets/dist/js/bootstrap.bundle.min.js"></script> -->
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var now = new Date();
							var year = now.getFullYear();
							var mon = (now.getMonth() + 1) > 9 ? ''
									+ (now.getMonth() + 1) : '0'
									+ (now.getMonth() + 1);
							var day = (now.getDate()) > 9 ? ''
									+ (now.getDate()) : '0' + (now.getDate());
							//년도 selectbox만들기               
							for (var i = 1900; i <= year; i++) {
								$('#year').append(
										'<option value="' + i + '">' + i
												+ '년</option>');
							}

							// 월별 selectbox 만들기            
							for (var i = 1; i <= 12; i++) {
								var mm = i > 9 ? i : "0" + i;
								$('#month').append(
										'<option value="' + mm + '">' + mm
												+ '월</option>');
							}

							// 일별 selectbox 만들기
							for (var i = 1; i <= 31; i++) {
								var dd = i > 9 ? i : "0" + i;
								$('#day').append(
										'<option value="' + dd + '">' + dd
												+ '일</option>');
							}
							$("#year  > option[value=" + year + "]").attr(
									"selected", "true");
							$("#month  > option[value=" + mon + "]").attr(
									"selected", "true");
							$("#day  > option[value=" + day + "]").attr(
									"selected", "true");

						})

		function showSearch() {
			$('#searchBar').slideToggle();

		}

		$('.hoverEv').hover(function() {
			$(this).css("text-decoration", "underline");
		}, function() {
			$(this).css("text-decoration", "none");
		})

		function allChk1() {
			const table = document.getElementById('pat_list');
			for (let i = 0; i < table.rows.length; i++) {
				if (document.getElementById('allChk').checked) {
					table.rows[i].cells[0].childNodes[0].checked = true;
				} else {
					table.rows[i].cells[0].childNodes[0].checked = false;
				}
			}

		}

		function delRow() {
			let flag = false;
			const table = document.getElementById('pat_list');
			for (let i = 0; i < table.rows.length; i++) {
				var chkBox = table.rows[i].cells[0].childNodes[0].checked;
				if (chkBox) {
					flag = true;
				}
			}
			if (flag) {
				let delChk = confirm("선택한 환자를 삭제하시겠습니까?");

				if (delChk) {
					$("#delAll").submit();
				}
			} else {
				alert("선택한 환자가 없습니다.")
			}
		}

		function outdateRow() {
			let flag = false;
			const table = document.getElementById('pat_list');
			for (let i = 0; i < table.rows.length; i++) {
				var chkBox = table.rows[i].cells[0].childNodes[0].checked;
				if (chkBox) {
					flag = true;
				}
			}
			if (flag) {
				let delChk = confirm("선택한 환자를 퇴원처리하시겠습니까?");

				if (delChk) {
					$("#delAll").attr("action", "outAllPat");
					$("#delAll").submit();
				}
			} else {
				alert("선택한 환자가 없습니다.")
			}
		}

		function selDepart(e) {
			var good_a = [ "--없음--" ];
			var good_b = [ "1과", "2과" ];
			var good_c = [ "--없음--" ];
			var target = document.getElementById("selDepart2");

			if (e.value == "전체과")
				var d = good_a;
			else if (e.value == "한방")
				var d = good_b;
			else if (e.value == "양방과")
				var d = good_c;

			target.options.length = 0;

			for (x in d) {
				var opt = document.createElement("option");
				opt.value = d[x];
				opt.innerHTML = d[x];
				target.appendChild(opt);
			}
		}

		function addPat() {
			$(".modal").fadeIn();
		}

		$(".btn-close").click(function() {
			$(".modal").fadeOut();
		})
		
		function viewPat(e) {
			console.log(e);
			$(".viewPat").fadeIn();
			         var no = e; // .id_input에 입력되는 값
			         var data = {
			            no : no
			         } // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

			         $.ajax({
			            type : "post",
			            url : "/final_web/viewPat",
			            data : data,
			            dataType : "json",
			            success : function(result) {
			            	 $('#no_v').val(result.no);
			            	 $('#name_v').val(result.name);
			            	 $('#birthday_v').val(result.birthday);
			            	 $('#depart_v').val(result.depart);
			            	 $('#depart2_v').val(result.depart2);
			            	 $('#indate_v').val(result.indate);
			            	 $('#disease_v').val(result.disease);
			            	 $('#medicine_v').val(result.medicine);
			            	 $('#memo_v').val(result.memo);
			            	 $('#evening_v').val(result.evening);
			            	 $('#mor_v').val(result.mor);
			            	 $('#noon_v').val(result.noon);
			            	 $('#pt_v').val(result.pt);
			            	 $('#room_v').val(result.room);
			            	 $('#sex_v').val(result.sex);
			            	 $('#address_v').val(result.address);
			            	 console.log(result);
			              
			            }
			         }); // ajax 종료   

			      
		
		}

		$(".btn-close").click(function() {
			$(".viewPat").fadeOut();
		})
		
		function modyPatForm() {
			$(".modyPatForm").fadeIn();
		}

		$(".btn-close").click(function() {
			$(".modyPatForm").fadeOut();
		})
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/dashboard.js"></script>
</body>

</html>