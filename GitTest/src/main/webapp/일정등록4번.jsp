<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>

</head>

<body>

		 <header
      class="navbar navbar-expand navbar-dark bg-dark bd-navbar fixed-top"
    >
      <a class="navbar-brand" href="#">P+</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#">사이트 소개</a>
          </li>
          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="컨텐츠추천.jsp" >컨텐츠 추천</a>
            <ul
              class="dropdown-menu"
              aria-labelledby="dropdownMenuLink"
            >
              <li>
                <a class="dropdown-item" href="#">유형 확인 및 재검사</a>
              </li>
            </ul>
          </div>
          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="plannermain.jsp" >학습플래너</a>
            <span class="caret"></span></button>
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
      <li><a href="dayplantodayinsex.jsp">전체 일정 목록</a></li>
      
      <br>
      <li class="divider"></li>
      <li class="dropdown-header">조회</li>
      <hr>
      <li><a href="editorindex.jsp">전체 에디터 목록</a></li>
      <li><a href="diaryindex.jsp">전체 일기 목록</a></li>
      <li><a href="todoindex.jsp">전체 할 일 목록</a></li>
      
      
    </ul>
          </div>
          
          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="#" >포트폴리오</a>
            <ul
              class="dropdown-menu"
              aria-labelledby="dropdownMenuLink"
            >
              <li>
                <a class="dropdown-item" href="포폴등록할스케줄.jsp">등록</a>
              </li>
              
              <li>
                <a class="dropdown-item" href="포폴목록.jsp">목록</a>
              </li>
            </ul>
          </div>

          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="#" >마이페이지</a>
            <ul
              class="dropdown-menu"
              aria-labelledby="dropdownMenuLink"
            >
              <li>
                <a class="dropdown-item" href="#">회원정보 수정/탈퇴</a>
              </li>
              <li>
                <a class="dropdown-item" href="#">전체 학습상황 조회</a>
              </li>
              <li>
                <a class="dropdown-item" href="#">위시리스트</a>
              </li>
            </ul>
          </div>
          <li class="nav-item active">
            <a class="nav-link" href="#">로그아웃</a>
          </li>
        </ul>
      </div>
    </header>


	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">

			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>



		      <div class="shop_sidebar_area">
         <!-- ##### Single Widget ##### -->
         <div class="widget catagory mb-50">
            <h6 class="widget-title mb-30">학습플래너</h6>
            <br>
            <!-- Widget Title -->
            <!--<h6 class="widget-title mb-30">스케줄</h6>
 -->
            <!--  Catagories  -->
            <div class="catagories-menu">
               <ul>
                  <li class="active" style="color: #fbb710"><a>스케줄</a></li>
                  <hr />
                  <li><a href="스케줄만_등록.jsp">등록</a></li>
                  <li><a href="전체스케줄목록.jsp">전체 스케줄 목록</a></li>

               </ul>
            </div>
         </div>

         <!-- ##### Single Widget ##### -->
         <div class="widget category mb-50">
            <!-- Widget Title -->
            <!--<h6 class="widget-title mb-30">일정</h6>
 -->
            <!-- Widget Title -->

            <div class="catagories-menu">
               <ul>
                  <li class="active" style="color: #fbb710"><a>일정</a></li>
                  <hr />
                  <li><a href="일정등록4번.jsp">등록</a></li>
                  <li><a href="#">전체 일정 목록</a></li>
               </ul>
            </div>
         </div>

         <!-- ##### Single Widget ##### -->
         <div class="widget category mb-50">
            <!-- Widget Title -->
            <!-- <h6 class="widget-title mb-30">일정</h6>
 -->
            <!-- Widget Title -->

            <div class="catagories-menu">
               <ul>
                  <li class="active" style="color: #fbb710"><a>조회</a></li>
                  <hr />
                  <li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
                  <li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
                  <li><a href="#">전체 할 일 목록</a></li>

               </ul>
            </div>
         </div>
      </div>


		<div class="" style="width: 40%; margin-top: 10%; margin-left: 25%;">
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>


			<!--책 검색/위시리스트에서 찾기/제목/제목/시작일-종료일/예상 학습일 -->

			<div class="container">
				<form action="#" method="get" role="form">
					<h3 style="font-weight: bold;">일정 등록</h3>
					<br>
					<hr>
					<br> 오늘 날짜 선택 <input type="date" class="form-control"
						placeholder="date input" /> <br> <input type="text"
						class="form-control" placeholder="일정 이름을 입력하세요." /> <br>

					<br>
					<div class="text-center">
						<a href="#" class="btn btn-primary">일정 등록</a>
					</div>
			</div>


		</div>
	</div>



	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
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
