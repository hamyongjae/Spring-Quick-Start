package com.hw.dao.mapper;

import java.util.ArrayList;

import com.hw.vo.Review;

public interface ReviewMapper {
	public void insert(Review r);
	public void delete(String r_no);
	public void update(Review r);
	public Review select(String r_no);
	public ArrayList<Review> selectall();
}
