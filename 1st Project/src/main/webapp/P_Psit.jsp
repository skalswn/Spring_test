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
}
DAO dao = new DAO();
%>
	<%	
String userID= null;
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID = vo.getM_id();
	System.out.print(userID);
}else{%>
	Response.Write("
	<script>alert('로그인 후 이용하실 수 있는 서비스 입니다.');</script>
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
            <li><a href="#section2">IT란?</a></li>
            <li><a href="#section4">IT직무</a></li>
            <li><a href="#section3">IT전망</a></li>
            <li><a href="https://templatemo.com/about" rel="sponsored" class="external">External URL</a></li>
          </ul> -->
     <% if(vo!=null){%>
        <li><a href="#">직무탐색</a>
        	<ul class="sub-menu">
            <li><a href="P_Psit.jsp">PSIT 검사</a></li>
            <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
          	</ul></li>
        <!-- <li><a h\ref="#section5">Video</a></li> -->
        <li><a href="StudyPage.jsp">단계별학습</a></li>
        <li><a href="#" class="external">커뮤니티</a>
          <ul class="sub-menu">
            <li><a href="c_Community.jsp">자유게시판</a></li>
            <li><a href="c_Study_Community.jsp">스터디 게시판</a></li>
            <li><a href="c_Used_Community.jsp">중고거래 게시판</a></li>
          </ul></li>
        <%if(vo.getM_id().equals("admin")){ %>
	        <li><a href="ManageUser.jsp" class="external">회원관리</a></li>
        <%}else{ %>
        <li><a href="My_page.jsp" class="external">마이페이지</a></li>
        <%} %>
        <li><a href="LogoutService" class="external">로그아웃</a></li>
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
					<h2 class = "question">1. 당신의 습관적 말투는?</h2>
				</th>
			</tr>
			<tr>
				<td><input type="radio" name="s_psit1" value="ENFP/10">만약에<br>
					<input type="radio" name="s_psit1" value="ESFP/14">헐 대박<br> 
					<input type="radio" name="s_psit1" value="ENTP/14">왜 안되는데?<br>
					<input type="radio" name="s_psit1" value="ISTP/10">굳이?<br> 
					<input type="radio" name="s_psit1" value="INFJ/14">나 괜찮아<br>
					<input type="radio" name="s_psit1" value="ISFJ/14">걱정하지마<br>
					<input type="radio" name="s_psit1" value="ENTJ/14">당연한거 아니야?<br>
					<input type="radio" name="s_psit1" value="ESTJ/14">내가 할게<br>
					<input type="radio" name="s_psit1" value="INFP/14">고마워/ 미안해<br>
					<input type="radio"	name="s_psit1" value="ISFP/13">아..진짜?<br>
					<input type="radio" name="s_psit1" value="INTP/10">왜?<br>
					<input type="radio" name="s_psit1" value="ESTP/14">뭐해 심심해<br>
					<input type="radio" name="s_psit1" value="ENFJ/10">힘내/파이팅<br>
					<input type="radio" name="s_psit1" value="ESFJ/10">됐어..<br>
					<input type="radio" name="s_psit1" value="INTJ/14">그거 아냐<br>
					<input type="radio" name="s_psit1" value="ISTJ/12">내가 말했잖아<br>
					<hr color="white">
				</td>
			</tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">2. 학교에서 당신의 포지션은?</h2>
				</th>
			</tr>
			<tr>
				<td><input type="radio" name="s_psit2" value="INTJ/08">전교 1등<br> 
					<input type="radio" name="s_psit2" value="INFJ/08">미대지망생<br> 
					<input type="radio" name="s_psit2" value="ISFJ/08">아무도 모르는 전교 2등<br> 
					<input type="radio" name="s_psit2" value="ISTJ/08">동네 신문에 자주 나오는 모범생<br> 
					<input type="radio" name="s_psit2" value="ISFP/08">예체능 전공이라 수업 잘 안들어오는 애<br> 
					<input type="radio" name="s_psit2" value="INFP/07">맨 뒷자리에서 맨날 이어폰 끼고 창문 보는 애<br> 
					<input type="radio" name="s_psit2" value="INTP/07">조용한 천재<br> 
					<input type="radio" name="s_psit2" value="ISTP/07">점심을 3분만에 먹고 나가서 축구하는애<br>
					<input type="radio" name="s_psit2" value="ENTJ/08">학교 행사 주최를 맡고 있는 학생 부회장<br> 
					<input type="radio" name="s_psit2" value="ENFJ/08">반 대표 고민상담사<br>
					<input type="radio" name="s_psit2" value="ESFJ/08">일찐<br>
					<input type="radio" name="s_psit2" value="ESTJ/08">학생회장<br>
					<input type="radio" name="s_psit2" value="ESFP/08">패셔니스타<br>
					<input type="radio" name="s_psit2" value="ENFP/05">나대는 애<br>
					<input type="radio" name="s_psit2" value="ENTP/08">게으른 천재<br> 
					<input type="radio" name="s_psit2" value="ESTP/08">나대지만 선생님이 좋아하는 애<br>
					<hr color="white">
				</td>
			</tr>
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">3. 나는 인생이 다 ( ) 이라고 생각한다</h2>
				</th>
			</tr>
			<tr>
				<td><input type="radio" name="s_psit3" value="INFP/INTP/ISFP/ISTP/04">부질없다며 누워서 휴대폰을 한다.<br>
				<input type="radio" name="s_psit3" value="ENFP/ENTP/ESFP/ESTP/04">부질없다며, 텐션을 올려서 열심히 논다.<br> 
				<input type="radio" name="s_psit3" value="edd">해당사항 없음<br>
				<hr color="white">
				</td>
			<tr>
			
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">4. 사람을 사귀는 방향은?</h2>
				</th>
			</tr>
			<tr>
				<td><input type="radio" name="s_psit4" value="ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/02">폭넓은 대인관계를 유지<br>
					<input type="radio" name="s_psit4" value="INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP02">깊이있는 대인관계를 유지<br>
					<hr color="white">
				</td>
			</tr>
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">5. 나의 성향은?</h2>
				</th>
			</tr>
			<tr><td><input type="radio" name="s_psit5" value="ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/02">사교적/활동적/정열적인 성향을 가지고 있다.<br>
				<input type="radio" name="s_psit5" value="INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP02">조용하고, 신중하다. / 이해한 다음에 경험한다.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">6. 나는?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit6" value="ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/12">인싸 타입이다.<br>
				<input type="radio" name="s_psit6" value="INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP/12">아싸 타입이다.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">7. 하나를 골라주세요.</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit7" value="ESFJ/ESFP/ESTJ/ESTP/ISFJ/ISFP/ISTJ/ISTP/02">나는 논리적이고 이타적이다.<br>
				<input type="radio" name="s_psit7" value="ENFJ/ENFP/ENTJ/ENTP/INFJ/INFP/INTJ/INTP/02">나는 직관적이고 이기적이다.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">8. 하나를 골라주세요.</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit8" value="ESFJ/ESFP/ESTJ/ESTP/ISFJ/ISFP/ISTJ/ISTP/02">
				나는 실제 경험, 초첨을 현재에 맞추고 일을 처리한다.<br>
				<input type="radio" name="s_psit8" value="ENFJ/ENFP/ENTJ/ENTP/INFJ/INFP/INTJ/INTP/02">
				나는 미래지향적이고, 신속, 비약적으로 일을 처리한다.<br>
				<hr color="white">
			</td></tr>
			
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">9. 하나를 골라주세요.</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit9" value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				나는 사고, 주관이 뚜렷하다. 진실과 사실에 주로 관심을 가진다. 논리적, 분석적, 객관적으로 판단한다.<br>
				<input type="radio" name="s_psit9" value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
				나는 감성적이고, 다른사람의 눈치를 보는 편이다. 상황등을 침착하게 설명 할 수 있다.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">10. 당신의 생활 방식은?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio"	name="s_psit10" value="ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
				철처하게 사전계획을 세우고, 분명한 목적방향과 기한을 엄수한다.<br> 
				<input type="radio" name="s_psit10" value="ENFP/ENTP/ESFP/ESTP/INFP/INTP/ISFP/ISTP/02"> 
				목적, 방향은 변화가 가능하다고 생각하고, 상황에 따라 일정이 변경, 자율정이고 융통성 있다.<br> 
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">11. 당신의 방청소 상태는?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit11" value="ENTJ/ESFJ/ESTJ/ISTJ/05">한순간도 지저분해지는 것을 용서할 수 없음<br> 
				<input type="radio" name="s_psit11"	value="ESTP/INFJ/INTJ/ISFJ/05">아주 깔끔하거나, 아주 지저분하거나<br>
				<input type="radio" name="s_psit11" value="ENTP/INFP/ISTP/ENFJ/04">안보이는 곳에 다 때려 넣고 깨끗하다며 만족함<br>
				<input type="radio" name="s_psit11" value="ENTP/ESFP/INTP/ISFP/04">청소가 뭐야? 그거 먹는거야?<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">12. 당신은 주변사람에게 어떤 사람으로 남고 싶은가요?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit12" value="ENFJ/14">따뜻한 사람<br>
				<input type="radio" name="s_psit12"	value="INTP/14">문제 없는 사람<br>
				<input type="radio"	name="s_psit12" value="">해당 사항 없음<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">13. 당신이 만약 연락이 안된다면, 그 이유는?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit13" value="ISTJ/12">일찍 잠<br>
				<input type="radio" name="s_psit13" value="ISFJ/14">뉴스 보고 있음<br>
				<input type="radio"	name="s_psit13" value="INTJ/14">일하느라 바쁨<br>
				<input type="radio" name="s_psit13" value="INFJ/14">자기계발 하느라 바쁨<br>
				<input type="radio" name="s_psit13" value="ISTP/10">원래 그런 아이임<br>
				<input type="radio" name="s_psit13"	value="ISFP/13">본인만의 시간을 즐기고 있음<br>
				<input type="radio" name="s_psit13" value="INTP/10">연락 잘되는게 이상한 아이임<br>
				<input type="radio" name="s_psit13" value="INFP/14">또 이상한 망상하고 있음<br>
				<input type="radio" name="s_psit13"	value="ESTJ/14">오늘까지 계획했던거 하고 있었음<br>
				<input type="radio" name="s_psit13" value="ESFJ/10">친구랑 만나서 술마시고 있었음<br>
				<input type="radio" name="s_psit13" value="ENTJ/14">아르바이트 & 일하느라 바빴음<br>
				<input type="radio" name="s_psit13"	value="ENFJ/10">친구 고민상담 들어주고 있었음<br>
				<input type="radio" name="s_psit13" value="ESTP/14">내 할 일 다하고 나중에 연락할거임<br>
				<input type="radio" name="s_psit13" value="ESFP/14">친구랑 전화중임<br>
				<input type="radio" name="s_psit13" value="ENTP/14">그냥 까먹음<br>
				<input type="radio" name="s_psit13"	value="ENFP/10">연락온거 아는데 귀찮아서 안함<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">14. 당신의 외출 스타일은?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit14" value="ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
				누구랑 언제, 어디로 무엇을 타고 가는지를 알아야 외출을 함.<br> 
				<input type="radio" name="s_psit14" value="ENFP/ENTP/ESFP/ESTP/INFP/INTP/ISFP/ISTP/02">
				아직 어딜 갈지 모르겠지만 그렇다고 계속 고민하고 있으면 안나가게 되니 우선 나감.<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">15. 내가 더 멋지다고 생각하는 나는?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit15" value="ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
				이걸 완벽하게 마무리하는 나 멋져!<br>
				<input type="radio" name="s_psit15" value="ENFP/ENTP/ESFP/ESTP/INFP/INTP*ISFP/ISTP/02">
				이걸 멋지게 수습하는 나 멋져!<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">16. 당신의 친구가 자동차 사고가 났을 때 당신의 반응은?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit16"	value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02"> 
				보험 불렀어? 병원은?<br>
				<input type="radio" name="s_psit16"	value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02"> 
				괜찮아? 무슨일이야? 안 다쳤어?<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">17. 당신의 주변 사람이 취업이 안돼 힘들어하는 상황일 때 당신의 반응은?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit17" value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				무슨 준비하고 있어? 이력서는 넣었어?<br>
				<input type="radio"	name="s_psit17" value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
				많이 힘들지(곤란한 질문을 하지 않을려고 노력한다.)<br>
				<hr color="white">
			</td></tr>	

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">18. 친구가 시험에 떨어져 슬퍼하고 있을 때 당신의 반응은?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit18"	value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				무슨시험이야? 몇점인데?<br>
				<input type="radio" name="s_psit18"	value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02"> 
				다음에는 꼭 붙을거야!<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">19. "하늘이 예뻐서 전화해 봤어"에 대한 당신의 반응은?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit19"	value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				하늘이 예쁜데 왜 내생각을 해?<br>
				<input type="radio" name="s_psit19"	value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02"> 
				감동이야 사랑해<br>
				<hr color="white">
			</td></tr>


			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">20. 당신이 칭찬하는 방법은?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio"	name="s_psit20" value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
				잘했네! 이 부분만 수정하면 더 좋겠다.<br>
				<input type="radio" name="s_psit20"	value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
				고생했어! 열심히 했구나! <br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">21. 당신이 외롭다고 생각 할 때는?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit21" value="ISTP/10">딱히 외롭다고 생각한적은 없어 인생은 혼자야<br>
				<input type="radio" name="s_psit21" value="ESFJ/10">혼자있으면 항상 외로워<br> 
				<input type="radio" name="s_psit21" value="">해당사항 없음<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">22. 이성이 문만 잡아줘도 당신은 설레나요?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit22"	value="ENFP/INTP/ISFP/ISTP/03">설렌다.<br>
				<input type="radio" name="s_psit22" value="">안설렌다.<br>
				<hr color="white">
			</td></tr>
			
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">23. 좋아하는 사람에게 마음을 표현하고 싶어도 잘 안따라주고, 이런 내가 너무 답답하나요?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit23"	value="INTP/ISTJ/ISTP/04">그렇다.<br>
				<input type="radio" name="s_psit23" value="">아니다.<br>
			<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">24. 애인이 너가 죽으라면 죽을 수도 있다고 할 때 당신의 대답은?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit24" value="ENFJ/ENFP/ESFJ/ESFP/04">감동이야. 그치만 절대 죽지마<br>
				<input type="radio" name="s_psit24" value="ENTJ/ENTP/ESTJ/ESTP/05">그래? 보여줘봐<br>
				<input type="radio" name="s_psit24" value="INFJ/INFP/ISFJ/ISFP/05">너가 죽으면 난 살아갈 이유가 없는 걸<br>
				<input type="radio" name="s_psit24" value="INTJ/INTP/ISTJ/ISTP/04">오~<br>
				<hr color="white">
			</td></tr>

			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">25. 당신이 말할 때 "생각해 볼게"라는 의미는?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit25" value="ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/04">
				거절 혹은 내가 알아서 한다는 의미<br>
				<input type="radio" name="s_psit25"	value="ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/04"> 
				이말이 진짜 맞는 말인지 곰곰히 생각해본다는 의미<br>
				<hr color="white">
			</td></tr>
			
			<tr>
				<th colspan="16" class = "question">
					<h2 class = "question">26. 당신이 빵을 보관할 때 당신의 스타일은?</h2>
				</th>
			</tr>
			<tr><td>
				<input type="radio" name="s_psit26"	value="ISTJ/05">빵 보관함을 이용<br>
				<input type="radio"	name="s_psit26" value="ENFJ/INFJ/05">밀봉클립을 이용<br>
				<input type="radio" name="s_psit26" value="ENFP/05">병뚜껑을 이용<br>
				<input type="radio" name="s_psit26" value="ESFJ/ESTJ/04">봉지집게 재사용<br>
				<input type="radio" name="s_psit26"	value="ISFJ/ISFP/04">고무줄로 묶음<br>
				<input type="radio" name="s_psit26" value="ESFP/ESTP/05">봉지를 꼬아서 접음<br>
				<input type="radio" name="s_psit26" value="ENTJ/INTJ/05">매듭지음<br>
				<input type="radio" name="s_psit26"	value="INFP/INTP/05">봉지를 그냥 접음<br>
				<input type="radio" name="s_psit26" value="ENTP/ISTP/05">봉지를 열어서 둠<br>
				<hr color="white">
			</td></tr>
				<tr><td style="text-align: center;"><input id = "submit" value="완료" type="submit" name="sub"></td></tr>
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