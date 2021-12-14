package Model;

public class CheckVO {
	
	private int step;
	private String lang;
	private String id;
	
	public CheckVO(int step, String lang, String id) {
		this.step = step;
		this.lang = lang;
		this.id = id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
