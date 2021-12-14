package Model;

public class CheckVO {
	
	private int seq;
	private String lang;
	private int step;
	
	public CheckVO(int seq, String lang, int step) {
		this.seq = seq;
		this.lang = lang;
		this.step = step;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	
	

}
