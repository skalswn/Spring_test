package Model;

public class u_CommunityVO {
	private int USED_SEQ;
	private String USED_SUBJECT;
	private String USED_CONTENT;
	private int USED_PRICE;
	private int USED_CNT;
	private String USED_TRADE;
	private String USED_PAY;
	private String REG_DATE;
	private String M_ID;
	private String USED_STATUS;
	public int getUSED_SEQ() {
		return USED_SEQ;
	}
	public void setUSED_SEQ(int uSED_SEQ) {
		USED_SEQ = uSED_SEQ;
	}
	public String getUSED_SUBJECT() {
		return USED_SUBJECT;
	}
	public void setUSED_SUBJECT(String uSED_SUBJECT) {
		USED_SUBJECT = uSED_SUBJECT;
	}
	public String getUSED_CONTENT() {
		return USED_CONTENT;
	}
	public void setUSED_CONTENT(String uSED_CONTENT) {
		USED_CONTENT = uSED_CONTENT;
	}
	public int getUSED_PRICE() {
		return USED_PRICE;
	}
	public void setUSED_PRICE(int uSED_PRICE) {
		USED_PRICE = uSED_PRICE;
	}
	public int getUSED_CNT() {
		return USED_CNT;
	}
	public void setUSED_CNT(int uSED_CNT) {
		USED_CNT = uSED_CNT;
	}
	public String getUSED_TRADE() {
		return USED_TRADE;
	}
	public void setUSED_TRADE(String uSED_TRADE) {
		USED_TRADE = uSED_TRADE;
	}
	public String getUSED_PAY() {
		return USED_PAY;
	}
	public void setUSED_PAY(String uSED_PAY) {
		USED_PAY = uSED_PAY;
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
	public String getUSED_STATUS() {
		return USED_STATUS;
	}
	public void setUSED_STATUS(String uSED_STATUS) {
		USED_STATUS = uSED_STATUS;
	}
	public u_CommunityVO(int uSED_SEQ, String uSED_SUBJECT, String uSED_CONTENT, int uSED_PRICE, int uSED_CNT,
			String uSED_TRADE, String uSED_PAY, String rEG_DATE, String m_ID, String uSED_STATUS) {
		super();
		USED_SEQ = uSED_SEQ;
		USED_SUBJECT = uSED_SUBJECT;
		USED_CONTENT = uSED_CONTENT;
		USED_PRICE = uSED_PRICE;
		USED_CNT = uSED_CNT;
		USED_TRADE = uSED_TRADE;
		USED_PAY = uSED_PAY;
		REG_DATE = rEG_DATE;
		M_ID = m_ID;
		USED_STATUS = uSED_STATUS;
	}

}
