package Controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;




import Model.DAO;
@WebServlet("/c_Communitywrite")
public class c_Communitywrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		File file = new File("images");	//상대경로(class파일과 동일한 폴더)
//		if(file.exists()) {
//			System.out.println("getPath : "+file.getPath());//상대경로
//			System.out.println("getAbsolutePath : "+file.getAbsolutePath());//절대경로
//		}else {
//			file.mkdir();
//			System.out.println("해당 파일 없음.");
//		}
		HttpSession session = request.getSession();
		String userID = "skalswn";
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		String savePath = request.getServletContext().getRealPath("images");
		int maxSize =5*1024*1024;
		String encoding = "euc-kr";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy());
		String title = multi.getParameter("title");
		String writer= userID;
		String content = multi.getParameter("content");
		String filename1 = multi.getFilesystemName("file1");
		String filename2 = multi.getFilesystemName("file2");
		String filename3 = multi.getFilesystemName("file3");
		DAO dao=new DAO();
		int lognum=dao.community_write(title,writer,content,filename1, filename2, filename3);
		if (lognum>0) {
			System.out.println("게시글 작성 성공!");
			response.sendRedirect("c_Community.jsp");
		}else {
			System.out.println("게시글 작성 실패!");
			response.sendRedirect("hi.jsp");
		}
		
	}

}
