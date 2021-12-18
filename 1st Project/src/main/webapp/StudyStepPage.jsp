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
h4#status {
   text-shadow: -2px 0 #F2F1F6, 0 2px #F2F1F6, 2px 0 #F2F1F6, 0 -2px #F2F1F6;
   margin-top : 15%; 
   font-size: 40px; 
   text-transform: uppercase; 
   font-weight: 800; 
   color: #f5a425; 
   letter-spacing: 1px;
   margin-bottom: 15%;
}
body {
   height: 100%;
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
#langselect{
	width: 70%;
    height: 100%;
    margin-bottom: 10%;
}
#langselect td.lang{
	text-align: rignt;
}
#langselect td.langslc{
	text-align: left;
}
#langselect input{
   display: inline-block;
    text-align: left;
    margin-right: 20px;
    margin-left: 20px;
	width: 20px;
    height: 20px;
    border-radius: 0px;
    color: #fff;
}
#bb{
	background-color:#f5a425;
	width :20%;
}
button.bb{
	background-color:#f5a425;
	width :15%;
	height: 40px;
    border-radius: 20px;
    border: none;
    color: #fff;
    font-size: 20px;
    margin-bottom: 20px;
    letter-spacing: 0.5px;
    margin-left: 2%;
}
#lang{
   height: 100%;
}
#phase{
       /* border: darkslategray; */
    height: 50px;
    display: inline-table;
    margin-bottom: 10px;
}

#tbl{
   display: inline-table;
   width: 100%;
}

#tbl1{
   display: inline-table;
   width: 100%;
}
#tbl2{
   display: inline-table;
   width: 100%;
}

section.coming-soon form{
   background-color: transparent;
    /* padding: 60px 40px; */
    width: 100%;
    text-align: center;
}
#tbls{
   width: 100%;
   font-size: 25px;
}
#tbls td{
   width: 33.33%;
}
#printlang{
	text-align: left;
	margin-left: 10%;
	font-weight: 700; 
	font-size: 60px;
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
/*    CheckVO chvo1 = dao.getPhase(vo.getM_id(), "���̽�");
   CheckVO chvo2 = dao.getPhase(vo.getM_id(), "�ڹ�");
   CheckVO chvo3 = dao.getPhase(vo.getM_id(), "HTML");
   CheckVO chvo4 = dao.getPhase(vo.getM_id(), "�ڹٽ�ũ��Ʈ"); */
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
   
   <section style="color: white;"
      class="section coming-soon" data-section="section3">
      <div class="col-8  col-12-narrower imp-narrower"
         style="max-width: 100% !important; height: 100%;">
         <div id="content" style="height: 100%; text-align: center;">
<h1 id="printlang">
	<%if(codingarray.get(0).getCoding_lang().equals("���̽�")){%>
	Python<%}else if(codingarray.get(0).getCoding_lang().equals("�ڹ�")){ %>
	Java<%}else if(codingarray.get(0).getCoding_lang().equals("�ڹٽ�ũ��Ʈ")){ %>
	JavaScript<%}else if(codingarray.get(0).getCoding_lang().equals("HTML")){ %>
	HTML/CSS
	<%}else{%><%=codingarray.get(0).getCoding_lang()%><%}%>
</h1>   
         
<table id="tbls">
<tr>
<td> 
 <table id="tbl">
 <tr>
 	<td>
 	
 	<%-- <%for(int i=0; i<codingarray.size(); i++){%> --%>
    
    <%for(int i=0; i<10; i++){%>
         <tr>
         <td>
         
            <%
            int cnt=0;
            codingvo=codingarray.get(i); 
            cnt=dao.Check_Phase(codingvo.getCoding_seq(),vo.getM_id(),codingvo.getCoding_lang());
            %>
	           <%=(i+1)%>�ܰ�
	                  <%if(cnt==-1){%> 
	                    <img src="./images/checkbook.png" width=50px height=50px>
			            <button class="bb" onclick="location.href='StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>';">GO!</button> 
	                  <%if(vo.getM_id().equals("admin")){ %>
	                     <button class = "bb" onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">��������</button>
	                  <%} %>
	                  <%}else{ %>
	                    <img src="./images/nocheckbook.png" width=50px height=50px>
			            <button class="bb" onclick="location.href='StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>';">GO!</button> 
	                  <%if(vo.getM_id().equals("admin")){ %>
	                     <button class = "bb" onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">��������</button>
	                  <%} %>
	                  <%} %> 
          <!-- for�� -->  
           <%} %>  
    	</td>
    	</tr>
		    	</table>
</td>		    	
<td>		    	
<table id="tbl1">
 <tr>
 	<td>
     <%for(int i=10; i<20; i++){%>
     <tr>
         <td>
            <%
            int cnt=0;
            codingvo=codingarray.get(i); 
            cnt=dao.Check_Phase(codingvo.getCoding_seq(),vo.getM_id(),codingvo.getCoding_lang());
            %>
	            <%=(i+1)%>�ܰ�
	                  <%if(cnt==-1){%> 
	                    <img src="./images/checkbook.png" width=50px height=50px>
			            <button class="bb" onclick="location.href='StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>';">GO!</button> 
	                  <%if(vo.getM_id().equals("admin")){ %>
	                     <button class = "bb" onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">��������</button>
	                  <%} %>
	                  <%}else{ %>
	                    <img src="./images/nocheckbook.png" width=50px height=50px>
			            <button class="bb" onclick="location.href='StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>';">GO!</button> 
	                  <%if(vo.getM_id().equals("admin")){ %>
	                     <button class = "bb" onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">��������</button>
	                  <%} %>
	                  <%} %> 
          <!-- for�� -->  
           <%} %>  
    	</td>
    	</tr>
    	
    	</table>
</td>
<td>
<table id="tbl2">
 <tr>
 	<td>
    	<%for(int i=20; i<codingarray.size(); i++){%>
         <tr>
         <td>
            <%
            int cnt=0;
            codingvo=codingarray.get(i); 
            cnt=dao.Check_Phase(codingvo.getCoding_seq(),vo.getM_id(),codingvo.getCoding_lang());
            %>
	            <%=(i+1)%>�ܰ�
	                  <%if(cnt==-1){%> 
	                    <img src="./images/checkbook.png" width=50px height=50px>
			            <button class="bb" onclick="location.href='StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>';">GO!</button> 
	                  <%if(vo.getM_id().equals("admin")){ %>
	                     <button class = "bb" onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">��������</button>
	                  <%} %>
	                  <%}else{ %>
	                    <img src="./images/nocheckbook.png" width=50px height=50px>
			            <button class="bb" onclick="location.href='StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>';">GO!</button> 
	                  <%if(vo.getM_id().equals("admin")){ %>
	                     <button class = "bb" onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">��������</button>
	                  <%} %>
	                  <%} %> 
          <!-- for�� -->  
	                  <%} %> 
    	</td>
    </tr>
    </table>
    </td>
    <tr>
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