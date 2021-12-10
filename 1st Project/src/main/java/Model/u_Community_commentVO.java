package Model;

public class u_Community_commentVO {
	private int UM_SEQ;
	private int USED_SEQ;
	private String UM_COMMENT;
	private String REG_DATE;
	private String M_ID;
	public u_Community_commentVO(int uM_SEQ, int uSED_SEQ, String uM_COMMENT, String rEG_DATE, String m_ID) {
		super();
		UM_SEQ = uM_SEQ;
		USED_SEQ = uSED_SEQ;
		UM_COMMENT = uM_COMMENT;
		REG_DATE = rEG_DATE;
		M_ID = m_ID;
		
	}
	public int getUM_SEQ() {
		return UM_SEQ;
	}
	public void setUM_SEQ(int uM_SEQ) {
		UM_SEQ = uM_SEQ;
	}
	public int getUSED_SEQ() {
		return USED_SEQ;
	}
	public void setUSED_SEQ(int uSED_SEQ) {
		USED_SEQ = uSED_SEQ;
	}
	public String getUM_COMMENT() {
		return UM_COMMENT;
	}
	public void setUM_COMMENT(String uM_COMMENT) {
		UM_COMMENT = uM_COMMENT;
	}
	public String getREG_DATE() {
		return REG_DATE;
	}
	public void setREG_DATE(String rEG_DATE) {
		REG_DATE = rEG_DATE;
	}
	public String getM_ID() {
		return M_ID;
	}
	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}
}
