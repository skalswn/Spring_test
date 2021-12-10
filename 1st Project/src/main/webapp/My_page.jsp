<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>PSIT.com - My_page<</title>
    
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--
    
TemplateMo 557 Grad School

https://templatemo.com/tm-557-grad-school

-->
  </head>

<body>
<% MemberVO vo = (MemberVO)session.getAttribute("vo");%>
   
   <!--header-->
  <header class="main-header clearfix" role="header">
    <div class="logo">
      <a href="Main.jsp"><em>Welcome</em> PSIT</a>
    </div>
    <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
    <nav id="menu" class="main-nav" role="navigation">
      <ul class="main-menu">
        <li><a href="Main.jsp">Home</a></li>
				 <li class="has-submenu"><a href="">About IT</a>
					<ul class="sub-menu">
						<li><a href="#section2">IT란?</a></li>
						<li><a href="#section4">IT직무</a></li>
						<li><a href="#section3">IT전망</a></li>
						<li><a href="https://templatemo.com/about" rel="sponsored" class="external">External URL</a></li>
					</ul></li>
				<%
				if (vo != null) {
				%>
				<li><a href="#">직무탐색</a></li>
				<!-- <li><a href="#section5">Video</a></li> -->
				<li><a href="#section6">단계별학습</a></li>
				<li><a href="c_Community.jsp" class="external">커뮤니티</a></li>
				<li><a href="My_page.jsp" class="external">마이페이지</a></li>
				<li><a href="LogoutService">로그아웃</a></li>

				<%
				} else {
				%>
				<li><a href="Login.jsp">Login</a></li>
				<li><a href="Join.jsp">Join</a></li>
				<%
				}
				%>
      </ul>
    </nav>
  </header>
  
  <br>  <br>  <br>  <br> 
	<h4 align = "center"><%=vo.getM_id() %>(<%=vo.getM_name() %>)님 안녕하세요</h4>

		<!-- Wrapper -->
			 <section class="section coming-soon" data-section="section3">
    <div class="container">
      <div id="InfoUpdate">
        <div class="col-md-5">
          <div class="right-content">
							<div>
							<h5>회원정보수정</h5>
							</div>
				<form id="contact" action="InfoService" method="post" align="center">
					<div class="row">
						<div class="col-md-12">
						<fieldset>
								<h4>Information Update</h4>
							</fieldset>
							<fieldset>
								<li>이용자 ID : <%=vo.getM_id()%></li>
							</fieldset>

						</div>
						<div class="col-md-12">
							<fieldset>
								<input name="pw" type="password" class="form-control" id="pw"
									placeholder="수정할 패스워드를 입력하세요" required="">
							</fieldset>
						</div>
						<div class="col-md-12">
							<fieldset>
								<input name="email" type="text" class="form-control" id="email"
									placeholder="현재 이메일주소 : <%=vo.getM_email() %>" required="">
							</fieldset>
						</div>
						<div class="col-md-12">
							<fieldset>
								<input name="name" type="text" class="form-control" id="name"
									placeholder="현재 이름 : <%=vo.getM_name() %>" required="">
							</fieldset>
						</div>
						<div class="col-md-12">
							<fieldset>
								<input name="nick" type="text" class="form-control" id="nick"
									placeholder="현재 닉네임 : <%=vo.getM_nick() %>" required="">
							</fieldset>
						</div>
						<div class="genderinput">
							남 <input name="gender" type="radio" class="form-control"
								id="gender" value="M"> 여 <input name="gender"
								type="radio" class="form-control" id="gender" value="W">
						</div>
						<div class="col-md-12">
							<fieldset>
								MEMO<br> <br>
								<textarea cols="20" rows="5" placeholder = "메모 : <%=vo.getM_memo() %>"></textarea>
							</fieldset>
						</div>
						<div class="col-md-12">
							<fieldset>
								<input type="reset" value="초기화"> <input type="submit"
									value="완료">
							</fieldset>
						</div>
					</div>
				</form>

			</ul>
					</nav>			
			</div>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <p><i class="fa fa-copyright"></i> Copyright 2021 by PSIT
          
           | Design: <a href="https://templatemo.com" rel="sponsored" target="_parent">TemplateMo</a><br>
           Distributed By: <a href="https://themewagon.com" rel="sponsored" target="_blank">ThemeWagon</a>
          
          </p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
       
    </script>
</body>
</html>
