package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;

@WebServlet("/DeleteCodingService")
public class DeleteCodingService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		DAO dao = new DAO();
		
		int cnt = dao.deleteCoding(seq);
		
		if(cnt>0) {
			System.out.println("문제삭제성공");
			response.sendRedirect("StudyPage.jsp");
		}
		else {
			System.out.println("문제삭제실패");
		}
		
		
		
		
	}

}
