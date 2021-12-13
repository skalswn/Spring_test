package Model;

public class CodingExplainVO {

	private int coding_ex_seq;
	private String coding_lang;
	private String coding_explain1;
	private String coding_explain2;
	private String m_id;
	
	public CodingExplainVO(int coding_ex_seq, String coding_lang, String coding_explain1, String coding_explain2,
			String m_id) {
		this.coding_ex_seq = coding_ex_seq;
		this.coding_lang = coding_lang;
		this.coding_explain1 = coding_explain1;
		this.coding_explain2 = coding_explain2;
		this.m_id = m_id;
	}

	public int getCoding_ex_seq() {
		return coding_ex_seq;
	}

	public void setCoding_ex_seq(int coding_ex_seq) {
		this.coding_ex_seq = coding_ex_seq;
	}

	public String getcoding_lang() {
		return coding_lang;
	}

	public void setcoding_lang(String coding_lang) {
		this.coding_lang = coding_lang;
	}

	public String getCoding_explain1() {
		return coding_explain1;
	}

	public void setCoding_explain1(String coding_explain1) {
		this.coding_explain1 = coding_explain1;
	}

	public String getCoding_explain2() {
		return coding_explain2;
	}

	public void setCoding_explain2(String coding_explain2) {
		this.coding_explain2 = coding_explain2;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
	
	
	
}
