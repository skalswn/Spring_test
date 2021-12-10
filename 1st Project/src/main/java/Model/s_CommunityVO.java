package Model;

public class s_CommunityVO {
	private int STUDY_SEQ; 
	private String STUDY_SUBJECT;
	private String STUDY_CONTENT;
	private String STUDY_LANG;
	private int STUDY_CNT;
	private String REG_DATE;
	private String M_ID;
	private String STUDY_FILE1;
	public int getSTUDY_SEQ() {
		return STUDY_SEQ;
	}
	public void setSTUDY_SEQ(int sTUDY_SEQ) {
		STUDY_SEQ = sTUDY_SEQ;
	}
	public String getSTUDY_SUBJECT() {
		return STUDY_SUBJECT;
	}
	public void setSTUDY_SUBJECT(String sTUDY_SUBJECT) {
		STUDY_SUBJECT = sTUDY_SUBJECT;
	}
	public String getSTUDY_CONTENT() {
		return STUDY_CONTENT;
	}
	public void setSTUDY_CONTENT(String sTUDY_CONTENT) {
		STUDY_CONTENT = sTUDY_CONTENT;
	}
	public String getSTUDY_LANG() {
		return STUDY_LANG;
	}
	public void setSTUDY_LANG(String sTUDY_LANG) {
		STUDY_LANG = sTUDY_LANG;
	}
	public int getSTUDY_CNT() {
		return STUDY_CNT;
	}
	public void setSTUDY_CNT(int sTUDY_CNT) {
		STUDY_CNT = sTUDY_CNT;
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
	public String getSTUDY_FILE1() {
		return STUDY_FILE1;
	}
	public void setSTUDY_FILE1(String sTUDY_FILE1) {
		STUDY_FILE1 = sTUDY_FILE1;
	}
	public s_CommunityVO(int sTUDY_SEQ, String sTUDY_SUBJECT, String sTUDY_CONTENT, String sTUDY_LANG, int sTUDY_CNT,
			String rEG_DATE, String m_ID, String sTUDY_FILE1) {
		super();
		STUDY_SEQ = sTUDY_SEQ;
		STUDY_SUBJECT = sTUDY_SUBJECT;
		STUDY_CONTENT = sTUDY_CONTENT;
		STUDY_LANG = sTUDY_LANG;
		STUDY_CNT = sTUDY_CNT;
		REG_DATE = rEG_DATE;
		M_ID = m_ID;
		STUDY_FILE1 = sTUDY_FILE1;
	}
}