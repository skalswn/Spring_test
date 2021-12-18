<%@page import="Model.CodingExplainVO"%>
<%@page import="Model.MemberVO"%>
<%@page import="Model.DAO"%>
<%@page import="Model.CodingVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">

<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>PSIT.com</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<style>
#btn{
	background-color: #f5a425;
	width: 20%;
    height: 40px;
    border-radius: 0px;
    border: none;
    outline: none;
    color: #fff;
    font-size: 16px;
    margin-bottom: 20px;
    letter-spacing: 0.5px;
}

</style>

  </head>
<body>
<%
int seq=1;
String lang=null;
MemberVO vo = (MemberVO)session.getAttribute("vo");

//CodingExplainVO codingexplainvo = (CodingExplainVO)request.getAttribute("codingexplainvo");
DAO dao = new DAO();
if(request.getParameter("seq") != null){
	seq=Integer.parseInt(request.getParameter("seq"));
}
ArrayList<CodingExplainVO> arr = dao.codingexplain_view(seq);

%>

<!--header-->
  <header class="main-header clearfix" role="header">
    <div class="logo">
      <a href="Main.jsp"><em>PSIT</em> <span
				style="font-size: x-large;">Personal IT</span></a>
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
  
	<section style="color: white; text-align: center; height:100%"
		class="section coming-soon" data-section="section3">
		<div class="col-8  col-12-narrower imp-narrower"
			style="max-width: 80% !important; display: inline-block;">
			
				<%for(int i=0;i<arr.size();i++){ %>
					<div style="white-space:pre-line; text-align: left; font-size: 20px;">
						<br>
						<h1><%=arr.get(i).getCoding_explain1() %></h1>
						<span style="text-align: left;">
						<span><%=arr.get(i).getCoding_explain2() %></span></span>

					</div>	
				<%}%>
			
			<div style="margin-top: 10%;">
				<a href="StudyCoding.jsp?seq=<%=seq%>"><button id = btn>����Ǯ���</button></a>
			</div> 
		</div> 
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

</body>
</html>