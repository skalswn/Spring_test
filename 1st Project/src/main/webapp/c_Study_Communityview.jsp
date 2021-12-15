<%@page import="Model.s_Community_commentVO"%>
<%@page import="Model.s_CommunityVO"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="Model.CommunityVO"%>
<%@page import="Model.DAO"%>
<%@ page import="Model.Community_commentVO"%>
<%@page import="java.util.ArrayList"%>
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

<title>PSIT.com - Study_Community</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<style>
table {
	width: 50%;
	height: 50%;
}
#com {
	width: 840px;
	height: 30px;
	border : 1px dotted #444444;
	margin-left: 28%;

	}
.com1 {
width : 30%;
border : 1px dashed #444444;
}
.com2 {
width : 67%;
text-align: left;
display: block;

}
.com3 {
width : 3%;
margin: 0 auto;
}
#com4 {
font-size: 14px;

}
</style>
</head>
<body>
	<%	
MemberVO vo = null;
String userID="skalswn";
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID = vo.getM_id();
}
DAO dao = new DAO();
s_CommunityVO scvo = (s_CommunityVO)session.getAttribute("scvo");
ArrayList<s_Community_commentVO> cm_arr = dao.s_cm_Community(scvo.getSTUDY_SEQ());
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
}
ArrayList<s_CommunityVO> arr = dao.s_Community();
s_Community_commentVO cmvo = (s_Community_commentVO)session.getAttribute("cmvo");
%>
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
				<%if(vo.getM_id().equals("admin")) { %>
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
	<section style="color: white; text-align: center;"
		class="section coming-soon" data-section="section3">
		<div class="col-8  col-12-narrower imp-narrower"
			style="max-width: 90% !important; display: inline-block;">
			<div id="content">

				<article>
					<div id="board" style="background-color: rgba(250, 250, 250, 0.2);">
						<h2 align="center" style="padding: 1%">
							스터디게시판 -<%=scvo.getSTUDY_SUBJECT()%></h2>
						<div align="left" style="margin-left: 550px">
							<a href="c_Study_Community.jsp"><button
									style="background-color: #f5a425; width: 100px; height: 30px; color: white; font-size: 14px;">뒤로가기</button></a>
						</div>

						<div id="board">
							<table id="list" style="margin: 1%; display: inline-block;">
								<tr class="a" align="left">
									<br>
									<td rows="30" cols="100" style="text-align: center">분류</td>
									<td><textarea name="title" rows="1" cols="20"
											style="resize: none;"><%=scvo.getSTUDY_LANG() %></textarea></td>
								</tr>
								<tr class="a">
									<td rows="30" cols="100" style="text-align: center"><br>제목</td>
									<td><textarea name="title" rows="1" cols="90"
											style="resize: none;" placeholder="제목을 입력해주세요"><%=scvo.getSTUDY_SUBJECT() %></textarea></td>
								</tr>
								<tr class="a" class="cm_tr" style="height: 10px">
									<td style="width: 80px; text-align: center">내용</td>
									<td><textarea name="content" rows="20" cols="90"
											style="resize: none;"><%=scvo.getSTUDY_CONTENT()%></textarea></td>
								</tr>
								<%if(scvo.getSTUDY_FILE1() !=null) { %>
								<tr>
									<td colspan="2"><img
										src="./images/<%=scvo.getSTUDY_FILE1() %>"></td>
								</tr>
								<%}%>

							</table>
							<%if (vo != null) {%>
							<%if (userID.equals(scvo.getM_ID()) || userID.equals("admin") || userID.equals("skalswn")) {%>
							<div align="right" style="margin-right: 27%">
								<span style="width: 100px; height: 30px;"> <a
									href="c_Study_Communitychange.jsp?num=<%=scvo.getSTUDY_SEQ()%>">
										<button style="background-color: #f5a425; color: white; font-size: 14px;">수정하기</button>
								</a>
								</span> <span style="width: 100px; height: 30px;"> <a
									href="s_c_Communitydelete?num=<%=scvo.getSTUDY_SEQ()%>">
										<button style="background-color: #f5a425; color: white; font-size: 14px;">삭제하기</button>
										<br>
								</a>
								</span>
							</div>
							<%}%>
							<%}%>
							<form action="s_c_Comment">
								<br> 
								<span> <input value="<%=scvo.getSTUDY_SEQ()%>"
									name="num" style="display: none"> <input type="text"
									name="C_comment" id="C_comment"
									style="display: inline; width: 700px"> <input
									type="submit" value="댓글 작성"
									style="display: inline; width: 100px">

								</span>
							</form>

							<span > <br><span id = "com4">댓글란</span>
								<%if (cm_arr != null) {%>
								<%for (int i = 0; i < cm_arr.size(); i++) {%>
								<table id="com">
									
									<tr style="background-color: #565e6e;">
										<td class="com1">
											<span>작성자 : <%=cm_arr.get(i).getM_ID()%>  </span>
										</td>
										<td class="com2">
											<div>
												<span style="line-height: 30px; margin : 0 auto; ">
													<span style="vertical-align: middle;text-align: left;"><%=cm_arr.get(i).getC_STUDY_CONTENT()%></span>
												</span>
											</div>
											
										</td>
										<td class="com3">
											<a href="s_c_Commentdelete?num=<%=cm_arr.get(i).getC_STUDY_SEQ()%>">
											<button style="background-color: #f5a425; width: 30px; height: 30px; color: white;">x</button></a>
										</td>
									
								
									</tr>
								</table>
								<%}%>
								<%}%>

								<br>



							</span>
						</div>



						

					</div>
					

				</article>
				<br><br>
				<span style="width: 100px; height: 30px;"> <a
					href="past_s?num=<%=scvo.getSTUDY_SEQ()%>">
						<button style="background-color: #f5a425; color: white; font-size: 14px;">이전글</button>
				</a> </a>
				</span> <span style="width: 100px; height: 30px;"> <a
					href="next_s?num=<%=scvo.getSTUDY_SEQ()%>">
						<button style="background-color: #f5a425; color: white; font-size: 14px;">다음글</button>
				</a> </a>
				</span>
			</div>
		</div>

	</section>

	<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/jquery.scrollex.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>

</body>

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


</html>