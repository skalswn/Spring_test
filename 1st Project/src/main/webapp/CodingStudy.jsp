<%@page import="Model.DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CodingVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	body{
            height: 100vh;
    }
    #c{
            height: 15%;
            border
    }
    #q{
            height: 15%;
    }
    #a{
            height: 15%;
            
    }
</style>
</head>
<body>
<%
ArrayList<CodingVO> codingarray=(ArrayList<CodingVO>)request.getAttribute("codingarray"); 
%>
	<form action="ShowAllCodingService" method="post">
		파이썬<input type="radio" name="lang" value="파이썬">
		자바<input type="radio" name="lang" value="자바">
		<input type="submit">
    </form>
    
    <form action="ShowAnswer" methos="post">
    
    </form>
	<div id="c">학습내용</div>
	<div id="c">
	</div>
    <div id="q">모든 문제 나오는 곳</div>
    
 	<!-- 언어 선택에 따라 모든 문제가 나오게 하기 -->
	<%if(codingarray!=null){ %>
		<%for(int i=0; i<codingarray.size(); i++){%>
				<%CodingVO vo=codingarray.get(i); %>
					<p><%=vo.getCoding_q()%></p>
					<a href="ShowStudyCoding.jsp?seq=<%=vo.getCoding_seq()%>">학습하러가기!</a>
		<%} %>
	<%}else{ %>
		언어를 선택해주세요.
	<%} %>
	
	</div>
    <div id="a">풀이</div>
    
    
    
    
    <div id="a">
    </div>
</body>
</html>