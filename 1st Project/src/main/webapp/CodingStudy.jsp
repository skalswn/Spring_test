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
<form action="ShowCoding">
	파이썬<input type="radio" name="lang", value="PYTHON">
	자바<input type="radio" name="lang", value="JAVA">
	HTML<input type="radio" name="lang", value="HTML">
    </form>
	<div id="c">학습내용</div>
	<div id="c">내용나올곳</div>
    <div id="q">문제</div>
    <div id="q">내용나올곳</div>
    <div id="a">풀이</div>
    <div id="a">내용나올곳</div>
</body>
</html>