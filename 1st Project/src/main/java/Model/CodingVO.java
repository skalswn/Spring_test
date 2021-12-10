package Model;

import java.sql.Date;

public class CodingVO {

	private int coding_seq;
	private String coding_lang;
	private String coding_q;
	private String coding_a;
	private int coding_cnt;
	private int likes;
	private String m_id;
	
	
	//»ý¼ºÀÚ
	public CodingVO(int coding_seq, String coding_lang, String coding_q, String coding_a, int coding_cnt, int likes, String m_id) {
		this.coding_seq = coding_seq;
		this.coding_lang = coding_lang;
		this.coding_q = coding_q;
		this.coding_a = coding_a;
		this.coding_cnt = coding_cnt;
		this.likes = likes;
		this.m_id = m_id;
	}


	public CodingVO(String coding_q) {
		this.coding_q = coding_q;
	}


	//get,set
	

	public int getCoding_seq() {
		return coding_seq;
	}



	public void setCoding_seq(int coding_seq) {
		this.coding_seq = coding_seq;
	}



	public String getCoding_lang() {
		return coding_lang;
	}



	public void setCoding_lang(String coding_lang) {
		this.coding_lang = coding_lang;
	}



	public String getCoding_q() {
		return coding_q;
	}



	public void setCoding_q(String coding_q) {
		this.coding_q = coding_q;
	}



	public String getCoding_a() {
		return coding_a;
	}



	public void setCoding_a(String coding_a) {
		this.coding_a = coding_a;
	}



	public int getCoding_cnt() {
		return coding_cnt;
	}



	public void setCoding_cnt(int coding_cnt) {
		this.coding_cnt = coding_cnt;
	}



	public int getLikes() {
		return likes;
	}



	public void setLikes(int likes) {
		this.likes = likes;
	}



	



	public String getM_id() {
		return m_id;
	}



	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	

	
	
	
	
	

}
