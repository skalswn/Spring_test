package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
@WebServlet("/InsertExplain")
public class InsertExplain extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String lang = request.getParameter("lang");
		String seq = request.getParameter("seq");
		String coding_explain_subject = request.getParameter("coding_explain_subject");
		String coding_explain_content = request.getParameter("coding_explain_content");
		String id = request.getParameter("id");
		
//		HttpSession session = request.getSession();
//		MemberVO vo = (MemberVO)session.getAttribute("vo");
//		String id = vo.getM_id();
		
		
		DAO dao =new DAO();
//		°³³ä ³Ö±â
		int cnt = dao.insertExplain(lang,coding_explain_subject, coding_explain_content, id,seq);
		
			if(cnt>0) {
				response.sendRedirect("insertExplain.jsp");
				System.out.println("°³³ä³Ö±â ¼º°ø");
			}
			else {
				response.sendRedirect("Main.jsp");
				System.out.println("°³³ä³Ö±â ½ÇÆÐ ¤Ð");
			}

		}

	}
