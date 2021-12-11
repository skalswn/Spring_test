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

import Model.DAO;
import Model.MemberVO;
@WebServlet("/SelectAllService")
public class SelectAllService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		DAO dao = new DAO();
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		list = dao.SelectAll();
		
		if (vo != null) {
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("ManageUser.jsp");
			rd.forward(request, response);
		}
	}

}
