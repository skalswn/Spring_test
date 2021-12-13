<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.s_CommunityVO"%>
<%@page import="Model.DAO"%> 
<%@page import="Model.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<title>IT_job - Grea:it</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>
	table{
		width: 1000px;
		border: 1px solid #444444;
	}
	tr{
		border: 1px solid #444444;
	}
	#head_tr{
		background-color: black;
		text-align: center;
		color: white;
	}
	.main_td{
		text-align:center;
		color: black;
	}
	.main_a{
		color: black;
	}

</style>		
</head>
<body>

									<!-- Sidebar -->
										<section>
											<h3>다른 커뮤니티로 이동하기</h3>
											<ul class="links">
												<li><a href="c_Community.jsp">자유 게시판</a></li>
												<li><a href="c_Used_Community.jsp">중고거래 커뮤니티</a></li>
											</ul>
										</section>

								</div>
							</div>
							<div class="col-8  col-12-narrower imp-narrower">
								<div id="content">

									<!-- Content -->

										<article>
<%	
MemberVO vo =null;
String userID= null;
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID = vo.getM_id();
	System.out.print(userID);
}else{%>
Response.Write("<script>alert('로그인 후 이용하실 수 있는 서비스 입니다.');</script>");
Response.Write("<script>location.href='Main.jsp';</script>");
<%}%>																			
<%
s_CommunityVO scvo = null;
if(session.getAttribute("cvo") !=null){
	scvo = (s_CommunityVO)session.getAttribute("scvo");
}
DAO dao = new DAO();
ArrayList<s_CommunityVO> arr = dao.s_Community();
%>
<%!
	public Integer toInt(String x){
		int a = 0;
		try{
			a = Integer.parseInt(x);
		}catch(Exception e){}
		return a;
	}
%>	
<%
	int pageno = toInt(request.getParameter("pageno"));
	if(pageno<1){
		pageno = 1;
	}
	int total_record = arr.size();
	int page_per_record_cnt = 5;  
	int group_per_page_cnt =5;     											
	int record_end_no = pageno*page_per_record_cnt;				
	int record_start_no = record_end_no-(page_per_record_cnt-1);
	if(record_end_no>total_record){
		record_end_no = total_record;
	}								   									   
	int total_page = total_record / page_per_record_cnt + (total_record % page_per_record_cnt>0 ? 1 : 0);
	if(pageno>total_page){
		pageno = total_page;
	}
	int group_no = pageno/group_per_page_cnt+(pageno%group_per_page_cnt>0 ? 1:0);			  	
	int page_eno = group_no*group_per_page_cnt;		
	int page_sno = page_eno-(group_per_page_cnt-1);		
	if(page_eno>total_page){	
		page_eno=total_page;
	}
	
	int prev_pageno = page_sno-group_per_page_cnt;
	int next_pageno = page_sno+group_per_page_cnt;
	if(prev_pageno<1){	
		prev_pageno=1;

	}
	if(next_pageno>total_page){	
		next_pageno=total_page/group_per_page_cnt*group_per_page_cnt+1;
	
	}

%>
				
			<div id="board">
			<h1>스터디게시판</h1>
				<table>
					<tr id="head_tr" class="cm_tr">
						<td class="cm_td">번호</td>
						<td class="cm_td">제목</td>
						<td class="cm_td">분류</td>
						<td class="cm_td">작성자</td>
						<td class="cm_td">시간</td>
						<td class="cm_td">조회수</td>
					</tr>
					<%if(arr.size()>=(pageno)*5){%>
					<%for(int i=0;i<5;i++){%>	
					<%String result = arr.get(i+(pageno-1)*5).getREG_DATE().substring(5,11);%>		
					<tr class="main_tr">
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getSTUDY_SUBJECT()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getSTUDY_LANG()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getM_ID()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=result%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getSTUDY_CNT()%></a></td>
					</tr>
					<%}%> 	
					<% }else if(arr.size()<(pageno)*5) {%>
							<%for(int i=0;i<(pageno)*5-arr.size();i++){%>
							<%String result = arr.get(i+(pageno-1)*5).getREG_DATE().substring(5,11);%>		
						<tr class="main_tr">
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getSTUDY_SUBJECT()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getSTUDY_LANG()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getM_ID()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=result%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getSTUDY_SEQ()%>"><%=arr.get(i+(pageno-1)*5).getSTUDY_CNT()%></a></td>
						</tr> 	
							<%}%>		
						<%}else{%>
							
						<%}%>
				</table>
						<a href="c_Study_Community.jsp?pageno=<%=prev_pageno%>">[이전]</a>
						<%for (int i = page_sno; i <= page_eno; i++) {%>
							<a href="c_Study_Community.jsp?pageno=<%=i%>"> 
						<%if (pageno == i) {%>
							<span id="cho"><%=i%></span> 
						<%} else {%> 
							<%=i%> 
						<%}%>
						</a>
						<%if (i < page_eno) {%>,<%}	%><%}%>
						<a href="c_Study_Community.jsp?pageno=<%=next_pageno%>" >[다음]</a>
				<form action="search_s_community">
				<select><option value="제목">제목</option><option value="내용">내용</option><option value="작성자">작성자</option></select>
				<input type="text"><input class="search_button" type="button" value="검색하기">
				<a href="c_Study_Communitywrite.jsp">작성하러가기</a>
				</form>
			</div>
			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!-- [if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif] -->
			<script src="assets/js/main.js"></script>
										</article>

								</div>
							</div>
						</div>
					</div>
				</section>
		</div>
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>