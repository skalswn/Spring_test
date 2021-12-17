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

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		DAO dao = new DAO();
		MemberVO vo = dao.Login(id, pw);
		
	     


	출처: https://dololak.tistory.com/706 [코끼리를 냉장고에 넣는 방법]
		if (vo != null) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			session.setMaxInactiveInterval(60*60*24);
			response.sendRedirect("Main.jsp");
		} else {
			System.out.println("로그인 실패");
			response.sendRedirect("Login.jsp");
		}
		
	
	}

}
