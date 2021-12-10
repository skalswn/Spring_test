<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="InsertCodingService">
	<input name="lang" type="text", placeholder="언어입력">
	<input name="id" type="text", placeholder="id입력">
	<textarea rows="8" cols="80" name="coding_q">문제 넣기</textarea>
	<textarea rows="8" cols="80" name="coding_a">해설 넣기</textarea>
	<input type="submit" value="넣기">
	</form>

</body>
</html>