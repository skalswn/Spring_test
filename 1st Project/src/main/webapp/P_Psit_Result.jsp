<%@page import="Model.PsitVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Model.DAO"%>
<%@page import="Model.MemberVO"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
MemberVO vo = null;
if(session.getAttribute("vo") != null){
	vo=(MemberVO)session.getAttribute("vo");
}
DAO dao = new DAO();
PsitVO pstore=dao.PSTORE(vo.getM_id());
String sample = pstore.getPSIT_TYPE();
out.print(sample); 
String job_no = pstore.getPSIT_JOB();
out.print(job_no);
%>
<!--  직무 MBTI 보여주기  -->
<%if(sample.contains("ENFJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ENFJ</p>
	 <%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ENFP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ENFP</p>
	 <%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ENTJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ENTJ</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ENTP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ENTP</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ESFJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	 <p>ESFJ</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ESFP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ESFP</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ESTJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ESTJ</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ENTP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ENTP</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("INFJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>INFJ</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("INFP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>INFP</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("INTJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>INTJ</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("INTP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>INTP</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ISFJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ISFJ</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ISFP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ISFP</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ISTJ")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ISTJ</p>
	<%job_no=job_no+"1"; %>
<% }%><%if(sample.contains("ISTP")){%>
	 <P><img src="images/DATAENGGINER.png" alt=""/></P>
	<p>ISTP</p>
	<%job_no=job_no+"1"; %>
<% }%>
<!-- 직무 추천   -->

<%if (vo != null){%>
	<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=1">해당 직무 설명보러가기</a>
	<!-- job_no 이용하여 해당  직무 보기 -->
	
<% }else{%>
	<a href="">실패!! 다시시도~!!! </a>
	
<%} //job_no 이용하여 해당  직무 보기 %>
</body>
</html>