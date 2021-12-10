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
	
//		HttpSession session = request.getSession();
//		MemberVO vo = (MemberVO)session.getAttribute("vo");
//		String id = vo.getM_id();
		String id = "doflsld";
//		String lang = request.getParameter("lang");
		String lang = "ÆÄÀÌ½ã";
		DAO dao = new DAO();
				
//		ArrayList<CodingVO> codingarray = new ArrayList<>();
				
		CodingVO vo = dao.Showcoidng_q(id, lang);
		
//		RequestDispatcher rd = request.getRequestDispatcher("CoingStudy.jsp");
        
//        request.setAttribute("codingvo", vo);
        
//        rd.forward(request, response);
				
		}

}
