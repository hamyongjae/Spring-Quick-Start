package com.hw.dao.mapper;

import java.util.ArrayList;

import com.hw.vo.Activity;

public interface ActivityMapper {
	public void insert(Activity a);
	public void delete(String act_no);
	public void update(Activity a);
	public Activity select(String act_no);
	public ArrayList<Activity> selectall();
}
