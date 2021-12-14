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
		<!-- <input name="lang" type="text", placeholder="언어입력"> -->
		<select name="lang">
	  		<option value="파이썬">파이썬</option>
	 		<option value="자바">자바</option>
	  		<option value="HTML">HTML/CSS</option>
	  		<option value="자바스크립트">자바스크립트</option>
		</select>
		<div>
			<div><input name="id" type="text", placeholder="id입력" value="admin"></div>
			<div><textarea rows="20" cols="100" name="coding_q" placeholder="문제 넣기"></textarea></div>
			<div><textarea rows="20" cols="100" name="coding_a" placeholder="해설 넣기"></textarea></div>
			<div><input type="submit" value="넣기">
		</div>
	</form>

</body>
</html>