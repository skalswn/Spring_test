package Controller;

import java.io.IOException;
import java.io.PrintWriter;
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
import Model.MemberVO;
@WebServlet("/c_Comment")
public class c_Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		String userID =vo.getM_id();
		CommunityVO cvo = (CommunityVO)session.getAttribute("cvo");
		request.setCharacterEncoding("EUC-KR");
		DAO dao=new DAO();
		int c_seq=Integer.parseInt(request.getParameter("num"));
		String cm_content= request.getParameter("C_comment");
		System.out.println(cm_content);
		String writer=userID;
		int lognum = dao.cm_write(c_seq,cm_content,writer);
		if(lognum==-1) {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writers = response.getWriter(); 
			writers.println("<script>alert('공지사항은 관리자만 작성할 수 있습니다.'); history.back();</script>");
			writers.close();
		}else if(lognum==-2) {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writers = response.getWriter(); 
			writers.println("<script>alert('게시판에서 금칙어 사용이 확인되었습니다.'); history.back();</script>");
			writers.close();
		}else if (lognum>0) {
			System.out.println("댓글 작성 성공!");
			response.sendRedirect("c_Communityview.jsp?cvo=cvo");
		}else {
			System.out.println("댓글 작성 실패!");
			response.sendRedirect("c_Community.jsp");
		}
			
			
		}
	}
