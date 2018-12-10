package com.hw.vo;

public class Users {
	String id;
	String name;
	String birth;
	String pwd;
	String phone_num;
	String addr;
	String user_lat;
	String user_long;
	String pro_yn;
	String Img;
	
	public Users() {

	}

	public Users(String id, String name, String birth, String pwd, String phone_num, String addr, String user_lat,
			String user_long, String pro_yn, String img) {
		super();
		this.id = id;
		this.name = name;
		this.birth = birth;
		this.pwd = pwd;
		this.phone_num = phone_num;
		this.addr = addr;
		this.user_lat = user_lat;
		this.user_long = user_long;
		this.pro_yn = pro_yn;
		Img = img;
	}
	
	
	
	
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPhone_num() {
		return phone_num;
	}

	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getUser_lat() {
		return user_lat;
	}

	public void setUser_lat(String user_lat) {
		this.user_lat = user_lat;
	}

	public String getUser_long() {
		return user_long;
	}

	public void setUser_long(String user_long) {
		this.user_long = user_long;
	}

	public String getPro_yn() {
		return pro_yn;
	}

	public void setPro_yn(String pro_yn) {
		this.pro_yn = pro_yn;
	}

	public String getImg() {
		return Img;
	}

	public void setImg(String img) {
		Img = img;
	}

	
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((Img == null) ? 0 : Img.hashCode());
		result = prime * result + ((addr == null) ? 0 : addr.hashCode());
		result = prime * result + ((birth == null) ? 0 : birth.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((phone_num == null) ? 0 : phone_num.hashCode());
		result = prime * result + ((pro_yn == null) ? 0 : pro_yn.hashCode());
		result = prime * result + ((pwd == null) ? 0 : pwd.hashCode());
		result = prime * result + ((user_lat == null) ? 0 : user_lat.hashCode());
		result = prime * result + ((user_long == null) ? 0 : user_long.hashCode());
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
		Users other = (Users) obj;
		if (Img == null) {
			if (other.Img != null)
				return false;
		} else if (!Img.equals(other.Img))
			return false;
		if (addr == null) {
			if (other.addr != null)
				return false;
		} else if (!addr.equals(other.addr))
			return false;
		if (birth == null) {
			if (other.birth != null)
				return false;
		} else if (!birth.equals(other.birth))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (phone_num == null) {
			if (other.phone_num != null)
				return false;
		} else if (!phone_num.equals(other.phone_num))
			return false;
		if (pro_yn == null) {
			if (other.pro_yn != null)
				return false;
		} else if (!pro_yn.equals(other.pro_yn))
			return false;
		if (pwd == null) {
			if (other.pwd != null)
				return false;
		} else if (!pwd.equals(other.pwd))
			return false;
		if (user_lat == null) {
			if (other.user_lat != null)
				return false;
		} else if (!user_lat.equals(other.user_lat))
			return false;
		if (user_long == null) {
			if (other.user_long != null)
				return false;
		} else if (!user_long.equals(other.user_long))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Users [id=" + id + ", name=" + name + ", birth=" + birth + ", pwd=" + pwd + ", phone_num=" + phone_num
				+ ", addr=" + addr + ", user_lat=" + user_lat + ", user_long=" + user_long + ", pro_yn=" + pro_yn
				+ ", Img=" + Img + "]";
	}

	
	
	
	
	
	

	
}
