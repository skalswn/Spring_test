package Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO;
import Model.MemberVO;

@WebServlet("/InfoService")
public class InfoService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		String m_id = vo.getM_id();
		String m_pw = request.getParameter("pw");
		String m_email = request.getParameter("email");
		String m_name = request.getParameter("name");
		String m_nick = request.getParameter("nick");
		String m_gender = request.getParameter("gender");
		String m_memo = request.getParameter("memo");
		
		DAO dao = new DAO();
		int cnt = dao.Update(m_id, m_pw, m_email, m_name, m_nick, m_gender, m_memo);

		System.out.println(m_memo);
		if (cnt > 0) {
			System.out.println("수정 성공");
			session.setAttribute("vo",new MemberVO(m_id, m_pw, m_email, m_name, m_nick, m_gender,m_memo));
			response.sendRedirect("UpdateSuccess.jsp");
		} else {
			 System.out.println("수정 실패");
			 response.sendRedirect("Main.jsp");
		}
		 
				
	}

}
