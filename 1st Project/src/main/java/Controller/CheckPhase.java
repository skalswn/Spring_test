package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.CheckVO;
import Model.CodingVO;
import Model.DAO;
import Model.MemberVO;

@WebServlet("/CheckPhase")
public class CheckPhase extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao = new DAO();
		request.setCharacterEncoding("euc-kr");
//		//파라미터 seq수집
//		int seq = Integer.parseInt(request.getParameter("seq"));
		int seq = (int) request.getAttribute("seq");
		//세션에서 id값 가져오기
		HttpSession	session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		String m_id = vo.getM_id();
		CodingVO codingvo = dao.ShowStudyCoding(seq);
		String lang = codingvo.getCoding_lang();
		System.out.println(lang);
		int cnt = dao.CheckPhase(seq, m_id, lang);
		
		if(cnt>0) {
			System.out.println("단계저장성공");
//			response.sendRedirect("StudyPage.jsp");
//			System.out.println("학습페이지로이동성공");
		}
		else {
			System.out.println("단계저장실패");
		}
//		===================================================
		CheckVO chvo = dao.getPhase(seq, m_id, lang);

		if(chvo!=null) {
			session.setAttribute("chvo", chvo);
			System.out.println("chvo보내기성공!");
			request.setAttribute("chvo", chvo);
			RequestDispatcher rd = request.getRequestDispatcher("ShowAllCodingService");
			rd.forward(request, response);
		}
		else {
			System.out.println("chvo보내기실패");
		}
	}
}
