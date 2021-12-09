<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>PSIT.com - Road_map</title>
</head>
<body>

        <%String num=request.getParameter("num");%>
        <%if(num.equals("1")){%>
        	<p>로드맵1</p>
        <%}else if(num.equals("2")) {%>
        	<p>로드맵2</p>
        <%}else if(num.equals("3")) {%>
        	<p>로드맵3</p>
        <%}else if(num.equals("4")) {%>
    		<p>로드맵4</p>
   		<%}else if(num.equals("5")) {%>
			<p>로드맵5</p>
		<%}else if(num.equals("6")) {%>
			<p>로드맵6</p>
		<%}else{%>
			<p>로드맵7</p>
		<%}%>
   
</body>
</html>