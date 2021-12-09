package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.MemberVO;

@WebServlet("/ShowStudy")
public class ShowCoding extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//1.DAO°´Ã¼ »ý¼º
				DAO dao = new DAO();
				
				ArrayList<MemberVO> arraylist = new ArrayList<>();
				
				arraylist = dao.ShowCoding();
				
				RequestDispatcher rd = request.getRequestDispatcher("select.jsp");
				request.setAttribute("arraylist", arraylist);
				rd.forward(request, response);
				
				
			}
	
	
	}

}
