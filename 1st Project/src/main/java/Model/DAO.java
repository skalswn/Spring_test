package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

public class DAO {
	   CommunityVO bo=null;
	   u_CommunityVO vo =null;
	   s_CommunityVO svo =null;
	   s_Community_commentVO scvo =null;
	   u_Community_commentVO ucvo = null;
	   Connection conn = null;   
	   PreparedStatement psmt = null;
	   ResultSet rs = null;
	   int lognum=0;
	   int cnt = 0;
	   CodingVO codingvo = null;
	   CodingExplainVO codingexplainvo = null;
	 
	   PsitVO PS =null;
	   
	   CheckVO chvo = null;
	  
	   
// DB연결========================================================================================
	 public void connection() {
		      try {
		         // 1. 동적 로딩
		         Class.forName("oracle.jdbc.driver.OracleDriver");

		         // 2. DB 연결 / connection 객체 생성
		         String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
		         String dbic = "hr";
		         String dbpw = "hr";
		         conn = DriverManager.getConnection(url, dbic, dbpw);
		      } catch (Exception e) {

		      }
		   }
	
// DB종료========================================================================================
	public void close() {
		      // jdbc 사용 이후 닫아주기
		      // 닫아줄때는 열었던 순서의 반대
		      try {
		         if (rs != null) {
		            rs.close();
		         }
		         if (psmt != null) {
		            psmt.close();
		         }
		         if (conn != null) {
		            conn.close();
		         }
		      } catch (Exception e) {
		         // 아무것도 안적어도 된다.
		         e.printStackTrace();
		      }

		   }
	
// 회원가입========================================================================================	
	public int Join(String id, String pw, String email, String name, String nick, String gender, String memo) {
		
		int cnt = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		ArrayList<MemberVO> list = new ArrayList<>();
		
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "insert into tbl_member values(?,?,?,?,?,?,sysdate,?,sysdate,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, email);
			psmt.setString(4, name);
			psmt.setString(5, nick);
			psmt.setString(6, gender);
			psmt.setString(7, memo);
			psmt.setString(8, "N");
			
			
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
// Memberlist==================================================================================
	public ArrayList<MemberVO> SelectAll() {
		
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		MemberVO vo = null;
		ArrayList<MemberVO> list = new ArrayList<>();
		
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "select * from tbl_member";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next() == true) {
				String m_id = rs.getString(1);
				String m_pw = rs.getString(2);
				String m_email = rs.getString(3);
				String m_name = rs.getString(4);
				String m_nick = rs.getString(5);
				String m_gender = rs.getString(6);
				String m_memo = rs.getString(7);

				vo = new MemberVO(m_id, m_pw, m_email, m_name, m_nick, m_gender, m_memo);
				list.add(vo);
			}

		} catch (Exception e) {
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
			}
		}
		return list;
	}

// 회원삭제========================================================================================
	
public int Delete(String m_email) {
		
		int cnt = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "delete from tbl_member where m_email = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, m_email);
			
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
// 로그인========================================================================================
	public MemberVO Login(String m_id, String m_pw) {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		MemberVO vo = null;

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "select * from tbl_member where m_id = ? and m_pw = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, m_id);
			psmt.setString(2, m_pw);

			rs = psmt.executeQuery();

			if (rs.next() == true) {
				
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String email = rs.getString(3);
				String name = rs.getString(4);
				String nick = rs.getString(5);
				String gender = rs.getString(6);
				Date birthdate = rs.getDate(7);
				String memo = rs.getString(8);
				Date joindate = rs.getDate(9);
				String admin_yn = rs.getString(10);
				
				vo = new MemberVO(id, pw, email, name, nick, gender, birthdate, memo, joindate, admin_yn);
			} else {
				System.out.println("로그인 실패");
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
			}
		}
		return vo;
	}

