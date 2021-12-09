<%@page import="Model.MemberVO"%>
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
		height: 400px;
		text-align: left;
	}
	#C_comment{
		width: 500px;
		height: 30px;
	}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	
MemberVO vo = null;
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
}
CommunityVO cvo = (CommunityVO)session.getAttribute("cvo");
DAO dao = new DAO();
ArrayList<CommunityVO> arr = dao.Community();
%>
				
			<div id = "board">
				<table id="list">
					<tr>
						<td>제목 : <%=cvo.getTitle() %></td>
					</tr>
					<tr>
						<td>작성자 : <%=cvo.getWriter() %></td>
					</tr>
					<tr>
						<td colspan="2" class="content"><%=cvo.getContent() %></td>
					</tr>
					<%if(cvo.getFile1() !=null && cvo.getFile2() !=null && cvo.getFile3() !=null) { %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=cvo.getFile1() %>">
							<img src="./images/<%=cvo.getFile2() %>">
							<img src="./images/<%=cvo.getFile3() %>">
						</td>
					</tr>
					<%}else if(cvo.getFile1() !=null && cvo.getFile2() !=null){ %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=cvo.getFile1() %>">
							<img src="./images/<%=cvo.getFile2() %>">
						</td>
					</tr>
					<%}else if(cvo.getFile1() !=null){ %>
					<tr>
						<td colspan="2">
							<img src="images/<%=cvo.getFile1() %>">
						</td>
					</tr>
					<%}%>
					</table>
					
					<form action="c_Comment">
					<input value="<%=cvo.getC_seq()%>" name="num" style="display:none">
					<input type="text" name="C_comment" id="C_comment" >
					<input type="submit" value="댓글 작성">
					</form>
					
					<%-- <%if(vo != null){
						if (vo.getM_id()==cvo.getWriter()) {%> --%>
						<a href="c_Communitychange?num=<%=cvo.getC_seq()%>"><button>수정하기</button></a></td>
						<a href="c_Communitydelete?num=<%=cvo.getC_seq()%>"><button>삭제하기</button></a></td>
					<%-- 	<%}
					}%>--%>
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