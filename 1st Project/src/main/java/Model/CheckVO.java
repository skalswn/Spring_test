package Model;

public class CheckVO {
	
	private int seq;
	private String lang;
	private int step;
	private String id;
	
	public CheckVO(int seq, String lang, int step, String id) {
		this.seq = seq;
		this.lang = lang;
		this.step = step;
		this.id = id;
	}
	public int getSeq() {
		return seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
