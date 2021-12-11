<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% String sample = request.getParameter("sample");
%>
<!-- 파라미터?? -->
<%if(sample.contains("ENFJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ENFJ</p>
	
<% }%><%if(sample.contains("ENFP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ENFP</p>
	
<% }%><%if(sample.contains("ENTJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ENTJ</p>
	
<% }%><%if(sample.contains("ENTP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ENTP</p>
	
<% }%><%if(sample.contains("ESFJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ESFJ</p>
	
<% }%><%if(sample.contains("ESFP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ESFP</p>
<% }%><%if(sample.contains("ESTJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ESTJ</p>
<% }%><%if(sample.contains("ENTP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ENTP</p>
<% }%><%if(sample.contains("INFJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>INFJ</p>
<% }%><%if(sample.contains("INFP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>INFP</p>
<% }%><%if(sample.contains("INTJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>INTJ</p>
<% }%><%if(sample.contains("INTP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>INTP</p>
<% }%><%if(sample.contains("ISFJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ISFJ</p>
<% }%><%if(sample.contains("ISFP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ISFP</p>
<% }%><%if(sample.contains("ISTJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ISTJ</p>
<% }%><%if(sample.contains("ISTP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ISTP</p>
<% }%>

</body>
</html>