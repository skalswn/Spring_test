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
   width :20%;
   height: 40px;
    border-radius: 0px;
    border: none;
    color: #fff;
    font-size: 13px;
    margin-bottom: 20px;
    letter-spacing: 0.5px;
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
   width: 80%;
}
section.coming-soon form{
   background-color: transparent;
    /* padding: 60px 40px; */
    width: 100%;
    text-align: center;
}
#my_status{
   
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
<%
int amount_java = dao.amount_java();
int amount_javascript = dao.amount_javascript();
int amount_html=dao.amount_html();
int amount_python=dao.amount_python();
int present_java = dao.present_java(vo.getM_id());
int present_javascript = dao.present_javascript(vo.getM_id());
int present_html=dao.present_html(vo.getM_id());
int present_python=dao.present_python(vo.getM_id());
%>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['남은 학습량',     <%=amount_python-present_python%>],
          ['진행 학습량',     <%=present_python%>]
        ]);

        var options = {
           backgroundColor: { fill:'transparent' },
           legend: `none`,
           colors: ['transparent','#f5a425']
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_python'));

        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['남은 학습량',     <%=amount_java-present_java%>],
          ['진행 학습량',     <%=present_java%>]
        ]);

        var options = {
           backgroundColor: { fill:'transparent' },
           legend: `none`,
           colors: ['transparent','#f5a425']
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_java'));

        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['남은 학습량',     <%=amount_html-present_html%>],
          ['진행 학습량',     <%=present_html%>]
        ]);

        var options = {
           backgroundColor: { fill:'transparent' },
           legend: `none`,
           colors: ['transparent','#f5a425']
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_html'));

        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['남은 학습량',     <%=amount_javascript-present_javascript%>],
          ['진행 학습량',     <%=present_javascript%>],
        ]);

        var options = {
           backgroundColor: { fill:'transparent' },
           legend: `none`,
           colors: ['transparent','#f5a425']
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_javascript'));

        chart.draw(data, options);
      }
    </script>
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
         style="max-width: 100% !important; height: 100%;">
         <div id="content" style="height: 100%; text-align: center;">
 <table id="tbl">
 <tr>
 <td style="width: 50%;  background-color: rgba(250,250,250,0.1);">
      <form action="ShowAllCodingService" method="post" style="text-align: center;">
         <div style="text-align: center; width: 70%; display: -webkit-inline-box;">
                  <div style="width: 100%;">
                  <h4 id="status" style="margin-bottom: 0;">select</h4>
                  <h4 id="status" style="margin-top : 0;">language</h4>
         <div>
         <table id="langselect" align="center">
         <tr>
            <td class="lang">파이썬</td>
            <td class="langslc"><input type="radio" name="lang" value="파이썬"></td>
         </tr>
         <tr>
            <td class="lang">자바</td>
            <td class="langslc"><input type="radio" name="lang" value="자바"></td>
         </tr>
         <tr>
            <td class="lang">HTML/CSS</td>
            <td class="langslc"><input type="radio" name="lang" value="HTML"></td>
         </tr>
         <tr>
            <td class="lang">자바스크립트</td>
            <td class="langslc"><input type="radio" name="lang" value="자바스크립트"></td>
         </tr>
         </table>
         </div> 
         </div> 
         </div>
         <br><br> 
         <input id = "bb" type="submit" value="문제보기">
      </form>
         <%if(vo.getM_id().equals("admin")){ %>
         <a href="InsertCoding.jsp"><button class = "bb">문제추가</button></a>
         <%} %>
   </td>
   <td style="text-align: center; vertical-align: initial; background-color: rgba(250,250,250,0.1); ">
   <!--문제나오는 부분  ---->
      <table style="width:100%">

      
      <%if(codingarray!=null){ %>
            <%for(int i=0; i<codingarray.size(); i++){%>
         <tr>
         <td>
            <%
            int cnt=0;
            codingvo=codingarray.get(i); 
            cnt=dao.Check_Phase(codingvo.getCoding_seq(),vo.getM_id(),codingvo.getCoding_lang());
            %>
               <%=(i+1)%>단계 / 시퀀스 : <%=codingvo.getCoding_seq()%>
                     <%if(cnt==-1){%> 
                       <img src="./images/checkbook.png" width=50px height=50px>
                     <button class="bb" onclick="location.href='StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>';">학습하러가기!</button> 
                     <%if(vo.getM_id().equals("admin")){ %>
                        <button class = "bb" onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">문제삭제</button>
                     <%} %>
                     <%}else{ %>
                       <img src="./images/nocheckbook.png" width=50px height=50px>
                     <button class="bb" onclick="location.href='StudyExplainPage.jsp?seq=<%=codingvo.getCoding_seq()%>';">학습하러가기!</button> 
                     <%if(vo.getM_id().equals("admin")){ %>
                        <button class = "bb" onclick="location.href='DeleteCodingService?seq=<%=codingvo.getCoding_seq() %>';">문제삭제</button>
                     <%} %>
                     <%} %> 
          <!-- for문 -->  
           <%} %>  
          </td>
          </tr>
          
          
          <!-- codingarray not null -->
               <%}else{%>
                  <div style="text-align: center; width: 70%; display: -webkit-inline-box;">
                  <div style="width: 100%;">
                  <h4 id="status">study status</h4>
                     <table style="width: 80%; display: inline-table;">
                     <tr style = "background-color: rgba(250,250,250,0.1); height: 40px">
                     <th style="font-size: 20px; color: white; width:40%;">Subject</th>
                      <th style="font-size: 20px; color: white; width:30%">Step</th>
                      <th style="font-size: 20px; color: white; width: 30%">Status</th>
                      </tr>
                     <tr>
                     <td style="color: white; width:40%">파이썬</td>
                      <td style="color: white; width:30%"><%=present_python %>/<%=amount_python %>단계 </td>
                      <td style="width: 30%"><div id="piechart_python" style="width: 100px; height: 100px; display:inline-block;"></div></td>
                     </tr>
                     <tr>
                     <td style="color: white; width:40%">자바</td>
                      <td style="color: white; width:30%"><%=present_java %>/<%=amount_java %>단계 </td>
                      <td style="width: 30%"><div id="piechart_java" style="width: 100px; height: 100px; display:inline-block;"></div></td>
                      </tr>
                      <tr>
                     <td style="color: white; width:40%">HTML/CSS</td>
                      <td style="color: white; width:30%"><%=present_html %>/<%=amount_html %>단계 </td>
                      <td style="width: 30%"><div id="piechart_html" style="width: 100px; height: 100px; display:inline-block;"></div></td>
                     </tr>
                     <tr>
                     <td style="color: white; width:40%">자바스크립트</td>
                      <td style="color: white; width:30%"><%=present_javascript %>/<%=amount_javascript%>단계 </td>
                      <td style="width: 30%"><div id="piechart_javascript" style="width: 100px; height: 100px; display:inline-block;"></div></td>
                     </tr>
                     </table>
               </div>    
               </div>    
               <%}%>
               </table>
      </td>
      </tr>
   <!--for문 끝  ----->
   
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