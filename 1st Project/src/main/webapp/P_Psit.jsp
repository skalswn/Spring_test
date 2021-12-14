<%@page import="java.util.ArrayList"%>
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
Response.Write("<script>alert('로그인 후 이용하실 수 있는 서비스 입니다.');</script>");
Response.Write("<script>location.href='Main.jsp';</script>");
<%}%>
   <form action="P_PSit"><table width = "600px"align = "center">
   
   
         <caption><h2><img src="images/psit2.png" alt="" /></h2></caption>                               
         <tr>
         	<th><p> 하기 질문을 선택 후 제출해 주세요.!</p></th>
         </tr>
                   <tr>
                   <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>  당신의 습관적 말투는? </h2> </th>                     
                   </tr>
                   <td>                 
                      만약에
                      <input type = "radio" name ="s_psit1" value = "ENFP/10">  
                      <BR>
                      헐 대박
                      <input type = "radio" name ="s_psit1" value = "ESFP/14">     
                      <BR>
                      왜 안되는데?
                       <input type="radio" name ="s_psit1" value = "ENTP/14">
                       <br>
                       굳이? 
                       <input type="radio" name ="s_psit1" value = "ISTP/10">
                       <br>
                       나 괜찮아 
                       <input type="radio" name ="s_psit1" value = "INFJ/14">
                       <br>
                       걱정하지마
                       <input type="radio" name ="s_psit1" value = "ISFJ/14">
                       <br>
                       당연한거 아니야??
                       <input type="radio" name ="s_psit1" value = "ENTJ/14">
                       <br>
                      내가 할게
                      <input type="radio" name ="s_psit1" value = "ESTJ/14">
                       <br>
                       고마워/ 미안해
                       <input type="radio" name ="s_psit1" value = "INFP/14">
                       <br>
                       아 .... 진짜?? 
                       <input type="radio" name ="s_psit1" value = "ISFP/13">
                       <br>
                       왜?? 
                       <input type="radio" name ="s_psit1" value = "INTP/10">
                       <br>
                       뭐해 심심해
                       <input type="radio" name ="s_psit1" value = "ESTP/14">
                       <br>
                       힘내/파이팅
                       <input type="radio" name ="s_psit1" value = "ENFJ/10">
                       <br>
                       됐어...
                       <input type="radio" name ="s_psit1" value = "ESFJ/10">
                       <br>                    
                       그거 아님
                       <input type="radio" name ="s_psit1" value = "INTJ/14">
                       <br>
                       내가 말했잖아
                       <input type="radio" name ="s_psit1" value = "ISTJ/12">
                       <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>                                          
                        
                       </td>                      
                    <tr>
                   <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 학교에서 당신의 포지션은???</h2> </th>                     
                   </tr>
                   <td>                 
                      전교 1등
                      <input type = "radio" name ="s_psit2" value = "INTJ/08">  
                      <BR>
                      미대지망생
                      <input type = "radio" name ="s_psit2" value = "INFJ/08">  
                      <BR>
                      아무도 모르는 전교 2등
                      <input type = "radio" name ="s_psit2" value = "IDFJ/08">  
                      <BR>
                      동네 신문에 자주 나오는 모범생
                      <input type = "radio" name ="s_psit2" value = "ISTJ/08">  
                      <BR>
                      예체능 전공이라 수업 잘 안들어오는 애
                      <input type = "radio" name ="s_psit2" value = "ISFP/08">  
                      <BR>
                      맨 뒷자리에서 맨날 이어폰 끼고 창문 보는 애
                      <input type = "radio" name ="s_psit2" value = "INFP/07">  
                      <BR>
                      조용한 천재
                      <input type = "radio" name ="s_psit2" value = "INTP/07">  
                      <BR>
                      점심을 3분만에 먹고 나가서 축구하는애
                      <input type = "radio" name ="s_psit2" value = "ISTP/07">  
                      <BR>
                      학교 행사 주최를 맡고 있는 학생 부회장
                      <input type = "radio" name ="s_psit2" value = "ENTJ/08">  
                      <BR>
                      반 대표 고민상담사
                      <input type = "radio" name ="s_psit2" value = "ENFJ/08">  
                      <BR>
                      일찐
                      <input type = "radio" name ="s_psit2" value = "ESFJ/08">  
                      <BR>
                      학생회장
                      <input type = "radio" name ="s_psit2" value = "ESTJ/08">  
                      <BR>
                      패셔니스타
                      <input type = "radio" name ="s_psit2" value = "ESFP/08">  
                      <BR>
                      나대는 애
                      <input type = "radio" name ="s_psit2" value = "ENFP/05">  
                      <BR>
                      게으른 천재
                      <input type = "radio" name ="s_psit2" value = "ENTP/08">  
                      <BR>
                      나대지만 선생님이 좋아하는 애
                   	  <input type = "radio" name ="s_psit2" value = "ESTP/08">  
                      <BR> 
                       <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>
                     
                       </td>                      
                       <tr>
                   <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>나는 인생이 다 (       ) 이라고 생각한다 </h2> </th>                     
                   </tr>
                   <td>
                       부질없다며 누워서 휴대폰을 한다.               
                   	  <input type = "radio" name ="s_psit3" value = "INFP/INTP/ISFP/ISTP/04">  
                      <BR>
                      부질없다며, 텐션을 올려서 열심히 논다.  
                      <input type = "radio" name ="s_psit3" value = "ENFP/ENTP/ESFP/ESTP/04">  
                      <BR>
                      해당사항 없음
                      <input type = "radio" name ="s_psit3" value = "edd">  
                      <BR>
                       <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>
                     
                    </td> 
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>사람을 사귀는 방향은??? </h2> </th>                     
                   </tr>
                   <td>
                       폭넓은 대인관계를 유지. 
                     <input type = "radio" name ="s_psit4" value = "ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/02">  
                      <BR>
                      깊이 있는 대인 관계 유지 
                      <input type = "radio" name ="s_psit4" value = "INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP02">
                       <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr>
                       </th>             
                    </td> 
                     
                     <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>나의 성향은??? </h2> </th>                     
                   </tr>
                   <td>
                       사교적/활동적/정렬적인 성향을 가지고 있다. 
                     <input type = "radio" name ="s_psit5" value = "ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/02">  
                      <BR>
                     조용하고, 신중하다. / 이해한 다음에 경험한다.  
                      <input type = "radio" name ="s_psit5" value = "INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP02">
                        <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>                 
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>나는??? </h2> </th>                     
                   </tr>
                   <td>
                       인싸 타입이다. 
                     <input type = "radio" name ="s_psit6" value = "ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/12">  
                      <BR>
                       아싸 타입이다.  
                      <input type = "radio" name ="s_psit6" value = "INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP/12">
                        <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>                 
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 둘중 하나를 고르세요.~ </h2> </th>                     
                   </tr>
                   <td>
                       나는 감각적이고 이타적이다.
                     <input type = "radio" name ="s_psit7" value = "ESFJ/ESFP/ESTJ/ESTP/ISFJ/ISFP/ISTJ/ISTP/02">  
                      <BR>
                       나는 직관적이고, 이기적이다.   
                      <input type = "radio" name ="s_psit7" value = "ENFJ/ENFP/ENTJ/ENTP/INFJ/INFP/INTJ/INTP/02">
                        <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>                 
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 둘중 하나를 고르세요.~ </h2> </th>                     
                   </tr>
                   <td>
                       나는 실제 경험, 초첨을 현재에 맞추고 일을 처리한다.
                     <input type = "radio" name ="s_psit8" value = "ESFJ/ESFP/ESTJ/ESTP/ISFJ/ISFP/ISTJ/ISTP/02">  
                      <BR>
                       나는 미래지향적이고, 신속, 비약적으로 일을 처리한다.   
                      <input type = "radio" name ="s_psit8" value = "ENFJ/ENFP/ENTJ/ENTP/INFJ/INFP/INTJ/INTP/02">
                        <Br><Br><Br><Br><Br><Br>
                          
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 둘중 하나를 고르세요.~ </h2> </th>                     
                   </tr>
                   <td>
                       나는 사고, 주관이 뚜렷하다. 진실과 사실에 주로 관심을 가진다. 논리적, 분석적, 객관적으로 판단한다.
                     <input type = "radio" name ="s_psit9" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">  
                      <BR>
                       나는 감성적이고, 다른사람의 눈치를 보는 편이다. 상황등을 침착하게 설명 할 수 있다.
                      <input type = "radio" name ="s_psit9" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">  
                      <BR>
                     
                        <Br><Br><Br><Br><Br><Br>
                          
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신의 생활 방식은?  </h2> </th>                     
                   </tr>
                   <td>
                       철처하게 사전계획을 세우고, 분명한 목적방향과 기한을 엄수한다.
                     <input type = "radio" name ="s_psit10" value = "ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">  
                      <BR>
                      목적, 방향은 변화가 가능하다고 생각하고, 상황에 따라 일정이 변경, 자율정이고 융통성 있다. 
                     <input type = "radio" name ="s_psit10" value = "ENFP/ENTP/ESFP/ESTP/INFP/INTP/ISFP/ISTP/02">  
                      <BR>

                     
                        <Br><Br><Br><Br><Br><Br>
                          
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신의 방청소 상태는?  </h2> </th>                     
                   </tr>
                   <td>
                       한순간도 지저분해지는 것을 용서할 수 없음
                     <input type = "radio" name ="s_psit11" value = "ENTJ/ESFJ/ESTJ/ISTJ/05">  
                      <BR>
                      아주 깔끔하거나, 아주 지저분하거나...
                      <input type = "radio" name ="s_psit11" value = "ESTP/INFJ/INTJ/ISFJ/05">
                       <BR>
                      안보이는 곳에 다 때려 넣고 깨끗하다며 만족함 
                      <input type = "radio" name ="s_psit11" value = "ENTP/INFP/ISTP/ENFJ/04">
                       <BR>
                      청소가 뭐임?? 그거 먹는거임? 
                      <input type = "radio" name ="s_psit11" value = "ENTP/ESFP/INTP/ISFP/04">
                       <BR>

                     
                        <Br><Br><Br><Br><Br><Br>
                          
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신은 주변사람에게 어떤 사람으로 남고 싶은가요??  </h2> </th>                     
                   </tr>
                   <td>
                       따뜻한 사람
                     <input type = "radio" name ="s_psit12" value = "ENFJ/14">
                     <BR>
                       문제 없는 사람
                       <input type = "radio" name ="s_psit12" value = "INTP/14">
                     <BR>
                       해당 사항 없음 
                       <input type = "radio" name ="s_psit12" value = "">
                     <BR>
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>당신이 만약 연락이 안된다면... 그 이유는??   </h2> </th>                     
                   </tr>
                   <td>
                      일찍 잠 
                      <input type = "radio" name ="s_psit13" value = "ISTJ/12">
                     <BR>
                      뉴스 보고 있음
                      <input type = "radio" name ="s_psit13" value = "ISFJ/14">
                     <BR>
                      일하느라 바쁨
                      <input type = "radio" name ="s_psit13" value = "INTJ/14">
                     <BR>
                      자기계발 하느라 바쁨
                      <input type = "radio" name ="s_psit13" value = "INFJ/14">
                     <BR>
                      원래 그런 아이임
                      <input type = "radio" name ="s_psit13" value = "ISTP/10">
                     <BR>
                      본인만의 시간을 즐기고 있음
                      <input type = "radio" name ="s_psit13" value = "ISFP/13">
                     <BR>
                      연락 잘되는게 이상한 아이임 
                      <input type = "radio" name ="s_psit13" value = "INTP/10">
                     <BR>
                      또 이상한 망상하고 있음
                      <input type = "radio" name ="s_psit13" value = "INFP/14">
                     <BR>
                      오늘까지 계획했던거 하고 있었음 
                      <input type = "radio" name ="s_psit13" value = "ESTJ/14">
                     <BR>
                      친구랑 만나서 술마시고 있었음
                      <input type = "radio" name ="s_psit13" value = "ESFJ/10">
                     <BR>
                      아르바이트 & 일하느라 바빴음
                      <input type = "radio" name ="s_psit13" value = "ENTJ/14">
                     <BR>
                      친구 고민상담 들어주고 있었음
                      <input type = "radio" name ="s_psit13" value = "ENFJ/10">
                     <BR>
                      내할꺼 다하고 나중에 연락할거임
                      <input type = "radio" name ="s_psit13" value = "ESTP/14">
                     <BR>
                      친구랑 전화중임
                      <input type = "radio" name ="s_psit13" value = "ESFP/14">
                     <BR>
                      그냥 까먹음
                      <input type = "radio" name ="s_psit13" value = "ENTP/14">
                     <BR>
                      연락온거 아는데 귀찮아서 안함
                      <input type = "radio" name ="s_psit13" value = "ENFP/10">
                     <BR>
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신의 외출 스타일은??  </h2> </th>                     
                   </tr>
                   <td>
                       누구랑 언제, 어디로 무엇을 타고 가는지를 알아야 외출을 함 
                     <input type = "radio" name ="s_psit14" value = "ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
                     <BR>
                       아직 어딜 갈지는 모르겠는데 그렇다고 계속 고민하고 있으면 안나가게 되니 우선 나감.
                     <input type = "radio" name ="s_psit14" value = "ENFP/ENTP/ESFP/ESTP/INFP/INTP*ISFP/ISTP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 내가 더 멋지다고 생각하는 나는??   </h2> </th>                     
                   </tr>
                   <td>
                       이걸 완벽하게 마무리하는 나 멋져!
                     <input type = "radio" name ="s_psit15" value = "ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
                     <BR>
                       이걸 멋지게 수습하는 나 멋져!! 
                     <input type = "radio" name ="s_psit15" value = "ENFP/ENTP/ESFP/ESTP/INFP/INTP*ISFP/ISTP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신의 친구가 자동차 사고가 났을 때 당신의 반응은???   </h2> </th>                     
                   </tr>
                   <td>
                       보험 불렀어?? 병원은??
                     <input type = "radio" name ="s_psit16" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       괜찮아? ㅠㅠ 무슨일이야!!! 안 다쳤어????? ㅠㅠ
                     <input type = "radio" name ="s_psit16" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신의 주변 사람이 취업이 안돼 힘들어하는 상황일 때 당신의 반응은?   </h2> </th>                     
                   </tr>
                   <td>
                       무슨 준비하고 있어??? 이력서는 넣었어??
                     <input type = "radio" name ="s_psit17" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       많이 힘들지ㅠㅠㅠㅠㅠㅠ(곤란한 질문을 하지 않을려고 노력한다.)
                     <input type = "radio" name ="s_psit17" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 친구가 시험에 떨어져 슬퍼하고 있을 때 당신의 반응은??    </h2> </th>                     
                   </tr>
                   <td>
                       무슨시험이야???? 몇점인데??? 
                     <input type = "radio" name ="s_psit18" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       다음에는 꼭 붙을거야~~ !! 
                     <input type = "radio" name ="s_psit18" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> "하늘이 예뻐서 전화해 봤어"에 대한 당신의 반응은??    </h2> </th>                     
                   </tr>
                   <td>
                       하늘이 예쁜데 왜 내생각을 해??? 
                     <input type = "radio" name ="s_psit19" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       감동이야~~~ 사랑해♥
                     <input type = "radio" name ="s_psit19" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신이 칭찬하는 방법은???     </h2> </th>                     
                   </tr>
                   <td>
                       잘했네!!!!! 이 부분만 수정하면 더 좋겠어~~ 
                     <input type = "radio" name ="s_psit20" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       고생했어~~ 열심히 했구나~~ 
                     <input type = "radio" name ="s_psit20" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신이 외롭다고 생각 할 때는??      </h2> </th>                     
                   </tr>
                   <td>
                       딱히 외롭다고 생각한적은 없어..... 인생은 혼자야
                     <input type = "radio" name ="s_psit21" value = "ISTP/10">
                     <BR>
                     혼자있으면 항상 외로워~~
                     <input type = "radio" name ="s_psit21" value = "ESFJ/10">
                     <BR>
                     해당사항 없음
                     <input type = "radio" name ="s_psit21" value = "">
                     <BR>
                       
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 이성이 문만 잡아줘도 당신은 설레나요?      </h2> </th>                     
                   </tr>
                   <td>
                      설렌다.
                     <input type = "radio" name ="s_psit22" value = "ENFP/INTP/ISFP/ISTP/03">
                     <Br>
                     안설렌다.
                     <input type = "radio" name ="s_psit22" value = "">
                     <Br>

                       
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 좋아하는 사람에게 마음을 표현하고 싶어도 잘 안따라주고, 이런 내가 너무 답답하나요?       </h2> </th>                     
                   </tr>
                   <td>
                      그렇다.
                     <input type = "radio" name ="s_psit23" value = "INTP/ISTJ/ISTP/04">
                     <Br>
                     아니다. 
                     <input type = "radio" name ="s_psit23" value = "">
                     <Br>
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>                                     
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 애인이 너가 죽으라면 죽을 수도 있다고 할 때 당신의 대답은??       </h2> </th>                     
                   </tr>
                   <td>
                      감동이야.... 그치만 절대 죽지마
                      <input type = "radio" name ="s_psit24" value = "ENFJ/ENFP/ESFJ/ESFP/04">
                     <Br>
                      그래???보여줘봐
                      <input type = "radio" name ="s_psit24" value = "ENTJ/ENTP/ESTJ/ESTP/05">
                     <Br>
                      너가 죽으면 난 살아갈 이유가 없는걸...
                      <input type = "radio" name ="s_psit24" value = "INFJ/INFP/ISFJ/ISFP/05">
                     <Br>
                      오~~~~~`
                     <input type = "radio" name ="s_psit24" value = "INTJ/INTP/ISTJ/ISTP/04">
                     <Br>

                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>                                     
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신이 말할 때 "생각해 볼게"라는 의미는??      </h2> </th>                     
                   </tr>
                   <td>
                      거절 혹은 내가 알아서 한다는 의미
                     <input type = "radio" name ="s_psit25" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/04">
                     <Br>
                     이말이 진짜 맞는 말인지 곰곰히 생각해본다는 의미
                     <input type = "radio" name ="s_psit25" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/04">
                     <Br>
                     
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>                                     
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> 당신이 빵을 보관할 때 당신의 스타일은??    </h2> </th>                     
                   </tr>
                   <td>
                      빵 보관함을 이용
                      <input type = "radio" name ="s_psit26" value = "ISTJ/05">
                     <Br>
                      밀봉클립을 이용
                      <input type = "radio" name ="s_psit26" value = "ENFJ/INFJ/05">
                     <Br>
                     병뚜껑을 이용
                     <input type = "radio" name ="s_psit26" value = "ENFP/05">
                     <Br>
                      봉지집게 재사용
                      <input type = "radio" name ="s_psit26" value = "ESFJ/ESTJ/04">
                     <Br>
                      고무줄로 묶음
                      <input type = "radio" name ="s_psit26" value = "ISFJ/ISFP/04">
                     <Br>
                      봉지를 꼬아서 접음
                      <input type = "radio" name ="s_psit26" value = "ESFP/ESTP/05">
                     <Br>
                      매듭지음
                      <input type = "radio" name ="s_psit26" value = "ENTJ/INTJ/05">
                     <Br>
                      봉지를 그냥 접음
                      <input type = "radio" name ="s_psit26" value = "INFP/INTP/05">
                     <Br>
                      봉지를 열어서 둠                      
                     <input type = "radio" name ="s_psit26" value = "ENTP/ISTP/05">
                     <Br>

                     
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>                                     
                    </td>
                    
                    
                    
                    
                    
                    
                    <tr><Td><input type = "submit" name = "sub"></tr></td>
                     
                       
                   
   </table></form>

</body>


</body>
</html>