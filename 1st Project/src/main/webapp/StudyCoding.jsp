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
    
    <style>
    
    div#ansinput{
    	float: left;
    	width: 68%;
    	display: inline-block;
    	margin: 1px;
    }
    div#anssubmit{
    	background-color: #f5a425;
    	width: 30%;
    	display: inline-block;
    	margin: 1px;
    }
    div#answer{
    	width: 100%;
    	text-align: center;
    }
    #ansform{
    	background-color: transparent;
    	display: inline-block;
    }
    #ansform input{
    	margin: 0;
    }
    #other{
	    width: 20%;
	    height: 40px;
	    background-color: rgba(250,250,250,0.1);
	    border-radius: 0px;
	    border: none;
	    outline: none;
	    color: #fff;
	    font-size: 13px;
	    letter-spacing: 0.5px;
	    margin:1%;
	    display: inline-block;
    }
    h2{
    	text-align: left;
		line-height: 150%;
    }
    </style>
</head>
<body>

<%
MemberVO vo = (MemberVO)session.getAttribute("vo");

int seq = Integer.parseInt(request.getParameter("seq"));
DAO dao = new DAO();
CodingVO codingvo = dao.ShowStudyCoding(seq);
String coding_img =dao.ShowimgCoding(seq);
%>
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
				<li><a href="#">����Ž��</a>
	        	<ul class="sub-menu">
	            <li><a href="P_Psit.jsp">PSIT �˻�</a></li>
	            <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
	          	</ul></li>
				<li><a href="StudyPage.jsp">�ܰ躰�н�</a></li>
				<li><a class="external">Ŀ�´�Ƽ</a>
					<ul class="sub-menu">
						<li><a href="c_Community.jsp">�����Խ���</a></li>
						<li><a href="c_Study_Community.jsp">���͵� �Խ���</a></li>
						<li><a href="c_Used_Community.jsp">�߰�ŷ� �Խ���</a></li>
						</ul></li>
						<%if(vo.getM_id().equals("admin")){ %>
						<li><a href="ManageUser.jsp" class="external">ȸ������</a></li>
						<%}else{ %>
						<li><a href="My_page.jsp" class="external">����������</a></li>
						<%} %>
				<li><a href="LogoutService" class="external">�α׾ƿ�</a></li>
				<%} else {%>
				<li><a href="Login.jsp">Login</a></li>
				<li><a href="Join.jsp">Join</a></li>
				<%} %>
			</ul>
			</nav>
    
  </header>

<section style="color: white; height: 900px; text-align: center;"
      class="section coming-soon" data-section="section3">
      <div class="col-8  col-12-narrower imp-narrower"
         style="max-width: 100% !important; height: 100%;">
         <div id="content" style="height: 100%; text-align: center;">
	<div style="white-space:pre; text-align: center;">
		<%if(coding_img !=null){%>
			<img src="./images/<%=URLDecoder.decode(coding_img, "euc-kr") %>">
		<%} %>
		<%if(seq==codingvo.getCoding_seq()){ %>
		<div style="display: inline-block; width:73%;">
			<h2>���� : <%=codingvo.getCoding_q()%></h2>
		</div>
		<%} %>
	</div>
	
	<div id="answer">
	<div style="display:inline-block; width: 70%">
	<form id = "ansform" action="check_answer">
	<div id="ansinput">
		<%if(seq==codingvo.getCoding_seq()) {%>
			<input type="text" name= "answer">
		<%} %> 
		<input value="<%=codingvo.getCoding_lang()%>" name="lang" style="display:none">
		<input value="<%=codingvo.getCoding_seq()%>" name="num"  style="display:none">
	</div>
	<div id="anssubmit">
		<input type="submit" value="�����ϱ�">
	</div>
	</form>
	</div>
	</div>
	</div>
		<button id="other" onclick="location.href='ShowAllCodingService?lang=<%=codingvo.getCoding_lang()%>';">�ٸ����� Ǯ��</button>
	</div>
	</section>
	
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

	
		<!-- Scripts �����ȵ�------------------------------------------------------------------------------------------------------------------>
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