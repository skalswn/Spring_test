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

import Model.DAO;
import Model.MemberVO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("euc-kr");
		
		String m_id = request.getParameter("id");
		String m_pw = request.getParameter("pw");
		String m_email = request.getParameter("email");
		String m_name = request.getParameter("name");
		String m_nick = request.getParameter("nick");
		String m_gender = request.getParameter("gender");
		String m_birthdate = request.getParameter("birthdate");
		String m_memo = request.getParameter("memo");
		String m_joindate = request.getParameter("joindate");
		String admin_yn = request.getParameter("admin_yn");
		
		DAO dao = new DAO();
		int cnt = dao.Join(m_id, m_pw, m_email, m_name, m_nick, m_gender, m_birthdate, m_memo, m_joindate, admin_yn);

		try {
		if (cnt > 0) {
			System.out.println("회원가입 성공");

			MemberVO vo;
				vo = new MemberVO(m_id, m_pw, m_email, m_name, m_nick, m_gender, m_birthdate, m_memo, m_joindate, admin_yn);

			if (vo != null) {
				request.setAttribute("vo", vo);
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			}
		} else {
			System.out.println("회원가입 실패");
		}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

}
