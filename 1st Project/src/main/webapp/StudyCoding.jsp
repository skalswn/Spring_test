<%@page import="Model.MemberVO"%>
<%@page import="Model.CodingExplainVO"%>
<%@page import="Model.CodingVO"%>
<%@page import="Model.DAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.net.URLDecoder"%>        
<!DOCTYPE html>
<html>
<head>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>PSIT.com</title>
    
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
</head>
<body>

<%
MemberVO vo = (MemberVO)session.getAttribute("vo");

int seq = Integer.parseInt(request.getParameter("seq"));
DAO dao = new DAO();
CodingVO codingvo = dao.ShowStudyCoding(seq);
//CodingExplainVO codingexplainvo = dao.CodingExplain(seq);
String coding_img =dao.ShowimgCoding(seq);
%>
<!--header-->
  <header class="main-header clearfix" role="header">
    <div class="logo">
      <a href="Main.jsp"><em>Welcome</em> PSIT</a> 
    </div>
    <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
    <nav id="menu" class="main-nav" role="navigation">
      <ul class="main-menu">
        <li><a href="Main.jsp">Home</a></li>
        <!-- <li class="has-submenu"><a href="">About IT</a>
          <ul class="sub-menu">
            <li><a href="#section2">IT란?</a></li>
            <li><a href="#section4">IT직무</a></li>
            <li><a href="#section3">IT전망</a></li>
            <li><a href="https://templatemo.com/about" rel="sponsored" class="external">External URL</a></li>
          </ul> -->
        </li>
     <% if(vo!=null){%>
        <li><a href="#">직무탐색</a>
              <ul class="sub-menu">
               <li><a href="P_Psit.jsp">PSIT 검사</a></li>
               <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
        </ul></li>
        <!-- <li><a href="#section5">Video</a></li> -->
        <li><a href="StudyPage.jsp">단계별학습</a></li>
        <li><a href="c_Community.jsp" class="external">커뮤니티</a></li>
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
    
  </header>
  <br><br><br><br><br><br>
	<div style="white-space:pre;">
		<p>선택한 문제 나올 곳</p>
		<%if(coding_img !=null){%>
			<img src="./images/<%=URLDecoder.decode(coding_img, "euc-kr") %>">
		<%} %>
		<%if(seq==codingvo.getCoding_seq()){ %>
			<%System.out.println("문제보기 성공!"); %>
			<p><%=codingvo.getCoding_q()%></p>
		<%} %>
	</div>
	
	<div>
	<form action="check_answer">
		<%if(seq==codingvo.getCoding_seq()) {%>
			<input type="text" name= "answer">
			<%-- <% System.out.println("해설보기 성공..");%>
			<p><%=codingvo.getCoding_a() %></p>--%>
		<%} %> 
		<input value="<%=codingvo.getCoding_lang()%>" name="lang" style="display:none">
		<input value="<%=codingvo.getCoding_seq()%>" name="num"  style="display:none">
		<input type="submit" value="제출하기">
	</form>
	</div>
	
	<div>
		<a href="StudyPage.jsp"><button onclick="location.href='CheckPhase?seq=<%= codingvo.getCoding_seq() %>';">다른문제 풀기</button></a>
	</div>
	<%-- <button onclick="location.href='CheckPhase?seq=<%= codingvo.getCoding_seq() %>';">다른문제 풀기</button> --%>

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
	
		<!-- Scripts 지우면안됨------------------------------------------------------------------------------------------------------------------>
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