<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.CommunityVO"%>
<%@page import="Model.DAO"%> 
<%@page import="java.util.ArrayList"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
CommunityVO vo = (CommunityVO)session.getAttribute("vo");
DAO dao = new DAO();
ArrayList<CommunityVO> arr = dao.Community();
%>
				
			<div id = "board">
				<table id="list">
					<tr>
						<td><%=vo.getTitle() %></td>
					</tr>
					<tr>
						<td><%=vo.getWriter() %></td>
					</tr>
					<tr>
						<td colspan="2"><%=vo.getContent() %></td>
					</tr>
					<tr>
						<td colspan="2">
							<img src="./images/<%=vo.getFile1() %>">
							<img src="./images/<%=vo.getFile2() %>">
							<img src="./images/<%=vo.getFile3() %>">
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="boardMain.jsp"><button>뒤로가기</button></a></td>
					</tr>
				</table>
			</div>
			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
</body>
</html>