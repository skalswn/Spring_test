package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.MemberVO;
import Model.PsitVO;


@WebServlet("/c_Psit")
public class c_Psit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sample = request.getParameter("sample");
		System.out.println(sample);
		//1.파라미터 수집
		String PSIT_SEQ=request.getParameter("pSIT_SEQ");
		String PSIT_TYPE=request.getParameter("pSIT_TYPE");
		String PSIT_JOB=request.getParameter("pSIT_JOB");
		String REG_DATA=request.getParameter("rEG_DATA");
		String M_ID=request.getParameter("m_ID");
		response.sendRedirect("Main.jsp");
		////////////////////////////
		/*
		 * DAO dao = new DAO();
		 * 
		 * String m_id = request.getParameter("id"); String m_pw =
		 * request.getParameter("pw"); String m_email = request.getParameter("email");
		 * String m_name = request.getParameter("name"); String m_nick =
		 * request.getParameter("nick"); String m_gender =
		 * request.getParameter("gender"); String m_memo = request.getParameter("memo");
		 * 
		 * try { int cnt = dao.Join(m_id, m_pw, m_email, m_name, m_nick, m_gender,
		 * m_memo); if (cnt > 0) { System.out.println("회원가입 성공");
		 * 
		 * MemberVO vo = new MemberVO(m_id, m_pw, m_email, m_name, m_nick, m_gender,
		 * m_memo);
		 * 
		 * RequestDispatcher rd = request.getRequestDispatcher("Main.jsp");
		 * 
		 * request.setAttribute("vo", vo);
		 * 
		 * rd.forward(request, response); } else { System.out.println("회원가입 실패"); } }
		 * catch (Exception e) { e.printStackTrace(); }
		 */
		
	}

}
	


