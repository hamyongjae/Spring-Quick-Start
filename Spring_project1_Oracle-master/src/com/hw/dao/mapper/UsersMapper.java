package com.hw.dao.mapper;

import java.util.ArrayList;

import com.hw.vo.Users;

public interface UsersMapper {
	public void insert(Users u);
	public void delete(String id);
	public void update(Users u);
	public Users select(String id);
	public ArrayList<Users> selectall();
}
