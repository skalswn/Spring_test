<%@page import="Model.CheckVO"%>
<%@page import="Model.DAO"%>
<%@page import="Model.CodingVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>PSIT.com - Study</title>

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
<style>
body {
	height: 100vh;
}

#c {
	height: 15%;
	border
}

#q {
	height: 15%;
}

#a {
	height: 15%;
}
</style>
</head>
<body>
<% 
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	/* CheckVO chvo = (CheckVO)session.getAttribute("chvo"); */
	ArrayList<CodingVO> codingarray=(ArrayList<CodingVO>)request.getAttribute("codingarray");
	DAO dao = new DAO();
	/* CheckVO chvo = (CheckVO)request.getAttribute("chvo"); */
 	CheckVO chvo = null;
	if(request.getAttribute("chvo") != null){
		chvo=(CheckVO)request.getAttribute("chvo");
	} 
	System.out.println(chvo); 
	/* System.out.println(chvo.getStep()); */
	out.print(chvo);
%>
<%-- <%if(chvo!=null){ %>
			 	<%System.out.println(chvo.getStep()); %>
			<%} %> --%>
	<!--header-->
	<header class="main-header clearfix" role="header">
		<div class="logo">
  		    <a href="Main.jsp"><em>PSIT</em> <span style = "font-size: x-large;">Personal IT</span></a> 
		</div>
		<a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
		<nav id="menu" class="main-nav" role="navigation">
			<ul class="main-menu">
				<li><a href="Main.jsp">Home</a></li>
				 <!-- <li class="has-submenu"><a href="">About IT</a>
					<ul class="sub-menu">
						<li><a href="Main.jsp#section2">IT란?</a></li>
						<li><a href="#section4">IT직무</a></li>
						<li><a href="#section3">IT전망</a></li>
						<li><a href="https://templatemo.com/about" rel="sponsored" class="external">External URL</a></li>
					</ul></li>  -->
				<%
				if (vo != null) {
				%>
				<li><a href="#">직무탐색</a>
              		<ul class="sub-menu">
               		<li><a href="P_Psit.jsp">PSIT 검사</a></li>
               		<li><a href="P_Psit_Result.jsp">My PSIT</a></li>
                </ul></li>
				<!-- <li><a href="#section5">Video</a></li> -->
				<li><a href="#section6">단계별학습</a></li>
				<li><a href="c_Community.jsp" class="external">커뮤니티</a></li>
					<%if(vo.getM_id().equals("admin")){ %>
						<li><a href="ManageUser.jsp" class="external">회원관리</a></li>
					<%}else{ %>						
						<li><a href="My_page.jsp" class="external">마이페이지</a></li>
					<%} %>
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
	
	<br><br><br><br><br><br>
	<%if(vo.getM_id().equals("admin")){ %>
		<a href="InsertCoding.jsp"><button>문제추가</button></a>
		<%} %>
	<form action="ShowAllCodingService" method="post">
		파이썬<input type="radio" name="lang" value="파이썬"> 
		자바<input type="radio" name="lang" value="자바"> 
		HTML/CSS<input type="radio" name="lang" value="HTML">
		자바스크립트<input type="radio" name="lang" value="자바스크립트"> 
		<input type="submit" value="문제보기">
	</form>
	
<!--문제나오는 부분  ---->
	<div>
	<%if(codingarray!=null){ %>
		<%for(int i=0; i<codingarray.size(); i++){%>
			<%CodingVO codingvo=codingarray.get(i); %>
			<br>
			<p><%=(i+1)%>단계 / 시퀀스 : <%=codingvo.getCoding_seq()%></p>
			<p><a href="StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>">학습하러가기!
				<%if(chvo!=null){ %>
					<%if(chvo.getStep()>=codingvo.getCoding_seq()){%>
						<img src="./images/checkbook.png" width=50px height=50px>
					<%}else{ %>
						<img src="./images/nocheckbook.png" width=50px height=50px>
					<%} %>
				<%} %>
			</a></p>
			<%if(vo.getM_id().equals("admin")){ %>
				<p><button onclick="location.href='DeleteCodingService?seq=<%= codingvo.getCoding_seq() %>';">문제삭제</button></p>
			<%} %>
		<%} %>
<!--for문 끝  ----->
	<%}else{ %>
		언어를 선택해라 요놈아
	<%} %>
	</div>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p>
						<i class="fa fa-copyright"></i> Copyright 2021 by PSIT | Design: <a
							href="https://templatemo.com" rel="sponsored" target="_parent">TemplateMo</a><br>
						Distributed By: <a href="https://themewagon.com" rel="sponsored"
							target="_blank">ThemeWagon</a>

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
