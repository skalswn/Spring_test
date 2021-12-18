<%@page import="java.util.ArrayList"%>
<%@page import="Model.DAO"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>PSIT.com</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<style>
	*{
		color: #fff;
	}
	p{
		text-align: center;
		margin: 5%;
		font-size: 50px;
		font-family: 'Montserrat', sans-serif;
		font-weight: 700;
	}
	table td{
		text-align: left;
	}
	section.coming-soon #test h2.question{
		text-align: left; 
		margin-left: 20px;
		margin-bottom: 30px;
		font-size: 25px;
	}
	#test{
		display : inline-block;
	}
	section.coming-soon #test input{
		display: inline-block;
	    text-align: left;
	    margin-right: 20px;
	    margin-left: 20px;
	    width: 20px;
	    height: 20px;
	    background-color: #f5a425;
	    border-radius: 0px;
	    color: #fff;
	}
	section.coming-soon #test input#submit{
		background-color: #f5a425;
		text-align: center;
		width: 10%;
	    height: 40px;
	    border-radius: 0px;
	    color: #fff;
	    font-size: 15px;
	    margin-bottom: 20px;
	    letter-spacing: 1px;
	    display:inline-block;
	}
</style>
</head>
<body>
<body>
	<%
MemberVO vo = null;
if(session.getAttribute("vo") !=null){
	vo = (MemberVO)session.getAttribute("vo");
}else{%>
Response.Write("<script>alert('�α��� �� �̿��Ͻ� �� �ִ� ���� �Դϴ�.');</script>");
Response.Write("<script>location.href='Main.jsp';</script>");
<%}
DAO dao = new DAO();
%>

	<%	
