package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CodingExplainVO;
import Model.DAO;

@WebServlet("/StudyExplainService")
public class StudyExplainService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int seq = Integer.parseInt(request.getParameter("seq"));
		DAO dao = new DAO();
		
		CodingExplainVO codingexplainvo = dao.CodingExplain(seq);
		
		if(codingexplainvo != null) {
			System.out.println("설명출력완료");
			RequestDispatcher rd = request.getRequestDispatcher("StudyExplainPage.jsp");
			//request.setAttribute("codingexplainvo", codingexplainvo);
			request.setAttribute("seq", seq);
			rd.forward(request, response);
		}
		else {
			System.out.println("설명출력실패");
		}
	}

}
