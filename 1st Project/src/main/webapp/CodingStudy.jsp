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
 ArrayList<CodingVO> codingarray = (ArrayList<CodingVO>)request.getAttribute("codingarray"); 
CodingVO vo = (CodingVO)request.getAttribute("codingvo");
%>


	<form action="ShowCoding">
		파이썬<input type="radio" name="lang", value="PYTHON">
		자바<input type="radio" name="lang", value="JAVA">
		HTML<input type="radio" name="lang", value="HTML">
    </form>
	<div id="c">학습내용</div>
	<div id="c">
	
	</div>
    <div id="q">문제</div>
    <div id="q">
	<%-- <%for(int i=0; i<codingarray.size(); i++){%>
	<%CodingVO codingvo = codingarray.get(i); }%> --%>
	<% vo.getCoding_q();%>
	</div>
    <div id="a">풀이</div>
    <div id="a">
    <%-- <%=codingvo.getCoding_a() %> --%>
    </div>
</body>
</html>