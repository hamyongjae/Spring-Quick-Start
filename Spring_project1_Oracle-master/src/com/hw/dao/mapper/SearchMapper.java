package com.hw.dao.mapper;

import java.util.ArrayList;

import com.hw.vo.Activity;
import com.hw.vo.Interest;
import com.hw.vo.Review;
import com.hw.vo.Users;

public interface SearchMapper {
	public ArrayList<Users> selectuser(String keyword);
	public ArrayList<Review> selectreview(String keyword);
	public ArrayList<Activity> selectactivity(Activity activity);
	public ArrayList<Interest> selectinterest(String keyword);
	
}
