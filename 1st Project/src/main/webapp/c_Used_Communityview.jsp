<%@page import="java.net.URLDecoder"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.u_CommunityVO"%>
<%@page import="Model.DAO"%> 
<%@ page import="Model.u_Community_commentVO"%>
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

<title>PSIT.com - Free_Community</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<style>
table {
	height: 100%;
}
table#list {
    margin: 1%;
    display: inline-table;
    width: 80%;
    height: 600px;
    text-align: center;
    border-collapse: separate;
}
table#list td{
	background-color: rgba(250,250,250,0.3);
}
table#list td.part{
	font-size : 20px;
	letter-spacing: 1px;
	width: 30%;
}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	
MemberVO vo =null;
String userID="skalswn";
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID = vo.getM_id();
}
DAO dao = new DAO();
u_CommunityVO ucvo = (u_CommunityVO)session.getAttribute("ucvo");
ArrayList<u_Community_commentVO> cm_arr = dao.u_cm_Community(ucvo.getUSED_SEQ());
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
}
ArrayList<u_CommunityVO> arr = dao.u_Community();
u_Community_commentVO cmvo = (u_Community_commentVO)session.getAttribute("cmvo");
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
			<div id = "board" style="background-color: rgba(250, 250, 250, 0.2);">
			<div align="center">
							<h2 align="center" style="padding-top: 2%; padding-bottom: 3%">
								중고거래게시판</h2>
							<table id="list">
								<tr style="height: 40px">
									<td class="part" style="text-align: center">제목</td>
									<td style="text-align: left;"><h6 style="margin-left: 1%;"><%=ucvo.getUSED_SUBJECT() %></h6></td>
								</tr>
								<tr style="height: 40px">
									<td class="part" style="text-align: center;">구분</td>
									<td style="text-align: left"><h6 style="margin-left: 1%;">
											종류:
											<%=ucvo.getUSED_PAY() %>
											/가격 :
											<%=ucvo.getUSED_PRICE()%>원 /상태 :<%if(ucvo.getUSED_STATUS()=="1"){%>
											좋음.
											<%}else if(ucvo.getUSED_STATUS()=="2"){%>
											생활감 있음.
											<%}else{ %>
											좋지 않음.
											<%}%>
											/거래방법 :
											<%=ucvo.getUSED_TRADE() %></h6></td>
								</tr>
								<tr style="height: 40px">
									<td class="part" style="text-align: center">작성자</td>
									<td style="text-align: left;"><h6 style="margin-left: 1%;"><%=ucvo.getM_ID() %></h6></td>
								</tr>
								<tr style="height: 50%">
									<td rowspan="2" class="part" style="text-align: center; white-space: pre-line;">내용</td>
									<td
										style="text-align: left; vertical-align: initial; margin-left: 1%;"><h6
											style="margin-left: 1%;"><%=ucvo.getUSED_CONTENT() %></h6></td>
								</tr>
								<%if(ucvo.getFILE1() !=null) { %>
								<tr style="height: 30%">
									<%if (ucvo.getFILE1().equals("none.png")){%>
									<td style="text-align: left;"><p>첨부된 이미지가 없습니다.</p></td>
									<%}else{%>
									<td colspan="2"><img
										src="./images/<%=URLDecoder.decode(ucvo.getFILE1(), "euc-kr")%>">
									</td>
									<%
									}
									%>
								</tr>
							</table>
							<div style="text-align: center;">
								<div align="left"
									style="width: 40%; display: inline-block; margin-bottom: 40px;">
									<a href="c_Community.jsp"><button
											style="background-color: #f5a425; width: 20%; height: 30px; color: white; border: none;">뒤로가기</button></a>
								</div>
								<%}%>
							<%if (vo != null){%>	
						<%if (userID.equals(ucvo.getM_ID())||userID.equals("admin")||userID.equals("skalswn")) {%>
						<div align="right" style="width: 40%; display:inline-block; margin-bottom: 40px;">
								<span style="width: 100px; height: 30px;"> <a
									href="c_Used_Communitychange.jsp?num=<%=ucvo.getUSED_SEQ()%>">
										<button style="background-color: #f5a425; color: white; border: none; width: 10%; height: 30px;">수정</button>
								</a>
								</span> <span style="width: 100px; height: 30px;"> <a
									href="u_c_Communitydelete?num=<%=ucvo.getUSED_SEQ()%>">
										<button style="background-color: #f5a425; color: white; border: none; width: 10%; height: 30px;">삭제</button>
								</a>
								</span>
						</div>
						<%}%>
					<% }%>	
							</div>
					</div>
					<form action="u_c_Comment">
								<br> 
								<span> <input value="<%=ucvo.getUSED_SEQ()%>"
									name="num" style="display: none"> <input type="text"
									name="C_comment" id="C_comment"
									style="display: inline; width: 70%;"> <input
									type="submit" value="댓글 작성"
									style="display: inline; width: 10%;">
								</span>

								<table id="com" style="border:none; width: 80%; display: inline-table;">
								<tr>
								</tr>
								<%if (cm_arr != null) {%>
								<%for (int i = 0; i < cm_arr.size(); i++) {%>
									<tr style="background-color: #565e6e;">
										<td class="com1" style="text-align: left;">
											<h5><%=cm_arr.get(i).getM_ID()%><p><%=cm_arr.get(i).getREG_DATE()%></p></h5>
										</td>
									</tr>
									<tr style="background-color: #565e6e;">
										<td class="com2">
											<div style="text-align: left;">
												<span style="line-height: 30px; margin : 0 auto;">
													<span style="text-align: left;"><%=cm_arr.get(i).getUM_COMMENT()%></span>
												</span>
											</div>
										</td>
										<%if (vo != null) {if (userID.equals(ucvo.getM_ID()) || userID.equals("admin") || userID.equals("skalswn")) { %>
										<td style="text-align: right;">
											<a href="u_c_Commentdelete?num=<%=cm_arr.get(i).getUM_SEQ()%>">삭제</a><%}} %>
										</td>
									</tr>
									<tr><td colspan="2"><hr color = "white"></td></tr>
								<%}%>
								<%}%>
								</table>
							</form>
					</div>	
					<br><br>
					<span style="width: 100px; height: 30px;"> <a
						href="past_u?num=<%=ucvo.getUSED_SEQ()%>">
							<button
								style="background-color: #f5a425; color: white; font-size: 14px; border: none; width: 5%; height: 30px;">이전글</button>
					</a>
					</span> <span style="width: 100px; height: 30px;"> <a
						href="next_u?num=<%=ucvo.getUSED_SEQ()%>">
							<button
								style="background-color: #f5a425; color: white; font-size: 14px; border: none; width: 5%; height: 30px;">다음글</button>
					</a>
					</span>							
					</article>
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
			
			<div>
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
	</div>
</body>
</html>