// 자유게시판 전체게시판보기===============================================================================	
	public ArrayList<CommunityVO> Community() { 
		ArrayList<CommunityVO> arr = new ArrayList<CommunityVO>(); 
		connection();
		 try{ 
			 String sql = "select* from tbl_community order by article_seq desc";
			 psmt = conn.prepareStatement(sql);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
				  int c_seq = rs.getInt("ARTICLE_SEQ");
			      String title = rs.getString("ARTICLE_SUBJECT");
			      String content = rs.getString("ARTICLE_CONTENT");
			      String day = rs.getString("REG_DATE");
			      int c_cnt = rs.getInt("ARTICLE_CNT");
			      String writer = rs.getString("M_ID");
			      String file1 = rs.getString("ARTICLE_FILE1");
			      String file2 = rs.getString("ARTICLE_FILE2");
			      String file3 = rs.getString("ARTICLE_FILE3");
			      CommunityVO vo =new CommunityVO(c_seq, title, content,day,c_cnt,writer,file1,file2,file3);
			      arr.add(vo);
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return arr;
	 }
	
// 자유게시판 자기글 보기========================================================================================
	public CommunityVO communityview(int num) {
		connection();  
	 	try{
		   String sql = "select * from tbl_community where ARTICLE_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			   int c_seq = rs.getInt("ARTICLE_SEQ");
			   String title = rs.getString("ARTICLE_SUBJECT");
			   String content = rs.getString("ARTICLE_CONTENT");
			   String date = rs.getString("REG_DATE");
			   int cnt = rs.getInt("ARTICLE_CNT");
			   String writer = rs.getString("M_ID");
			   String filename1 = rs.getString("ARTICLE_FILE1");
			   String filename2 = rs.getString("ARTICLE_FILE2");
			   String filename3 = rs.getString("ARTICLE_FILE3");
		       bo = new CommunityVO(c_seq,title,content,date,cnt,writer,filename1,filename2,filename3);
		      }
		   String sql_seq = "update tbl_community set ARTICLE_CNT = ARTICLE_CNT+1 where ARTICLE_SEQ=?";
		   psmt = conn.prepareStatement(sql_seq);
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return bo;
} 
	
// 자유게시판 글쓰기========================================================================================
	public int community_write(String title, String writer, String content, String file1,String file2,String file3) {
		
		 connection();  
		 	try{
			   String sql = "insert into tbl_community(article_seq, article_subject,article_content,m_id,ARTICLE_FILE1,ARTICLE_FILE2,ARTICLE_FILE3) values(tbl_community_SEQ.NEXTVAL, ?,?,?,?,?,?)";
			   psmt = conn.prepareStatement(sql);	 
			   psmt.setString(1,title);
			   psmt.setString(2,content);
			   psmt.setString(3,writer);
			   psmt.setString(4,file1);
			   psmt.setString(5,file2);
			   psmt.setString(6,file3);
			   lognum = psmt.executeUpdate();
			   if (lognum>0) {
				   System.out.println("성공");
			   }
			      }catch(Exception e){
			    	 System.out.println("실패");
			        e.printStackTrace();
			      }finally{
			        close();
	     }
		   return lognum; 
	}
	
// 자유게시판 글삭제========================================================================================	
	public int communitydelete(int num) {
		connection();  
		 	try{
		 	   String sql0 = "delete from TBL_COMMUNITY_REPLY where article_seq=?";
			   psmt = conn.prepareStatement(sql0);
				   //5. 바인드 변수 채우기
			   psmt.setInt(1,num);
			   lognum = psmt.executeUpdate();
			   String sql = "delete from tbl_community where article_seq=?";
			   psmt = conn.prepareStatement(sql);
			   //5. 바인드 변수 채우기
			   psmt.setInt(1,num);
			   lognum = psmt.executeUpdate();
			      }catch(Exception e){
			        e.printStackTrace();
			      }finally{
			        close();
	     }
		   return lognum;
	}
	
// 자유게시판 댓글쓰기========================================================================================
	public int cm_write(int c_seq, String cm_content, String writer) {
		connection();  
	 	try{
		   String sql = "insert into tbl_community_reply(COMM_REPLY_SEQ, ARTICLE_SEQ,COMM_REPLY_CONTENT,M_ID) values(TBL_COMMUNITY_REPLY_SEQ.NEXTVAL, ?,?,?)";
		   psmt = conn.prepareStatement(sql);	 
		   psmt.setInt(1,c_seq);
		   psmt.setString(2,cm_content);
		   psmt.setString(3,writer);
		   lognum = psmt.executeUpdate();
		   if (lognum>0) {
			   System.out.println("성공");
		   }
		      }catch(Exception e){
		    	 System.out.println("실패");
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum; 
  }

// 단계별학습 문제 넣기==========================================================================================
	public int insertCoding(String coding_lang, String coding_q, String coding_a, String id) {
		
		try {
			connection();

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "insert into tbl_coding values(tbl_coding_seq.nextval,?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, coding_lang);
			psmt.setString(2, coding_q);
			psmt.setString(3, coding_a);
			psmt.setString(4, id);
			
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
				if (cnt == 0) {
					conn.close();
				}
			} catch (Exception e) {
			}
		}
		return cnt;
	}

// 단계별학습 개념 넣기
	public int insertExplain(String coding_lang, String coding_explain1, String coding_explain2, String id, String seq) {
		
		try {
			connection();

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "insert into tbl_coding_explain values(tbl_coding_ex_seq.nextval,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, coding_lang);
			psmt.setString(2, coding_explain1);
			psmt.setString(3, coding_explain2);
			psmt.setString(4, id);
			psmt.setString(5, seq);
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
				if (cnt == 0) {
					conn.close();
				}
			} catch (Exception e) {
			}
		}
		return cnt;
	}

