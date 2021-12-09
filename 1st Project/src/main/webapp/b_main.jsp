<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE HTML>

<!--
	Arcana by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Grea:it</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		 <style>
         .button{
            border-radius: 15px;
            background-color: navy;
            border : none;
            color : white;
            text-align : center;
            font-size: 30px;
            padding : 5px;
            width: 300px;
            height : 100px;
            cursor: pointer;
            margin : 10px;
        } 
        .button span{
            size: 40px;
            width: 100px;
            position: relative;
            left : -10px;
            transition: 0.5s;                                                                                                                                                                                                                                                                                                                                                                                                                                                 
        }
        .button span:after{
        	
            cursor: pointer;
            
            content : '\00bb';
            display: inline-block;
            position: absolute;
            opacity : 0;
            top : -30px;
            left : 150px;
            font-size : 45px;
            transition: 0.5s;
        } 
        .button:hover span {
            opacity:1;
            left :0;
            
        }
        .button:hover span:after {
            opacity:1;
            left :40;
        }
    </style>
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="b_main.jsp" id="logo">Great:it </a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="b_What_IT.jsp">IT란</a></li>
								<li><a href="b_IT_job.jsp">IT 직무소개</a></li>
								<li><a href="b_Roadmap.jsp">로드맵</a></li>
								<li><a href="b_Future.jsp">IT 전망</a></li>
							</ul>
						</nav>
				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<div class = "box">
        <button class="button">
            <span>PSIT 검사</span>
        </button>
    </div>
					</header>
				</section>

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
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">Grea:it</a></li>
							</ul>
						</div>
	</body>
</html>