package Controller;

import java.io.IOException;
import java.text.ParseException;

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
		String m_memo = request.getParameter("memo");
		
		DAO dao = new DAO();
		
		int cnt = 0;
		
		
		try {
			cnt = dao.Join(m_id, m_pw, m_email, m_name, m_nick, m_gender, m_memo);
<<<<<<< HEAD
		} catch (ParseException e) {
			e.printStackTrace();
		}
=======
		 
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-7/Greait.git
		
		if (cnt > 0) {
			System.out.println("회원가입 성공");
			
			MemberVO vo = new MemberVO(m_id, m_pw, m_email, m_name, m_nick, m_gender, m_memo);
			
			 RequestDispatcher rd = request.getRequestDispatcher("Main.jsp");
	         
	         request.setAttribute("vo", vo);
	         
	         rd.forward(request, response);
			
			
		//	MemberVO vo = null;
			
//			if (vo != null) {
//				request.setAttribute("vo", vo);
//				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
//				rd.forward(request, response);
//			}
		} else {
			System.out.println("회원가입 실패");
		}
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	
	}

}
