package com.hw.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hw.frame.Biz;
import com.hw.frame.Dao;
import com.hw.frame.Search;
import com.hw.vo.Review;

@Service("rbiz")
public class ReviewBiz implements Biz<Review,String>, Search<Review,String>{

	@Resource(name="rdao")
	Dao<Review,String> dao;
	@Resource(name="rdao")
	Search<Review,String> search;
	
	@Override
	public ArrayList<Review> search(String v) throws Exception {
		// TODO Auto-generated method stub
		return search.search(v);
	}
	@Override
	public void register(Review t) throws Exception {
		dao.insert(t);
	}
	@Override
	public void modify(Review t) throws Exception {
		dao.update(t);
	}
	@Override
	public void remove(String v) throws Exception {
		dao.delete(v);
	}
	@Override
	public Review get(String v) throws Exception {
		return dao.select(v);
	}
	@Override
	public ArrayList<Review> get() throws Exception {
		return dao.select();
	}
	
	

}
