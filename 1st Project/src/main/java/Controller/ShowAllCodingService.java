package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CheckVO;
import Model.CodingVO;
import Model.DAO;
import Model.MemberVO;

@WebServlet("/ShowAllCodingService")
public class ShowAllCodingService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String lang =null;
		request.setCharacterEncoding("euc-kr");
		if(request.getAttribute("lang") != null) {
			lang =(String)request.getAttribute("lang");
			System.out.println(lang);
		}else if (request.getParameter("lang") !=null){
			lang = request.getParameter("lang");
			System.out.println(lang);
		}else {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writers = response.getWriter(); 
			writers.println("<script>alert('언어를 선택하여 주십시오'); history.back();</script>");
			writers.close();
		}
		DAO dao = new DAO();
		ArrayList<CodingVO> codingarray = new ArrayList<>();
		codingarray = dao.ShowAllCoding(lang);
		System.out.println(lang);
		RequestDispatcher rd = request.getRequestDispatcher("StudyStepPage.jsp"); 
		request.setAttribute("codingarray", codingarray);
		rd.forward(request, response); 
	}

}
