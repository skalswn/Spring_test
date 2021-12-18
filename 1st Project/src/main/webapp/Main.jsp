<%@page import="java.util.ArrayList"%>
<%@page import="Model.DAO"%>
<%@page import="Model.CheckVO"%>
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

<title>PSIT.com</title>

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
</style>
</head>


<body style="font-family: 'Montserrat', sans-serif!important;">
<%
// �α��� �ȵǾ����� �� �޴��� �ٸ��� �ϱ� ���� vo��������

MemberVO vo = (MemberVO)session.getAttribute("vo");
DAO dao = new DAO();
String id = null;
ArrayList<CheckVO> chvoarr = null;
if(vo!=null){
   id = vo.getM_id();
   chvoarr = dao.selectPhase(id); 
}
int amount_java = dao.amount_java();
int amount_javascript = dao.amount_javascript();
int amount_html=dao.amount_html();
int amount_python=dao.amount_python();
int present_java = dao.present_java(id);
int present_javascript = dao.present_javascript(id);
int present_html=dao.present_html(id);
int present_python=dao.present_python(id);
%>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['���� �н���',     <%=amount_python-present_python%>],
          ['���� �н���',     <%=present_python%>]
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
          ['���� �н���',     <%=amount_java-present_java%>],
          ['���� �н���',     <%=present_java%>]
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
          ['���� �н���',     <%=amount_html-present_html%>],
          ['���� �н���',     <%=present_html%>]
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
          ['���� �н���',     <%=amount_javascript-present_javascript%>],
          ['���� �н���',     <%=present_javascript%>],
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
  <!--header-->
  <header class="main-header clearfix" role="header">
    <div class="logo">
            <a href="Main.jsp"><em>PSIT</em> <span style = "font-size: x-large;">Personal IT</span></a>  
    </div>
    <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
    <nav id="menu" class="main-nav" role="navigation">
      <ul class="main-menu">
        <li><a href="#top">Home</a></li>
        <!-- <li class="has-submenu"><a href="">About IT</a>
          <ul class="sub-menu">
            <li><a href="#section2">IT��?</a></li>
            <li><a href="#section4">IT����</a></li>
            <li><a href="#section3">IT����</a></li>
            <li><a href="https://templatemo.com/about" rel="sponsored" class="external">External URL</a></li>
          </ul> -->
     <% if(vo!=null){%>
        <li><a href="#">����Ž��</a>
           <ul class="sub-menu">
            <li><a href="P_Psit.jsp">PSIT �˻�</a></li>
            <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
          	</ul></li>
        <li><div class="scroll-to-section"><a href="#section4">�ε��</a></div></li>
        <li><a href="StudyPage.jsp">�ܰ躰�н�</a></li>
        <li><a href="#" class="external">Ŀ�´�Ƽ</a>
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

  <!-- ***** Main Banner Area Start ***** -->
  <section class="section main-banner" id="top" data-section="section1">
      <video autoplay muted loop id="bg-video">
          <source src="assets/images/course-video.mp4" type="video/mp4" />
      </video>
		
		<% if(vo!=null){%>
		<div class="video-overlay header-text">
			<div class="caption">
				<div style="float: left; width: 50%; margin-top: 10%;">
					<h2>
						<em>PSIT</em> : Personal IT
					</h2>
					<h4 style="font-size: 20px; color:white;"> PSIT�� �ڽ��� ���� �м��� ���� IT������ ��õ�޴� ���� �Դϴ�.</h4>
					<div class="main-button">
						<div class="scroll-to-section"></div>
						<br><br>
						<a href="P_Psit.jsp">GO TEST</a>
					</div>
				</div>
				<div>
					
					<div align="right" style="float: right; width: 30%; background-color: rgba(250,250,250,0.1); text-align: center;">
						<h4 id="status">study status</h4>
							<table style="width: 100%;">
							<tr style = "background-color: rgba(250,250,250,0.1); height: 40px">
							<th style="font-size: 20px; color: white; width:40%;">Subject</th>
						    <th style="font-size: 20px; color: white; width:30%">Step</th>
						    <th style="font-size: 20px; color: white; width: 30%">Status</th>
						    </tr>
							<tr>
							<td style="color: white; width:40%">���̽�</td>
						    <td style="color: white; width:30%"><%=present_python %>/<%=amount_python %>�ܰ� </td>
						    <td style="width: 30%"><div id="piechart_python" style="width: 100px; height: 100px; display:inline-block;"></div></td>
							</tr>
							<tr>
							<td style="color: white; width:40%">�ڹ�</td>
						    <td style="color: white; width:30%"><%=present_java %>/<%=amount_java %>�ܰ� </td>
						    <td style="width: 30%"><div id="piechart_java" style="width: 100px; height: 100px; display:inline-block;"></div></td>
						    </tr>
						    <tr>
							<td style="color: white; width:40%">HTML/CSS</td>
						    <td style="color: white; width:30%"><%=present_html %>/<%=amount_html %>�ܰ� </td>
						    <td style="width: 30%"><div id="piechart_html" style="width: 100px; height: 100px; display:inline-block;"></div></td>
							</tr>
							<tr>
							<td style="color: white; width:40%">�ڹٽ�ũ��Ʈ</td>
						    <td style="color: white; width:30%"><%=present_javascript %>/<%=amount_javascript%>�ܰ� </td>
						    <td style="width: 30%"><div id="piechart_javascript" style="width: 100px; height: 100px; display:inline-block;"></div></td>
							</tr>
							</table>
					</div>					
				</div>
			</div>
		</div>
		<%}else{ %>
		<div class="video-overlay header-text">
			<div class="caption">
				<div>
					<h2>
						<em>PSIT</em> : Personal IT
					</h2>
					<h4 style="font-size: 20px; color:white;"> PSIT�� �ڽ��� ���� �м��� ���� IT������ ��õ�޴� ���� �Դϴ�.</h4>
					<div class="main-button">
						<div class="scroll-to-section"></div>
						<br><br>
						<a href="Login.jsp">GO TEST<br><span style = "font-size : 15px; color: #fff; font-weight: 500;">After Login</span></a>
					</div>
				</div>
			</div>
		</div><%} %>
	</section>
  <!-- ***** Main Banner Area End ***** -->


  <section class="features">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-12">
          <div class="features-post">
            <div class="features-content">
              <div class="content-show">
                <h4><i class="fa fa-pencil"></i>What is IT?</h4>
              </div>
              <div class="content-hide">
                <p>IT ��?</p>
                <p class="hidden-sm">Curabitur id eros vehicula, tincidunt libero eu, lobortis mi. In mollis eros a posuere imperdiet.</p>
                <div class="scroll-to-section"><a href="#section2">More</a></div>
            </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-12">
          <div class="features-post second-features">
            <div class="features-content">
              <div class="content-show">
                <h4><i class="fa fa-graduation-cap"></i>IT ����</h4>
              </div>
              <div class="content-hide">
                <p>IT ���� ��������</p>
                <p class="hidden-sm">Curabitur id eros vehicula, tincidunt libero eu, lobortis mi. In mollis eros a posuere imperdiet.</p>
                <div class="scroll-to-section"><a href="#section4">More</a></div>
            </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-12">
          <div class="features-post third-features">
            <div class="features-content">
              <div class="content-show">
                <h4><i class="fa fa-book"></i>IT ����</h4>
              </div>
              <div class="content-hide">
                <p>IT ������ ���Ͽ�</p>
                <p class="hidden-sm">Curabitur id eros vehicula, tincidunt libero eu, lobortis mi. In mollis eros a posuere imperdiet.</p>
                <div class="scroll-to-section"><a href="#section3">More</a></div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

   <section class="section why-us" data-section="section2">
      <div class="container">
         <div class="row">
            <div class="col-md-12" style="text-align: center;">
               <div class="section-heading">
                  <h2>What is IT?</h2>
               </div>
            </div>
            <div class="col-md-12">
               <img src="assets/images/001.png" style="width: 100%">
            </div>
            <div id='tabs'>
               <section class='tabs-content'>
                  <article id='tabs-1'>
                     <div class="row">
                        <div class="col-md-6"></div>
                     </div>
                  </article>
               </section>
            </div>
         </div>
      </div>
   </section>
   <!--IT��������κ�---------------------------------------------------------------------------------------------------------------------------------------->
<section class="section courses" data-section="section4">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12" style="text-align : center;">
          <div class="section-heading">
            <h2>IT ����</h2>
          </div>
        </div>
        <div class="owl-carousel owl-theme">
          <div class="item" >
            <img src="assets/images/j_001.png" alt="Course #1" >
            <div class="down-content">
              <div class="text-button-pay" >
              <%String a ="1"; %>
                <a href="Road_map.jsp?num=<%=a%>" >�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_003.png" alt="Course #2">
            <div class="down-content">
              <div class="text-button-pay">
              <%String b ="2"; %>
                <a href="Road_map.jsp?num=<%=b%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_005.png" alt="Course #3">
            <div class="down-content">
              <div class="text-button-pay">
                <%String c ="3"; %>
                <a href="Road_map.jsp?num=<%=c%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_007.png" alt="Course #4">
            <div class="down-content">
              <div class="text-button-pay">
                <%String d ="4"; %>
                <a href="Road_map.jsp?num=<%=d%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_009.png" alt="">
            <div class="down-content">
              <div class="text-button-pay">
               <%String e ="5"; %>
                <a href="Road_map.jsp?num=<%=e%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_011.png" alt="">
            <div class="down-content">
              <div class="text-button-pay">
                <%String f ="6"; %>
                <a href="Road_map.jsp?num=<%=f%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_013.png" alt="">
            <div class="down-content">
              <div class="text-button-pay">
               <!-- ������Ʈ�Ŵ����� �ε���� ���� -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!--IT�����κ�---------------------------------------------------------------------------------------------------------------------------------------->
    <section class="section coming-soon" data-section="section3">
    <div class="container">
      <div class="row">
         <div class="col-md-12" style="text-align : center;">
            <div class="section-heading">
            <h2>IT ����</h2>
          </div>
          </div>
        <div class="col-md-5">
         <img src="assets/images/002.png" style = "width : 100% ">

 <!-------------- form�±׿� �ε�� �ٷΰ��� CSS�ٿ����ִµ� ----------------------------------------------->
           <!--  <form id="contact" action="" method="get">
              <div class="row">
                  <fieldset>
                    <button type="submit" id="form-submit" class="button"></button> 
                  </fieldset>-->
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
               <p>
                  <i class="fa fa-copyright"></i> Copyright 2020 by Grad School |
                  Design: <a href="https://templatemo.com" rel="sponsored"
                     target="_parent">TemplateMo</a><br> Distributed By: <a
                     href="https://themewagon.com" rel="sponsored" target="_blank">ThemeWagon</a>
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
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

          var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu > nav, .scroll-to-section').on('click', 'a', function (e) {
          if($(e.target).hasClass('external')) {
            return;
          }
             e.preventDefault();
          $('#menu li').removeClass('active');
          showSection($(this).attr('href'), true);
      });  
 
        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>
</html>