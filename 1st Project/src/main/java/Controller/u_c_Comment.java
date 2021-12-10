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
@WebServlet("/u_c_Comment")
public class u_c_Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userID = "doflsld";
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		u_CommunityVO ucvo = (u_CommunityVO)session.getAttribute("ucvo");
		request.setCharacterEncoding("euc-kr");
		DAO dao=new DAO();
		int c_seq=Integer.parseInt(request.getParameter("num"));
		String cm_content=request.getParameter("C_comment");
		String writer=userID;
		int lognum = dao.u_cm_write(c_seq,cm_content,writer);
		if (lognum>0) {
			System.out.println("댓글 작성 성공!");
			response.sendRedirect("c_Used_Communityview.jsp?ucvo=ucvo");
		}else {
			System.out.println("댓글 작성 실패!");
			response.sendRedirect("c_Used_Community.jsp");
		}
			
			
		}
	}
