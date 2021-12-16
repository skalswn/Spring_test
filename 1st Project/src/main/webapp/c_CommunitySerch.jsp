<%@page import="Model.DAO"%>
<%@page import="Model.CommunityVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%ArrayList<CommunityVO> cmvoarr = (ArrayList<CommunityVO>)request.getAttribute("cmvoarr"); %>
<%CommunityVO cmvo = (CommunityVO)request.getAttribute("cmvo");  %>
<%DAO dao = new DAO(); %>

	<table>
	<tr>
		<%for (int i=0; i<cmvoarr.size(); i++){ %>
			<td><%=cmvoarr.get(i).getC_seq() %></td>
			<td><a href="#"><%=cmvoarr.get(i).getTitle() %></td></a>
			<td><%=cmvoarr.get(i).getWriter() %></td>
			<td><%=cmvoarr.get(i).getDay() %></td>
			<td><%=cmvoarr.get(i).getC_cnt() %></td>
		<%} %>
	</tr>	
	</table>



</html>