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
u_CommunityVO ucvo = (u_CommunityVO)session.getAttribute("ucvo");
ArrayList<u_Community_commentVO> cm_arr = dao.u_cm_Community(ucvo.getUSED_SEQ());
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
}
ArrayList<u_CommunityVO> arr = dao.u_Community();
u_Community_commentVO cmvo = (u_Community_commentVO)session.getAttribute("cmvo");
%>
				
			<div id = "board">
				<table id="list">
					<tr>
						<td>제목 : <%=ucvo.getUSED_SUBJECT() %></td>
					</tr>
					<tr>	
						<td>종류: <%=ucvo.getUSED_PAY() %> /가격 : <%=ucvo.getUSED_PRICE()%>원 
						/상태 :<%if(ucvo.getUSED_STATUS()=="1"){%>
									좋음.
							  <%}else if(ucvo.getUSED_STATUS()=="2"){%>
							  		생활감 있음.
							  <%}else{ %>
							  		좋지 않음.
							  <%}%>		 
						/거래방법 : <%=ucvo.getUSED_TRADE() %>  </td>
					</tr>
					<tr>
						<td>작성자 : <%=ucvo.getM_ID() %></td>
					</tr>
					<tr>
						<td colspan="2" class="content"><%=ucvo.getUSED_CONTENT() %></td>
					</tr>
					<%if(ucvo.getFILE1() !=null) { %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=URLDecoder.decode(ucvo.getFILE1(), "euc-kr") %>">
						</td>
					</tr>
					<%}%>
					</table>
					<form action="u_c_Comment">
					<input value="<%=ucvo.getUSED_SEQ()%>" name="num" style="display:none">
					<input type="text" name="C_comment" id="C_comment" >
					<input type="submit" value="댓글 작성">
					</form>
					<%if (cm_arr != null){%>
						<%for(int i=0;i<cm_arr.size();i++){%>
						<span><%=cm_arr.get(i).getM_ID()%> : </span>
						<span><%=cm_arr.get(i).getUM_COMMENT()%></span>
						<br>
					</tr> 	
					<% }%>
					<%}%>
					<%-- <%if (cmvo !=null){
						for(int i=0;i<arr.size();i++){%>
						<%}%>
					<%}%> --%>
						
					<%if(vo != null){
						if (vo.getM_id()==ucvo.getM_ID()) {%>
						<a href="u_c_Communitydelete?num=<%=ucvo.getUSED_SEQ()%>"><button>수정하기</button></a></td>
						<a href="u_c_Communitydelete?num=<%=ucvo.getUSED_SEQ()%>"><button>삭제하기</button></a></td>
					<%}
					}%>
					<a href="c_Used_Community.jsp"><button>뒤로가기</button></a></td>				
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