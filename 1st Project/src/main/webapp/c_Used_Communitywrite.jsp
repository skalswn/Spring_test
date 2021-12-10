<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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
		String userID = "doflsld";
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}	
%>
				<form action="u_c_Communitywrite" method="post" enctype="multipart/form-data" >
				
				<table id="list">
					<tr>
					<td><input type="text" name="title" class="title" placeholder="제목을 입력해주세요"></td>
					<td>
					</tr>
					<tr>
					<select name="way"><option value="삽니다">삽니다</option><option value="직거래">직거래</option><option value="택배거래">택배거래</option><option value="안전거래">안전거래</option></select>
					<select name="status"><option value="1">상</option><option value="2">중</option><option value="3">하</option></select>
					<select name="kinds"><option value="책">책</option><option value="학용품">학용품</option><option value="기타">기타</option></select> 
					<input type="number" name="price" placeholder="가격을 입력하세요">
					 </td>
					 </tr>
					<tr>
						<td colspan="2">
							<textarea name="content"  rows="20" cols="100" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
					<td colspan="2">
					<input name="file1" type="file">
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