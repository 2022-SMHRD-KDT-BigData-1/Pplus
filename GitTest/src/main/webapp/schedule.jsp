<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.awt.PageAttributes"%>
<%@page import="com.pplus.model.TodoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.TodoDAO"%>
<%@page import="com.pplus.model.ScheduleDTO"%>
<%@page import="com.pplus.model.ScheduleDAO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
PMemberDTO member = (PMemberDTO) session.getAttribute("member");
ScheduleDTO schedule = (ScheduleDTO) session.getAttribute("schedule");
ScheduleDAO scheduleDao = new ScheduleDAO();

String nick = member.getMember_nick();

String num = request.getParameter("num");

int schedule_num = schedule.getSchedule_num();
pageContext.setAttribute("schedule", schedule);

TodoDAO todoDAO = new TodoDAO();
ArrayList<TodoDTO> todolist = new ArrayList<TodoDTO>();
todolist = todoDAO.todoSelectAll(nick, schedule_num);
int todocnt = todolist.size();
pageContext.setAttribute("todolist", todolist);
pageContext.setAttribute("todocnt", todocnt);

// Gson 객체 만들기 --> 자바의 데이터를 json타입으로 바꾸어 주는 역할
Gson gson = new Gson();

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>P+(Programming에 Planner를 더하다.)</title>
<!-- Favicon  -->
<link rel="icon" href="image/p+만.png" />
<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css" />
<link rel="stylesheet" href="style.css" />

<title>Hello, world!</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">


<!-- Option 2: Separate Popper and Bootstrap JS -->

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i"
	rel="stylesheet" type="text/css" />

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet" />
<link href="calendar/packages copy/core/main.css" rel="stylesheet" />
<link href="calendar/packages copy/daygrid/main.css" rel="stylesheet" />
<script src="calendar/packages copy/core/main.js"></script>
<script src="calendar/packages copy/interaction/main.js"></script>
<script src="calendar/packages copy/daygrid/main.js"></script>
<script src="jquery-3.6.0.min.js"></script>

