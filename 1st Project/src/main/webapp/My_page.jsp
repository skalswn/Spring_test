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

    <title>PSIT.com - My_page</title>
    
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
		<a href="Main.jsp"><em>PSIT</em> <span style = "font-size: x-large;">Personal IT</span></a> 
    </div>
    <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
    <nav id="menu" class="main-nav" role="navigation">
			<ul class="main-menu">
				<li><a href="Main.jsp">Home</a></li>
				<% if(vo!=null){%>
				<li><a href="#">직무탐색</a>
	        	<ul class="sub-menu">
	            <li><a href="P_Psit.jsp">PSIT 검사</a></li>
	            <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
	          	</ul></li>
				<li><a href="StudyPage.jsp">단계별학습</a></li>
				<li><a class="external">커뮤니티</a>
					<ul class="sub-menu">
						<li><a href="c_Community.jsp">자유게시판</a></li>
						<li><a href="c_Study_Community.jsp">스터디 게시판</a></li>
						<li><a href="c_Used_Community.jsp">중고거래 게시판</a></li>
						</ul></li>
						<%if(vo.getM_id().equals("admin")){ %>
						<li><a href="ManageUser.jsp" class="external">회원관리</a></li>
						<%}else{ %>
						<li><a href="My_page.jsp" class="external">마이페이지</a></li>
						<%} %>
				<li><a href="LogoutService" class="external">로그아웃</a></li>
				<%} else {%>
				<li><a href="Login.jsp">Login</a></li>
				<li><a href="Join.jsp">Join</a></li>
				<%} %>
			</ul>
			</nav>
  </header>

		<!-- Wrapper -->
	<section class="section coming-soon" data-section="section3">
		<div style="text-align: center;">
			<div style="display: inline-block; width: 30%;">
				<div class="col-md-5" style="flex: 100%; max-width: 100%;">
					<div class="right-content">
		<div>
			<h4 style="color: white; font-weight: 600;"><%=vo.getM_id()%>(<%=vo.getM_name()%>)님 안녕하세요!
			</h4><br>
		</div>
						<form id="contact" action="InfoService" method="post"
							align="center">
							<div class="row">
								<div class="col-md-12">
									<fieldset>
										<h4>Information Update</h4>
									</fieldset>
									<fieldset>
										<li style="margin-bottom: 20px; color: white; font-size: 15px; height: 40px; letter-spacing: 0.5px; text-align: left; display: block; padding: 0.75rem 0.75rem;">이용자
											ID : <%=vo.getM_id()%></li>
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
										<input name="email" type="text" class="form-control"
											id="email" placeholder="현재 이메일주소 : <%=vo.getM_email()%>"
											required="">
									</fieldset>
								</div>
								<div class="col-md-12">
									<fieldset>
										<input name="name" type="text" class="form-control" id="name"
											placeholder="현재 이름 : <%=vo.getM_name()%>" required="">
									</fieldset>
								</div>
								<div class="col-md-12">
									<fieldset>
										<input name="nick" type="text" class="form-control" id="nick"
											placeholder="현재 닉네임 : <%=vo.getM_nick()%>" required="">
									</fieldset>
								</div>
								<div class="col-md-12" style="color: white;">
									<div id="gender">
										남 <input class="gender" id="gender" name="gender" type="radio"
											class="form-control" <%if (vo.getM_gender().equals("M")) {%>
											checked="checked" <%}%> value="M"> 여 <input
											class="gender" id="gender" name="gender"
											<%if (vo.getM_gender().equals("W")) {%> checked="checked"
											<%}%> type="radio" class="form-control" value="W">
									</div>
								</div>
								<div class="col-md-12">
									<fieldset>
										<h5 style="color: white;">MEMO</h5>
										<textarea class="textarea" name="memo" rows="5"
											placeholder="<%if (vo.getM_memo() != null) {%><%=vo.getM_memo()%><%}%>"></textarea>
									</fieldset>
									<br>
								</div>
								<div class="col-md-12">
									<fieldset>
										<input style="background-color: #f5a425" type="reset"
											value="초기화"> <input style="background-color: #f5a425"
											type="submit" value="완료">
									</fieldset>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</section>

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
