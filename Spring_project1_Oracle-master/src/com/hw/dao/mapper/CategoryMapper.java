package com.hw.dao.mapper;

import java.util.ArrayList;

import com.hw.vo.Activity;

public interface CategoryMapper {
	public ArrayList<Activity> selectactivity(String keyword);
	
}
