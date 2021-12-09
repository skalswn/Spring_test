package Model;

public class Community_commentVO {
	private int cm_seq;
	private int c_seq;
	private String content;
	private String day;
	private String c_writer;
	public Community_commentVO(int cm_seq, int c_seq, String content, String day, String c_writer) {
		super();
		this.cm_seq = cm_seq;
		this.c_seq = c_seq;
		this.content = content;
		this.day = day;
		this.c_writer = c_writer;
	}
	public int getCm_seq() {
		return cm_seq;
	}
	public void setCm_seq(int cm_seq) {
		this.cm_seq = cm_seq;
	}
	public int getC_seq() {
		return c_seq;
	}
	public void setC_seq(int c_seq) {
		this.c_seq = c_seq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getC_writer() {
		return c_writer;
	}
	public void setC_writer(String c_writer) {
		this.c_writer = c_writer;
	}
}