<!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">
<style>
body {
	/* font-family: Arial, Helvetica Neue, Helvetica, sans-serif; */
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>


</head>

<body>
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="image/p+만1.png" alt="" /></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<button type="button" class="btn" data-toggle="collapse"
					data-target="#demo" style="background-color:black">
					<span></span><span></span><span></span>
				</button>
			</div>
		</div>
		<div class="collapse navbar-collapse" id="demo">
			<ul class="navbar-nav">

				<li clas="nav-item"><a class="nav-link" href="#">사이트 소개</a></li>
				<li clas="nav-item"><a class="nav-link" href="컨텐츠추천.jsp">컨텐츠
						추천</a></li>
				<li clas="nav-item"><a class="nav-link" href="plannermain.jsp">학습플래너</a></li>
				<li clas="nav-item"><a class="nav-link" href="#">포트폴리오</a></li>
				<li clas="nav-item"><a class="nav-link" href="mypg_main.jsp">마이페이지</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">로그아웃</a></li>
			</ul>
		</div>
		<header id="header" class="fixed-top header-scrolled">
			<nav id="navbar" class="navbar">
				<a style="padding-left: 15px" href="ploginmain.jsp"><img
					style="width: 50px" src="image/p+만1.png"></a>
				<ul style="padding-right: 30px">
					<li><a class="nav-link scrollto" href="#"
						style="text-decoration: none">사이트 소개</a></li>
					<li></li>
					<div class="dropdown nav-item active">
						<a style="text-decoration: none" class="nav-link dropdown-toggle"
							href="컨텐츠추천.jsp">컨텐츠 추천</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="ptype.jsp">유형 확인 및
									재검사</a></li>
							<li><a class="dropdown-item" href="search1.jsp">책 검색</a></li>
						</ul>
					</div>

					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="plannermain.jsp">학습플래너</a>
						<span class="caret"></span>

						<ul class="dropdown-menu">
							<li class="dropdown-header">스케줄</li>
							<hr>
							<li><a href="scheduleset.jsp">등록</a></li>
							<li><a href="scheduleindex.jsp">전체 스케줄 목록</a></li>

							<br>
							<li class="divider"></li>
							<li class="dropdown-header">일정</li>
							<hr>
							<li><a href="dayplantodayset.jsp">등록</a></li>
							<li><a href="dayplantodayindex.jsp">전체 일정 목록</a></li>

							<br>
							<li class="divider"></li>
							<li class="dropdown-header">조회</li>
							<hr>
							<li><a href="editorallindex.jsp">전체 에디터 목록</a></li>
							<li><a href="diaryallindex.jsp">전체 일기 목록</a></li>
							<li><a href="todoallindex.jsp">전체 할 일 목록</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="#">포트폴리오</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="#">등록</a></li>

							<li><a class="dropdown-item" href="#">목록</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="mypg_main.jsp">마이페이지</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="pupdate.jsp">회원정보
									수정/탈퇴</a></li>
							<li><a class="dropdown-item" href="achieveall.jsp">전체
									학습상황 조회</a></li>
							<li><a class="dropdown-item" href="mybookwish.jsp">위시리스트</a></li>
						</ul>
					</div>
					<li class="nav-item active"><a class="nav-link"
						href="plogout.jsp">로그아웃</a></li>


				</ul>
			</nav>
		</header>


 	<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- Widget Title -->


				<!-- ##### Single Widget ##### -->
				<div class="widget catagory mb-50">
					<!-- Widget Title -->

					<h6 class="widget-title mb-30">스케줄</h6>

					<!--  Catagories  -->
					<div class="catagories-menu">
						<ul>
							<li class="active"><a></a></li>
							<li><a href="schedule.jsp">달력</a></li>
							<hr />
						</ul>
					</div>
				</div>

				<!-- ##### Single Widget ##### -->
				<div class="widget catagory mb-50">
					<!-- Widget Title -->
					<!-- <h6 class="widget-title mb-30">스케줄</h6> -->

					<!--  Catagories  -->
					<div class="catagories-menu">
						<ul>
							<li class="active"><a>에디터</a></li>
							<hr>
							<li><a href="editorset.jsp">에디터 작성</a></li>
							<li><a href="editorindex.jsp">에디터 목록</a></li>
						</ul>

					</div>
				</div>

				<!-- ##### Single Widget ##### -->
				<div class="widget category mb-50">

					<!-- Widget Title -->

					<div class="catagories-menu">
						<ul>
							<li class="active"><a>일기</a></li>
							<hr>
							<li><a href="diaryset.jsp">작성</a></li>
							<li><a href="diaryindex.jsp">일기 목록</a></li>
						</ul>
					</div>

					<div class="widget catagory mb-50">
						<div class="catagories-menu">
							<ul>
								<li class="active"><a>오늘 할 일</a></li>
								<hr>
								<li><a href="todoset.jsp">작성</a></li>
								<li><a href="todoindex.jsp">전체 할 일 목록</a></li>
							</ul>
						</div>
					</div>


					<div class="catagories-menu">
						<ul>
							<li class="active"><a></a></li>
							<li><a href="achieve.jsp">학습진행상황</a></li>
							<hr />
						</ul>

					</div>

				</div>
			</div>
		</div>
		
		<div style="width: 80%; margin-top: 7%; margin-left: 70px;">

			<!-- Option 1: Bootstrap Bundle with Popper -->
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>

			<!-- 달력 -->
			<div class="container">
				<div class="col-md-10">
					<div class="container col-md-6 p-3">
						<div class="row"></div>
					</div>
					<div id="calendar"></div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<script>

   var gs = JSON.parse('<%=gson.toJson(todolist)%>');

		var eventlist = [ {
			title : "${schedule.schedule_name}",
			start : "${schedule.schedule_start}",
			end : "${schedule.schedule_end}",
		}, {
			title : "공부하는 책 : ${schedule.book_title}",
			start : "${schedule.schedule_start}",
			end : "${schedule.schedule_end}",
		}, {
			title : "공부할 페이지 : ${schedule.schedule_day_page}",
			start : "${schedule.schedule_start}",
			end : "${schedule.schedule_end}",
		} ];

		for (var i = 0; i < gs.length; i++) {
			if (gs[i]['todo_check'] == 1) {
				eventlist.push({
					title : gs[i]['todo_title']+" o",
					start : gs[i]['todo_date'],
					end : gs[i]['todo_date']
				});

			} else {
				eventlist.push({
					title : gs[i]['todo_title']+" x",
					start : gs[i]['todo_date'],
					end : gs[i]['todo_date']
				});

			}

		}

		$(document).ready(function() {
			var calendarEl = document.getElementById("calendar");
			var calendar = new FullCalendar.Calendar(calendarEl, {
				initialView : "dayGridMonth",
				plugins : [ "interaction", "dayGrid" ],
				locale : 'ko',
				editable : true,
				eventLimit : true, // allow "more" link when too many events
				events : eventlist
				,
			});
			calendar.render();
		});
	</script>
	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->

	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>
</html>