<%@page import="com.google.gson.Gson"%>
<%@page import="com.pplus.model.EditorDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%EditorDTO editor = (EditorDTO)session.getAttribute("editor");
	pageContext.setAttribute("editor", editor);
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


<!-- <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    /> -->
<link rel="stylesheet" type="text/css" href="style.css" />

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<!-- <link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

include summernote-ko-KR
<script src="/summernote/lang/summernote-ko-KR.js"></script>
 -->
<!--코드 미러-->
<!-- include codemirror (codemirror.css, codemirror.js, xml.js, formatting.js) -->
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.css" />
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.css" />
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.js"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/mode/xml/xml.js"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/codemirror/2.36.0/formatting.js"></script>
<script src="codemirror-5.65.1/lib/codemirror.js"></script>
<link rel="stylesheet" href="codemirror-5.65.1/lib/codemirror.css" />
<script src="codemirror-5.65.1/mode/javascript/javascript.js"></script>
<style>
/*.CodeMirror {
	border: 1px solid #eee;
margin-left:100px !important;
}
.CodeMirror-scroll{
	display: inline-block !important;
	position: inherit !important;
	width: 950px !important;
	margin-left:200px !important;
}
.CodeMirror.cm-s-default{
	width:1000px;
	margin-left:400px !important;
}*/


</style>
<!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
<script>
	
</script>
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
		<div
			style="width: 40%; margin: 50px; margin-bottom: 10%; margin-left: 15%">
			<!-- 에디터 -->
			<div class="container">
				<h1 class="text-center" style="padding: 115px 0 0 350px">[ 에디터
					]</h1>
				<br>
				
					<span style="font-weight: bold; font-size: 25px">제목 </span> <input
						type="text" id="title" placeholder="제목을 입력하세요." autofocus
						style="width: 500; height: 50; font-size: 25px" value="${sessionScope.editor.editor_title }"/>


					<hr />
					<div class="container m-5" id='cm_here'>
					</div>
					<br />
					<div class="col text-center" style="padding-left: 400px;">
						<!-- <input type="submit" value="작성완료"> -->
						<a class="btn btn-dark" id="form_button" role="button" style="color:white">수정
							완료</a>
					</div>
			
			</div>
		</div>
	</div>
	<script>
		//var myCodeMirror = CodeMirror(document.body, {

 		/* var myCodeMirror = CodeMirror.fromTextArea(myTextArea, {
			lineNumber : true,
		});  */
		var str = `<%= editor.getEditor_content()%>`;
		console.log(str);  
		/* 	window.onload=function(){ */
				var myCodeMirror = CodeMirror(document.getElementById('cm_here'), {
					
					value : "\n", // DB에 저장된 데이터를 입력할 수 있는 곳 
					mode : "javascript",
					lineNumbers : "true",
				});
			 	myCodeMirror.doc.setValue(str);
				
				
				$('#form_button').click(function(){
		 			var title=document.getElementById("title").value;
		 			console.log(title);
					var content= myCodeMirror.getValue();
					console.log(content);
		/* 			var form = new FormData();
					form.append("editor_title", title);
					form.append("editor_content", content); */
					$.ajax({
						url:"EditorUpdateCon.do",
						type:"POST",
						data: {"editor_title": title, "editor_content": content},
						datatype:'json',	
						success : function(result){
							location.href='editorindex.jsp';
				            },
				         error : function(){
				            alert("서버요청실패");
				         },
						})
					});
			/* } */
		
		 
	/* 	
		console.log(editor);
		const form = new FormData();
		form.append('editor_content', editor);
		 */
 		

			/* 
			form.method = "POST";
			form.action = "EditorCon.do";
			
			
			
			form.submit(); */
			/* }); */
		
		
		
		// 을 통해서 원하는 내용을 넣을수 있다고도 하네요

	</script>
	<script>
		
		
	</script>
	<!-- ##### Footer Area Start ##### -->

	<!-- ##### Footer Area End ##### -->
	<script src="jquery-3.6.0.min.js"></script>
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
