<%@page import="Model.DAO"%>
<%@page import="Model.CodingVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
int seq = Integer.parseInt(request.getParameter("seq"));
DAO dao = new DAO();
CodingVO codingvo = dao.ShowStudyCoding(seq);
%>
	<div>
	선택한 문제의 기초개념 나올 곳 
	</div>
	<div>
	선택한 문제 나올 곳
	<%if(seq==codingvo.getCoding_seq()){ %>
		<p><%=codingvo.getCoding_q()%></p>
	<%} %>
	</div>
	<div>
	선택한 문제 해설(클릭 시)나올 곳
	
	<%if(seq==codingvo.getCoding_seq()) {%>
	<% System.out.println("해설보기 성공..");%>
	<p><%=codingvo.getCoding_a() %></p>
	<%} %>
	
	

	</div>
		
</body>
</html>