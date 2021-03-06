<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
<title>P+(Programming에 Planner를 더하다.)</title>
    <!-- Favicon  -->
 <link rel="icon" href="image/p+만.png" />
    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css" />
    <link rel="stylesheet" href="style.css" />

    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

    
    <!-- Option 2: Separate Popper and Bootstrap JS -->

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
      integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
      integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
      crossorigin="anonymous"
    ></script>
   
   <!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">
  </head>

  <body>
<header id="header" class="fixed-top header-scrolled">
		<nav id="navbar" class="navbar" style="justify-content: end">
			<a style="padding-right: 57%" href="ploginmain.jsp"><img style="width: 40px"
				src="image/p+만.png"></a>
			<ul style="padding-right: 30px">
				<li><a class="nav-link scrollto" href="#"
					style="text-decoration: none">사이트 소개</a></li>
				<li></li>
				<div class="dropdown nav-item active">
					<a style="text-decoration: none" class="nav-link dropdown-toggle"
						href="컨텐츠추천.jsp">컨텐츠 추천</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="ptype.jsp">유형 확인 및 재검사</a></li>
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
					<a class="nav-link dropdown-toggle" href="#">마이페이지</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="pupdate.jsp">회원정보
								수정/탈퇴</a></li>
						<li><a class="dropdown-item" href="achieveall.jsp">전체
								학습상황 조회</a></li>
						<li><a class="dropdown-item" href="#">위시리스트</a></li>
					</ul>
				</div>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">로그아웃</a></li>


			</ul>
		</nav>
	</header>

    <!-- Search Wrapper Area Start -->
   

    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">
      <!-- Mobile Nav (max width 767px)-->
      <div class="mobile-nav">
        <!-- Navbar Brand -->
        <div class="amado-navbar-brand">
          <a href="index.html"><img src="img/core-img/logo.png" alt="" /></a>
        </div>
        <!-- Navbar Toggler -->
        <div class="amado-navbar-toggler">
          <span></span><span></span><span></span>
        </div>
      </div>

      <div class="shop_sidebar_area">
        <!-- ##### Single Widget ##### -->
        <div class="widget catagory mb-50">
          <!-- Widget Title -->
          <h6 class="widget-title mb-30">스케줄</h6>

          <!--  Catagories  -->
          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="#">달력</a></li>
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
              <li class="active"><a href="#">에디터</a></li>
              <hr />
              <li>
                <a href="#"
                  >작성</a
                >
              </li>
              <li>
                <a href="#"
                  >목록</a
                >
    
              </li>
            </ul>
            </ul>
          </div>
        </div>

        <!-- ##### Single Widget ##### -->
        <div class="widget category mb-50">
          <!-- Widget Title -->
          <!-- <h6 class="widget-title mb-30">일정</h6> -->

          <!-- Widget Title -->

          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="#">일기</a></li>
              <hr />
              <li><a href="#">작성</a></li>
              <li><a href="#">목록</a></li>
            </ul>
          </div>

          <br />

          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="#">학습진행상황</a></li>
              <hr />
            </ul>
            <br><br><br><br><br><br>
            <br><br><br><br>
          </div>
        </div>
      </div>
      <div
        class=""
        style="width: 40%; margin: 50px; margin-bottom: 10%; margin-left: 15%"
      >
        <!-- 에디터 보기 -->
        <div class="container">
          <!-- <h5>Bootstrap 4 Equal Height Cards using Grid</h5> -->
          <div class="row">
        
              </div>
              <div class="col">
                  <div class="card h-100 border-dark " style="width: 136%;
                  margin-top: 13%;">
                      <div class="card-body">
                          <h3 class="card-title text-center">에디터 제목</h3>
                          <hr style="border:solid 1px; color: #dee2e6;">
                          <ul class="ed" style="font-size: larger;">
                            <br>
                            <li>
                              <b>스케줄명 : </b>
                              <span>자바</span>
                            </li>
                            <li>
                              <b>작성일 : </b>
                              <span>2022.01.11</span>
                            </li>
                            </ul>
                            <br>
                            <img class="ed-img" src="image/에디터보기.jpg" alt="" />
                          <!-- <p class="card-text">With supporting text below as a natural lead-in to additional content.</p> -->
                          <br><br>
                          
                        </div>
                  </div>
              </div>
              <br>
              <div class="text-center" style="padding-left: 36%">
                <a href="#" class="btn btn-primary">목록 보기</a>
                </div>
          </div>
      </div>
       
        </div>
        <div style="width: 80%; margin-top: 10%; margin-left: 70px;">

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"
        ></script>
      </div>
    </div>

    <!-- ##### Footer Area Start ##### -->
  
    <!-- ##### Footer Area End ##### -->

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
