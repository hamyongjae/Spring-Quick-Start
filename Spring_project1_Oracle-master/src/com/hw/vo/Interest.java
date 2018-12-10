package com.hw.vo;

public class Interest {
	String id;
	String act_no;
	
	public Interest() {
	}

	public Interest(String id, String act_no) {
		super();
		this.id = id;
		this.act_no = act_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAct_no() {
		return act_no;
	}

	public void setAct_no(String act_no) {
		this.act_no = act_no;
	}

	@Override
	public String toString() {
		return "Interest [id=" + id + ", act_no=" + act_no + "]";
	}

	
	
}
