package com.hw.dao;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hw.dao.mapper.ReviewMapper;
import com.hw.dao.mapper.SearchMapper;
import com.hw.frame.Dao;
import com.hw.frame.Search;
import com.hw.vo.Review;

@Repository("rdao")
public class ReviewDao implements Dao<Review,String>, Search<Review,String>{

	@Autowired
	ReviewMapper rmapper;
	@Autowired
	SearchMapper smapper;
	
	@Override
	public ArrayList<Review> search(String v) throws Exception {
		// TODO Auto-generated method stub
		return smapper.selectreview(v);
	}
	@Override
	public void insert(Review t) throws Exception {
		rmapper.insert(t);
		
	}
	@Override
	public void update(Review t) throws Exception {
		rmapper.update(t);
	}

	@Override
	public ArrayList<Review> select() throws Exception {
		// TODO Auto-generated method stub
		return rmapper.selectall();
	}
	@Override
	public void delete(String v) throws Exception {
		rmapper.delete(v);
	}
	@Override
	public Review select(String v) throws Exception {
		return rmapper.select(v);
	}
	
	
	
}
