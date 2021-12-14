package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CheckVO;
import Model.CodingExplainVO;
import Model.CodingVO;
import Model.DAO;
import Model.MemberVO;

@WebServlet("/StudyExplainService")
public class StudyExplainService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int seq = Integer.parseInt(request.getParameter("seq"));
		DAO dao = new DAO();
		
		CodingExplainVO codingexplainvo = dao.CodingExplain(seq);
		
		HttpSession	session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		String m_id = vo.getM_id();
		
		CodingVO codingvo = dao.ShowStudyCoding(seq);
		String lang = codingvo.getCoding_lang();
		
		int cnt = dao.CheckPhase(seq, m_id, lang);
		
		
		
		if(codingexplainvo != null) {
			System.out.println("설명출력완료");
			RequestDispatcher rd = request.getRequestDispatcher("StudyExplainPage.jsp");
			request.setAttribute("seq", seq);
			rd.forward(request, response);
		}
		else {
			System.out.println("설명출력실패");
		}
	}

}
