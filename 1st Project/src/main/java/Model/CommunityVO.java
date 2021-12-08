package Model;

public class CommunityVO {
	private int c_seq; 
	private String title;
	private String content;
	private String day;
	private int c_cnt;
	private String writer;
	private String file1;
	private String file2;
	private String file3;
	public CommunityVO(int c_seq, String title, String content, String day, int c_cnt, String writer, String file1,
			String file2, String file3) {
		super();
		this.c_seq = c_seq;
		this.title = title;
		this.content = content;
		this.day = day;
		this.c_cnt = c_cnt;
		this.writer = writer;
		this.file1 = file1;
		this.file2 = file2;
		this.file3 = file3;
	}
	public int getC_seq() {
		return c_seq;
	}
	public void setC_seq(int c_seq) {
		this.c_seq = c_seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public int getC_cnt() {
		return c_cnt;
	}
	public void setC_cnt(int c_cnt) {
		this.c_cnt = c_cnt;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}
	public String getFile2() {
		return file2;
	}
	public void setFile2(String file2) {
		this.file2 = file2;
	}
	public String getFile3() {
		return file3;
	}
	public void setFile3(String file3) {
		this.file3 = file3;
	}
	
	

}