//자유게시판 댓글달기
	public ArrayList<Community_commentVO> cm_Community(int c_seq) { 
		ArrayList<Community_commentVO> arr = new ArrayList<Community_commentVO>(); 
		connection();
		try{ 
			String sql = "select* from tbl_community_reply WHERE ARTICLE_SEQ=? order by REG_DATE desc";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,c_seq);
			rs =  psmt.executeQuery();
			while(rs.next()) {
				int cm_seq = rs.getInt("COMM_REPLY_SEQ");
				c_seq = rs.getInt("ARTICLE_SEQ");
				String content = rs.getString("COMM_REPLY_CONTENT");
				String day = rs.getString("REG_DATE");
				String writer = rs.getString("M_ID");
				Community_commentVO vo =new Community_commentVO(cm_seq, c_seq, content, day, writer);
				arr.add(vo);
			}
			
		}catch(Exception e){
			e.printStackTrace(); 
		}finally{ 
			close(); 
		}
		return arr;
	}

// 단계별학습 문제 보여주기====================================================================================
	public ArrayList ShowAllCoding(String lang) {
		
		ArrayList<CodingVO> codingarray = new ArrayList<>();
		
		try {
			connection();
			
			String sql = "select * from tbl_coding where coding_lang = ? order by CODING_SEQ";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, lang);

			rs = psmt.executeQuery();
			
			while (rs.next() == true) {

				int coding_seq = rs.getInt(1);
				String coding_lang = rs.getString(2);
				String coding_q = rs.getString(3);
				String coding_a = rs.getString(4);
				String m_id = rs.getString(5);

				//코딩문제만 다시 vo에 넣기 
				CodingVO codingvo = new CodingVO(coding_seq, coding_lang, coding_q, coding_a, m_id );
				
				//vo를 다시 배열에 넣기
				codingarray.add(codingvo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
				close();
			}
		return codingarray;
	}
	
// 단계별 학습 문제 클릭 후 문제및 해설 보여주기=====================================================================================================
	public CodingVO ShowStudyCoding(int seq) {

		try {
			connection();

			String sql = "select * from tbl_coding where coding_seq=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, seq);
			
			rs = psmt.executeQuery();

			if (rs.next() == true) {
				int coding_seq = rs.getInt(1);
				String coding_lang = rs.getString(2);
				String coding_q = rs.getString(3);
				String coding_a = rs.getString(4);
				String m_id = rs.getString(5);
				codingvo = new CodingVO(coding_seq, coding_lang, coding_q, coding_a, m_id); 
				System.out.println("문제뽑기성공!");
			} else {
				System.out.println(codingvo);
				System.out.println("실패!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return codingvo;
	}
	
// 문제 풀면 checkvo에 저장시키기
	public CheckVO getPhase(int seq, String m_id, String lang ) {
		
		try {
			connection();

			String sql = "select * from tbl_coding_plan where plan_step=? and plan_lang=? and m_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);
			psmt.setString(2, lang);
			psmt.setString(3, m_id);
			rs = psmt.executeQuery();
			if (rs.next() == true) {
//				int PLAN_SEQ = rs.getInt("PLAN_SEQ");
				String coding_lang = rs.getString("PLAN_LANG");
				int plan_step = rs.getInt("PLAN_STEP");
				String id = rs.getString("M_ID");
				chvo = new CheckVO(plan_step, coding_lang, id); 
				System.out.println("checkvo저장성공!");
			} else {
				System.out.println("checkvo저장실패!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return chvo;
	}
	
// 문제 삭제하기====================================================================================
	
	public int deleteCoding(int seq) {

		try{
			connection();  
			String sql = "delete from tbl_coding where coding_seq=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1,seq);

			cnt = psmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return cnt;	   
	}
	
// 문제 개념 나오게 하기=================================================================
	public CodingExplainVO CodingExplain(int seq) {
		
		try {
			connection();
		
			String sql = "select * from tbl_coding_explain where coding_ex_seq=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, seq);
			
			rs = psmt.executeQuery();

			if (rs.next() == true) {
				int coding_ex_seq = rs.getInt(1);
				String coding_lang = rs.getString(2);
				String coding_explain1 = rs.getString(3);
				String coding_explain2 = rs.getString(4);
				String m_id = rs.getString(5);
				int coding_q_seq = rs.getInt(6);
				codingexplainvo = new CodingExplainVO(coding_ex_seq, coding_lang, coding_explain1, coding_explain2, m_id,coding_q_seq); 
				System.out.println("개념뽑기성공!");
			} else {
				System.out.println("실패!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			
			close();
		}
		
		return codingexplainvo;
	}
// ===============================================
	public int community_change(String title, String content, String filename1, String filename2,
			String filename3, int num) {
		 connection();  
		 	try{
			   String sql = "update TBL_COMMUNITY set ARTICLE_SUBJECT=?,ARTICLE_CONTENT=?,ARTICLE_FILE1=?,ARTICLE_FILE2=?,ARTICLE_FILE3=? where ARTICLE_SEQ=?";
			   psmt = conn.prepareStatement(sql);
			   //5. 바인드 변수 채우기
			   psmt.setString(1,title);
			   psmt.setString(2,content);
			   psmt.setString(3,filename1);
			   psmt.setString(4,filename2);
			   psmt.setString(5,filename3);
			   psmt.setInt(6,num);
			   lognum = psmt.executeUpdate();
			   if (lognum>0) {
				   System.out.println("수정 성공");
			   }
			      }catch(Exception e){
			         e.printStackTrace();
			      }finally{
			        close();
	     }
		   return lognum;
	}
//학습단계저장하기 update문써봄======================================================================================
	public int CheckPhase(int seq, String m_id, String lang) {
		
		try {
			connection();
			
			String sql = "update tbl_coding_plan set plan_step=? where m_id=? and plan_lang=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);
			psmt.setString(2, m_id);
			psmt.setString(3, lang);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
//	학습단계 불러오기===========================================
//public CheckVO SelectPhase(int seq, String m_id, String lang) {
//		CheckVO chvo= null;
//		
//		try {
//			connection();
//		
//			String sql = "select * from tbl_coding_plan where tbl_coding_plan_seq=? and plan_lang=? and m_id=?";
//			
//			psmt = conn.prepareStatement(sql);
//			
//			psmt.setInt(1, seq);
//			psmt.setString(2, lang);
//			psmt.setString(3, m_id);
//			
//			rs = psmt.executeQuery();
//
//			if (rs.next() == true) {
//				int tbl_coding_plan_seq = rs.getInt(1);
//				String plan_lang = rs.getString(2);
//				int plan_step = rs.getInt(3);
//				String id = rs.getString(4);
//
//				chvo = new CheckVO(tbl_coding_plan_seq, plan_lang, plan_step, id); 
//				System.out.println("단계뽑기성공!");
//			} else {
//				System.out.println("단계뽑기실패!");
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			
//		}finally {
//			
//			close();
//		}
//		
//		return chvo;
//	}
	
	

	public int Update(String m_id, String m_pw, String m_email, String m_name, String m_nick, String m_gender,
		String m_memo) {
		
	    	   Connection conn = null;
	    	    PreparedStatement psmt = null;
	    	    int cnt = 0;
	    	    
	    	    
	    	    // try문
	    	    // JDBC 코드는 문법이 맞더라도, 실행중에 발생하는 오류(런타임 오류) 처리 필요
	    	    try {
	    	       
	    	       // JDBC
	    	       // 1. 동적로딩
	    	       Class.forName("oracle.jdbc.driver.OracleDriver");
	    	       
	    	       // 2. 연결객체 생성
	    	       String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
	    	       String dbid = "hr";
	    	       String dbpw = "hr";
	    	       
	    	       conn = DriverManager.getConnection(url, dbid, dbpw);
	    	       
	    	       // 3. sql문 준비
	    	       String sql = "update tbl_member set m_pw = ?, m_email =?, m_name=?, m_nick=?, m_gender=?, m_memo=? where m_id = ?";
	    	       psmt = conn.prepareStatement(sql);
	    	       
	    	       // 4. 바인드 변수 채우기
	    	       psmt.setString(1, m_pw);
	    	       psmt.setString(2, m_email);
	    	       psmt.setString(3, m_name);
	    	       psmt.setString(4, m_nick);
	    	       psmt.setString(5, m_gender);
	    	       psmt.setString(6, m_memo);
	    	       psmt.setString(7, m_id);
	    	       
	    	       
	    	       // 5. 실행
	    	       // select -> executeQuery() --> return ResultSet
	    	       // insert, delete, update -> executeUpdate() --> return int(몇 행이 성공했는지)
	    	       cnt = psmt.executeUpdate();
	    	       
	    	    }  catch(Exception e){
	   	         
	    	       }
	    	       finally{
	    	          //jdbc 사용 후에는 닫아줘야함
	    	          //닫아줄 때는 열었던 순서 반대!
	    	          //열지 않았을 경우에는 닫을 필요 없음
	    	          try {
	    	    	   if(psmt!=null){
	    	             psmt.close();
	    	          }
	    	          if(conn!=null){
	    	             conn.close();
	    	          }
	    	          }catch (Exception e) {
						// TODO: handle exception
					}}
	    	    System.out.println(cnt);
	    	    return cnt;
	    }


	public ArrayList<s_CommunityVO> s_Community() { 
		ArrayList<s_CommunityVO> arr = new ArrayList<s_CommunityVO>(); 
		connection();
		 try{ 
			 String sql = "select* from TBL_STUDY order by STUDY_SEQ desc";
			 psmt = conn.prepareStatement(sql);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
				  int c_seq = rs.getInt("STUDY_SEQ");
			      String title = rs.getString("STUDY_SUBJECT");
			      String content = rs.getString("STUDY_CONTENT");
			      String language = rs.getString("STUDY_LANG");
			      int c_cnt = rs.getInt("STUDY_CNT");
			      String date = rs.getString("REG_DATE");
			      String writer = rs.getString("M_ID");
			      String file1 = rs.getString("STUDY_FILE1");
			      s_CommunityVO svo =new s_CommunityVO(c_seq, title, content,language,c_cnt,date,writer,file1);
			      arr.add(svo);
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return arr;
	 }
	public int s_community_write(String title, String language, String writer, String content, String filename1) {
		connection();  
	 	try{
		   String sql = "insert into TBL_STUDY(STUDY_SEQ, STUDY_SUBJECT,STUDY_CONTENT,STUDY_LANG,M_ID,STUDY_FILE1) values(TBL_STUDY_SEQ.NEXTVAL, ?,?,?,?,?)";
		   psmt = conn.prepareStatement(sql);	 
		   psmt.setString(1,title);
		   psmt.setString(2,content);
		   psmt.setString(3,language);
		   psmt.setString(4,writer);
		   psmt.setString(5,filename1);
		   lognum = psmt.executeUpdate();
		   if (lognum>0) {
			   System.out.println("성공");
		   }
		      }catch(Exception e){
		    	 System.out.println("실패");
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;
	}
	public s_CommunityVO s_communityview(int num) {
		connection();  
	 	try{
		   String sql = "select * from TBL_STUDY where STUDY_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			   int c_seq = rs.getInt("STUDY_SEQ");
			   String title = rs.getString("STUDY_SUBJECT");
			   String content = rs.getString("STUDY_CONTENT");
			   String language = rs.getString("STUDY_LANG");
			   int cnt = rs.getInt("STUDY_CNT");
			   String date = rs.getString("REG_DATE");
			   String writer = rs.getString("M_ID");
			   String filename1 = rs.getString("STUDY_FILE1");
		       svo = new s_CommunityVO(c_seq,title,content,language,cnt,date,writer,filename1);
		      }
		   String sql_seq = "update TBL_STUDY set STUDY_CNT =  STUDY_CNT+1 where STUDY_SEQ=?";
		   psmt = conn.prepareStatement(sql_seq);
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return svo;
	}
	public int s_communitydelete(int num) {
		connection();  
	 	try{
	 	   String sql0 = "delete from TBL_STUDY_COMMENT where STUDY_SEQ=?";
		   psmt = conn.prepareStatement(sql0);
			   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		   String sql = "delete from TBL_STUDY where STUDY_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;	   
}

	
	public ArrayList<s_Community_commentVO> s_cm_Community(int c_seq) { 
		ArrayList<s_Community_commentVO> arr = new ArrayList<s_Community_commentVO>(); 
		connection();
		 try{ 
			 String sql = "select* from TBL_STUDY_COMMENT WHERE STUDY_SEQ=? order by REG_DATE desc";
			 psmt = conn.prepareStatement(sql);
			 psmt.setInt(1,c_seq);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
				  int cm_seq = rs.getInt("C_STUDY_SEQ");
			      c_seq = rs.getInt("STUDY_SEQ");
			      String content = rs.getString("C_STUDY_CONTENT");
			      String day = rs.getString("REG_DATE");
			      String writer = rs.getString("M_ID");
			      s_Community_commentVO scvo =new s_Community_commentVO(cm_seq, c_seq, content, day, writer);
			      arr.add(scvo);
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return arr;
	 }
	public int s_cm_write(int c_seq, String cm_content, String writer) {
		connection();  
	 	try{
		   String sql = "insert into TBL_STUDY_COMMENT(C_STUDY_SEQ, STUDY_SEQ,C_STUDY_CONTENT,M_ID) values(TBL_STUDY_COMMENT_SEQ.NEXTVAL, ?,?,?)";
		   psmt = conn.prepareStatement(sql);	 
		   psmt.setInt(1,c_seq);
		   psmt.setString(2,cm_content);
		   psmt.setString(3,writer);
		   lognum = psmt.executeUpdate();
		   if (lognum>0) {
			   System.out.println("성공");
		   }
		      }catch(Exception e){
		    	 System.out.println("실패");
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum; 
  }
	public ArrayList<u_CommunityVO> u_Community() { 
		ArrayList<u_CommunityVO> arr = new ArrayList<u_CommunityVO>(); 
		connection();
		 try{ 
			 String sql = "select* from TBL_USED_MARKET order by USED_SEQ desc";
			 psmt = conn.prepareStatement(sql);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
				  int c_seq = rs.getInt("USED_SEQ");
			      String title = rs.getString("USED_SUBJECT");
			      String content = rs.getString("USED_CONTENT");
			      int price = rs.getInt("USED_PRICE");
			      int c_cnt = rs.getInt("USED_CNT");
			      String way = rs.getString("USED_TRADE");
			      String how = rs.getString("USED_PAY");
			      String date = rs.getString("REG_DATE");
			      String writer = rs.getString("M_ID");
			      String status = rs.getString("USED_STATUS");
			      String file1 = rs.getString("FILE1");
			      u_CommunityVO vo =new u_CommunityVO(c_seq, title, content,price,c_cnt,way,how,date,writer,status,file1);
			      arr.add(vo);
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return arr;
	 }

	public int u_community_write(String title, String way, String writer, String status, String kinds, int price,
			String content, String filename1) {
		connection();  
	 	try{
		   String sql = "insert into TBL_USED_MARKET(USED_SEQ, USED_SUBJECT,USED_CONTENT,USED_PRICE,USED_TRADE,USED_PAY,M_ID,USED_STATUS,FILE1) values(TBL_USED_MARKET_SEQ.NEXTVAL,?,?,?,?,?,?,?,?)";
		   psmt = conn.prepareStatement(sql);	 
		   psmt.setString(1,title);
		   psmt.setString(2,content);
		   psmt.setInt(3,price);
		   psmt.setString(4,way);
		   psmt.setString(5,kinds);
		   psmt.setString(6,writer);
		   psmt.setString(7,status);
		   psmt.setString(8,filename1);
		   lognum = psmt.executeUpdate();
		   if (lognum>0) {
			   System.out.println("성공");
		   }
		      }catch(Exception e){
		    	 System.out.println("실패");
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;
	}
	public u_CommunityVO u_communityview(int num) {
		connection();  
	 	try{
		   String sql = "select * from TBL_USED_MARKET where USED_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			   int c_seq = rs.getInt("USED_SEQ");
			   String title = rs.getString("USED_SUBJECT");
			   String content = rs.getString("USED_CONTENT");
			   int price = rs.getInt("USED_PRICE");
			   int cnt = rs.getInt("USED_CNT");
			   String way = rs.getString("USED_TRADE");
			   String kinds = rs.getString("USED_PAY");
			   String date = rs.getString("REG_DATE");
			   String writer = rs.getString("M_ID");
			   String status = rs.getString("USED_STATUS");
			   String filename1 = rs.getString("FILE1");
		       vo = new u_CommunityVO(c_seq,title,content,price,cnt,way,kinds,date,writer,status,filename1);
		      }
		   String sql_seq = "update TBL_USED_MARKET set USED_CNT = USED_CNT+1 where USED_SEQ=?";
		   psmt = conn.prepareStatement(sql_seq);
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return vo;
	}
	public ArrayList<u_Community_commentVO> u_cm_Community(int c_seq) { 
		ArrayList<u_Community_commentVO> arr = new ArrayList<u_Community_commentVO>(); 
		connection();
		 try{ 
			 String sql = "select* from TBL_MARKET_REPLY WHERE USED_SEQ=? order by REG_DATE desc";
			 psmt = conn.prepareStatement(sql);
			 psmt.setInt(1,c_seq);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
				  int cm_seq = rs.getInt("UM_SEQ");
			      c_seq = rs.getInt("USED_SEQ");
			      String content = rs.getString("UM_COMMENT");
			      String day = rs.getString("REG_DATE");
			      String writer = rs.getString("M_ID");
			      u_Community_commentVO ucvo =new u_Community_commentVO(cm_seq, c_seq, content, day, writer);
			      arr.add(ucvo);
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return arr;
	 }

	public int u_cm_write(int c_seq, String cm_content, String writer) {
		connection();  
	 	try{
		   String sql = "insert into TBL_MARKET_REPLY(UM_SEQ, USED_SEQ,UM_COMMENT,M_ID) values(TBL_MARKET_REPLY_SEQ.NEXTVAL, ?,?,?)";
		   psmt = conn.prepareStatement(sql);	 
		   psmt.setInt(1,c_seq);
		   psmt.setString(2,cm_content);
		   psmt.setString(3,writer);
		   lognum = psmt.executeUpdate();
		   if (lognum>0) {
			   System.out.println("성공");
		   }
		      }catch(Exception e){
		    	 System.out.println("실패");
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum; 
  }

	public int u_communitydelete(int num) {
		connection();  
	 	try{
	 	   String sql0 = "delete from TBL_MARKET_REPLY where USED_SEQ=?";
		   psmt = conn.prepareStatement(sql0);
			   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		   String sql = "delete from TBL_USED_MARKET where USED_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;	   
}

	public int c_Commentdelete(int num) {
		connection();  
	 	try{
	 	   String sql = "delete from TBL_COMMUNITY_REPLY where COMM_REPLY_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;	   
}
	public int s_c_Commentdelete(int num) {
		connection();  
	 	try{
	 	   String sql = "delete from TBL_STUDY_COMMENT where C_STUDY_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;	   
}

	public int u_c_Commentdelete(int num) {
		connection();  
	 	try{
	 	   String sql = "delete from TBL_MARKET_REPLY where UM_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;	   
}

	public int psit(String sample,String job_no, String m_ID) {
		connection();  
	 	try{
		   String sql = "insert into TBL_PSIT(PSIT_SEQ, PSIT_TYPE,PSIT_JOB,M_ID) values(TBL_MBTIT_SEQ.NEXTVAL,?,?,?)";
		   psmt = conn.prepareStatement(sql);	 
		   psmt.setString(1,sample);
		   psmt.setString(2,job_no);
		   psmt.setString(3,m_ID);
		   lognum = psmt.executeUpdate();
		   if (lognum>0) {
			   System.out.println("성공");
		   }
		      }catch(Exception e){
		    	 System.out.println("실패");
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum; 
  }

	public int c_past_page(int num) {
		connection();  
	 	try{
		   String sql = "select * from (select ARTICLE_SEQ, Lag(ARTICLE_SEQ,1) OVER(ORDER BY ARTICLE_SEQ) PREV_ARTICLE_SEQ FROM tbl_community)WHERE ARTICLE_SEQ = ?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			  lognum = rs.getInt("PREV_ARTICLE_SEQ");
		      }
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;
	}

	public int c_next_page(int num) {
		connection();  
	 	try{
		   String sql = "select * from (select ARTICLE_SEQ, LEAD(ARTICLE_SEQ,1) OVER(ORDER BY ARTICLE_SEQ) NEXT_ARTICLE_SEQ FROM tbl_community)WHERE ARTICLE_SEQ = ?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			  lognum = rs.getInt("NEXT_ARTICLE_SEQ");
		      }
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;
	}

	public int s_next_page(int num) {
		connection();  
	 	try{
		   String sql = "select * from (select STUDY_SEQ, LEAD(STUDY_SEQ,1) OVER(ORDER BY STUDY_SEQ) NEXT_STUDY_SEQ FROM TBL_STUDY)WHERE STUDY_SEQ = ?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			  lognum = rs.getInt("NEXT_STUDY_SEQ");
		      }
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;
	}
	public int s_past_page(int num) {
		connection();  
	 	try{
		   String sql = "select * from (select STUDY_SEQ, Lag(STUDY_SEQ,1) OVER(ORDER BY STUDY_SEQ) PAST_STUDY_SEQ FROM TBL_STUDY)WHERE STUDY_SEQ = ?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			  lognum = rs.getInt("PAST_STUDY_SEQ");
		      }
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;
	}
	public int u_next_page(int num) {
		connection();  
	 	try{
		   String sql = "select * from (select USED_SEQ, LEAD(USED_SEQ,1) OVER(ORDER BY USED_SEQ) NEXT_USED_SEQ FROM TBL_USED_MARKET)WHERE USED_SEQ = ?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			  lognum = rs.getInt("NEXT_USED_SEQ");
		      }
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;
	}
	public int u_past_page(int num) {
		connection();  
	 	try{
		   String sql = "select * from (select USED_SEQ, Lag(USED_SEQ,1) OVER(ORDER BY USED_SEQ) PAST_USED_SEQ FROM TBL_USED_MARKET)WHERE USED_SEQ = ?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			  lognum = rs.getInt("PAST_USED_SEQ");
		      }
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;
	}
////////////////////////////////개념 보기
	public ArrayList<CodingExplainVO> codingexplain_view(int num) { 
		ArrayList<CodingExplainVO> arr = new ArrayList<CodingExplainVO>(); 
		connection();
		 try{ 
			 String sql = "select* from TBL_CODING_EXPLAIN where CODING_SEQ=?";
			 psmt = conn.prepareStatement(sql);
			 psmt.setInt(1,num);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
				  int ex_seq = rs.getInt("CODING_EX_SEQ");
			      String lang = rs.getString("CODING_LANG");
			      String title = rs.getString("CODING_EXPLAIN1");
			      String content = rs.getString("CODING_EXPLAIN2");
			      String M_ID = rs.getString("M_ID");
			      int q_seq = rs.getInt("CODING_SEQ");
			      CodingExplainVO vo =new CodingExplainVO(ex_seq, lang, title,content,M_ID,q_seq);
			      arr.add(vo);
			      System.out.println(content);
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return arr;
}

	public String check_answer(String answer, int seq) {
		String ans=null;
		 try{ 
			 connection();
			 /////아직 아무것도 안했음 여기서부터
			 String sql = "select CODING_A from TBL_CODING where CODING_SEQ=?";
			 psmt = conn.prepareStatement(sql);
			 psmt.setInt(1,seq);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
			      String r_answer = rs.getString("CODING_A");
			      if(answer.equals(r_answer)) {
			    	  ans="wright";
			      }else {
			    	  ans="wrong";
			      }
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return ans;
	}	
	
	 

	public PsitVO PSTORE(String m_ID) {
		connection();  
	 	try{
		   String sql = "select * from TBL_PSIT where M_ID=? order by PSIT_SEQ DESC";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setString(1,m_ID);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			   int c_seq = rs.getInt("PSIT_SEQ");
			   String PSIT_TYPE = rs.getString("PSIT_TYPE");
			   String PSIT_JOB = rs.getString("PSIT_JOB");
			   String REG_DATE = rs.getString("REG_DATE");
			   String M_ID = rs.getString("M_ID");
		       PS = new PsitVO(c_seq,PSIT_TYPE,PSIT_JOB,REG_DATE,M_ID);
		      }
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return PS;
	}
//////////////스터디 커뮤니티 체인지
	public int s_community_change(String title, String content,String lang, String filename1, int num) {
			 connection();  
			 	try{
				   String sql = "update TBL_STUDY set STUDY_SUBJECT=?,STUDY_CONTENT=?,STUDY_LANG=?,STUDY_FILE1=? where STUDY_SEQ=?";
				   psmt = conn.prepareStatement(sql);
				   //5. 바인드 변수 채우기
				   psmt.setString(1,title);
				   psmt.setString(2,content);
				   psmt.setString(3,lang);
				   psmt.setString(4,filename1);
				   psmt.setInt(5,num);
				   lognum = psmt.executeUpdate();
				   if (lognum>0) {
					   System.out.println("수정 성공");
				   }
				      }catch(Exception e){
				         e.printStackTrace();
				      }finally{
				        close();
		     }
			   return lognum;
		}

	public int u_community_change(String title, String way, String status, String kinds, int price, String content,
			String filename1, int num) {
		connection();  
	 	try{
		   String sql = "update TBL_USED_MARKET set USED_SUBJECT=?,USED_CONTENT=?,USED_PRICE=?,USED_TRADE=?,USED_PAY=?,USED_STATUS=?,FILE1=? where USED_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. 바인드 변수 채우기
		   psmt.setString(1,title);
		   psmt.setString(2,content);
		   psmt.setInt(3,price);
		   psmt.setString(4,way);
		   psmt.setString(5,kinds);
		   psmt.setString(6,status);
		   psmt.setString(7,filename1);
		   psmt.setInt(8,num);
		   lognum = psmt.executeUpdate();
		   if (lognum>0) {
			   System.out.println("수정 성공");
		   }
		      }catch(Exception e){
		         e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum;
}
}	






