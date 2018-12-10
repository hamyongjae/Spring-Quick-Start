package com.hw.vo;

public class Review {
	String r_no;
	String r_comment;
	int grade;
	String r_date;
	String id;
	String act_no;
	
	public Review() {
	}

	public Review(String r_no, String r_comment, int grade, String r_date, String id, String act_no) {
		super();
		this.r_no = r_no;
		this.r_comment = r_comment;
		this.grade = grade;
		this.r_date = r_date;
		this.id = id;
		this.act_no = act_no;
	}

	public String getR_no() {
		return r_no;
	}

	public void setR_no(String r_no) {
		this.r_no = r_no;
	}

	public String getR_comment() {
		return r_comment;
	}

	public void setR_comment(String r_comment) {
		this.r_comment = r_comment;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
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
		return "Review [r_no=" + r_no + ", r_comment=" + r_comment + ", grade=" + grade + ", r_date=" + r_date + ", id="
				+ id + ", act_no=" + act_no + "]";
	}

	
	

	
}
