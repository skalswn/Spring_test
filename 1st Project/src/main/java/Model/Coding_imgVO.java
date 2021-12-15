package Model;

public class Coding_imgVO {
	private String IMG;
	private String CODING_LANG;
	private String CODING_Q_I;
	private int CODING_SEQ;
	public Coding_imgVO(String iMG, String cODING_LANG, String cODING_Q_I, int cODING_SEQ) {
		super();
		IMG = iMG;
		CODING_LANG = cODING_LANG;
		CODING_Q_I = cODING_Q_I;
		CODING_SEQ = cODING_SEQ;
	}
	public String getIMG() {
		return IMG;
	}
	public void setIMG(String iMG) {
		IMG = iMG;
	}
	public String getCODING_LANG() {
		return CODING_LANG;
	}
	public void setCODING_LANG(String cODING_LANG) {
		CODING_LANG = cODING_LANG;
	}
	public String getCODING_Q_I() {
		return CODING_Q_I;
	}
	public void setCODING_Q_I(String cODING_Q_I) {
		CODING_Q_I = cODING_Q_I;
	}
	public int getCODING_SEQ() {
		return CODING_SEQ;
	}
	public void setCODING_SEQ(int cODING_SEQ) {
		CODING_SEQ = cODING_SEQ;
	}
}
