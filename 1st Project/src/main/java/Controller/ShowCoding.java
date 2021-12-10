package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CodingVO;
import Model.DAO;
import Model.MemberVO;

@WebServlet("/ShowCoding")
public class ShowCoding extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		언어선택 시 모든 문제 나오게 하기
		
		request.setCharacterEncoding("euc-kr");
		String lang = request.getParameter("lang");
//		String lang = "파이썬";
		DAO dao = new DAO();
				
		ArrayList codingarray = dao.ShowAllCoding(lang);
		
		if(codingarray!=null) {
			System.out.println("문제나오기성공");
			
			RequestDispatcher rd = request.getRequestDispatcher("CodingStudy.jsp");
			
			request.setAttribute("codingarray", codingarray);
			
			rd.forward(request, response);
		}
		else {
			System.out.println("문제나오기실패");
		}
				
		}

}
