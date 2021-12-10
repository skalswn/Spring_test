package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO;
import Model.MemberVO;

@WebServlet("/InsertCodingService")
public class InsertCodingService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("euc-kr");
	
	String lang = request.getParameter("lang");
	String coding_q = request.getParameter("coding_q");
	String coding_a = request.getParameter("coding_a");

	String id = request.getParameter("id");
	
//	HttpSession session = request.getSession();
//	MemberVO vo = (MemberVO)session.getAttribute("vo");
//	String id = vo.getM_id();
	
	
	DAO dao =new DAO();
	int cnt = dao.insertCoding(lang, coding_q, coding_a, id);
	
		if(cnt>0) {
			System.out.println("문제넣기 성공");
		}
		else {
			System.out.println("문제넣기 실패");
		}
	
	}

}
