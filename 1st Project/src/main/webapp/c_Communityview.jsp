<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.CommunityVO"%>
<%@page import="Model.DAO"%> 
<%@page import="java.util.ArrayList"%> 
<!DOCTYPE html>
<html>
<head>
<style>
	table{
		width: 1500px;
		border: 1px solid #444444;
	}
	tr,td{
		width: 500px;
		border: 1px solid #444444;
	}
	.title{
		width: 718px;
	}
	.content{
		height: 200px;
		text-align: left;
	}
</style>
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
						<td>제목 : <%=vo.getTitle() %></td>
					</tr>
					<tr>
						<td>작성자 : <%=vo.getWriter() %></td>
					</tr>
					<tr>
						<td colspan="2" class="content"><%=vo.getContent() %></td>
					</tr>
					<%if(vo.getFile1() !=null && vo.getFile2() !=null && vo.getFile3() !=null) { %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=vo.getFile1() %>">
							<img src="./images/<%=vo.getFile2() %>">
							<img src="./images/<%=vo.getFile3() %>">
						</td>
					</tr>
					<%}else if(vo.getFile1() !=null && vo.getFile2() !=null){ %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=vo.getFile1() %>">
							<img src="./images/<%=vo.getFile2() %>">
						</td>
					</tr>
					<%}else if(vo.getFile1() !=null){ %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=vo.getFile1() %>">
						</td>
					</tr>
					<%}%>
					</table>
					<a href="c_Community.jsp"><button>수정하기</button></a></td>
					<a href="c_Community.jsp"><button>삭제하기</button></a></td>
					<a href="c_Community.jsp"><button>뒤로가기</button></a></td>				
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