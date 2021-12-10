package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CodingVO;
import Model.DAO;
import Model.MemberVO;

@WebServlet("/ShowStudy")
public class ShowCoding extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		CodingVO vo = (CodingVO)session.getAttribute("vo");
		String id = vo.getM_id();
		String lang = request.getParameter("lang");
		
		DAO dao = new DAO();
				
		ArrayList<CodingVO> codingarray = new ArrayList<>();
				
		codingarray = dao.ShowCoding(id, lang);
				
		RequestDispatcher rd = request.getRequestDispatcher("CdoingStudy.jsp");
		request.setAttribute("codingarray", codingarray);
		rd.forward(request, response);
				
				
			}

}
