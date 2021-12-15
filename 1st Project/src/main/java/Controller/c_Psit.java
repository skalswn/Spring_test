package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.DAO;
import Model.MemberVO;
import Model.PsitVO;


@WebServlet("/c_Psit")
public class c_Psit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sample = request.getParameter("sample");
		String job_no="";
	if(sample.contains("ENFJ")){
		 job_no=job_no+"1";
	}if(sample.contains("ENFP")){
		 job_no=job_no+"2";
	}if(sample.contains("ENTJ")){
		job_no=job_no+"3";
	}if(sample.contains("ENTP")){
		job_no=job_no+"4"; 
	}if(sample.contains("ESFJ")){
		job_no=job_no+"5";
	}if(sample.contains("ESFP")){
		job_no=job_no+"5"; 
	}if(sample.contains("ESTJ")){
		job_no=job_no+"백앤드"; 
	}if(sample.contains("ENTP")){
		job_no=job_no+"백앤드"; 
	}if(sample.contains("INFJ")){
		job_no=job_no+"7"; 
	}if(sample.contains("INFP")){
		job_no=job_no+"7";
	}if(sample.contains("INTJ")){
		job_no=job_no+"1";
	 }if(sample.contains("INTP")){
		job_no=job_no+"프론트";
	}if(sample.contains("ISFJ")){
		job_no=job_no+"백앤드"; 
	}if(sample.contains("ISFP")){
		job_no=job_no+"빅데이터 엔지니어"; 
	}if(sample.contains("ISTJ")){
		job_no=job_no+"1"; 
	}if(sample.contains("ISTP")){
		job_no=job_no+"1"; 
	 }
		MemberVO vo=(MemberVO)session.getAttribute("vo");
		String M_ID=vo.getM_id();
		System.out.println(job_no);
		DAO dao = new DAO();
		int psitnum = dao.psit(sample,job_no,M_ID);
		PsitVO PS = dao.PSTORE(M_ID);
	if (psitnum > 0) { 
		System.out.println("저장 성공");
		if(job_no.contains("백앤드")) {
			
		
		response.sendRedirect("http://localhost:8081/1st_Project/Road_map.jsp?num=1");
		}
		}else { 
		System.out.println("저장 실패");
	 }
	}

}
	


