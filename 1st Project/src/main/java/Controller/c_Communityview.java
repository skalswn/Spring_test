package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.CommunityVO;
import Model.CommunityVO;
import Model.DAO;
@WebServlet("/c_Communityview")
public class c_Communityview extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("euc-kr");
		int num =  Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
		DAO dao = new DAO();
		CommunityVO vo = dao.communityview(num);
		if(vo != null){
            session.setAttribute("vo", vo);
            response.sendRedirect("c_Communityview.jsp");
            System.out.println("접근 성공");
         }else{
            response.sendRedirect("hi.jsp");
            System.out.println("접근 실패");
         } 	  
     }    
  
}


