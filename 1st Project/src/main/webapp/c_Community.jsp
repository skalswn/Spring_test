<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="Model.CommunityVO"%>
<%@page import="Model.DAO"%>
<%@page import="Model.MemberVO"%>
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
table{
		width: 100%;
		border: 1px solid #444444;
	}
	tr{
		border: 1px solid #444444;
	}
	#head_tr{
		background-color: rgba(250,250,250,0.2);
		text-align: center;
		color: white;
	}
	.main_td{
		text-align:center;
		color : white;
	}
	.main_a{
		color : white;
	}
	#cho{
		color: red;
		font-size: 20px;
	}
</style>
</head>
<body>
	<%
CommunityVO cvo = null;
if(session.getAttribute("cvo") !=null){
	cvo = (CommunityVO)session.getAttribute("cvo");
}
DAO dao = new DAO();
ArrayList<CommunityVO> arr = dao.Community();
%>
	<%
MemberVO vo =null;
if(session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	String userID =vo.getM_id();
}else{%>
	Response.Write("
	<script>alert('로그인 후 이용하실 수 있는 서비스 입니다.');</script>
	"); Response.Write("
	<script>location.href='Main.jsp';</script>
	");
	<%}%>
	<%!
	public Integer toInt(String x){
		int a = 0;
		try{
			a = Integer.parseInt(x);
		}catch(Exception e){}
		return a;
	}
%>
	<%
	int pageno = toInt(request.getParameter("pageno"));
	if(pageno<1){
		pageno = 1;
	}
	int total_record = arr.size();
	int page_per_record_cnt = 5;  
	int group_per_page_cnt =99;     											
	int record_end_no = pageno*page_per_record_cnt;				
	int record_start_no = record_end_no-(page_per_record_cnt-1);
	if(record_end_no>total_record){
		record_end_no = total_record;
	}								   									   
	int total_page = total_record / page_per_record_cnt + (total_record % page_per_record_cnt>0 ? 1 : 0);
	if(pageno>total_page){
		pageno = total_page;
	}
	int group_no = pageno/group_per_page_cnt+(pageno%group_per_page_cnt>0 ? 1:0);			  	
	int page_eno = group_no*group_per_page_cnt;		
	int page_sno = page_eno-(group_per_page_cnt-1);		
	if(page_eno>total_page){	
		page_eno=total_page;
	}
	
	int prev_pageno = page_sno-group_per_page_cnt;
	int next_pageno = page_sno+group_per_page_cnt;
	if(prev_pageno<1){	
		prev_pageno=1;

	}
	if(next_pageno>total_page){	
		next_pageno=total_page/group_per_page_cnt*group_per_page_cnt+1;
	
	}

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
				<li><a href="#top">Home</a></li>
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
	</header>

	<section style="color : white; height : 900px; text-align : center;" class="section coming-soon" data-section="section3">
		
		<div class="col-8  col-12-narrower imp-narrower" style = "max-width : 90%!important; display : inline-block">
			<div id="content">

				<!-- Content -->

				<article>
					<div id="board" style="background-color : rgba(250,250,250,0.2);">
						<h2>자유게시판</h2>
						<div>
						<table>
							<tr id="head_tr" class="cm_tr">
								<td class="cm_td">번호</td>
								<td class="cm_td">제목</td>
								<td class="cm_td">작성자</td>
								<td class="cm_td">시간</td>
								<td class="cm_td">조회수</td>
							</tr>

							<%if (arr.size() > (pageno) * 5) {%>
							<%for (int i = 0; i < 5; i++) {%>
							<tr class="main_tr">
								<%String result = arr.get(i + (pageno - 1) * 5).getDay().substring(5, 11);%>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=arr.get(i + (pageno - 1) * 5).getC_seq()%></a></td>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=arr.get(i + (pageno - 1) * 5).getTitle()%></a></td>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=arr.get(i + (pageno - 1) * 5).getWriter()%></a></td>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=result%></a></td>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=arr.get(i + (pageno - 1) * 5).getC_cnt()%></a></td>
							</tr>
							<%}%><%} else if (arr.size() < (pageno) * 5) {%><%for (int i = 0; i < (pageno) * 5 - arr.size(); i++) {	%>
							<tr class="main_tr">
								<%
								String result = arr.get(i + (pageno - 1) * 5).getDay().substring(5, 11);
								%>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=arr.get(i + (pageno - 1) * 5).getC_seq()%></a></td>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=arr.get(i + (pageno - 1) * 5).getTitle()%></a></td>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=arr.get(i + (pageno - 1) * 5).getWriter()%></a></td>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=result%></a></td>
								<td class="main_td"><a class="main_a"
									href="c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getC_seq()%>"><%=arr.get(i + (pageno - 1) * 5).getC_cnt()%></a></td>
							</tr>
							<%}	%><%} else {%><%}%>
						</table>
						</div>
						<%for (int i = 1; i <= page_eno; i++) {%>
						<a href="c_Community.jsp?pageno=<%=i%>"> <%if (pageno == i) {%>
							<span id="cho"><%=i%></span> <%} else {%> <%=i%> <%}%>
						</a>
						<%if (i < page_eno) {%>,<%}	%><%}%>
						</table>
						<form style = "padding: 20px 20px" action="search_community">
							<select style=" height: 40px; text-align: center; letter-spacing: 0.5px;"><option value="제목">제목</option>
								<option value="내용">내용</option>
								<option value="작성자">작성자</option></select> 
								<input style = "width : 30%;" type="text">
								<input style = "width : 10%;" class="search_button" type="button" value="검색">
								<br> 
								<a href="c_Communitywrite.jsp">작성하러가기</a>
						</form>
					</div>
					<!-- Scripts -->
					<script src="assets/js/jquery.min.js"></script>
					<script src="assets/js/jquery.scrolly.min.js"></script>
					<script src="assets/js/jquery.scrollex.min.js"></script>
					<script src="assets/js/skel.min.js"></script>
					<script src="assets/js/util.js"></script>
					<!-- [if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif] -->
					<script src="assets/js/main.js"></script>
				</article>
			</div>
		</div>
			</section>

		<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<p>
							<i class="fa fa-copyright"></i> Copyright 2021 by PSIT | Design:
							<a href="https://templatemo.com" rel="sponsored" target="_parent">TemplateMo</a><br>
							Distributed By: <a href="https://themewagon.com" rel="sponsored"
								target="_blank">ThemeWagon</a>

						</p>
					</div>
				</div>
			</div>
		</footer>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>