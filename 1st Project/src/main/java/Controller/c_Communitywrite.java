package Controller;

import java.io.File;
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




import Model.DAO;
import Model.MemberVO;
@WebServlet("/c_Communitywrite")
public class c_Communitywrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		File file = new File("C:/Users/smhrd/git/PSIT/1st Project/src/main/webapp/images");
		if(file.exists()) {
			System.out.println("해당 파일 확인");
		}else { 
			file.mkdir(); System.out.println("해당 파일 없음."); 
		}
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		String userID =vo.getM_id();
		String savePath = "C:/Users/smhrd/git/PSIT/1st Project/src/main/webapp/images";
		int maxSize =5*1024*1024;
		String encoding = "euc-kr";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy());
		String title = multi.getParameter("title");
		String writer= userID;
		String content = multi.getParameter("content");
		String filename1 = "none.png";
		try {
			filename1 = URLEncoder.encode(multi.getFilesystemName("file1"), "euc-kr");
		} catch (Exception e) {
		}
		String filename2 = "none.png";
		try {
			filename2 = URLEncoder.encode(multi.getFilesystemName("file2"), "euc-kr");
		} catch (Exception e) {
		}
		String filename3 = "none.png";
		try {
			filename3 = URLEncoder.encode(multi.getFilesystemName("file3"), "euc-kr");
		} catch (Exception e) {
		}
		System.out.println(filename1);
		DAO dao=new DAO();
		int lognum=dao.community_write(title,writer,content,filename1, filename2, filename3);
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
		}
		else if (lognum>0) {
			System.out.println("게시글 작성 성공!");
			response.sendRedirect("c_Communityview?num="+lognum);
		}else {
			System.out.println("게시글 작성 실패!");
			response.sendRedirect("c_Community.jsp");
		}
		
	}

}
