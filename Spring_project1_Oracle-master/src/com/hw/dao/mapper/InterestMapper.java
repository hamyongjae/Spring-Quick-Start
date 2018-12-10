package com.hw.dao.mapper;

import java.util.ArrayList;

import com.hw.vo.Interest;

public interface InterestMapper {
	public void insert(Interest i);
	public void delete(String id);
	public void update(Interest i);
	public Interest select(String id);
	public ArrayList<Interest> selectall();
}
