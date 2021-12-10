<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.s_CommunityVO"%>
<%@page import="Model.DAO"%> 
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
												<li><a href="c_Study_Community.jsp">스터디 커뮤니티</a></li>
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
s_CommunityVO scvo = null;
if(session.getAttribute("cvo") !=null){
	scvo = (s_CommunityVO)session.getAttribute("scvo");
}
DAO dao = new DAO();
ArrayList<s_CommunityVO> arr = dao.s_Community();
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
					<%for(int i=0;i<arr.size();i++){%>
					<%String result = arr.get(i).getREG_DATE().substring(5,11);%>
					<tr class="main_tr">
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i).getSTUDY_SEQ()%>"><%=arr.get(i).getSTUDY_SEQ()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i).getSTUDY_SEQ()%>"><%=arr.get(i).getSTUDY_SUBJECT()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i).getSTUDY_SEQ()%>"><%=arr.get(i).getSTUDY_LANG()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i).getSTUDY_SEQ()%>"><%=arr.get(i).getM_ID()%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i).getSTUDY_SEQ()%>"><%=result%></a></td>
						<td class="main_td"><a class="main_a" href="s_c_Communityview?num=<%=arr.get(i).getSTUDY_SEQ()%>"><%=arr.get(i).getSTUDY_CNT()%></a></td>
					</tr> 	
					<% }%>
				</table>
				<!--페이지 넘기기  -->
		<%-- <%if (pageNumber != 1) {%>
			<a href="c_Community.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arrow-left">이전</a>
		<%} if (bbsDAO.nextPage(pageNumber + 1)) {%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arrow-left">다음</a>
		<%}%> --%>
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