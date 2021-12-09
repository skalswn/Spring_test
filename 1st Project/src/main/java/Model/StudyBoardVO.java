package Model;

import java.sql.Date;

public class StudyBoardVO {
	
	private int study_seq;
	private String study_subject;
	private String study_content;
	private String study_lang;
	private String study_cnt;
	private Date reg_date;
	private String m_id;
	private String study_file;
	
	//»ı¼ºÀÚ
	public StudyBoardVO(int study_seq, String study_subject, String study_content, String study_lang, String study_cnt,
			Date reg_date, String m_id, String study_file) {
		this.study_seq = study_seq;
		this.study_subject = study_subject;
		this.study_content = study_content;
		this.study_lang = study_lang;
		this.study_cnt = study_cnt;
		this.reg_date = reg_date;
		this.m_id = m_id;
		this.study_file = study_file;
	}

	//get,set	
	public int getStudy_seq() {
		return study_seq;
	}

	public void setStudy_seq(int study_seq) {
		this.study_seq = study_seq;
	}

	public String getStudy_subject() {
		return study_subject;
	}

	public void setStudy_subject(String study_subject) {
		this.study_subject = study_subject;
	}

	public String getStudy_content() {
		return study_content;
	}

	public void setStudy_content(String study_content) {
		this.study_content = study_content;
	}

	public String getStudy_lang() {
		return study_lang;
	}

	public void setStudy_lang(String study_lang) {
		this.study_lang = study_lang;
	}

	public String getStudy_cnt() {
		return study_cnt;
	}

	public void setStudy_cnt(String study_cnt) {
		this.study_cnt = study_cnt;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getStudy_file() {
		return study_file;
	}

	public void setStudy_file(String study_file) {
		this.study_file = study_file;
	}
	

	
	
	

}
