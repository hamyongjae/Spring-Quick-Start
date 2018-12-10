package com.hw.vo;

public class Activity {
	String act_no;
	int cat_no;
	String title;
	String addr;
	String addr_lat;
	String addr_long;
	String act_img1;
	String act_img2;
	String act_img3;
	String act_img4;
	String act_phone;
	String detail;
	String id;
	String st_date;
	String end_date;
	int quantity;
	String state;
	int gen_no;
	public String getAct_no() {
		return act_no;
	}
	public void setAct_no(String act_no) {
		this.act_no = act_no;
	}
	public int getCat_no() {
		return cat_no;
	}
	public void setCat_no(int cat_no) {
		this.cat_no = cat_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddr_lat() {
		return addr_lat;
	}
	public void setAddr_lat(String addr_lat) {
		this.addr_lat = addr_lat;
	}
	public String getAddr_long() {
		return addr_long;
	}
	public void setAddr_long(String addr_long) {
		this.addr_long = addr_long;
	}
	public String getAct_img1() {
		return act_img1;
	}
	public void setAct_img1(String act_img1) {
		this.act_img1 = act_img1;
	}
	public String getAct_img2() {
		return act_img2;
	}
	public void setAct_img2(String act_img2) {
		this.act_img2 = act_img2;
	}
	public String getAct_img3() {
		return act_img3;
	}
	public void setAct_img3(String act_img3) {
		this.act_img3 = act_img3;
	}
	public String getAct_img4() {
		return act_img4;
	}
	public void setAct_img4(String act_img4) {
		this.act_img4 = act_img4;
	}
	public String getAct_phone() {
		return act_phone;
	}
	public void setAct_phone(String act_phone) {
		this.act_phone = act_phone;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSt_date() {
		return st_date;
	}
	public void setSt_date(String st_date) {
		this.st_date = st_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getGen_no() {
		return gen_no;
	}
	public void setGen_no(int gen_no) {
		this.gen_no = gen_no;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((act_img1 == null) ? 0 : act_img1.hashCode());
		result = prime * result + ((act_img2 == null) ? 0 : act_img2.hashCode());
		result = prime * result + ((act_img3 == null) ? 0 : act_img3.hashCode());
		result = prime * result + ((act_img4 == null) ? 0 : act_img4.hashCode());
		result = prime * result + ((act_no == null) ? 0 : act_no.hashCode());
		result = prime * result + ((act_phone == null) ? 0 : act_phone.hashCode());
		result = prime * result + ((addr == null) ? 0 : addr.hashCode());
		result = prime * result + ((addr_lat == null) ? 0 : addr_lat.hashCode());
		result = prime * result + ((addr_long == null) ? 0 : addr_long.hashCode());
		result = prime * result + cat_no;
		result = prime * result + ((detail == null) ? 0 : detail.hashCode());
		result = prime * result + ((end_date == null) ? 0 : end_date.hashCode());
		result = prime * result + gen_no;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + quantity;
		result = prime * result + ((st_date == null) ? 0 : st_date.hashCode());
		result = prime * result + ((state == null) ? 0 : state.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Activity other = (Activity) obj;
		if (act_img1 == null) {
			if (other.act_img1 != null)
				return false;
		} else if (!act_img1.equals(other.act_img1))
			return false;
		if (act_img2 == null) {
			if (other.act_img2 != null)
				return false;
		} else if (!act_img2.equals(other.act_img2))
			return false;
		if (act_img3 == null) {
			if (other.act_img3 != null)
				return false;
		} else if (!act_img3.equals(other.act_img3))
			return false;
		if (act_img4 == null) {
			if (other.act_img4 != null)
				return false;
		} else if (!act_img4.equals(other.act_img4))
			return false;
		if (act_no == null) {
			if (other.act_no != null)
				return false;
		} else if (!act_no.equals(other.act_no))
			return false;
		if (act_phone == null) {
			if (other.act_phone != null)
				return false;
		} else if (!act_phone.equals(other.act_phone))
			return false;
		if (addr == null) {
			if (other.addr != null)
				return false;
		} else if (!addr.equals(other.addr))
			return false;
		if (addr_lat == null) {
			if (other.addr_lat != null)
				return false;
		} else if (!addr_lat.equals(other.addr_lat))
			return false;
		if (addr_long == null) {
			if (other.addr_long != null)
				return false;
		} else if (!addr_long.equals(other.addr_long))
			return false;
		if (cat_no != other.cat_no)
			return false;
		if (detail == null) {
			if (other.detail != null)
				return false;
		} else if (!detail.equals(other.detail))
			return false;
		if (end_date == null) {
			if (other.end_date != null)
				return false;
		} else if (!end_date.equals(other.end_date))
			return false;
		if (gen_no != other.gen_no)
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (quantity != other.quantity)
			return false;
		if (st_date == null) {
			if (other.st_date != null)
				return false;
		} else if (!st_date.equals(other.st_date))
			return false;
		if (state == null) {
			if (other.state != null)
				return false;
		} else if (!state.equals(other.state))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Activity [act_no=" + act_no + ", cat_no=" + cat_no + ", title=" + title + ", addr=" + addr
				+ ", addr_lat=" + addr_lat + ", addr_long=" + addr_long + ", act_img1=" + act_img1 + ", act_img2="
				+ act_img2 + ", act_img3=" + act_img3 + ", act_img4=" + act_img4 + ", act_phone=" + act_phone
				+ ", detail=" + detail + ", id=" + id + ", st_date=" + st_date + ", end_date=" + end_date
				+ ", quantity=" + quantity + ", state=" + state + ", gen_no=" + gen_no + "]";
	}
	public Activity(String act_no, int cat_no, String title, String addr, String addr_lat, String addr_long,
			String act_img1, String act_img2, String act_img3, String act_img4, String act_phone, String detail,
			String id, String st_date, String end_date, int quantity, String state, int gen_no) {
		this.act_no = act_no;
		this.cat_no = cat_no;
		this.title = title;
		this.addr = addr;
		this.addr_lat = addr_lat;
		this.addr_long = addr_long;
		this.act_img1 = act_img1;
		this.act_img2 = act_img2;
		this.act_img3 = act_img3;
		this.act_img4 = act_img4;
		this.act_phone = act_phone;
		this.detail = detail;
		this.id = id;
		this.st_date = st_date;
		this.end_date = end_date;
		this.quantity = quantity;
		this.state = state;
		this.gen_no = gen_no;
	}
	public Activity() {
	}

	
}
