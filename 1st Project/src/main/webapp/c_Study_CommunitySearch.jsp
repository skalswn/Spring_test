<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="Model.s_CommunityVO"%>
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

<title>PSIT.com - Study_Community</title>

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
	
	tr {
		border: 1px solid #444444;
	}
	
	#head_tr {
		background-color: rgba(250, 250, 250, 0.2);
		text-align: center;
		color: white;
	}
	
	.main_td {
		text-align: center;
		color: white;
	}
	
	.main_a {
		color: white;
	}
	#cho{
		color: #f5a425;
		font-size: 20px;
	}
	</style>
</head>
<body>
<%
String choice = request.getParameter("choice");
String search = request.getParameter("search_");
DAO dao = new DAO();
ArrayList<s_CommunityVO> arr = dao.search_s_Community(choice,search);
if (arr.size()<=0){
%>
	Response.Write("<script>alert('검색결과가 없습니다.');</script>");
	Response.Write("<script>location.href='c_Study_Community.jsp';</script>");
<%}%>
<% 
MemberVO vo =null;
String userID= null;
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID = vo.getM_id();
	System.out.print(userID);
}else{
%>
Response.Write("<script>alert('로그인 후 이용하실 수 있는 서비스 입니다.');</script>");
Response.Write("<script>location.href='Main.jsp';</script>");
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
	System.out.println("pageno후"+pageno);
	int total_record = arr.size();	
	int page_per_record_cnt = 5;  
	int group_per_page_cnt =5;     											
	int record_end_no = pageno*page_per_record_cnt;				
	int record_start_no = record_end_no-(page_per_record_cnt-1);
	if(record_end_no>total_record){
		record_end_no = total_record;
	}								   									   
	int total_page = total_record / page_per_record_cnt + (total_record % page_per_record_cnt>0 ? 1 : 0);
	if(pageno==1){
		pageno=1;
	}else if(pageno>total_page){
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
							<li><a href="Main.jsp">Home</a></li>
							<%
							if (vo != null) {
							%>
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
							<%
							if (vo.getM_id().equals("admin")) {
							%>
							<li><a href="ManageUser.jsp" class="external">회원관리</a></li>
							<%
							} else {
							%>
							<li><a href="My_page.jsp" class="external">마이페이지</a></li>
							<%
							}
							%>
							<li><a href="LogoutService" class="external">로그아웃</a></li>
							<%
							} else {
							%>
							<li><a href="Login.jsp">Login</a></li>
							<li><a href="Join.jsp">Join</a></li>
							<%
							}
							%>
						</ul>
						</nav>
				</header>
				
	<section style="color : white; height : 900px; text-align : center;" class="section coming-soon" data-section="section3">
		<div class="col-8  col-12-narrower imp-narrower" style = "max-width : 90%!important; display : inline-block; height: 100%;">
			<div id="content" style = "height: 100%">
				
				<!-- Content -->
				<article style = "height: 100%">
				<div id="board" style="background-color: rgba(250, 250, 250, 0.2); height: 100%">
					<h2 style="padding: 3%">스터디게시판</h2>
					<div align =right style="margin-right :10px">
					<button type="button" style="background-color:#f5a425;color: white;width: 100px;height: 40px;border-radius: 0px;border: none;outline: none;font-size: 13px;letter-spacing: 0.5px;" onclick="location.href='c_Study_Communitywrite.jsp';" >새 글 작성</button>
					</div>
					<br>
					
					<table>
						<tr id="head_tr" class="cm_tr" style = "height: 35px">
							<td class="cm_td">번호</td>
							<td class="cm_td">제목</td>
							<td class="cm_td">분류</td>
							<td class="cm_td">작성자</td>
							<td class="cm_td">날짜</td>
							<td class="cm_td">조회수</td>
						</tr>
						<%if (arr.size() >= (pageno) * 5) {%>
						<%for (int i = 0; i < 5; i++) {%>
						<%String result = arr.get(i + (pageno - 1) * 5).getREG_DATE().substring(5, 11);%>
						<tr class="main_tr" style = "height: 35px">
							<td class="main_td" style="width : 100px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%></a></td>
							<td class="main_td" style="width : 1200px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getSTUDY_SUBJECT()%></a></td>
							<td class="main_td" style="width : 200px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getSTUDY_LANG()%></a></td>
							<td class="main_td" style="width : 300px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getM_ID()%></a></td>
							<td class="main_td" style="width : 100px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=result%></a></td>
							<td class="main_td" style="width : 200px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getSTUDY_CNT()%></a></td>
						</tr>
						<%}%>
						<%} else if (arr.size() < (pageno) * 5) {%>
						<%for (int i = 0; i < 5-((pageno) * 5 - arr.size()); i++) {	%>
						<%String result = arr.get(i + (pageno - 1) * 5).getREG_DATE().substring(5, 11);%>
						<tr class="main_tr">
							<td class="main_td" style="width : 100px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%></a></td>
							<td class="main_td" style="width : 1200px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getSTUDY_SUBJECT()%></a></td>
							<td class="main_td" style="width : 200px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getSTUDY_LANG()%></a></td>
							<td class="main_td" style="width : 300px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getM_ID()%></a></td>
							<td class="main_td" style="width : 100px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=result%></a></td>
							<td class="main_td" style="width : 200px"><a class="main_a"
								href="s_c_Communityview?num=<%=arr.get(i + (pageno - 1) * 5).getSTUDY_SEQ()%>"><%=arr.get(i + (pageno - 1) * 5).getSTUDY_CNT()%></a></td>
						</tr>
						<%}%>
						<%} else {%>
						<%}%>
					</table>
					<br>
					
					<a href="c_Study_Community.jsp?pageno=<%=prev_pageno%>">≪ 이전 </a>
					<%for (int i = page_sno; i <= page_eno; i++) {%>
					<a href="c_Study_Community.jsp?pageno=<%=i%>"> 
					<%if (pageno == i) {%>
						<span id="cho"><%=i%></span> 
					<%} else { %> <%=i%> <% }%>
					</a>
					<%if (i < page_eno){%>,<%}%>
					<%}%>
					<a href="c_Study_Community.jsp?pageno=<%=next_pageno%>"> 다음 ≫</a>
					
					<form style = "padding: 20px 20px" action="search_s_community">
						<select style=" height: 40px; text-align: center; letter-spacing: 0.5px;"><option value="제목">제목</option>
							<option value="내용">내용</option>
							<option value="작성자">작성자</option></select> 
							<input style = "width : 30%;" type="text">
							<input style = "width : 10%; font-size: 16px" class="search_button" type="button" value="검색">
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
</body>
</html>