<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Model.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	table{
		width: 1500px;
	}
	td{
		width: 500px;
	}
	.title{
		width: 718px;
	}
</style>
</head>
<body>
<div>
<%//C:\Users\smhrd\OneDrive\바탕 화면\Web_Study\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps %>
<%
MemberVO vo =null;
if(session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	String userID =vo.getM_id();
}else{%>
	Response.Write("<script>alert('로그인 후 이용하실 수 있는 서비스 입니다.');</script>");
	Response.Write("<script>location.href='Main.jsp';</script>");
<%}%>
<%
		String userID = "doflsld";
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}	
%>
				<form action="c_Communitywrite" method="post" enctype="multipart/form-data" >
				
				<table id="list">
					<tr>
						<td><input type="text" name="title" class="title" placeholder="제목을 입력해주세요" > </td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="content"  rows="20" cols="100" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
					<td colspan="2">
					<input name="file1" type="file">
					<input name="file2" type="file">
					<input name="file3" type="file">
					</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="초기화">
							<input type="submit" value="작성하기">
						</td>
					</tr>
				</table>
				</form>
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