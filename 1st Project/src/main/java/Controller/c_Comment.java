package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.CommunityVO;
import Model.Community_commentVO;
import Model.DAO;
@WebServlet("/C_comment")
public class c_Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userID = "doflsld";
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		CommunityVO cvo = (CommunityVO)session.getAttribute("cvo");
		request.setCharacterEncoding("euc-kr");
		DAO dao=new DAO();
		int c_seq=Integer.parseInt(request.getParameter("num"));
		String cm_content=request.getParameter("cm_content");
		String writer=userID;
		int lognum = dao.cm_write(c_seq,cm_content,writer);
		if (lognum>0) {
			System.out.println("댓글 작성 성공!");
			response.sendRedirect("c_Communityview.jsp?cvo=cvo");
		}else {
			System.out.println("댓글 작성 실패!");
			response.sendRedirect("c_Comminity.jsp");
		}
			
			
		}
	}
