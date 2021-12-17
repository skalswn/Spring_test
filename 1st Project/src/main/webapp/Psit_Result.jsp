<%@page import="Model.DAO"%>
<%@page import="Model.MemberVO"%>
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
<%
MemberVO vo =null;
if (session.getAttribute("vo") != null){
	vo=(MemberVO)session.getAttribute("vo");
}


else{%>
Response.Write("<script>alert('로그인 후 이용하실 수 있는 서비스 입니다.');</script>");
Response.Write("<script>location.href='Main.jsp';</script>");
<%}
DAO dao = new DAO();
String job_no ="";
%>
<!-- 파라미터?? -->
<%if(sample.contains("ENFP")){%>
	<%job_no=job_no+"인공지능/머신러닝,앱개발자"; %>
	<p> Psit 검사 결과 매칭 직무는 인공지능/머신러닝,앱개발자 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
	 <P><img src="JOB_EP_IMG/App_1.png" alt=""/><img src = "JOB_EP_IMG/App_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=3"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ENTJ")){%>
	<%job_no=job_no+"데이터 엔지니어"; %>
	<p> Psit 검사 결과 매칭 직무는 데이터 엔지니어 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ENTP")){%>
	<%job_no=job_no+"인공지능/머신러닝,데이터 엔지니어"; %>
	<p> Psit 검사 결과 매칭 직무는 인공지능/머신러닝,데이터 엔지니어 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ESFJ")){%>
	<%job_no=job_no+"프로젝트 매니져"; %>
	<p> Psit 검사 결과 매칭 직무는 프로젝트 매니져 입니다.! 참고하세요~~~ </p>
 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a></P>
<% }%>
<%if(sample.contains("ESFP")){%>
	<%job_no=job_no+"프로젝트 매니져"; %>
	<p> Psit 검사 결과 매칭 직무는 프로젝트 매니져 입니다.! 참고하세요~~~ </p>
 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a></P>
 <% }%>
<%if(sample.contains("ESTJ")){%>
<%job_no=job_no+"데이터 엔지니어,프로젝트 매니져"; %>
<p> Psit 검사 결과 매칭 직무는 데이터 엔지니어,프로젝트 매니져 입니다.! 참고하세요~~~ </p>
	
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a></P>
	
	
	 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a></P>
	 
	
	
<% }%>
<%if(sample.contains("ESTP")){%>
	<%job_no="데이터 엔지니어"; %>
	<p> Psit 검사 결과 매칭 직무는 데이터 엔지니어 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_1.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("INFJ")){%>
	<%job_no=job_no+"백엔드 개발자, 인공지능/머신러닝"; %>
	<p> Psit 검사 결과 매칭 직무는 백엔드 개발자, 인공지능/머신러닝 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> 매칭 직무 로드맵 보러 가기</a></P>	
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
<% }%>
<%if(sample.contains("INFP")){%>
	<%job_no="인공지능/머신러닝"; %>
	<p> Psit 검사 결과 매칭 직무는 인공지능/머신러닝 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("INTJ")){%>
	<%job_no="백엔드 개발자, 인공지능/머신러닝"; %>
	<p> Psit 검사 결과 매칭 직무는 백엔드 개발자, 인공지능/머신러닝 입니다.! 참고하세요~~~ </p>
	<P><img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> 매칭 직무 로드맵 보러 가기</a></P>	
	<P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
	<% }%>
<%if(sample.contains("INTP")){%>
	<%job_no="백엔드 개발자, 인공지능/머신러닝"; %>
	<p> Psit 검사 결과 매칭 직무는 백엔드 개발자, 인공지능/머신러닝 입니다.! 참고하세요~~~ </p>
	<P><img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> 매칭 직무 로드맵 보러 가기</a></P>	
	<P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
<% }%>
<%if(sample.contains("ISFJ")){%>
	<%job_no="프로젝트 매니져"; %>
	<p> Psit 검사 결과 매칭 직무는 프로젝트 매니져 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ISFP")){%>
	<%job_no="프론트 개발자"; %>
	<p> Psit 검사 결과 매칭 직무는 프론트 개발자 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/Front_1.png" alt=""/><img src = "JOB_EP_IMG/Front_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=1"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ISTJ")){%>
	<%job_no="정보 보안 전문가"; %>
	<p> Psit 검사 결과 매칭 직무는 정보 보안 전문가 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/Security_1.png" alt=""/><img src = "JOB_EP_IMG/Security_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=4"> 매칭 직무 로드맵 보러 가기</a></P>
<% }%>
<%if(sample.contains("ISTP")){%>
	<%job_no="인공지능/머신러닝"; %>
	<p> Psit 검사 결과 매칭 직무는 인공지능/머신러닝 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if (vo != null){%>	
	 <a href="c_Psit?sample=<%=sample%>">  저장 후 MY PSIT로 이동하기</a>
	 <%//  a태그를 클릭해야 저장 됨 !!!   %>
<% }else{%>
	<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=1"> 첫번째 매칭 직무 설명보러가기</a>
<%} %>
</body>
</html>