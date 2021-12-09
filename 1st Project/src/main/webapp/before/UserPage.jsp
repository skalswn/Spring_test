<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>PSIT</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<style>
.btn {
  border-radius: 4px;
  background-color: rgb(24, 134, 224);
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 18px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.btn span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.btn span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.btn:hover span {
  padding-right: 25px;
}

.btn:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
	

</head>

<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="UserPage.jsp" id="logo">PSIT</a></h1>

					<!-- Nav -->
						<nav id="nav"> 
							<ul>
								<li class="current"><a href="p_Psit.jsp">PSIT</a></li>
								
								<li>
									<a href="b_What_IT.jsp">AboutIT</a>
									<ul>
										<li><a href="b_What_IT.jsp">IT란</a></li>
										<li><a href="b_IT_job.jsp">IT직무</a></li>
										<li><a href="b_Future.jsp">IT전망</a></li>
									</ul>
								</li>
								<li><a href="b_Roadmap.jsp">RoadMap</a></li>
								<li><a href="User_StudyPage.jsp">Study</a></li>
								<li>
									<a href="c_Community.jsp">Community</a>
									<ul>
										<li><a href="c_Community.jsp">자유게시판</a></li>
										<li><a href="c_Study_Community.jsp">스터디게시판</a></li>
										<li><a href="c_Used_Market.jsp">중고게시판</a></li>
									</ul>
								</li>
								<li><a href="MyPage.jsp">MyPage</a></li>
							</ul>
						</nav>
				</div>

<!---회원페이지 MBTIT 검사구역 ------------------------------------->
				<section id="banner">
					<header>
					<a href="p_Psit.jsp" class="btn" ><span>검사하러가기 </span></a>
				
					</header>
				</section>
<!---회원페이지 학습달성률 구역----------------------------------------->	
				<section id="mystudy">
					<div>
						<h1>나의 학습 현황</h1>
					</div>
				</section>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>

<!--sns계정 하이퍼링크------------------------------------------------------------------------------------------------------->
				<br><br><br><br>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
							<li><a href="#" class="icon brands fa-google-plus-g"><span class="label">Google+</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">PSIT</a></li>
							</ul>
						</div>



</body>
</html>