package Model;

public class MyStudyPlan {

	private int plan_seq;
	private String plan_lang;
	private String plan_step;
	private String m_id;
	
	public MyStudyPlan(int plan_seq, String plan_lang, String plan_step, String m_id) {
		this.plan_seq = plan_seq;
		this.plan_lang = plan_lang;
		this.plan_step = plan_step;
		this.m_id = m_id;
	}

	public int getPlan_seq() {
		return plan_seq;
	}

	public void setPlan_seq(int plan_seq) {
		this.plan_seq = plan_seq;
	}

	public String getPlan_lang() {
		return plan_lang;
	}

	public void setPlan_lang(String plan_lang) {
		this.plan_lang = plan_lang;
	}

	public String getPlan_step() {
		return plan_step;
	}

	public void setPlan_step(String plan_step) {
		this.plan_step = plan_step;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
	
}
