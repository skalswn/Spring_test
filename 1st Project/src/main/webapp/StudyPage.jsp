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
#aa input{
   display: inline-block;
    text-align: left;
    margin-right: 20px;
    margin-left: 20px;
/*     width: 20px; */
    height: 20px;
    border-radius: 0px;
    color: #fff;
}
#bb{
background-color:orange;
width :100px;
}
#lang{

   height: 100vh;
}
#phase{
       /* border: darkslategray; */
    height: 50px;
    display: inline-table;
    margin-bottom: 10px;
}

#gostudy{
   background-color:orange;
   width :100px;
   margin-right: 20px;
    margin-left: 20px;
    height: 20px;
}
#tbl{
   align : center;
}
section.coming-soon form{
   background-color: transparent;
    /* padding: 60px 40px; */
    width: 100%;
    text-align: center;
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
   CheckVO chvo1 = dao.getPhase(vo.getM_id(), "파이썬");
   CheckVO chvo2 = dao.getPhase(vo.getM_id(), "자바");
   CheckVO chvo3 = dao.getPhase(vo.getM_id(), "HTML");
   CheckVO chvo4 = dao.getPhase(vo.getM_id(), "자바스크립트");
   CodingVO codingvo = null;
   /* CheckVO chvo = null;
   if(request.getAttribute("chvo") != null){
      chvo=(CheckVO)request.getAttribute("chvo");
   }
   System.out.println(chvo); 
   /* System.out.println(chvo.getStep()); */
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
   
   <section style="color: white;"
      class="section coming-soon" data-section="section3">
      <div class="col-8  col-12-narrower imp-narrower"
         style="max-width: 90% !important; height: 100%;">
         <div id="content" style="height: 100%">
 <table id="tbl">
      <%if(vo.getM_id().equals("admin")){ %>
<tr>
 <td>
     <div id="lang">    
         <a href="InsertCoding.jsp"><button>문제추가</button></a>
         <%} %>
      <form action="ShowAllCodingService" method="post" style="text-align: center;">
         <div id="aa">
            파이썬<input type="radio" name="lang" value="파이썬"> 
            <span>자바<input type="radio" name="lang" value="자바"> </span>
            <span>HTML/CSS<input type="radio" name="lang" value="HTML"></span>
            <span>자바스크립트<input type="radio" name="lang" value="자바스크립트"></span>
         </div> 
         <input id = "bb" type="submit" value="문제보기">
      </form>
      </div>
   </td>
</tr>
   <!--문제나오는 부분  ---->
      <%if(codingarray!=null){ %>
         <%for(int i=0; i<codingarray.size(); i++){%>
            <%
            int cnt=0;
            codingvo=codingarray.get(i); 
            cnt=dao.Check_Phase(codingvo.getCoding_seq(),vo.getM_id(),codingvo.getCoding_lang());
            %>
					<tr>
						<td>
							<div id="phase">

								<%=(i+1)%>단계 / 시퀀스 : <%=codingvo.getCoding_seq()%>
								<a id="gostudy"
									href="StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>">학습하러가기!</a>
								<%if(cnt==-1){%>
								<img src="./images/checkbook.png" width=50px height=50px>
								<%if(vo.getM_id().equals("admin")){ %>
								<button
									onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">문제삭제</button>
								<%} %>
								<%}else{ %>
								<img src="./images/nocheckbook.png" width=50px height=50px>
								<%if(vo.getM_id().equals("admin")){ %>
								<button
									onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">문제삭제</button>
								<%} %>
								<%} %>
								<%}} %>
							</div>
						</td>
					</tr>
			</table>
         </div>
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