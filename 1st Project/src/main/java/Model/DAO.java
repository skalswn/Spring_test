package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;


public class DAO {
	 MemberVO vo = null;
	   CommunityVO bo=null;
	   Connection conn = null;   
	   PreparedStatement psmt = null;
	   ResultSet rs = null;
	   int lognum=0;
	   public void connection() {
		      try {
		         // 1. 동적 로딩
		         Class.forName("oracle.jdbc.driver.OracleDriver");

		         // 2. DB 연결 / connection 객체 생성
		         String url = "jdbc:oracle:thin:@localhost:1521:xe";
		         String dbic = "hr";
		         String dbpw = "hr";
		         conn = DriverManager.getConnection(url, dbic, dbpw);
		      } catch (Exception e) {

		      }
		   }
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
	public int Join(String id, String pw, String email, String name, String nick, String gender,
			java.sql.Date birthdate, String memo, java.sql.Date joindate, String admin_yn) {
		
		int cnt = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		ArrayList<MemberVO> list = new ArrayList<>();

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "insert into tbl_member values(?,?,?,?,?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, email);
			psmt.setString(4, name);
			psmt.setString(5, nick);
			psmt.setString(6, gender);
			psmt.setDate(7, birthdate);
			psmt.setString(8, memo);
			psmt.setDate(9, joindate);
			psmt.setString(10, admin_yn);

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
			} catch (Exception e) {
			}
		}
		return cnt;
	}

	public MemberVO Login(String m_id, String m_pw) {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		MemberVO vo = null;

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "select * from tbl_member where id = ? and pw = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, m_id);
			psmt.setString(2, m_pw);

			rs = psmt.executeQuery();

			if (rs.next() == true) {
				System.out.println("로그인 성공");
				
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
	public ArrayList<CommunityVO> Community() { 
		ArrayList arr = new ArrayList<CommunityVO>(); 
		connection();
		 try{ 
			 String sql = "select* from tbl_community order by num desc";
			 psmt = conn.prepareStatement(sql);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
				  int c_seq = rs.getInt("article_seq");
			      String title = rs.getString("article_subject");
			      String content = rs.getString("article_content");
			      String day = rs.getString("reg_date");
			      int c_cnt = rs.getInt("article_cnt");
			      String writer = rs.getString("m_id");
			      String file1 = rs.getString("article_file1");
			      String file2 = rs.getString("article_file2");
			      String file3 = rs.getString("article_file3");
			      CommunityVO vo =new CommunityVO(c_seq, title, content, day,c_cnt,writer,file1,file2,file3);
			      arr.add(vo);    
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return arr;
	 }

}
