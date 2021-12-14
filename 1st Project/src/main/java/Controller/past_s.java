package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
@WebServlet("/past_s")
public class past_s extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num=Integer.parseInt(request.getParameter("num"));
		DAO dao=new DAO();
		int lognum = dao.s_past_page(num);
		if(lognum>0){
            response.sendRedirect("s_c_Communityview?num="+lognum);
            System.out.println("접근 성공");
         }else{
            response.sendRedirect("c_Study_Communityview.jsp");
            System.out.println("접근 실패");
         } 	  
     }    
}