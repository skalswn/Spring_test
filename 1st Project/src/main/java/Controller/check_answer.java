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
import Model.CommunityVO;
import Model.DAO;
import Model.MemberVO;
@WebServlet("/check_answer")
public class check_answer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		String answer = request.getParameter("answer");
		int seq = Integer.parseInt(request.getParameter("num"));
		String lang = request.getParameter("lang");
		DAO dao = new DAO();
		String check = dao.check_answer(answer,seq);
		ArrayList<CodingVO> codingarray = dao.ShowAllCoding(lang);
		if (check.equals("wright") ) {
			System.out.println("����");
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writers = response.getWriter(); 
			writers.println("<script>alert('�����Դϴ�.');</script>");
			writers.println("<script>location.href='CheckPhase.jsp?seq="+seq+"';</script>");
			writers.close();
			RequestDispatcher rd =request.getRequestDispatcher("CheckPhase");
			request.setAttribute("seq", seq); 
			rd.forward(request, response);
		}else {
			System.out.println("����");
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writers = response.getWriter(); 
			writers.println("<script>alert('Ʋ�Ƚ��ϴ�.');</script>");
			writers.println("<script>location.href='StudyExplainPage.jsp?seq="+seq+"';</script>");
			writers.close();
		}

		
		
//		HttpSession session = request.getSession();
//		MemberVO vo = (MemberVO)session.getAttribute("vo");
//		String m_id = vo.getM_id();
//		
//		CheckVO chvo = dao.getPhase(seq, m_id, lang);
//		
//		if (check.equals("wright") && (chvo!=null)) {
//			System.out.println("chvo�����⼺��");
//			request.setAttribute("chvo", chvo);
//			System.out.println("chvo"+chvo);
//			System.out.println("����"); 
//			RequestDispatcher rd =request.getRequestDispatcher("ShowAllCodingService");
//			request.setAttribute("lang", lang);
//			System.out.println("lang"+lang);
//			rd.forward(request, response);
//		}else {
//			System.out.println("����");
//			response.sendRedirect("StudyExplainPage.jsp?seq="+seq);
//		}
//		=============================================================
//		HttpSession	session = request.getSession();
//		MemberVO vo = (MemberVO)session.getAttribute("vo");
//		String m_id = vo.getM_id();
//		
//		CheckVO chvo = dao.getPhase(seq, m_id, lang);
//		
//		if(chvo!=null) {
//			System.out.println("chvo�����⼺��!");
//			request.setAttribute("chvo", chvo);
////			RequestDispatcher rd = request.getRequestDispatcher("ShowAllCodingService");
////			rd.forward(request, response);
//		}
//		else {
//			System.out.println("chvo���������");
//		}
//	}
	}
}
