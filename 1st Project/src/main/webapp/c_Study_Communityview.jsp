<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.s_CommunityVO"%>
<%@page import="Model.DAO"%> 
<%@ page import="Model.s_Community_commentVO"%>
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
DAO dao = new DAO();
s_CommunityVO cvo = (s_CommunityVO)session.getAttribute("cvo");
ArrayList<s_Community_commentVO> cm_arr = dao.s_cm_Community(cvo.getSTUDY_SEQ());
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
}
ArrayList<s_CommunityVO> arr = dao.s_Community();
s_Community_commentVO cmvo = (s_Community_commentVO)session.getAttribute("cmvo");
System.out.print(cm_arr);
%>
				
			<div id = "board">
				<table id="list">
					<tr>
						<td>제목 : <%=cvo.getSTUDY_SUBJECT() %></td>
						<td>언어 : <%=cvo.getSTUDY_LANG() %></td>
					</tr>
					<tr>
						<td>작성자 : <%=cvo.getM_ID() %></td>
					</tr>
					<tr>
						<td colspan="2" class="content"><%=cvo.getSTUDY_CONTENT() %></td>
					</tr>
					<%if(cvo.getSTUDY_FILE1() !=null) { %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=cvo.getSTUDY_FILE1() %>">
						</td>
					</tr>
					<%}%>
					</table>
					<form action="s_c_Comment">
					<input value="<%=cvo.getSTUDY_SEQ()%>" name="num" style="display:none">
					<input type="text" name="C_comment" id="C_comment" >
					<input type="submit" value="댓글 작성">
					</form>
					<%if (cm_arr != null){%>
						<%for(int i=0;i<cm_arr.size();i++){%>
						<span><%=cm_arr.get(i).getM_ID()%> : </span>
						<span><%=cm_arr.get(i).getC_STUDY_CONTENT()%></span>
						<br>
					</tr> 	
					<% }%>
					<%}%>
					<%-- <%if (cmvo !=null){
						for(int i=0;i<arr.size();i++){%>
						<%}%>
					<%}%> --%>
						
					<%-- <%if(vo != null){
						if (vo.getM_id()==cvo.getWriter()) {%> --%>
						<a href="s_c_Communitychange?num=<%=cvo.getSTUDY_SEQ()%>"><button>수정하기</button></a></td>
						<a href="s_c_Communitydelete?num=<%=cvo.getSTUDY_SEQ()%>"><button>삭제하기</button></a></td>
					<%-- 	<%}
					}%>--%>
					<a href="c_Study_Community.jsp"><button>뒤로가기</button></a></td>				
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