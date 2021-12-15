package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/P_PSit")
public class P_PSit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	
		request.setCharacterEncoding("euc-kr");
	
//	if(request.getParameter("s_psit1")==null) {
//		response.setContentType("text/html; charset=UTF-8"); 
//		PrintWriter writer = response.getWriter(); 
//		writer.println("<script>alert('1번 문항을 체크하지 않았습니다.'); history.back();</script>");
//		writer.close();
//	}
	for(int i=1;i<27;i++) {
		
	
	  if(request.getParameter("s_psit"+i)==null) {
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter writer = response.getWriter(); 
		writer.println("<script>alert('"+i+"번 문항을 체크하지 않았습니다.'); history.back();</script>");
		writer.close();
	  	}
	  }
	
	 
    
    
    
    
    
	   
	   
	   
	   
	  
		
		String arr[] = new String[30];
		int array[] = new int[30];
		int ENFJ = 0;
		int ENFP = 0;
		int ENTJ = 0;
		int ENTP = 0;
		int ESFJ = 0;
		int ESFP = 0;
		int ESTJ = 0;
		int ESTP = 0;
		int INFJ = 0;
		int INFP = 0;
		int INTJ = 0;
		int INTP = 0;
		int ISFJ = 0;
		int ISFP = 0;
		int ISTJ = 0;
		int ISTP = 0;
		
		String result = "";
		
		
	
			
		
			
		for(int i =0 ; i<26; i++ ) {
		  String a=Integer.toString(i+1);
		  System.out.println(a);
	      arr[i] = request.getParameter("s_psit"+a);
	      if (arr[i].contains("ENFJ")) {
		         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
		         System.out.println(num);
		         ENFJ += num;
		        
		      }if(arr[i].contains("ENFP")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ENFP += num;
		      }if(arr[i].contains("ESTJ")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ESTJ += num;
		      }if(arr[i].contains("ENTJ")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ENTJ += num;
		      }
		      if(arr[i].contains("ENTP")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ENTP += num;
		      }if(arr[i].contains("ESFJ")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ESFJ += num;
		      }if(arr[i].contains("ESFP")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ESFP += num;
		      }if(arr[i].contains("ESTJ")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ESTJ += num;
		      }if(arr[i].contains("ESTP")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ESTP += num;
		      }if(arr[i].contains("INFJ")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         INFJ += num;
		      }if(arr[i].contains("INFP")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         INFP += num;
		      }if(arr[i].contains("INTJ")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         INTJ += num;
		      }if(arr[i].contains("INTP")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         INTP += num;
		      }if(arr[i].contains("ISFJ")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ISFJ += num;
		      }if(arr[i].contains("ISFP")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ISFP += num;
		      }if(arr[i].contains("ISTJ")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ISTJ += num;
		      }if(arr[i].contains("ISTP")) {

			         int num = Integer.parseInt(arr[i].substring(arr[i].length()-2,arr[i].length()));
			         System.out.println(num);
			         ISTP += num;
		      }
	      
	      
		}	
		
		
	    	      
		System.out.println(" ENFJ 점수는?" + ENFJ);
		System.out.println(" ENFP점수는?" + ENFP );
		System.out.println(" ENTJ점수는?" + ENTJ );
		System.out.println(" ENTP점수는?" + ENTP);
		System.out.println(" ESFJ점수는?" + ESFJ);
		System.out.println("ENFP 점수는?" + ENFP);
		System.out.println(" ESTJ점수는?" + ESTJ );
		System.out.println(" ESTP점수는?" + ESTP);
		System.out.println(" INFJ점수는?" + INFJ);
		System.out.println(" INFP점수는?" + INFP);
		System.out.println(" INFP점수는?" + INFP);
		System.out.println(" INTJ점수는?" + INTJ);
		System.out.println(" INTP점수는?" + INTP);
		System.out.println(" ISFJ점수는?" + ISFJ);
		System.out.println(" ISFP점수는?" + ISFP);
		System.out.println(" ISTJ점수는?" + ISTJ);
		System.out.println(" ISTP점수는?" + ISTP);
		
		//문자열 
		
		
		
		
		array[0] = ENFJ ;
		array[1] = ENFP ;
		array[2] = ENTJ ;
		array[3] = ENTP ;
		array[4] = ESFJ ;
		array[5] = ESFP ;
		array[6] = ESTJ ;
		array[7] = ESTP ;
		array[8] = INFJ ;
		array[9] = INFP ;
		array[10] = INTJ ;
		array[11] = INTP ;
		array[12] = ISFJ ;
		array[13] = ISFP ;
		array[14] = ISTJ ;
		array[15] = ISTP ;
		array[29] = 0;
		
		for(int i=0; i<20; i++) {
			if(array[i]>array[29]) {
				array[29] = array[i];
			}
		}
		
			if(array[29]==array[0]) {
				result = result +"ENFJ";
			}if(array[29]==array[1]) {
				result = result +"ENFP";
			}if(array[29]==array[2]) {
				result = result +"ENTJ";
			}if(array[29]==array[3]) {
				result = result +"ENTP";
			}if(array[29]==array[4]) {
				result = result +"ESFJ";
			}if(array[29]==array[5]) {
				result = result +"ESFP";
			}if(array[29]==array[6]) {
				result = result +"ESTJ";
			}if(array[29]==array[7]) {
				result = result +"ESTP";
			}if(array[29]==array[8]) {
				result = result +"INFJ";
			}if(array[29]==array[9]) {
				result = result +"INFP";
			}if(array[29]==array[10]) {
				result = result +"INTJ";
			}if(array[29]==array[11]) {
				result = result +"INTP";
			}if(array[29]==array[12]) {
				result = result +"ISFJ";
			}if(array[29]==array[13]) {
				result = result +"ISFP";
			}if(array[29]==array[14]) {
				result = result +"ISTJ";
			}if(array[29]==array[15]) {
				result = result +"ISTP";
			}
		
		
		
		System.out.println((result) +(array[29]));
		 String sample = result + array[29];
		response.sendRedirect("Psit_Result.jsp?sample="+sample);

		
		
		
		
//		Integer.toString(ENFJ);
		
	}
}        