String userID= null;
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID = vo.getM_id();
	//System.out.print(userID);
}else{%>
	Response.Write("
	<script>alert('�α��� �� �̿��Ͻ� �� �ִ� ���� �Դϴ�.');</script>
	"); Response.Write("
	<script>location.href='Main.jsp';</script>
	");
	<%}%>
	
	<!--header-->
  <header class="main-header clearfix" role="header">
    <div class="logo">
            <a href="Main.jsp"><em>PSIT</em> <span style = "font-size: x-large;">Personal IT</span></a>  
    </div>
    <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
    <nav id="menu" class="main-nav" role="navigation">
      <ul class="main-menu">
        <li><a href="Main.jsp">Home</a></li>
        <!-- <li class="has-submenu"><a href="">About IT</a>
          <ul class="sub-menu">
            <li><a href="#section2">IT��?</a></li>
            <li><a href="#section4">IT����</a></li>
            <li><a href="#section3">IT����</a></li>
            <li><a href="https://templatemo.com/about" rel="sponsored" class="external">External URL</a></li>
          </ul> -->
     <% if(vo!=null){%>
        <li><a href="#">����Ž��</a>
        	<ul class="sub-menu">
            <li><a href="P_Psit.jsp">PSIT �˻�</a></li>
            <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
          	</ul></li>
        <!-- <li><a h\ref="#section5">Video</a></li> -->
        <li><a href="StudyPage.jsp">�ܰ躰�н�</a></li>
        <li><a href="#" class="external">Ŀ�´�Ƽ</a>
          <ul class="sub-menu">
            <li><a href="c_Community.jsp">�����Խ���</a></li>
            <li><a href="c_Study_Community.jsp">���͵� �Խ���</a></li>
            <li><a href="c_Used_Community.jsp">�߰�ŷ� �Խ���</a></li>
          </ul></li>
        <%if(vo.getM_id().equals("admin")){ %>
	        <li><a href="ManageUser.jsp" class="external">ȸ������</a></li>
        <%}else{ %>
        <li><a href="My_page.jsp" class="external">����������</a></li>
        <%} %>
        <li><a href="LogoutService" class="external">�α׾ƿ�</a></li>
     <%} else {%>
        <li><a href="Login.jsp">Login</a></li>
        <li><a href="Join.jsp">Join</a></li>        
     <%} %>
        </ul>
    </nav>
  </header>
	
	<section class="section coming-soon" data-section="section3">
		<div style="height: 100%;text-align:center;">
			<div style="display: inline-block;width: 50%">
	<form id = "test" action="P_PSit">
		<table id="psittest" style="text-align: center;">
			<tr>
				<td><p><span style="color:#f5a425 !important;">PSIT</span> TEST</p></td>
			</tr>
			<tr>
				<th colspan="16"  align="left">
					<h2 class = "question">1. ���� ������ ������?</h2>
				</th>
			</tr>
			<tr>
				<td><input type="radio" name="s_psit1" value="ENFP/10">���࿡<br>
					<input type="radio" name="s_psit1" value="ESFP/14">�� ���<br> 
					<input type="radio" name="s_psit1" value="ENTP/14">�� �ȵǴµ�?<br>
					<input type="radio" name="s_psit1" value="ISTP/10">����?<br> 
					<input type="radio" name="s_psit1" value="INFJ/14">�� ������<br>
					<input type="radio" name="s_psit1" value="ISFJ/14">����������<br>
					<input type="radio" name="s_psit1" value="ENTJ/14">�翬�Ѱ� �ƴϾ�?<br>
					<input type="radio" name="s_psit1" value="ESTJ/14">���� �Ұ�<br>
					<input type="radio" name="s_psit1" value="INFP/14">����/ �̾���<br>
					<input type="radio"	name="s_psit1" value="ISFP/13">��..��¥?<br>
					<input type="radio" name="s_psit1" value="INTP/10">��?<br>
					<input type="radio" name="s_psit1" value="ESTP/14">���� �ɽ���<br>
					<input type="radio" name="s_psit1" value="ENFJ/10">����/������<br>
					<input type="radio" name="s_psit1" value="ESFJ/10">�ƾ�..<br>
					<input type="radio" name="s_psit1" value="INTJ/14">�װ� �Ƴ�<br>
					<input type="radio" name="s_psit1" value="ISTJ/12">���� �����ݾ�<br>
					<hr color="white">
				</td>
			</tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">2. �б����� ���� ��������?</h2>
				</th>
			</tr>
			<tr>
				<td><input type="radio" name="s_psit2" value="INTJ/08">���� 1��<br> 
					<input type="radio" name="s_psit2" value="INFJ/08">�̴�������<br> 
					<input type="radio" name="s_psit2" value="ISFJ/08">�ƹ��� �𸣴� ���� 2��<br> 
					<input type="radio" name="s_psit2" value="ISTJ/08">���� �Ź��� ���� ������ �����<br> 
					<input type="radio" name="s_psit2" value="ISFP/08">��ü�� �����̶� ���� �� �ȵ����� ��<br> 
					<input type="radio" name="s_psit2" value="INFP/07">�� ���ڸ����� �ǳ� �̾��� ���� â�� ���� ��<br> 
					<input type="radio" name="s_psit2" value="INTP/07">������ õ��<br> 
					<input type="radio" name="s_psit2" value="ISTP/07">������ 3�и��� �԰� ������ �౸�ϴ¾�<br>
					<input type="radio" name="s_psit2" value="ENTJ/08">�б� ��� ���ָ� �ð� �ִ� �л� ��ȸ��<br> 
					<input type="radio" name="s_psit2" value="ENFJ/08">�� ��ǥ ��λ���<br>
					<input type="radio" name="s_psit2" value="ESFJ/08">����<br>
					<input type="radio" name="s_psit2" value="ESTJ/08">�л�ȸ��<br>
					<input type="radio" name="s_psit2" value="ESFP/08">�мŴϽ�Ÿ<br>
					<input type="radio" name="s_psit2" value="ENFP/05">����� ��<br>
					<input type="radio" name="s_psit2" value="ENTP/08">������ õ��<br> 
					<input type="radio" name="s_psit2" value="ESTP/08">�������� �������� �����ϴ� ��<br>
					<hr color="white">
				</td>
			</tr>
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">3. ���� �λ��� ( ) </h2>
				</th>
			</tr>
			<tr>
				<td><input type="radio" name="s_psit3" value="INFP/INTP/ISFP/ISTP/04">�������ٸ� ������ �޴����� �Ѵ�.<br>
				<input type="radio" name="s_psit3" value="ENFP/ENTP/ESFP/ESTP/04">�������ٸ� �ټ��� �÷��� ������ ���.<br> 
				<input type="radio" name="s_psit3" value="edd">�ش���� ����<br>
				<hr color="white">
				</td>
			<tr>
			
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">4. ���� ���ΰ����?</h2>
				</th>
			</tr>
			<tr>
				<td><input type="radio" name="s_psit4" value="ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/02">������ ���ΰ��踦 ����<br>
					<input type="radio" name="s_psit4" value="INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP02">�����ִ� ���ΰ��踦 ����<br>
					<hr color="white">
				</td>
			</tr>
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">5. ���� ������?</h2>
				</th>
			</tr>
			<tr><td><input type="radio" name="s_psit5" value="ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/02">�米��, Ȱ����, �������� ������ ������ �ִ�.<br>
				<input type="radio" name="s_psit5" value="INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP02">�����ϰ� �����ϴ�. / ������ ������ �����ϴ� �����̴�.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">6. ���� ()</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit6" value="ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/12">�ν� Ÿ���̴�.<br>
				<input type="radio" name="s_psit6" value="INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP/12">�ƽ� Ÿ���̴�.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">7. �ϳ��� ����ּ���.</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit7" value="ESFJ/ESFP/ESTJ/ESTP/ISFJ/ISFP/ISTJ/ISTP/02">���� �����̰� ��Ÿ���̴�.<br>
				<input type="radio" name="s_psit7" value="ENFJ/ENFP/ENTJ/ENTP/INFJ/INFP/INTJ/INTP/02">���� �������̰� �̱����̴�.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">8. �ϳ��� ����ּ���.</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit8" value="ESFJ/ESFP/ESTJ/ESTP/ISFJ/ISFP/ISTJ/ISTP/02">
				���� ���� ����� ���翡 ������ ���� ���� ó���ϴ� ���̴�.<br>
				<input type="radio" name="s_psit8" value="ENFJ/ENFP/ENTJ/ENTP/INFJ/INFP/INTJ/INTP/02">
				���� �̷��������̰� �ż��ϰ� ���� ó���ϴ� ���̴�.<br>
				<hr color="white">
			</td></tr>
			
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">9. �ϳ��� ����ּ���.</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit9" value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				���� ���, �ְ��� �ѷ��ϰ� ���ǰ� ��ǿ� �ַ� ������ ������ ����� ����, �м���, ���������� �Ǵ��ϴ� ���̴�.<br>
				<input type="radio" name="s_psit9" value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
				���� �������̰� �ٸ������ ��ġ�� ���� ���̰� ���� ��Ȳ ���� ħ���ϰ� ���� �� �� �ִ�.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">10. ���� ��Ȱ �����?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio"	name="s_psit10" value="ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
				öó�ϰ� ������ȹ�� ����� �и��� ��������� ������ �����Ѵ�.<br> 
				<input type="radio" name="s_psit10" value="ENFP/ENTP/ESFP/ESTP/INFP/INTP/ISFP/ISTP/02"> 
				����, ������ ��ȭ�� �����ϴٰ� �����ϰ� ��Ȳ�� ���� �������� ���� �������̰� ���뼺 �ִ�.<br> 
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">11. ���� �� û�� ���´�?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit11" value="ENTJ/ESFJ/ESTJ/ISTJ/05">�Ѽ����� ������������ ���� �뼭�� �� ����<br> 
				<input type="radio" name="s_psit11"	value="ESTP/INFJ/INTJ/ISFJ/05">���� ����ϰų� ���� �������ϰų�<br>
				<input type="radio" name="s_psit11" value="ENTP/INFP/ISTP/ENFJ/04">�Ⱥ��̴� ���� �� ���� �ְ� �����ϴٸ� �����Ѵ�<br>
				<input type="radio" name="s_psit11" value="ENTP/ESFP/INTP/ISFP/04">û�Ұ� ����? �װ� �Դ°ž�?<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">12. �ֺ�������� � ������� ���� ��������?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit12" value="ENFJ/14">������ ���<br>
				<input type="radio" name="s_psit12"	value="INTP/14">�������� ���<br>
				<input type="radio"	name="s_psit12" value="">�ش� ���� ����<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">13. ���� ���� ������ �ȵȴٸ� �� ������?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit13" value="ISTJ/12">���� ��<br>
				<input type="radio" name="s_psit13" value="ISFJ/14">���� ���� ����<br>
				<input type="radio"	name="s_psit13" value="INTJ/14">���ϴ��� �ٻ�<br>
				<input type="radio" name="s_psit13" value="INFJ/14">�ڱ��� �ϴ��� �ٻ�<br>
				<input type="radio" name="s_psit13" value="ISTP/10">���� �׷� ������<br>
				<input type="radio" name="s_psit13"	value="ISFP/13">���θ��� �ð��� ���� ����<br>
				<input type="radio" name="s_psit13" value="INTP/10">���� �ߵǴ°� �̻��� ������<br>
				<input type="radio" name="s_psit13" value="INFP/14">�� �̻��� �����ϰ� ����<br>
				<input type="radio" name="s_psit13"	value="ESTJ/14">���ñ��� ��ȹ�ߴ� ���� �ϰ� �־���<br>
				<input type="radio" name="s_psit13" value="ESFJ/10">ģ���� ������ �����ð� �־���<br>
				<input type="radio" name="s_psit13" value="ENTJ/14">�Ƹ�����Ʈ & ���ϴ��� �ٻ���<br>
				<input type="radio" name="s_psit13"	value="ENFJ/10">ģ�� ��λ�� ����ְ� �־���<br>
				<input type="radio" name="s_psit13" value="ESTP/14">�� �� �� ���ϰ� ���߿� �����Ұ���<br>
				<input type="radio" name="s_psit13" value="ESFP/14">ģ���� ��ȭ����<br>
				<input type="radio" name="s_psit13" value="ENTP/14">�׳� �����<br>
				<input type="radio" name="s_psit13"	value="ENFP/10">���� �� �� �ƴµ� �����Ƽ� ����<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">14. ���� ���� ��Ÿ����?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit14" value="ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
				������ ����, ���� ������ Ÿ�� �������� �˾ƾ� ������ ��.<br> 
				<input type="radio" name="s_psit14" value="ENFP/ENTP/ESFP/ESTP/INFP/INTP/ISFP/ISTP/02">
				���� ��� ���� �𸣰����� �׷��ٰ� ��� ����ϰ� ������ �ȳ����� �Ǵ� �켱 ����.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">15. ���� �� �����ٰ� �����ϴ� ����?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit15" value="ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
				�̰� �Ϻ��ϰ� �������ϴ� �� ����!<br>
				<input type="radio" name="s_psit15" value="ENFP/ENTP/ESFP/ESTP/INFP/INTP*ISFP/ISTP/02">
				�̰� ������ �����ϴ� �� ����!<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">16. ģ���� �ڵ��� ��� ���� �� ���� ������?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit16"	value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02"> 
				���� �ҷ���? ������?<br>
				<input type="radio" name="s_psit16"	value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02"> 
				������? �������̾�? �� ���ƾ�?<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">17. �ֺ� ����� ����� �ȵ� ������ϴ� ��Ȳ�� �� ���� ������?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit17" value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				���� �غ��ϰ� �־�? �̷¼��� �־���?<br>
				<input type="radio"	name="s_psit17" value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
				���� ������(����� ������ ���� �������� ����Ѵ�.)<br>
				<hr color="white">
			</td></tr>	

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">18. ģ���� ���迡 ������ �����ϰ� ���� �� ���� ������?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit18"	value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				���������̾�? �����ε�?<br>
				<input type="radio" name="s_psit18"	value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02"> 
				�������� �� �����ž�!<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">19. "�ϴ��� ������ ��ȭ�� �þ�"�� ���� ���� ������?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit19"	value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				�ϴ��� ���۵� �� �������� ��?<br>
				<input type="radio" name="s_psit19"	value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02"> 
				�����̾� ����<br>
				<hr color="white">
			</td></tr>


			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">20. ���� ���� Ī���ϴ� �����?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio"	name="s_psit20" value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				���߳�! �� �κи� �����ϸ� �� ���ڴ�.<br>
				<input type="radio" name="s_psit20"	value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
				����߾�! ������ �߱���! <br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">21. ���� �ܷӴٰ� ���� �� ����?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit21" value="ISTP/10">���� �ܷӴٰ� ���������� ���� �λ��� ȥ�ھ�<br>
				<input type="radio" name="s_psit21" value="ESFJ/10">ȥ�������� �׻� �ܷο�<br> 
				<input type="radio" name="s_psit21" value="">�ش���� ����<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">22. �̼��� ���� ����൵ ��������?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit22"	value="ENFP/INTP/ISFP/ISTP/03">������.<br>
				<input type="radio" name="s_psit22" value="">�ȼ�����.<br>
				<hr color="white">
			</td></tr>
			
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">23. �����ϴ� ������� ������ ǥ���ϰ� �; �� �ȵ����ְ�, �̷� ���� �ʹ� ����ϳ���?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit23"	value="INTP/ISTJ/ISTP/04">�׷���.<br>
				<input type="radio" name="s_psit23" value="">�ƴϴ�.<br>
			<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">24. ������ �ʰ� ������� ���� ���� �ִٰ� �� �� ���� �����?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit24" value="ENFJ/ENFP/ESFJ/ESFP/04">�����̾�~ �׷��� ������ �ȵ�<br>
				<input type="radio" name="s_psit24" value="ENTJ/ENTP/ESTJ/ESTP/05">�׷�? �������<br>
				<input type="radio" name="s_psit24" value="INFJ/INFP/ISFJ/ISFP/05">�ʰ� ������ �� ��ư� ������ ���� ��<br>
				<input type="radio" name="s_psit24" value="INTJ/INTP/ISTJ/ISTP/04">��~<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">25. ���� ���ϴ� "������ ����"�� �ǹ̴�?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit25" value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/04">
				���� Ȥ�� ���� �˾Ƽ� �Ѵٴ� �ǹ�<br>
				<input type="radio" name="s_psit25"	value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/04"> 
				�̸��� ��¥ �´� ������ ������ �����غ��ٴ� �ǹ�<br>
				<hr color="white">
			</td></tr>
			
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">26.���� ���� ���� �����ϴ� ��Ÿ����?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit26"	value="ISTJ/05">�� �������� �̿�<br>
				<input type="radio"	name="s_psit26" value="ENFJ/INFJ/05">�к�Ŭ���� �̿�<br>
				<input type="radio" name="s_psit26" value="ENFP/05">���Ѳ��� �̿�<br>
				<input type="radio" name="s_psit26" value="ESFJ/ESTJ/04">�������� ����<br>
				<input type="radio" name="s_psit26"	value="ISFJ/ISFP/04">���ٷ� ����<br>
				<input type="radio" name="s_psit26" value="ESFP/ESTP/05">������ ���Ƽ� ����<br>
				<input type="radio" name="s_psit26" value="ENTJ/INTJ/05">�ŵ�����<br>
				<input type="radio" name="s_psit26"	value="INFP/INTP/05">������ �׳� ����<br>
				<input type="radio" name="s_psit26" value="ENTP/ISTP/05">������ ��� ��<br>
				<hr color="white">
			</td></tr>
				<tr><td style="text-align: center;"><input id = "submit" value="�Ϸ�" type="submit" name="sub"></td></tr>
		</table>
	</form>
	</div>
	</div>
</section>

<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p>
						<i class="fa fa-copyright"></i> Copyright 2020 by Grad School |
						Design: <a href="https://templatemo.com" rel="sponsored"
							target="_parent">TemplateMo</a><br> Distributed By: <a
							href="https://themewagon.com" rel="sponsored" target="_blank">ThemeWagon</a>
					</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	<script src="assets/js/lightbox.js"></script>
	<script src="assets/js/tabs.js"></script>
	<script src="assets/js/video.js"></script>
	<script src="assets/js/slick-slider.js"></script>
	<script src="assets/js/custom.js"></script>
	
</body>
</html>