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

<title>Grad School HTML5 Template</title>

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
</head>

<body>


	<!--header-->
	<header class="main-header clearfix" role="header">
		<div class="logo">
			<a href="Main.jsp"><em>PS</em>IT</a>
		</div>
		<a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
		<nav id="menu" class="main-nav" role="navigation">
			<ul class="main-menu">
				<li><a href="#section1">Home</a></li>
				<li class="has-submenu"><a href="#section2">About Us</a>
					<ul class="sub-menu">
						<li><a href="#section2">Who we are?</a></li>
						<li><a href="#section3">What we do?</a></li>
						<li><a href="#section3">How it works?</a></li>
						<li><a href="https://templatemo.com/about" rel="sponsored"
							class="external">External URL</a></li>
					</ul></li>
				<li><a href="#section4">Courses</a></li>
				<!-- <li><a href="#section5">Video</a></li> -->
				<li><a href="#section6">Contact</a></li>
				<li><a href="https://templatemo.com" class="external">External</a></li>
			</ul>
		</nav>
	</header>

	<section class="section coming-soon" data-section="section3">
		<div>
			<div>
				<div class="col-md-5">
					<form id="contact" action="JoinService" method="post"
						align="center">
						<div class="row">
							<div class="col-md-12">
								<fieldset>
									<h4>Join Us</h4>
								</fieldset>
								<fieldset>
									<input name="id" type="text" class="form-control" id="id"
										placeholder="아이디를 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input name="pw" type="password" class="form-control" id="pw"
										placeholder="패스워드를 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input name="email" type="text" class="form-control" id="email"
										placeholder="Email을 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input name="name" type="text" class="form-control" id="name"
										placeholder="이름을 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input name="nick" type="text" class="form-control" id="nick"
										placeholder="닉네임을 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12" style="color: white;">
								<div id="gender">
									남 <input class="gender" name="gender" type="radio"
										class="form-control" id="gender" value="M"> 여 <input
										class="gender" name="gender" type="radio" class="form-control"
										id="gender" value="W">
								</div>
							</div>
							<div class="col-md-12">
								<fieldset color="white">
									<h5 style="color: white;">MEMO</h5>
									<textarea class="textarea" rows="5"></textarea>
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input style = "background-color: #f5a425" type="reset" value="초기화"> <input style = "background-color: #f5a425" type="submit"
										value="완료">
								</fieldset>
							</div>
						</div>
					</form>
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

        $('.main-menu, .scroll-to-section').on('click', 'a', function (e) {
          if($(e.target).hasClass('external')) {
            return;
          }
          e.preventDefault();
          $('#menu').removeClass('active');
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>
</html>