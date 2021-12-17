package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CommunityVO;
import Model.DAO;

@WebServlet("/search_community")
public class search_community extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	DAO dao = new DAO();
	ArrayList<CommunityVO> cmvoarr = new ArrayList<CommunityVO>();
	// 검색 내용
	request.setCharacterEncoding("euc-kr");
	
	String text = request.getParameter("text");
	String serchfield = request.getParameter("serchfield");
	
	// 제목 내용 작성자 옵션
//	String str = request.getParameter("title");
//	if(str.equals("title")) {
//		str = request.getParameter("title");
//	}else if(str.equals("content")) {
//		str = request.getParameter("content");
//	}else {
//		str = request.getParameter("writer");
//	}
	
//	CommunityVO cmvo = dao.communitySerch(str, text);
//	
//	ArrayList<CommunityVO> cmvoarr = null;
	
//	cmvoarr.add(cmvo);
	
	
//	if(cmvoarr!=null) {
//		System.out.println("cmvoarr성공! 내용" + cmvoarr);
//		
//		RequestDispatcher rd =request.getRequestDispatcher("c_CommunitySerch.jsp");
//		request.setAttribute("cmvoarr", cmvoarr);
//		rd.forward(request, response);
//		
//	}
//	else {
//		System.out.println("cmvoarr없음! 실패");
//	}
//	cmvoarr = dao.communitySerch(text);
	
	cmvoarr = dao.communitySerch(serchfield, text); 

	System.out.println("cmvoarr저장성공! 내용" + toString(cmvoarr));
	
	RequestDispatcher rd =request.getRequestDispatcher("c_Community.jsp");
	request.setAttribute("cmvoarr", cmvoarr);
	rd.forward(request, response);



	
	
	}

	private String toString(ArrayList<CommunityVO> cmvoarr) {
		// TODO Auto-generated method stub
		return null;
	}
}
