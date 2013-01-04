package project.com.model;

public class Experiment {
	private int id, expcourse_id;
	private String expname, expcontent, timestart, timeend;
	
	public Experiment() {}
	public Experiment(int id , int expcourse_id, String expcontent, String expname, String timestart, String timeend) {
		this.id = id;
		this.expcourse_id = expcourse_id;
		this.expcontent = expcontent;
		this.expname = expname;
		this.timestart = timestart;
		this.timeend = timeend;
	}
	
	public int getId() {
		return this.id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getExpcourse_id() {
		return this.expcourse_id;
	}
	public void setExpcourse_id(int expcourse_id) {
		this.expcourse_id = expcourse_id;
	}
	
	public String getExpname() {
		return this.expname;
	}
	public void setExpname(String expname) {
		this.expname = expname;
	}
	
	public String getExpcontent() {
		return this.expcontent;
	}
	public void setExpcontent(String expcontent) {
		this.expcontent = expcontent;
	}
	
	public String getTimestart() {
		return this.timestart;
	}
	public void setTimestart(String timestart) {
		this.timestart = timestart;
	}
	
	public String getTimeend() {
		return this.timeend;
	}
	public void setTimeend(String timeend) {
		this.timeend = timeend;
	}
}
