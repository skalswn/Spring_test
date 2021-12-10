package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO;
import Model.u_CommunityVO;
@WebServlet("/u_c_Communityview")
public class u_c_Communityview extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("euc-kr");
		int num =  Integer.parseInt(request.getParameter("num"));
		DAO dao = new DAO();
		u_CommunityVO ucvo = dao.u_communityview(num);
		if(ucvo != null){
            session.setAttribute("ucvo", ucvo);
            response.sendRedirect("c_Used_Communityview.jsp");
            System.out.println("접근 성공");
         }else{
            response.sendRedirect("c_Used_Community.jsp");
            System.out.println("접근 실패");
         } 	  
     }    
  
}


