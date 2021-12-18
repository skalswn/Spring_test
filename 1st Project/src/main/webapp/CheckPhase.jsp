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
int seq=Integer.parseInt(request.getParameter("seq"));
RequestDispatcher rd =request.getRequestDispatcher("CheckPhase");
request.setAttribute("seq", seq); 
rd.forward(request, response);
%>
</body>
</html>