package Model;

public class s_Community_commentVO {
	private String C_STUDY_SEQ;
	private String STUDY_SEQ;
	private String C_STUDY_CONTENT;
	private String REG_DATE;
	private String M_ID;
	public s_Community_commentVO(String c_STUDY_SEQ, String sTUDY_SEQ, String c_STUDY_CONTENT, String rEG_DATE,
			String m_ID) {
		super();
		C_STUDY_SEQ = c_STUDY_SEQ;
		STUDY_SEQ = sTUDY_SEQ;
		C_STUDY_CONTENT = c_STUDY_CONTENT;
		REG_DATE = rEG_DATE;
		M_ID = m_ID;
	}
	public String getC_STUDY_SEQ() {
		return C_STUDY_SEQ;
	}
	public void setC_STUDY_SEQ(String c_STUDY_SEQ) {
		C_STUDY_SEQ = c_STUDY_SEQ;
	}
	public String getSTUDY_SEQ() {
		return STUDY_SEQ;
	}
	public void setSTUDY_SEQ(String sTUDY_SEQ) {
		STUDY_SEQ = sTUDY_SEQ;
	}
	public String getC_STUDY_CONTENT() {
		return C_STUDY_CONTENT;
	}
	public void setC_STUDY_CONTENT(String c_STUDY_CONTENT) {
		C_STUDY_CONTENT = c_STUDY_CONTENT;
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