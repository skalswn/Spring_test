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

@WebServlet("/s_c_Communitychange")
public class s_c_Communitychange extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		File file = new File("C:/Users/smhrd/git/PSIT/1st Project/src/main/webapp/images");
		if(file.exists()) {
			System.out.println("해당 파일 확인");
		}else { 
			file.mkdir(); System.out.println("해당 파일 없음."); 
		}
		HttpSession session = request.getSession();
		String savePath = "C:/Users/smhrd/git/PSIT/1st Project/src/main/webapp/images";
		int maxSize =5*1024*1024;
		String encoding = "euc-kr";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy());
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String lang = multi.getParameter("language");
		String filename1 = "none.png";
		
		int num = Integer.parseInt(multi.getParameter("num"));
		try {
			filename1 = URLEncoder.encode(multi.getFilesystemName("file1"), "euc-kr");
		} catch (Exception e) {
		}
		DAO dao=new DAO();
		int lognum=dao.s_community_change(title,content,lang,filename1,num);
		if (lognum>0) {
			System.out.println("게시글 수정 성공!");
			response.sendRedirect("s_c_Communityview?num="+num);
		}else {
			System.out.println("게시글 수정 실패!");
			//response.sendRedirect("c_Community.jsp");
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('게시판 수정이 정상적으로 이루어지지 않았습니다.'); history.back();</script>");
			writer.close();
		}
		
	}

}