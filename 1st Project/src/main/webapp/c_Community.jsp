<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.CommunityVO"%>
<%@page import="Model.DAO"%> 
<!DOCTYPE html>
<html>
<head>
<title>IT_job - Grea:it</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style>
	table{
		width: 1000px;
		border: 1px solid #444444;
	}
	tr{
		border: 1px solid #444444;
	}
	#head_tr{
		background-color: black;
		text-align: center;
		color: white;
	}
	.main_td{
		text-align:center;
		color: black;
	}
	.main_a{
		color: black;
	}

</style>		
</head>
<body>
<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="index.html" id="logo">Arcana <em>by HTML5 UP</em></a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>
									<a href="#">Dropdown</a>
									<ul>
										<li><a href="#">Lorem dolor</a></li>
										<li><a href="#">Magna phasellus</a></li>
										<li><a href="#">Etiam sed tempus</a></li>
										<li>
											<a href="#">Submenu</a>
											<ul>
												<li><a href="#">Lorem dolor</a></li>
												<li><a href="#">Phasellus magna</a></li>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam nisl</a></li>
												<li><a href="#">Veroeros feugiat</a></li>
											</ul>
										</li>
										<li><a href="#">Veroeros feugiat</a></li>
									</ul>
								</li>
								<li class="current"><a href="left-sidebar.html">Left Sidebar</a></li>
								<li><a href="right-sidebar.html">Right Sidebar</a></li>
								<li><a href="two-sidebar.html">Two Sidebar</a></li>
								<li><a href="no-sidebar.html">No Sidebar</a></li>
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row gtr-200">
							<div class="col-4 col-12-narrower">
								<div id="sidebar">

									<!-- Sidebar -->
										<section>
											<h3>다른 커뮤니티로 이동하기</h3>
											<ul class="links">
												<li><a href="c_Study_Community.jsp">스터디 커뮤니티</a></li>
												<li><a href="c_Used_Market">중고거래 커뮤니티</a></li>
											</ul>
										</section>

								</div>
							</div>
							<div class="col-8  col-12-narrower imp-narrower">
								<div id="content">

									<!-- Content -->

										<article>
<%
CommunityVO vo = (CommunityVO)session.getAttribute("vo");
DAO dao = new DAO();
ArrayList<CommunityVO> arr = dao.Community();
%>										
			<div id="board">
			<h1>자유게시판</h1>
				<table>
					<tr id="head_tr" class="cm_tr">
						<td class="cm_td">번호</td>
						<td class="cm_td">제목</td>
						<td class="cm_td">작성자</td>
						<td class="cm_td">시간</td>
						<td class="cm_td">조회수</td>
					</tr>
					<%for(int i=0;i<arr.size();i++){%>
					<%String result = arr.get(i).getDay().substring(5,11);%>
					<tr class="main_tr">
						<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i).getC_seq()%>"><%=arr.get(i).getC_seq()%></a></td>
						<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i).getC_seq()%>"><%=arr.get(i).getTitle()%></a></td>
						<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i).getC_seq()%>"><%=arr.get(i).getWriter()%></a></td>
						<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i).getC_seq()%>"><%=result%></a></td>
						<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i).getC_seq()%>"><%=arr.get(i).getC_cnt()%></a></td>
					</tr> 	
					<% }%>
				</table>
				<!--페이지 넘기기  -->
		<%-- <%if (pageNumber != 1) {%>
			<a href="c_Community.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arrow-left">이전</a>
		<%} if (bbsDAO.nextPage(pageNumber + 1)) {%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arrow-left">다음</a>
		<%}%> --%>
				<form action="search_community">
				<select><option value="제목">제목</option><option value="내용">내용</option><option value="작성자">작성자</option></select>
				<input type="text"><input class="search_button" type="button" value="검색하기">
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
						</div>
					</div>
				</section>

			<!-- Footer -->
				<div id="footer">
				
					</div> 

					<!-- Icons -->
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
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>

				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>