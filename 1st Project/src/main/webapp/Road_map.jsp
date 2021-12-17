<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>PSIT.com - Road_map</title>
    
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
	
	<style>
		p{
		text-align: center;
		font-weight: 700px;
		font-size:20px;
		}	
		#mapimg{
		padding-top : 5%;
		text-align: center;
		}
	</style>
  </head>

<body>

<%
// 로그인 안되어있을 때 메뉴바 다르게 하기 위해 vo가져오기
MemberVO vo = (MemberVO)session.getAttribute("vo");%>
<%String lang1="파이썬"; %>
<%String lang2="자바"; %>
<%String lang3="HTML"; %>
<%String lang4="자바스크립트"; %>


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
  <div>
    <nav id="mapimg">
    <%String num=request.getParameter("num");%>
    <!--회원일 때 로드맵 보여주고, 학습페이지로 링크 이동하는 코드  -->
    <%if(vo!=null) { %>
        <%if(num.equals("1")){%>
       		<p>※ JavaScript, HTML/CSS에 대하여 학습하시려면 이미지의 해당 과목을 클릭하세요! </p>
	        <img usemap="#front" src="assets/images/frontEnd.png">
				<map name="front">
					<area name = "JavaScript" shape="rect" coords="297,397,430,445" href="ShowAllCodingService?lang=<%=lang4%>">
					<area name = "html/css" shape="rect" coords="298,268,431,381" href="ShowAllCodingService?lang=<%=lang3%>">
				</map>
        <%}else if(num.equals("2")) {%>
            <p>※ Java, JavaScript,  HTML/CSS, Python에 대하여 학습하시려면 이미지의 해당 과목을 클릭하세요! </p>
	        <img usemap="#back" src="assets/images/backEnd.png">
				<map name="back">
					<area name = "Java" shape="rect" coords="755,247,853,278" href="ShowAllCodingService?lang=<%=lang2%>">
					<area name = "JavaScript" shape="rect" coords="755,446,855,476" href="ShowAllCodingService?lang=<%=lang4%>">
					<area name = "JavaScript" shape="rect" coords="624,187,724,216" href="ShowAllCodingService?lang=<%=lang4%>">
					<area name = "html/css" shape="rect" coords="625,92,724,170" href="ShowAllCodingService?lang=<%=lang3%>">
					<area name = "Python" shape="rect" coords="755,407,855,436" href="ShowAllCodingService?lang=<%=lang1%>">
				</map>
        <%}else if(num.equals("3")) {%>
            <p>※ Java에 대하여 학습하시려면 이미지의 해당 과목을 클릭하세요! </p>
	        	<img usemap="#android" src="assets/images/android.png">
					<map name="android">
						<area name = "Java" shape="rect" coords="13,161,152,188" href="ShowAllCodingService?lang=<%=lang2%>">
					</map>
				<br>
				<img src="assets/images/ios.png">
        <%}else if(num.equals("4")) {%>
        	<br><br><br><br>
    		<img src="assets/images/infoEng.png">
    		<br><br><br><br><br><br>
   		<%}else if(num.equals("5")) {%>
            <p>※ Python에 대하여 학습하시려면 이미지의 해당 과목을 클릭하세요! </p>
				<img usemap="#ai" src="assets/images/ai.png">
				<map name="ai">
					<area name = "Python" shape="rect" coords="480,313,629,363" href="ShowAllCodingService?lang=<%=lang1%>">
				</map>
           <p><br>※ Java, JavaScript, Python에 대하여 학습하시려면 이미지의 해당 과목을 클릭하세요! </p>
        	<img usemap="#machine" src="assets/images/machineLearning.png">
				<map name="machine">
					<area name = "Java" shape="rect" coords="828,175,960,205" href="ShowAllCodingService?lang=<%=lang2%>">
					<area name = "JavaScript" shape="rect" coords="829,225,961,255" href="ShowAllCodingService?lang=<%=lang4%>">
					<area name = "Python" shape="rect" coords="828,274,961,303" href="ShowAllCodingService?lang=<%=lang1%>">
				</map>
		<%}else if(num.equals("6")) {%>
            <p><br><br><br>※ Java, Python에 대하여 학습하시려면 이미지의 해당 과목을 클릭하세요! </p>
			<img usemap="#data" src="assets/images/dataEng.png">
				<map name="data">
					<area name = "Java" shape="rect" coords="608,57,702,81" href="ShowAllCodingService?lang=<%=lang2%>">
					<area name = "Python" shape="rect" coords="609,15,703,41" href="ShowAllCodingService?lang=<%=lang1%>">
				</map><br><br><br><br>
		<%}%>
		<!-- 회원이 아닐때 로드맵 보여주는 코드=================================================== -->
		<%}else { %>
		 <%if(num.equals("1")){%>
	        <img src="assets/images/frontEnd.png">
        <%}else if(num.equals("2")) {%>
	        <img src="assets/images/backEnd.png">
        <%}else if(num.equals("3")) {%>
	        <img src="assets/images/android.png">
			<br><br>
			<img src="assets/images/ios.png">
        <%}else if(num.equals("4")) {%>
        	<br><br><br><br>
    		<img src="assets/images/infoEng.png">
    		<br><br><br><br><br><br>
   		<%}else if(num.equals("5")) {%>
			<img src="assets/images/ai.png">
				<br>	
        	<img src="assets/images/machineLearning.png">
		<%}else if(num.equals("6")) {%>
            <br><br><br>
			<img src="assets/images/dataEng.png">
			<br><br><br><br>
		<%}%>
		
		<%}%>
		
		
		
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
   
       
</body>
</html>