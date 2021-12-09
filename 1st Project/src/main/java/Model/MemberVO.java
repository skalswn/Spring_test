package Model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberVO {
	
	private String m_id;
	private String m_pw;
	private String m_email;
	private String m_name;
	private String m_nick;
	private String m_gender;
	private Date m_birthdate;
	private String m_memo;
	private Date m_joindate;
	private String admin_yn;
	
	public MemberVO(String m_id, String m_pw, String m_email, String m_name, String m_nick, String m_gender,
			String m_birthdate, String m_memo, String m_joindate, String admin_yn) throws ParseException {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-mm-dd");
		
		this.m_birthdate = transFormat.parse(m_birthdate);
		this.m_joindate = transFormat.parse(m_joindate);
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_email = m_email;
		this.m_name = m_name;
		this.m_nick = m_nick;
		this.m_gender = m_gender;
		this.m_memo = m_memo;
		this.admin_yn = admin_yn;
	}
	
	public MemberVO(String m_id, String m_pw, String m_email, String m_name, String m_nick, String m_gender,
			Date m_birthdate, String m_memo, Date m_joindate, String admin_yn) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_email = m_email;
		this.m_name = m_name;
		this.m_nick = m_nick;
		this.m_gender = m_gender;
		this.m_birthdate = m_birthdate;
		this.m_memo = m_memo;
		this.m_joindate = m_joindate;
		this.admin_yn = admin_yn;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_nick() {
		return m_nick;
	}
	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}
	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public Date getM_birthdate() {
		return m_birthdate;
	}
	public void setM_birthdate(Date m_birthdate) {
		this.m_birthdate = m_birthdate;
	}
	public String getM_memo() {
		return m_memo;
	}
	public void setM_memo(String m_memo) {
		this.m_memo = m_memo;
	}
	public Date getM_joindate() {
		return m_joindate;
	}
	public void setM_joindate(Date m_joindate) {
		this.m_joindate = m_joindate;
	}
	public String getAdmin_yn() {
		return admin_yn;
	}
	public void setAdmin_yn(String admin_yn) {
		this.admin_yn = admin_yn;
	}
	
}