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
<style>
table{
border: 2px solid;
}

div{
text-align: center;

}

#big {
margin:3%;
}

img{
width:500px;
height:700px;
}

p{
text-align: center;
font-size: 20px;
font-weight: 800px;
}


</style>
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
	 
	String job_no = pstore.getPSIT_JOB();
	
	%>
	<!--  직무 MBTI 보여주기  -->
	<table>
	<div id = big>
		<%if(sample.contains("ENFJ")){%>
			<%-- <%job_no=job_no+"인공지능/머신러닝"; %> --%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 인공지능 & 머신러닝</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"><button> 매칭 직무 로드맵 보러 가기</button></a>
				<br><br>
			</div>
			 
		<% }%>
		<%if(sample.contains("ENFP")){%>
			<%--<%job_no=job_no+"인공지능/머신러닝,앱개발자"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 1. 인공지능 & 머신러닝<br> 2. 앱개발자</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>
			<div>
			 	<img src="JOB_EP_IMG/App_1.png" alt=""/><img src = "JOB_EP_IMG/App_2.png">
				<br><br>
			 	<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=3"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ENTJ")){%>
			<%--<%job_no=job_no+"데이터 엔지니어"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 데이터 엔지니어</strong> </p>
			<div>
				<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ENTP")){%>
			<%--<%job_no=job_no+"인공지능/머신러닝,데이터 엔지니어"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong>1. 인공지능/머신러닝<br> 2. 데이터 엔지니어</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>
			<div> 
				<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ESFJ")){%>
			<%--<%job_no=job_no+"프로젝트 매니저"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong>프로젝트 매니저</strong> </p>
		 	<div>
			 	<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
			 	<br><br>
			 	<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a>
			 	<br><br>
		 	</div>
		<% }%>
		<%if(sample.contains("ESFP")){%>
			<%--<%job_no=job_no+"프로젝트 매니저"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 프로젝트 매니저</strong> </p>
		 	<div>
			 	<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
			 	<br><br>
			 	<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a>
			 	<br><br>
		 	</div>
		 <% }%>
		<%if(sample.contains("ESTJ")){%>
		<%--<%job_no=job_no+"데이터 엔지니어,프로젝트 매니저"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br> <strong>1. 데이터 엔지니어<br> 2.프로젝트 매니저</strong> </p> 
			<div>
				<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png">
			<br><br>
			<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"><button>매칭 직무 로드맵 보러 가기</button></a>
			<br><br>
			</div>
			<div>
				<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
			<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"><button> 매칭 직무 로드맵 보러 가기</button></a>
			<br><br>
			</div>
		
		<% }%>
		<%if(sample.contains("ESTP")){%>
			<%--<%job_no="데이터 엔지니어"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong>데이터 엔지니어 </strong> </p>
			<div>
				<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_1.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("INFJ")){%>--%>
			<%--<%job_no="백엔드 개발자, 인공지능/머신러닝"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 1. 백엔드 개발자<br> 2. 인공지능/머신러닝</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png">
			    <br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> 매칭 직무 로드맵 보러 가기</a>
			    <br><br>
			</div>	
			<div>
				 <img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				 <br><br>
				 <a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a>
				 <br><br>
			 </div>
		<% }%>
		<%if(sample.contains("INFP")){%>
			<%--<%job_no="인공지능/머신러닝"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 인공지능/머신러닝</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("INTJ")){%>
			<%--<%job_no="백엔드 개발자, 인공지능/머신러닝"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 1. 백엔드 개발자<br> 2. 인공지능/머신러닝</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>	
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>
			<% }%>
		<%if(sample.contains("INTP")){%>
			<%--<%job_no="백엔드 개발자, 인공지능/머신러닝"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 1. 백엔드 개발자<br> 2. 인공지능/머신러닝</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>	
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>
		<% }%>
		<%if(sample.contains("ISFJ")){%>
			<%--<%job_no="프로젝트 매니저"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 프로젝트 매니저</strong> </p>
			<div>
				<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ISFP")){%>
			<%--<%job_no="프론트 개발자"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 프론트 개발자</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Front_1.png" alt=""/><img src = "JOB_EP_IMG/Front_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=1"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ISTJ")){%>
			<%--<%job_no="정보 보안 전문가"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 정보 보안 전문가</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Security_1.png" alt=""/><img src = "JOB_EP_IMG/Security_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=4"> 매칭 직무 로드맵 보러 가기</a>
				<br><br>
			</div>
		<% }%>
		<%if(sample.contains("ISTP")){%>
			<%--<%job_no="인공지능/머신러닝"; %>--%>
			<p><%=vo.getM_id()%> 님의 PSIT 검사 결과 매칭된 직무 <br><br><strong> 인공지능/머신러닝</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
			<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a>
			<br><br>
			</div>	
		<% }%>
		

		
		<%-- 로드맵 안에 학습하러가기가 있으니까 빼는게 나을 것 같아요.
		 <%if (vo != null){%>
			<a href="http://localhost:8081/1st_Project/StudyPage.jsp">학습하러 가기</a>
		
			<!-- job_no 이용하여 해당  직무 보기 -->
			
		<% } else{%>
			<a href=""> 실패!! 다시시도~!!! </a>
			
		<%} //job_no 이용하여 해당  직무 보기 %>  --%>
	</div>
	</table>
	
</body>
</html>