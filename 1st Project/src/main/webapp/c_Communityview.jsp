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
MemberVO vo =null;
String userID= null;
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID = vo.getM_id();
	System.out.print(userID);
}else{%>
Response.Write("<script>alert('로그인 후 이용하실 수 있는 서비스 입니다.');</script>");
Response.Write("<script>location.href='Main.jsp';</script>");
<%}%>
<% 
DAO dao = new DAO();
CommunityVO cvo = (CommunityVO)session.getAttribute("cvo");
ArrayList<Community_commentVO> cm_arr = dao.cm_Community(cvo.getC_seq());
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
}
ArrayList<CommunityVO> arr = dao.Community();
Community_commentVO cmvo = (Community_commentVO)session.getAttribute("cmvo");
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
						<td colspan="2" class="content" style="white-space: pre-line;"><%=cvo.getContent() %></td>
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
							<img src="./images/<%=cvo.getFile1() %>">
						</td>
					</tr>
					<%}%>
					</table>
					
					<form action="c_Comment">
					<input value="<%=cvo.getC_seq()%>" name="num" style="display:none">
					<input type="text" name="C_comment" id="C_comment" >
					<input type="submit" value="댓글 작성">
					</form>
					<%if (cm_arr != null){%>
						<%for(int i=0;i<cm_arr.size();i++){%>
						<span><%=cm_arr.get(i).getC_writer()%> : </span>
						<span><%=cm_arr.get(i).getContent()%></span>
						<%if (vo != null){%>	
						<%if (userID.equals(cvo.getWriter())||userID.equals("admin")||userID.equals("skalswn")) {%>
						<a href="c_Commentdelete?num=<%=cm_arr.get(i).getCm_seq()%>"><button>삭제하기</button></a></td>
						<%}%>
						<%}%>	
						<span><% if(cm_arr.get(i).getC_writer().equals(vo.getM_id())){%></span>
						
							<% }%>
						<br>
					</tr>
						<% }%>
					<%}%>
					
					<%-- <%if (cmvo !=null){
						for(int i=0;i<arr.size();i++){%>
						<%}%>
					<%}%> --%>
					<%if (vo != null){%>	
						<%if (userID.equals(cvo.getWriter())||userID.equals("admin")||userID.equals("skalswn")) {%>
						<a href="c_Communitychange.jsp?num=<%=cvo.getC_seq()%>"><button>수정하기</button></a></td>
						<a href="c_Communitydelete?num=<%=cvo.getC_seq()%>"><button>삭제하기</button></a></td>
						<%}%>
					<% }%>
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